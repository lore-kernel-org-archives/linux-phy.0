Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 192BFECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdHa2R4nsfvTTUy3Q1ZdrGbyCdjtFUYCgr6pSFysE7E=; b=c7CjNoQEGlcUyF
	sj/EGZQ3B8F1gutzhw7z+rD2tpVtwCJ7h2SXylh+SzoWH765U9zkYMBiQjZbNhZ953VT+gmZ0cM/k
	J5xcSwFcCn+SY/4hZJa18IModhFMpjikLlLjs70jJidAKPZMcrMU6Op5XtOVG9zOAHpQ3ZGetU+Gk
	aX/VbKdtkhygQtP4F/nAjwfULDnoOXyCLlp28Yo/+xFdH6QTxexcpLNsSBazlgl24iqKyUYalUhvd
	4Mnkm270QnHgU0CG2L/vptNDyiDFKCng7yhQbSS3AaFT7qOmksaVqoi5TJ4DDNTK9fxVYPzdaFK60
	gQgFLeIRcYBQwe8zjJMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWacs-00F9o2-GP; Fri, 09 Sep 2022 09:48:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWacp-00F9kj-5b
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:48:41 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oWacX-0006GH-0r; Fri, 09 Sep 2022 11:48:21 +0200
Message-ID: <e79450f8a9f52c979071f88e280698430a725473.camel@pengutronix.de>
Subject: Re: [PATCH v6 7/7] PCI: imx6: Add i.MX8MP PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Richard Zhu
	 <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com, 
	robh@kernel.org, shawnguo@kernel.org, vkoul@kernel.org, 
	alexander.stein@ew.tq-group.com, marex@denx.de, richard.leitner@linux.dev, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 09 Sep 2022 11:48:19 +0200
In-Reply-To: <YxsJ6W/d/bR+Jjjs@lpieralisi>
References: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
	 <1662004960-14071-8-git-send-email-hongxing.zhu@nxp.com>
	 <YxsJ6W/d/bR+Jjjs@lpieralisi>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024839_395961_E7499503 
X-CRM114-Status: GOOD (  27.85  )
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

Hi Lorenzo,

Am Freitag, dem 09.09.2022 um 11:39 +0200 schrieb Lorenzo Pieralisi:
> On Thu, Sep 01, 2022 at 12:02:40PM +0800, Richard Zhu wrote:
> > Add i.MX8MP PCIe support.
> > To avoid codes duplication when find the syscon regmap, add the iomux
> > gpr syscon compatible into drvdata.
> > 
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > Tested-by: Marek Vasut <marex@denx.de>
> > Tested-by: Richard Leitner <richard.leitner@skidata.com>
> > Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  drivers/pci/controller/dwc/pci-imx6.c | 27 +++++++++++++++++++++++++--
> >  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> Don't know if should pull this patch, if it goes via other trees:
> 
> Acked-by: Lorenzo Pieralisi <lpieralisi@kernel.org>

I think it's safe for you to pull this patch via the PCI tree. When the
PHY dependency is not present the driver doesn't probe and once all the
pieces are in place things will start to work. There is no need to
merge all the patches via the same tree.

Regards,
Lucas

