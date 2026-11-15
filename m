Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DBA606A323
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 19:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=asWjbihB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H14kwOx6WrKjM4fPBWV4BjwkYWM+P9S48qjNmzH/3tg=; b=asWjbihBYo/14bhGoC1t+V1O/P
	tUdxJ4lE8qyLSdLk8NY/1Ay+orkgMNi2JFL8PsAIyeUrO5aMnost/DmoO2VWCH1uHZt88ahgYqFUR
	bRPCoMiZOxeCZ0HSlH7TV9FyLdpALY9SnTymTLbNqFEnqTY4syJYWHGdkIieXDqEpbILKqsbsfMdX
	z2mINPfr9ePaYf6cY/iJnMQcOp0o7dq69RX61Z7yClDmchaX8fY9nGJxR0BCb4LWE6Sz9bRI2l+qo
	8f+JV4aLtdXYUBeMjr4DON2D6udlFFZoIZe417Uq+LWZ4nxwsHf1AUEiDTjE4blYxP/usCAo2BqDH
	bVPYzBCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgL7-00000000PNZ-2i6y;
	Sun, 15 Nov 2026 19:56:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgL5-00000000PNM-3Tch;
	Sun, 15 Nov 2026 19:56:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9AC276158A;
	Sun, 15 Nov 2026 19:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DE461F000C4;
	Sun, 15 Nov 2026 19:56:30 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: mediatek: mt8195: Check PLL driver setting return
 value
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Sreeraj S Kurup <sreekuttan2156239@gmail.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, vkoul@kernel.org, 
 neil.armstrong@linaro.org, mani@kernel.org, matthias.bgg@gmail.com, 
 angelogioacchino.delregno@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261102072139.3588-1-sreekuttan2156239@gmail.com>
References: <20261102072139.3588-1-sreekuttan2156239@gmail.com>
Date: Sun, 15 Nov 2026 11:56:27 -0800
Message-Id: <179477258790.135135.18445455960030835441.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=612;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=eileMYDYBKoPQdgMpGCKEGd2Rd8i7gFuQRzv0kIVzxA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+g5uw5yoC7DdghORcWiKirCC7Y3f+wwpthQjL
 Ot5u7rQq1GJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoObgAKCRBVnxHm/pHO
 9fN5B/9gix+/uFGVJNKn69SYdcUnNe8tQXcBwew4RpqhpKrjqoRoJthvRkgkmvY5gPV4eiRNV3s
 GMp/ufdtaYvnUi0uKa1GRAvj6KINn0Pg3V8LE6ddL+rypjWi0OaPZHQurM+lXm0RG49LSRWoB6I
 EGbVv3tTARsusSgSsVg/puY1Sd8Hai3W5AL4WXiLUpfnCiZ76y7Lwxn7Fugb2kLPx6V9UsbvLoS
 xuIIqyjsYTzPvNXqSp/JmHHbq9s8djQ607IrAbq6KgqjKvoV1A5eXKOyMZ8XSwTH6wMUTC2wJaG
 n73A9BzJ/4FkkmSFPJaFcLBm1FcCGy6E0XR4029UmIcv0ISi
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-02 07:21 +0000, Sreeraj S Kurup wrote:
> The mtk_hdmi_pll_drv_setting() function can return -EINVAL when
> the requested pixel clock is outside its supported range.
> 
> Currently, mtk_hdmi_pll_prepare() ignores this return value and
> continues with PLL initialization even when the driver settings
> fail.
> 
> Check the return value and abort PLL preparation on failure to
> avoid powering up the PLL with invalid driver settings.
> 
> Signed-off-by: Sreeraj S Kurup <sreekuttan2156239@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
