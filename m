Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C27DC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 06:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFKmB8LEwypN+62A1cEl4d/xzNnb91m2QQQE6nu2z4o=; b=YoGpyYxWRkJTg2
	aYL0NO/nZm8I7D5gAdOTEWzBLfnpraerH2r1ZeL8xQ/fgUMGWKoe60/S2ucYkWeGj/hV3GOW5rSl1
	9Ur1Kn+RkGCp9Hju+UxlpbYetxOST+Db3Ti5EbK8gHcjN2Mw0DWjiGud8A4JDO2aeOedQ40mmrcoG
	kG7F4HPBlTeNyMB7TKDYsN4H17T6/MFU9fykNfkLVHXOUTlQo3DIQu9O1etgn2eIXOwqHtfRC0/Q8
	iyYVhSbcB2ZJ+uL483WCSpEnSgqaAmemNw61s2NG53jwuLIkuufv5SgOP22tW5+RhIKmtud1zFBFJ
	9ktYIbvHKi0b04gQcelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neWXd-00HAHd-7Y; Wed, 13 Apr 2022 06:31:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neWNn-00H6e4-6E; Wed, 13 Apr 2022 06:21:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2154F61CFE;
 Wed, 13 Apr 2022 06:21:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03CD2C385A4;
 Wed, 13 Apr 2022 06:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649830897;
 bh=PkJEpxi6VUA+qtLk86iDaiVvFlVqt6aXK5VRVGUUo2c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CDSpN7RTCD2f11evp5XjIYZAoTzkMZft0mHAoOmv1qzkHpqBWJjaqx3RqlPSmAWTV
 PG8H/O4Z7YcgsA5llT4lHDx5a30VMPW6RmMun8KD5IcgLc+T1Kh3b/q8wp08GJrpLl
 +PVlkyEywL9APpG7Ti9TMKTRL5ffUWn6TT8hQFUgMay2Lz3LzYLhlubwSmH3SxUMkE
 VIOAsN35fARY8YsE2uerbuQtsESBs7yrfk2xGZehUnLElmw0uKAV9x3ro/LaSRgH3T
 gPpxLSS3rSflC8rb+6sVaoWbhj6tLj81E73hgezKSvV5j1K7AnAWpKtCWGsD4UMcO7
 23XBBr2taiBeg==
Date: Wed, 13 Apr 2022 11:51:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 robh+dt@kernel.org, andrzej.hajda@intel.com,
 narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
 daniel@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 agx@sigxcpu.org, robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 robert.foss@linaro.org
Subject: Re: [PATCH v6 resend 5/5] phy: freescale: phy-fsl-imx8-mipi-dphy:
 Add i.MX8qxp LVDS PHY mode support
Message-ID: <YlZr7bhjw6nwz8IM@matsya>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
 <20220402052451.2517469-6-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220402052451.2517469-6-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_232139_377937_DE40CDE4 
