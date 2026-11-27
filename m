Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B71606A31F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZKBEGy4E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=LQXyeyNF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YjBgKUndiKZX1e576BN5tUnU+IH7UABXnnJ4q3/1lrg=; b=ZKBEGy4Ep+uP0WEBbcSe1mhcbL
	g1kuJjiBP0BmvDcT0WQu9oz66dH9CWnHx+At/+IVg48C/qpz3b2tY3wQdYWqoCtzCxveKd2oBwpme
	NCBvB+vdksmLUWZFvlEUrx9w0DQaCeR7en9bdkKNnLX+5FcbMy5bxZFpnBB3ST8T18N41ZhxYe93U
	LiTsPyVI15M1uLa/Mcjd7MhOjBd1zK6J2OJXMqXQCIpXbiIvfVog1f5BIY0it4y9NzZ/IJQttMpWh
	7yvYP5axwTIlN6aV/n9i1mH5KP3RC/8LN0g422UEMFYgff7Qr6zturc4N11pOwBV9UycrrZE4fU9X
	YlEeXqUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy0Z-0000000Grqg-1vL1;
	Fri, 27 Nov 2026 15:37:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy0V-0000000GrpU-2rEH
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:37:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0F7BC441C1;
	Fri, 27 Nov 2026 15:37:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F7C81F0089B;
	Fri, 27 Nov 2026 15:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795793822;
	bh=WlY9vageXSeQmZ20n2r9+i3MSMUzXaIV42tMmADmcds=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=LQXyeyNFQ4doLUmmDJeyYx54X/OesXH+8JhiZJJXD8vASgntwIv0tCTRPoG7+AJ3m
	 /tW0xxpecnqvQzTG8ks+ICpipGuObmcuGewo8bECYLjFrPADbvUlTdOXDcw5H3D6dH
	 PHeTqTCzTLDrBftRT0RoJoxhJANbLkDjY70CJsymGGOD3qun2xGVZkKA3X0C+l3mYc
	 70hdN7l5RM4K72OoYjqIarbSCn54xsyTzqOFuPK0tCmxMIuNEyKZI0e1w+NtiwinLj
	 7fytVXS2QcM9PNgteTHTcrgVzZpRqhcULqwwGhWsjTK/J2rSMIeEcwXFGcqIngy2WS
	 W77NdBugRrh7Q==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: amlogic: meson-axg-mipi-dphy: fix clock leak in
 probe error paths
From: Manivannan Sadhasivam <mani@kernel.org>
To: Xiangwu Lai <laixiangwu@cmss.chinamobile.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
 narmstrong@baylibre.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261118013723.232-1-laixiangwu@cmss.chinamobile.com>
References: <20261118013723.232-1-laixiangwu@cmss.chinamobile.com>
Date: Fri, 27 Nov 2026 21:06:55 +0530
Message-Id: <179579381511.13164.8479419499122880409.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=722; i=mani@kernel.org;
 h=from:subject:message-id; bh=4G0uLdUD0/07Sh6IMGwh3JriuBU8udZ1uUTvs82eMhQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaObxP7O3om0CXQpkwI5cwZG0zdVOOAu3rP8T
 xmRdwdiOAKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmjmwAKCRBVnxHm/pHO
 9flRB/4hEi4gq0vUPA0OmZV3B5gtIlU1XOmLIm0lWPBwpYmuf7aHBemEP/bjZa4t54v9FMMnM2P
 o1qLBIDhpyHAe10LMuYY06DIKW71AJt63aaL+BeuxzQI++ZM/9ds2GM1erIVSU3mgk+eM/5jaxe
 5hIeRFL0Sl3dAyTXCGlFw/pUD7RKFpTEbHYztslJjeAYS3db4+QZGEggq2LYUNdcvlVaX5ypNHp
 rJ5PgIG9tcj8t73+jXnHA4tdOrWAW0Dp50gwAeNnxHKT/6sa1qyDtRkiC/PoN67NxlcFJsJ9lfx
 e2VVwluKWDIIRU3anxLP59MCsA4QMwDYKCxKFh0B18uh88jY
X-Developer-Key: i=mani@kernel.org; a=openpgp;
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

On 2026-11-18 09:37 +0800, Xiangwu Lai wrote:
> The probe path enables the pclk clock with clk_prepare_enable() but
> none of the error paths that follow (reset_control_deassert(),
> devm_phy_create(), devm_of_phy_provider_register()) disable it again.
> When one of them fails, the prepared and enabled clock is leaked.
> 
> Use devm_clk_get_enabled() to get the clock, so the clock is disabled
> and its reference released automatically if probe fails after it or
> the driver detaches.
> 
> Fixes: 76aefb221146 ("phy: amlogic: Add AXG MIPI D-PHY driver")
> Signed-off-by: Xiangwu Lai <laixiangwu@cmss.chinamobile.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
