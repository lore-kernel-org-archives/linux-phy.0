Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABEE608362C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 13:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=harlUuIS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=S1UKdJpW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nIAbgwGneWMTu+KjagWIntv/1IlV2mlbv5Dhwh4wg0k=; b=harlUuISwZPaOzWF08Ccaht6fO
	/HYxecsJJcL+MZzciU98iTZBVixOn7T3tAGPwG2pEaEhabCYk6uo4we6iMBYMItFTUhct59F5Ex7s
	aV9Ov7NpM/D8m7XLqaAm+7+UJs2VhMZkraBAZ3QK8qV4FWehcAXSwrEiLiN+nP07yXbv72BVaK4hT
	ZP433jovKKI742DEZSXZgHbtSosXxuwjUiLLLHX1ngHoPUk0QHwYNpn7P1I9D6pWOUv6fKgeXZyCy
	m70lQuizwlDJ6xe4kgYnLbJLBgdZ9P/tJsKeSiF0V0RU1/l5o14n9CXctcfAv/tQFZitygo7PbHkm
	/Qhmem3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQP9L-00000000luL-27ub;
	Mon, 09 Nov 2026 13:11:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQP9J-00000000luC-46uM
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 13:11:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A20B4161E;
	Mon,  9 Nov 2026 13:11:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5C1F1F008A1;
	Mon,  9 Nov 2026 13:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794229861;
	bh=gNfZR1tD/4uQN4tqp8U8BRhf/3RUz4loH+G8h6ncrFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S1UKdJpWyqYgkqJU08KtgulF65HWrq2E/AFfyEEOaihWAVjP5+DPfXePkZjq/bmvW
	 oir5yfcteX98GaXH6Bc9av2SIQ8SVuiaTEI2io7v4MWbsuiTiicvJ/rmKaeYzHo+NG
	 LSR1kYa6GJ5eV0U6tzdntULAR52nlx4I950oZO5ZN1SmwONGLR0XECOlMpVqaqM+Fk
	 0WnvBwb9ZYUDNqPkfo6ABbUcJ+Iyct6lDUA31Qm+AvODDiNvCQ/EeW9OLZumba28ZO
	 9UElmcQ6orUKgJSKuv713MKJeafnnbdCZAuNYj6Y+nmCK50MIlNx1PoMCdtWZBX8VB
	 H1nWHcJNriJSA==
Date: Mon, 9 Nov 2026 14:10:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: Alban Bedel <albeu@free.fr>, Vinod Koul <vkoul@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qca,ar7100-usb-phy: add AR9340,
 QCA9550 and the analog reset
Message-ID: <20261109-lively-marten-of-upgrade-11637e@quoll>
References: <20261109040451.114135-1-rosenp@gmail.com>
 <20261109040451.114135-2-rosenp@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261109040451.114135-2-rosenp@gmail.com>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 08, 2026 at 08:04:50PM -0800, Rosen Penev wrote:
> >From AR934x on, the analog part of the USB PHY has its own reset,
> which has to be released along with the PHY one. Add it as a third,
> optional reset, and add compatibles for AR934x and QCA955x, which need
> it.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  .../bindings/phy/qca,ar7100-usb-phy.yaml      | 38 ++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