> 
> > diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> > index 6e5debdbc55b..3018f9d1c1b8 100644
> > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > @@ -51,6 +51,7 @@ enum imx6_pcie_variants {
> >  	IMX7D,
> >  	IMX8MQ,
> >  	IMX8MM,
> > +	IMX8MP,
> >  };
> >  
> >  #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
> > @@ -61,6 +62,7 @@ struct imx6_pcie_drvdata {
> >  	enum imx6_pcie_variants variant;
> >  	u32 flags;
> >  	int dbi_length;
> > +	char gpr[128];
> >  };
> >  
> >  struct imx6_pcie {
> > @@ -150,7 +152,8 @@ struct imx6_pcie {
> >  static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
> >  {
> >  	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ &&
> > -		imx6_pcie->drvdata->variant != IMX8MM);
> > +		imx6_pcie->drvdata->variant != IMX8MM &&
> > +		imx6_pcie->drvdata->variant != IMX8MP);
> >  	return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
> >  }
> >  
> > @@ -301,6 +304,7 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
> >  {
> >  	switch (imx6_pcie->drvdata->variant) {
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		/*
> >  		 * The PHY initialization had been done in the PHY
> >  		 * driver, break here directly.
> > @@ -558,6 +562,7 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
> >  		break;
> >  	case IMX8MM:
> >  	case IMX8MQ:
> > +	case IMX8MP:
> >  		ret = clk_prepare_enable(imx6_pcie->pcie_aux);
> >  		if (ret) {
> >  			dev_err(dev, "unable to enable pcie_aux clock\n");
> > @@ -602,6 +607,7 @@ static void imx6_pcie_disable_ref_clk(struct imx6_pcie *imx6_pcie)
> >  		break;
> >  	case IMX8MM:
> >  	case IMX8MQ:
> > +	case IMX8MP:
> >  		clk_disable_unprepare(imx6_pcie->pcie_aux);
> >  		break;
> >  	default:
> > @@ -669,6 +675,7 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
> >  		reset_control_assert(imx6_pcie->pciephy_reset);
> >  		fallthrough;
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		reset_control_assert(imx6_pcie->apps_reset);
> >  		break;
> >  	case IMX6SX:
> > @@ -744,6 +751,7 @@ static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
> >  		break;
> >  	case IMX6Q:		/* Nothing to do */
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		break;
> >  	}
> >  
> > @@ -793,6 +801,7 @@ static void imx6_pcie_ltssm_enable(struct device *dev)
> >  	case IMX7D:
> >  	case IMX8MQ:
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		reset_control_deassert(imx6_pcie->apps_reset);
> >  		break;
> >  	}
> > @@ -812,6 +821,7 @@ static void imx6_pcie_ltssm_disable(struct device *dev)
> >  	case IMX7D:
> >  	case IMX8MQ:
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		reset_control_assert(imx6_pcie->apps_reset);
> >  		break;
> >  	}
> > @@ -1179,6 +1189,7 @@ static int imx6_pcie_probe(struct platform_device *pdev)
> >  		}
> >  		break;
> >  	case IMX8MM:
> > +	case IMX8MP:
> >  		imx6_pcie->pcie_aux = devm_clk_get(dev, "pcie_aux");
> >  		if (IS_ERR(imx6_pcie->pcie_aux))
> >  			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_aux),
> > @@ -1216,7 +1227,7 @@ static int imx6_pcie_probe(struct platform_device *pdev)
> >  
> >  	/* Grab GPR config register range */
> >  	imx6_pcie->iomuxc_gpr =
> > -		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> > +		 syscon_regmap_lookup_by_compatible(imx6_pcie->drvdata->gpr);
> >  	if (IS_ERR(imx6_pcie->iomuxc_gpr)) {
> >  		dev_err(dev, "unable to find iomuxc registers\n");
> >  		return PTR_ERR(imx6_pcie->iomuxc_gpr);
> > @@ -1295,12 +1306,14 @@ static const struct imx6_pcie_drvdata drvdata[] = {
> >  		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
> >  			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE,
> >  		.dbi_length = 0x200,
> > +		.gpr = "fsl,imx6q-iomuxc-gpr",
> >  	},
> >  	[IMX6SX] = {
> >  		.variant = IMX6SX,
> >  		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
> >  			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
> >  			 IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> > +		.gpr = "fsl,imx6q-iomuxc-gpr",
> >  	},
> >  	[IMX6QP] = {
> >  		.variant = IMX6QP,
> > @@ -1308,17 +1321,26 @@ static const struct imx6_pcie_drvdata drvdata[] = {
> >  			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
> >  			 IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> >  		.dbi_length = 0x200,
> > +		.gpr = "fsl,imx6q-iomuxc-gpr",
> >  	},
> >  	[IMX7D] = {
> >  		.variant = IMX7D,
> >  		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> > +		.gpr = "fsl,imx7d-iomuxc-gpr",
> >  	},
> >  	[IMX8MQ] = {
> >  		.variant = IMX8MQ,
> > +		.gpr = "fsl,imx8mq-iomuxc-gpr",
> >  	},
> >  	[IMX8MM] = {
> >  		.variant = IMX8MM,
> >  		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> > +		.gpr = "fsl,imx8mm-iomuxc-gpr",
> > +	},
> > +	[IMX8MP] = {
> > +		.variant = IMX8MP,
> > +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> > +		.gpr = "fsl,imx8mp-iomuxc-gpr",
> >  	},
> >  };
> >  
> > @@ -1329,6 +1351,7 @@ static const struct of_device_id imx6_pcie_of_match[] = {
> >  	{ .compatible = "fsl,imx7d-pcie",  .data = &drvdata[IMX7D],  },
> >  	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], },
> >  	{ .compatible = "fsl,imx8mm-pcie", .data = &drvdata[IMX8MM], },
> > +	{ .compatible = "fsl,imx8mp-pcie", .data = &drvdata[IMX8MP], },
> >  	{},
> >  };
> >  
> > -- 
> > 2.25.1
> > 
> > 
> > -- 
> > linux-phy mailing list
> > linux-phy@lists.infradead.org
> > https://lists.infradead.org/mailman/listinfo/linux-phy



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