X-CRM114-Status: GOOD (  36.12  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 02-04-22, 13:24, Liu Ying wrote:
> i.MX8qxp SoC embeds a Mixel MIPI DPHY + LVDS PHY combo which supports
> either a MIPI DSI display or a LVDS display.  The PHY mode is controlled
> by SCU firmware and the driver would call a SCU firmware function to
> configure the PHY mode.  The single LVDS PHY has 4 data lanes to support
> a LVDS display.  Also, with a master LVDS PHY and a slave LVDS PHY, they
> may work together to support a LVDS display with 8 data lanes(usually, du=
al
> LVDS link display).  Note that this patch supports the LVDS PHY mode only
> for the i.MX8qxp Mixel combo PHY, i.e., the MIPI DPHY mode is yet to be
> supported, so for now error would be returned from ->set_mode() if MIPI
> DPHY mode is passed over to it for the combo PHY.
> =

> Cc: Guido G=FCnther <agx@sigxcpu.org>
> Cc: Robert Chiras <robert.chiras@nxp.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v5->v6:
> * No change.
> =

> v4->v5:
> * No change.
> =

> v3->v4:
> * Add Guido's R-b tag.
> =

> v2->v3:
> * Improve readability of mixel_dphy_set_mode(). (Guido)
> =

> v1->v2:
> * Print invalid PHY mode in dmesg. (Guido)
> =

>  .../phy/freescale/phy-fsl-imx8-mipi-dphy.c    | 269 +++++++++++++++++-
>  1 file changed, 258 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c b/drivers/phy=
/freescale/phy-fsl-imx8-mipi-dphy.c
> index a95572b397ca..af1ecda091c7 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> @@ -4,17 +4,31 @@
>   * Copyright 2019 Purism SPC
>   */
>  =

> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/clk-provider.h>
>  #include <linux/delay.h>
> +#include <linux/firmware/imx/ipc.h>
> +#include <linux/firmware/imx/svc/misc.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> +#include <dt-bindings/firmware/imx/rsrc.h>
> +
> +/* Control and Status Registers(CSR) */
> +#define PHY_CTRL			0x00
> +#define  CCM_MASK			GENMASK(7, 5)
> +#define  CCM(n)				FIELD_PREP(CCM_MASK, (n))
> +#define  CA_MASK			GENMASK(4, 2)
> +#define  CA(n)				FIELD_PREP(CA_MASK, (n))
> +#define  RFB				BIT(1)
> +#define  LVDS_EN			BIT(0)
>  =

>  /* DPHY registers */
>  #define DPHY_PD_DPHY			0x00
> @@ -55,8 +69,15 @@
>  #define PWR_ON	0
>  #define PWR_OFF	1
>  =

> +#define MIN_VCO_FREQ 640000000
> +#define MAX_VCO_FREQ 1500000000
> +
> +#define MIN_LVDS_REFCLK_FREQ 24000000
> +#define MAX_LVDS_REFCLK_FREQ 150000000
> +
>  enum mixel_dphy_devtype {
>  	MIXEL_IMX8MQ,
> +	MIXEL_IMX8QXP,
>  };
>  =

>  struct mixel_dphy_devdata {
> @@ -65,6 +86,7 @@ struct mixel_dphy_devdata {
>  	u8 reg_rxlprp;
>  	u8 reg_rxcdrp;
>  	u8 reg_rxhs_settle;
> +	bool is_combo;	/* MIPI DPHY and LVDS PHY combo */
>  };
>  =

>  static const struct mixel_dphy_devdata mixel_dphy_devdata[] =3D {
> @@ -74,6 +96,10 @@ static const struct mixel_dphy_devdata mixel_dphy_devd=
ata[] =3D {
>  		.reg_rxlprp =3D 0x40,
>  		.reg_rxcdrp =3D 0x44,
>  		.reg_rxhs_settle =3D 0x48,
> +		.is_combo =3D false,
> +	},
> +	[MIXEL_IMX8QXP] =3D {
> +		.is_combo =3D true,
>  	},
>  };
>  =

> @@ -95,8 +121,12 @@ struct mixel_dphy_cfg {
>  struct mixel_dphy_priv {
>  	struct mixel_dphy_cfg cfg;
>  	struct regmap *regmap;
> +	struct regmap *lvds_regmap;
>  	struct clk *phy_ref_clk;
>  	const struct mixel_dphy_devdata *devdata;
> +	struct imx_sc_ipc *ipc_handle;
> +	bool is_slave;
> +	int id;
>  };
>  =

>  static const struct regmap_config mixel_dphy_regmap_config =3D {
> @@ -317,7 +347,8 @@ static int mixel_dphy_set_pll_params(struct phy *phy)
>  	return 0;
>  }
>  =

> -static int mixel_dphy_configure(struct phy *phy, union phy_configure_opt=
s *opts)
> +static int
> +mixel_dphy_configure_mipi_dphy(struct phy *phy, union phy_configure_opts=
 *opts)

Please dont change things like this.. A patch should do only one thing :)

>  {
>  	struct mixel_dphy_priv *priv =3D phy_get_drvdata(phy);
>  	struct mixel_dphy_cfg cfg =3D { 0 };
> @@ -345,15 +376,121 @@ static int mixel_dphy_configure(struct phy *phy, u=
nion phy_configure_opts *opts)
>  	return 0;
>  }
>  =

> +static int
> +mixel_dphy_configure_lvds_phy(struct phy *phy, union phy_configure_opts =
*opts)
> +{
> +	struct mixel_dphy_priv *priv =3D phy_get_drvdata(phy);
> +	struct phy_configure_opts_lvds *lvds_opts =3D &opts->lvds;
> +	unsigned long data_rate;
> +	unsigned long fvco;
> +	u32 rsc;
> +	u32 co;
> +	int ret;
> +
> +	priv->is_slave =3D lvds_opts->is_slave;

I think you should check if lvds_opts is valid before dereferencing it..

> +
> +	/* LVDS interface pins */
> +	regmap_write(priv->lvds_regmap, PHY_CTRL, CCM(0x5) | CA(0x4) | RFB);

can we avoid magic numbers?

> +
> +	/* enable MODE8 only for slave LVDS PHY */
> +	rsc =3D priv->id ? IMX_SC_R_MIPI_1 : IMX_SC_R_MIPI_0;
> +	ret =3D imx_sc_misc_set_control(priv->ipc_handle, rsc, IMX_SC_C_DUAL_MO=
DE,
> +				      lvds_opts->is_slave);
> +	if (ret) {
> +		dev_err(&phy->dev, "Failed to configure MODE8: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Choose an appropriate divider ratio to meet the requirement of
> +	 * PLL VCO frequency range.
> +	 *
> +	 *  -----  640MHz ~ 1500MHz   ------------      ---------------
> +	 * | VCO | ----------------> | CO divider | -> | LVDS data rate|
> +	 *  -----       FVCO          ------------      ---------------
> +	 *                            1/2/4/8 div     7 * differential_clk_rate
> +	 */
> +	data_rate =3D 7 * lvds_opts->differential_clk_rate;
> +	for (co =3D 1; co <=3D 8; co *=3D 2) {
> +		fvco =3D data_rate * co;
> +
> +		if (fvco >=3D MIN_VCO_FREQ)
> +			break;
> +	}
> +
> +	if (fvco < MIN_VCO_FREQ || fvco > MAX_VCO_FREQ) {
> +		dev_err(&phy->dev, "VCO frequency %lu is out of range\n", fvco);
> +		return -ERANGE;
> +	}
> +
> +	/*
> +	 * CO is configurable, while CN and CM are not,
> +	 * as fixed ratios 1 and 7 are applied respectively.
> +	 */
> +	phy_write(phy, __ffs(co), DPHY_CO);
> +
> +	/* set reference clock rate */
> +	clk_set_rate(priv->phy_ref_clk, lvds_opts->differential_clk_rate);
> +
> +	return ret;
> +}
> +
> +static int mixel_dphy_configure(struct phy *phy, union phy_configure_opt=
s *opts)
> +{
> +	if (phy->attrs.mode =3D=3D PHY_MODE_MIPI_DPHY)
> +		return mixel_dphy_configure_mipi_dphy(phy, opts);
> +	else if (phy->attrs.mode =3D=3D PHY_MODE_LVDS)
> +		return mixel_dphy_configure_lvds_phy(phy, opts);
> +
> +	dev_err(&phy->dev,
> +		"Failed to configure PHY with invalid PHY mode: %d\n",
> +							phy->attrs.mode);

single line for this please

> +	return -EINVAL;
> +}
> +
> +static int
> +mixel_dphy_validate_lvds_phy(struct phy *phy, union phy_configure_opts *=
opts)
> +{
> +	struct phy_configure_opts_lvds *lvds_cfg =3D &opts->lvds;
> +
> +	if (lvds_cfg->bits_per_lane_and_dclk_cycle !=3D 7) {
> +		dev_err(&phy->dev, "Invalid bits per LVDS data lane: %u\n",
> +					lvds_cfg->bits_per_lane_and_dclk_cycle);
> +		return -EINVAL;
> +	}
> +
> +	if (lvds_cfg->lanes !=3D 4) {
> +		dev_err(&phy->dev, "Invalid LVDS data lanes: %u\n",
> +						lvds_cfg->lanes);

here too, make it better read

> +		return -EINVAL;
> +	}
> +
> +	if (lvds_cfg->differential_clk_rate < MIN_LVDS_REFCLK_FREQ ||
> +	    lvds_cfg->differential_clk_rate > MAX_LVDS_REFCLK_FREQ) {
> +		dev_err(&phy->dev,
> +			"Invalid LVDS differential clock rate: %lu\n",
> +					lvds_cfg->differential_clk_rate);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int mixel_dphy_validate(struct phy *phy, enum phy_mode mode, int =
submode,
>  			       union phy_configure_opts *opts)
>  {
> -	struct mixel_dphy_cfg cfg =3D { 0 };
> +	if (mode =3D=3D PHY_MODE_MIPI_DPHY) {
> +		struct mixel_dphy_cfg mipi_dphy_cfg =3D { 0 };
>  =

> -	if (mode !=3D PHY_MODE_MIPI_DPHY)
> -		return -EINVAL;
> +		return mixel_dphy_config_from_opts(phy, &opts->mipi_dphy,
> +							&mipi_dphy_cfg);

the line should be justified to previos line open brace (checkpatch
--strict will warn you about this style miss)

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
