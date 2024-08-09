Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF590C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Aug 2024 01:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaHhGBW7yE9ukvsCxrAb0zMSOv9BoaNDaoXwuWEbKGI=; b=PTMNUM/xsmxuu2
	8aZTaqLlgUM3D3nh2rTW7I3g/Aqoh/xykF9oTi+2Ysa20OGop3TVioxBWEyAKpOTSNFVtPAvKHvku
	Od6Gak9h+44lfsoCnxrnrlUoGncMUu2uRFbONLwD7ulfD3dfbyxzwG3dw7TVpb2syA20xzz1JSu+S
	LCZaiPyS9X6iyfts93tI4jtRpRAJ2xwQ5XEpmcvoV0H9bO0wPlx7Na9YRoSm1zdIm+ILjQlTjH51O
	+JKH3RFKjOk5OkjAl+t+vmHYEG6n3w3Cyzvw7X8+mQmKo0qCeFFt7PSmV92dUhDpNgDJCehDEFF8L
	bxbP3KosRZogUea1rRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEXj-00000009wzI-2cRS;
	Fri, 09 Aug 2024 01:35:47 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEX9-00000009wvr-0oNQ;
	Fri, 09 Aug 2024 01:35:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 765CDCE09E5;
	Fri,  9 Aug 2024 01:35:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 965C2C32782;
	Fri,  9 Aug 2024 01:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723167306;
	bh=LFEgXJKSyt4qNIs+K9NqPr2CeVGDWds1sfYfazW1BTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KqL85Yk3ejYMz8Cra0kodYqHmbn4RRx2NUY3Xg8grpIYaLBIRb3xadrdtF1VfTwD8
	 +eMEm8zqkzE8umViToR2Whe/HGGN/M5s84rlPR3TZjsTRc7JdtvSheqLIc0pPiArRk
	 edFvIyBpLm1qfJr2uwE6d6aOKqytpYA7gsrnG8F2QSVPYWaT4TEljz3Wkgbo19mJWJ
	 lao+Qdf4mB0dXFbNRM+QU3Bzv5kZpYkIwdQk7MtacSBCI4IJ6I7VMFAJoUOEXCvfS2
	 VOCnPr7J/VUGeb5kSrIkPebKTuZ+vMIpbG6c9tqR7t24jQBHYMLuGTwwAbFAGX0VNW
	 96H1UN1ZKgBrw==
Date: Fri, 9 Aug 2024 09:34:58 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 4/6] usb: phy: mxs: add wakeup enable for imx7ulp
Message-ID: <20240809013458.GE2673490@nchen-desktop>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-4-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726113207.3393247-4-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_183511_609638_B7076D7F 
X-CRM114-Status: GOOD (  26.13  )
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

On 24-07-26 19:32:05, Xu Yang wrote:
> This wakeup setting can enable USB wakeup function even the
> controller's power is lost, and both A7 and M4 are in VLLS mode.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Reviewed-by: Peter Chen <peter.chen@kernel.org>
> 
> ---
> Changes in v2:
>  - no changes
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 41 +++++++++++++++++++++++++++++++++--
>  1 file changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index e172af75f602..acaae22df3ba 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -118,6 +118,11 @@
>  #define BM_ANADIG_USB2_MISC_RX_VPIN_FS		BIT(29)
>  #define BM_ANADIG_USB2_MISC_RX_VMIN_FS		BIT(28)
>  
> +/* System Integration Module (SIM) Registers */
> +#define SIM_GPR1				0x30
> +
> +#define USB_PHY_VLLS_WAKEUP_EN			BIT(0)
> +
>  #define to_mxs_phy(p) container_of((p), struct mxs_phy, phy)
>  
>  /* Do disconnection between PHY and controller without vbus */
> @@ -214,6 +219,7 @@ struct mxs_phy {
>  	struct clk *clk;
>  	const struct mxs_phy_data *data;
>  	struct regmap *regmap_anatop;
> +	struct regmap *regmap_sim;
>  	int port_id;
>  	u32 tx_reg_set;
>  	u32 tx_reg_mask;
> @@ -772,6 +778,17 @@ static int mxs_phy_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> +	/* Currently, only imx7ulp has SIM module */
> +	if (of_get_property(np, "nxp,sim", NULL)) {
> +		mxs_phy->regmap_sim = syscon_regmap_lookup_by_phandle
> +			(np, "nxp,sim");
> +		if (IS_ERR(mxs_phy->regmap_sim)) {
> +			dev_dbg(&pdev->dev,
> +				"failed to find regmap for sim\n");
> +			return PTR_ERR(mxs_phy->regmap_sim);
> +		}
> +	}
> +
>  	/* Precompute which bits of the TX register are to be updated, if any */
>  	if (!of_property_read_u32(np, "fsl,tx-cal-45-dn-ohms", &val) &&
>  	    val >= MXS_PHY_TX_CAL45_MIN && val <= MXS_PHY_TX_CAL45_MAX) {
> @@ -849,6 +866,22 @@ static void mxs_phy_remove(struct platform_device *pdev)
>  }
>  
>  #ifdef CONFIG_PM_SLEEP
> +static void mxs_phy_wakeup_enable(struct mxs_phy *mxs_phy, bool on)
> +{
> +	u32 mask = USB_PHY_VLLS_WAKEUP_EN;
> +
> +	/* If the SoCs don't have SIM, quit */
> +	if (!mxs_phy->regmap_sim)
> +		return;
> +
> +	if (on) {
> +		regmap_update_bits(mxs_phy->regmap_sim, SIM_GPR1, mask, mask);
> +		udelay(500);
> +	} else {
> +		regmap_update_bits(mxs_phy->regmap_sim, SIM_GPR1, mask, 0);
> +	}
> +}
> +
>  static void mxs_phy_enable_ldo_in_suspend(struct mxs_phy *mxs_phy, bool on)
>  {
>  	unsigned int reg = on ? ANADIG_ANA_MISC0_SET : ANADIG_ANA_MISC0_CLR;
> @@ -869,8 +902,10 @@ static int mxs_phy_system_suspend(struct device *dev)
>  {
>  	struct mxs_phy *mxs_phy = dev_get_drvdata(dev);
>  
> -	if (device_may_wakeup(dev))
> +	if (device_may_wakeup(dev)) {
>  		mxs_phy_enable_ldo_in_suspend(mxs_phy, true);
> +		mxs_phy_wakeup_enable(mxs_phy, true);
> +	}
>  
>  	return 0;
>  }
> @@ -879,8 +914,10 @@ static int mxs_phy_system_resume(struct device *dev)
>  {
>  	struct mxs_phy *mxs_phy = dev_get_drvdata(dev);
>  
> -	if (device_may_wakeup(dev))
> +	if (device_may_wakeup(dev)) {
>  		mxs_phy_enable_ldo_in_suspend(mxs_phy, false);
> +		mxs_phy_wakeup_enable(mxs_phy, false);
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
