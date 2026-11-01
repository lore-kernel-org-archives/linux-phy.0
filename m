Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA41A606A326
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 10:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Njgooprb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=P8dU9Alg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ltqki4h/bxXKDTW3Za+tiy/UhhjleJYVI0mYIt5sxjs=; b=Njgooprbwnq/gFs8wWE6UOvHU3
	DCfXJ8E7EF/qrvD0e+LxUEFb4iBe+rr5FgxlcrBPTF2BSHJCOXRXKCQs8+WSU22BA89BptS6tSGia
	NrB1ond6nIPIQf2Tv2NmN+xnmKGRqQYaDQolyCyJyMXivwNaD8D2CoLe+/0j5c2pCm9iCn4pz4CBf
	rEMY044kcHyUU75YLL5019TS2BYeHrpDHPjQLGCbs4cSW+sJDXn8VSd1Z9Duc6DgfPCgpbTKbIL/i
	xWY/gqqQG6bteqDXa/v2EJAZAdH07Le8WX4AewDg22HS6hRz+7DLowzh0UnQUMPYi5Dlbb92E4agn
	tAaYafEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTAw-0000000E6fq-2dGE;
	Sun, 01 Nov 2026 10:52:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTAv-0000000E6ff-2gJy
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 10:52:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D785541AE6;
	Sun,  1 Nov 2026 10:52:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80BE91F00919;
	Sun,  1 Nov 2026 10:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793530352;
	bh=xlm70zJicMZ77PdEMVbRYRPtF07ul0gsfdGP8rkkP/0=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=P8dU9Alg7dNejqGOtDAiPGLdjb7OVRTdUPw5/10mKpEjIjVVCFalD/HOhK3FbunKC
	 A/KZ5UoaT42jLXx60Yn+s8tc+5fCiA6F0IFwpS6pfSqrKyY/SeqaJk+7EZ68nzwXxX
	 WYAvAy6sqizSA9Y5txW1DQWq0rmEDc30vpDJIrN4aHnm/iCEHtjSTvemZ+RPwfdYbZ
	 i915xKFfgVJRluUmnNIOWDeZQOtBD849cI5q3eQHQTZQQqL++Xr3+Xm+ZXkHPeiOsS
	 O8tEizdg30ngq0w7KN3lpRoTY+2zUdbNYr4ewJoIwH1l8ZRb5tc/UD2jrkSuGDBPgM
	 N8z42dgQ0TKXw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 22/27] phy: rockchip-naneng-combphy: Add RK3572 support
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-gpio@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, 
 lee@kernel.org
In-Reply-To: <sashiko-outbox-181786@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-22-0b0fd85a31ee@qq.com>
 <sashiko-outbox-181786@kernel.org>
