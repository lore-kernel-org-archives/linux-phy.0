Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCDC5EC8759
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 21:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBe56cWIt9/BxR+cRz0FmhPiXAxGFK+evbl78+ccTj4=; b=0MxcFeu27Z6iIh
	8nBdw/lAnrrTroxkprMrFHpgOc9nlx9R6fStwz2eH7zTTsfvtKw7vY2351vhRGq9kc0KZsRHRf5CI
	+m8zmxUJaaj44/miIiLm0rH7Fh1W0MbLgxu3tj9qu/GozNYN72XDpKJH/naUyiA61kL6wLr/3ZNlF
	w+QJpKRDSPOba14AOeiAFojMFG8Z7Y4BhRkGhMFjtCvZIsSLvBWfEOpb7kKgF0EXXEoDzStRo8dVa
	4qzJKvP9KNCINVdSrYQaPWW7EWTjhS1IU0Dn+pAT+sei6uxohhtaAGz3W36P/PR+pGf6p4chKc0Qe
	mBfOEGUuIZXl98lmlIFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeMXQ-00Chh3-0r;
	Thu, 07 Sep 2023 21:27:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeMXN-00ChgN-0S
	for linux-phy@lists.infradead.org;
	Thu, 07 Sep 2023 21:27:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C64B161361;
	Thu,  7 Sep 2023 21:27:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BF2AC433C7;
	Thu,  7 Sep 2023 21:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694122054;
	bh=O/6cIs2Ruc5dkl3OS6KHvoBZCyyLV6ge8DRQtLmAAVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bY1lntSR7bxjdtutj/e0exs9quDBntr+MhIcCdpO/1NDOspi6lCJSJYctPy4CtdpA
	 JDzvdFOdpSco72sJo9sHe7DE1PGFGGaweK0cYmGsHI3/1yEtSVz4eGnZYedLndjLM0
	 nswPUzNhrLCTIxR5/AQM80SzC1tAR4MqVH9HLsBDIsj/aD8t0bnKkdEwobCJYWJwGt
	 YJDi//Zrtk9z5yTLJIwd3ES0nzb0/6BsafopEQBYC0UcQJxTT7eFMVayHz/TbxdTLV
	 bZi2kEtSBG5pD2uQQYmy3rEeQh5Hjv8BlDlEnstUSNBawPBCfEoAi3boHjLqLOWJ+n
	 a2hJnSfcFOW8g==
Date: Thu, 7 Sep 2023 14:27:33 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <ZPpARWs94i1fZzB0@matsya>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
 <Y8Ga1BTaqoTMRA0I@matsya>
 <a04d38095bb7d904f01b6ea60f1cb77971a9314f.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a04d38095bb7d904f01b6ea60f1cb77971a9314f.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_142741_287506_FD270EF1 
X-CRM114-Status: GOOD (  15.41  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05-09-23, 12:23, Lucas Stach wrote:

> > lots of magic numbers!
> 
> Yes. Those are mostly tuning values for the PLL and I don't know if
> there is any computational way to come up with those numbers, so we're
> just using the values validated in downstream.

ok

> 
> > 
> > > +};
> > > +
> > > +struct reg_settings {
> > > +	u8 reg;
> > > +	u8 val;
> > > +};
> > > +
> > > +const struct reg_settings common_phy_cfg[] = {
> > > +	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xD1 },
> > > +	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
> > > +	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
> > > +	/* REG12 pixclk specific */
> > > +	/* REG13 pixclk specific */
> > > +	/* REG14 pixclk specific */
> > > +	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6C },
> > > +	{ PHY_REG_17, 0xF2 }, { PHY_REG_18, 0x67 },
> > > +	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
> > > +	/* REG21 pixclk specific */
> > > +	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
> > > +	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8F },
> > > +	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
> > > +	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
> > > +	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
> > > +	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
> > > +	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
> > > +	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
> > > +	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
> > > +	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xE0 },
> > > +	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0F },
> > > +	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xF8 },
> > > +	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
> > > +};
> > > +
> > > +struct fsl_samsung_hdmi_phy {
> > > +	struct device *dev;
> > > +	void __iomem *regs;
> > > +	struct clk *apbclk;
> > > +	struct clk *refclk;
> > > +
> > > +	/* clk provider */
> > > +	struct clk_hw hw;
> > > +	const struct phy_config *cur_cfg;
> > > +};
> > > +
> > > +static inline struct fsl_samsung_hdmi_phy *
> > > +to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
> > > +{
> > > +	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
> > > +}
> > > +
> > > +static void
> > > +fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
> > > +				      const struct phy_config *cfg)
> > > +{
> > > +	u8 div;
> > > +
> > > +	switch (cfg->pixclk) {
> > > +	case  22250000 ...  33750000:	div = 0xf; break;
> > > +	case  35000000 ...  40000000:	div = 0xb; break;
> > > +	case  43200000 ...  47500000:	div = 0x9; break;
> > > +	case  50349650 ...  63500000:	div = 0x7; break;
> > > +	case  67500000 ...  90000000:	div = 0x5; break;
> > > +	case  94000000 ... 148500000:	div = 0x3; break;
> > > +	case 154000000 ... 297000000:	div = 0x1; break;
> > 
> > lets do proper linux style please
> 
> Do you mean moving the statements to separate lines?

Yes pls. Also check with scripts/checkpatch.pl --strict

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