Date: Sun, 01 Nov 2026 16:22:26 +0530
Message-Id: <179353034684.2955.5901398331920172946.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3978; i=mani@kernel.org;
 h=from:subject:message-id; bh=PV6+TwlxSS26CdoN0gMespT5APA2NOMOowYoRN7732Y=;
 b=owGbwMvMwMUYOl/w2b+J574ynlZLYsh6LvkmXFHPqu+jnbqWznXpxmt51zbNSDJYO7f7Yu3Ee
 c8ZK1pjOxmNWRgYuRhkxRRZ0pc6azV6nL6xJEJ9OswgViaQKQxcnAIwkRI99v/5otU24k0fq9rP
 Cq8IsLVU265bnSZW/mzx7AKdw8ncx/P/LZ3zt3PPoiUJPDO3lPH0RhxkOS1swBxbu+pT6f3t6xp
 EhJTqZNo3COTI6oeXHG3Q9nZqvGPYEtH7JzRW42lp/RJG3awZwr+bnlqXCfFckekOVLSQaftTWa
 zs//mUZ9c3791Hdi/o23/Do6Y2NPhL017RUwEMndv3P/gisESyI8W5Y6ZV9L4nlUr7X/m5fW4Sn
 Or7K3DiuWWGUik9PbbPBJbeWVEx68LmCa8adE0mXCwS4xVcq60s7M5p4W+/zerOk/z6l9MUynOZ
 eJfIVVzwZHBfYxZ74820Rx2RvzV/XUpy83vwYtI1mwlHAQ==
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-22 16:13 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] phy: rockchip-naneng-combphy: writel() clobbers SSC bit in rk3572_combphy_cfg()
> --
> 
> commit 9ca36a68e2ebd41ee7e126faeae68aae4fa05eae
> Author: Cunhao Lu <1579567540@qq.com>
> 
> phy: rockchip-naneng-combphy: Add RK3572 support
> 
> This commit adds configuration tables, register programming, and device tree
> matching support for the RK3572 combo PHY operating in PCIe, USB3, and SATA
> modes.
> 
> > diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> > index 7843356a4dd47..e13a78ab57779 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> > @@ -1000,6 +1000,204 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
> >  	.combphy_cfg	= rk3568_combphy_cfg,
> >  };
> >  
> > +static int rk3572_combphy_cfg(struct rockchip_combphy_priv *priv)
> > +{
> 
> [ ... ]
> 
> > +	switch (rate) {
> > +	case 24000000:
> > +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
> > +		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
> > +			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
> > +			rockchip_combphy_updatel(priv, GENMASK(7, 6), BIT(6), 0xe << 2);
> > +
> > +			rockchip_combphy_updatel(priv, GENMASK(7, 0), 0x5f, 0xf << 2);
> > +		} else if (priv->type == PHY_TYPE_PCIE) {
> > +			/* PLL KVCO tuning fine */
> > +			rockchip_combphy_updatel(priv, GENMASK(4, 2), 0x4 << 2, 0x20 << 2);
> 
> [ ... ]
> 
> > +	if (priv->ext_refclk) {
> > +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
> > +		if (priv->type == PHY_TYPE_PCIE && rate == 100000000) {
> > +			writel(0x10, priv->mmio + (0x20 << 2));
> > +
> > +			writel(0x0c, priv->mmio + (0x1b << 2));
> > +
> > +			/*
> > +			 * Set up su_trim: T3_P1 650mv
> > +			 * CKRCV termination resistor adjust 11: Hi-Z
> > +			 */
> > +			writel(0x90, priv->mmio + (0xa << 2));
> > +			writel(0x43, priv->mmio + (0xb << 2));
> > +			writel(0xb8, priv->mmio + (0xc << 2));
> > +			writel(0x56, priv->mmio + (0xd << 2));
> > +		}
> > +	}
> > +
> > +	if (priv->enable_ssc) {
> > +		rockchip_combphy_updatel(priv, GENMASK(4, 4), BIT(4), 0x7 << 2);
> > +		/* PLL control SSC module period should be set */
> > +		rockchip_combphy_updatel(priv, GENMASK(5, 5), BIT(5), 0x20 << 2);
> > +
> > +		if (priv->type == PHY_TYPE_PCIE && rate == 24000000) {
> > +			/* xin24m T0_1 650mV */
> > +			writel(0x00, priv->mmio + (0x10 << 2));
> > +			writel(0x32, priv->mmio + (0x11 << 2));
> > +			writel(0x00, priv->mmio + (0x1b << 2));
> > +			writel(0x90, priv->mmio + (0x0a << 2));
> > +			writel(0x02, priv->mmio + (0x0b << 2));
> > +			writel(0x08, priv->mmio + (0x0c << 2));
> > +			writel(0x57, priv->mmio + (0x0d << 2));
> > +			writel(0x40, priv->mmio + (0x0e << 2));
> > +			writel(0x5f, priv->mmio + (0x0f << 2));
> > +			writel(0x10, priv->mmio + (0x20 << 2));
> 
> [Severity: Medium]
> Does this writel(0x10, priv->mmio + (0x20 << 2)) in rk3572_combphy_cfg()
> clobber the SSC period control bit that was just set above?
> 
> When priv->enable_ssc is true, rk3572_combphy_cfg() sets BIT(5) in register
> offset 0x20 << 2 via rockchip_combphy_updatel(). Immediately afterwards, when
> priv->type == PHY_TYPE_PCIE and rate == 24000000, this writel() overwrites the
> entire register at 0x20 << 2 with 0x10, clearing BIT(5) back to 0.
> 
> Should both this write and the writel(0x10, priv->mmio + (0x20 << 2)) in the
> priv->ext_refclk block above use rockchip_combphy_updatel() with GENMASK(4, 2)
> instead, matching how the 24 MHz and 100 MHz PHY_TYPE_PCIE cases update the
> PLL KVCO tuning field earlier in rk3572_combphy_cfg()?
> 

Looks valid.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
