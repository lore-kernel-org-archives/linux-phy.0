Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10D30C6FA8B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZ4HZdIuO9mrvE1b9hTYOgN1UxdEwhOxoaabxg8JXig=; b=smUPF+LP6mS8Hm
	zr4agI9EXiblRKiaBg1f3aobNUICyMrXS9D673Ek1Ht63j8azjSIJeTb3KP936jQaLhNvdVRkVsgD
	FpfCCvWwXOJI9dg4pGMC7eq099XPxjG4uY6glSgw3fduzlGbnTaoU0A3JIseoDqLG8Kq48dwWA6dP
	lsgxVzQnv3phqlNG8bcqroxXN7mwV8j8R+PgOl3zix77868byVSbUwCiUlqaB7mUlSE3tMYf+BFzH
	zRZEVFnDybwInml8tF8tLBCmhmwfQEoattMl/NUubNCZogmpCP31XEDVQO7YFIEZbJrt3BFIEbpPS
	kA34yQHkMVgKRWal4Pgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaok-0035kn-Gp; Tue, 20 Sep 2022 10:49:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaoc-0035f6-T8
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 10:49:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaaoB-0001qZ-9w; Tue, 20 Sep 2022 12:48:55 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaaoA-0000IP-D5; Tue, 20 Sep 2022 12:48:54 +0200
Date: Tue, 20 Sep 2022 12:48:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, jacopo@jmondi.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <20220920104854.2wugqxffkf4qeib6@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhktzmcgXKnrMFU@pendragon.ideasonboard.com>
 <20220919171142.6av6ap5gwweldado@pengutronix.de>
 <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_034923_484635_1E6F98D7 
X-CRM114-Status: GOOD (  39.89  )
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

Hi Laurent,

On 22-09-19, Laurent Pinchart wrote:
> Hi Marco,
> =

> On Mon, Sep 19, 2022 at 07:11:42PM +0200, Marco Felsch wrote:
> > On 22-09-19, Laurent Pinchart wrote:
> > > On Fri, Sep 16, 2022 at 03:45:35PM +0200, Marco Felsch wrote:
> > > > Adding support for the TC358746 parallel <-> MIPI CSI bridge. This =
chip
> > > > supports two operating modes:
> > > >   1st) parallel-in -> mipi-csi out
> > > >   2nd) mipi-csi in -> parallel out
> > > > =

> > > > This patch only adds the support for the 1st mode.
> > > > =

> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > > Changelog:
> > > > =

> > > > v2:
> > > > - use the correct CID_LINK_FREQ control to query the sensor_pclk_ra=
te
> > > > - remove now not needed tc358746_link_setup() and
> > > >   struct v4l2_ctrl sensor_pclk_ctrl
> > > > - call v4l2_subdev_link_validate_default() during link validation
> > > > - remove MEDIA_BUS_FMT_GBR888_1X24/YUV444 format support
> > > > - use subdev active_state API
> > > > - replace own .get_fmt with v4l2_subdev_get_fmt
> > > > - remove unnecessary pad checks
> > > > - restructure tc358746_get_format_by_code() if-case
> > > > - move apply_dphy_config|apply_misc_config from resume intos s_stre=
am
> > > > - use goto in s_stream enable case
> > > > - fix error handling in suspend/resume
> > > > - split probe() into more sub-functions
> > > > - use dev_dbg() for printing successful probe
> > > > =

> > > >  drivers/media/i2c/Kconfig    |   17 +
> > > >  drivers/media/i2c/Makefile   |    1 +
> > > >  drivers/media/i2c/tc358746.c | 1682 ++++++++++++++++++++++++++++++=
++++
> > > >  3 files changed, 1700 insertions(+)
> > > >  create mode 100644 drivers/media/i2c/tc358746.c
> > > > =

> > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > index 7806d4b81716..aefb9c9e0c08 100644
> > > > --- a/drivers/media/i2c/Kconfig
> > > > +++ b/drivers/media/i2c/Kconfig
> > > > @@ -1272,6 +1272,23 @@ config VIDEO_TC358743_CEC
> > > >  	  When selected the tc358743 will support the optional
> > > >  	  HDMI CEC feature.
> > > >  =

> > > > +config VIDEO_TC358746
> > > > +	tristate "Toshiba TC358746 parallel-CSI2 bridge"
> > > > +	depends on VIDEO_DEV && I2C
> > > > +	select VIDEO_V4L2_SUBDEV_API
> > > > +	select MEDIA_CONTROLLER
> > > > +	select V4L2_FWNODE
> > > > +	select GENERIC_PHY_MIPI_DPHY
> > > > +	select REGMAP_I2C
> > > > +	select COMMON_CLK
> > > > +	help
> > > > +	  Support for the Toshiba TC358746 parallel to MIPI CSI-2 bridge.
> > > > +	  The bridge can work in both directions but currently only the
> > > > +	  parallel-in / csi-out path is supported.
> > > > +
> > > > +	  To compile this driver as a module, choose M here: the
> > > > +	  module will be called tc358746.
> > > > +
> > > >  config VIDEO_TVP514X
> > > >  	tristate "Texas Instruments TVP514x video decoder"
> > > >  	depends on VIDEO_DEV && I2C
> > > > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > > > index 0a2933103dd9..d1096c2ab480 100644
> > > > --- a/drivers/media/i2c/Makefile
> > > > +++ b/drivers/media/i2c/Makefile
> > > > @@ -118,6 +118,7 @@ obj-$(CONFIG_VIDEO_SONY_BTF_MPX) +=3D sony-btf-=
mpx.o
> > > >  obj-$(CONFIG_VIDEO_SR030PC30) +=3D sr030pc30.o
> > > >  obj-$(CONFIG_VIDEO_ST_MIPID02) +=3D st-mipid02.o
> > > >  obj-$(CONFIG_VIDEO_TC358743) +=3D tc358743.o
> > > > +obj-$(CONFIG_VIDEO_TC358746) +=3D tc358746.o
> > > >  obj-$(CONFIG_VIDEO_TDA1997X) +=3D tda1997x.o
> > > >  obj-$(CONFIG_VIDEO_TDA7432) +=3D tda7432.o
> > > >  obj-$(CONFIG_VIDEO_TDA9840) +=3D tda9840.o
> > > > diff --git a/drivers/media/i2c/tc358746.c b/drivers/media/i2c/tc358=
746.c
> > > > new file mode 100644
> > > > index 000000000000..4f1a809b9fc3
> > > > --- /dev/null
> > > > +++ b/drivers/media/i2c/tc358746.c
> > > > @@ -0,0 +1,1682 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * TC358746 - Parallel <-> CSI-2 Bridge
> > > > + *
> > > > + * Copyright 2022 Marco Felsch <kernel@pengutronix.de>
> > > > + *
> > > > + * Notes:
> > > > + *  - Currently only 'Parallel-in -> CSI-out' mode is supported!
> > > > + */
> > > > +
> > > > +#include <linux/bitfield.h>
> > > > +#include <linux/clk.h>
> > > > +#include <linux/clk-provider.h>
> > > > +#include <linux/delay.h>
> > > > +#include <linux/i2c.h>
> > > > +#include <linux/interrupt.h>
> > > > +#include <linux/kernel.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/phy/phy-mipi-dphy.h>
> > > > +#include <linux/property.h>
> > > > +#include <linux/pm_runtime.h>
> > > > +#include <linux/regmap.h>
> > > > +#include <media/v4l2-ctrls.h>
> > > > +#include <media/v4l2-device.h>
> > > > +#include <media/v4l2-fwnode.h>
> > > > +#include <media/v4l2-mc.h>
> > > > +
> > > > +/* 16-bit registers */
> > > > +#define CHIPID_REG			0x0000
> > > > +#define		CHIPID			GENMASK(15, 8)
> > > > +
> > > > +#define SYSCTL_REG			0x0002
> > > > +#define		SRESET			BIT(0)
> > > > +
> > > > +#define CONFCTL_REG			0x0004
> > > > +#define		PDATAF_MASK		GENMASK(9, 8)
> > > > +#define		PDATAF_MODE0		0
> > > > +#define		PDATAF_MODE1		1
> > > > +#define		PDATAF_MODE2		2
> > > > +#define		PDATAF(val)		FIELD_PREP(PDATAF_MASK, (val))
> > > > +#define		PPEN			BIT(6)
> > > > +#define		DATALANE_MASK		GENMASK(1, 0)
> > > > +
> > > > +#define FIFOCTL_REG			0x0006
> > > > +#define DATAFMT_REG			0x0008
> > > > +#define		PDFMT(val)		FIELD_PREP(GENMASK(7, 4), (val))
> > > > +
> > > > +#define MCLKCTL_REG			0x000c
> > > > +#define		MCLK_HIGH_MASK		GENMASK(15, 8)
> > > > +#define		MCLK_LOW_MASK		GENMASK(7, 0)
> > > > +#define		MCLK_HIGH(val)		FIELD_PREP(MCLK_HIGH_MASK, (val))
> > > > +#define		MCLK_LOW(val)		FIELD_PREP(MCLK_LOW_MASK, (val))
> > > > +
> > > > +#define PLLCTL0_REG			0x0016
> > > > +#define		PLL_PRD_MASK		GENMASK(15, 12)
> > > > +#define		PLL_PRD(val)		FIELD_PREP(PLL_PRD_MASK, (val))
> > > > +#define		PLL_FBD_MASK		GENMASK(8, 0)
> > > > +#define		PLL_FBD(val)		FIELD_PREP(PLL_FBD_MASK, (val))
> > > > +
> > > > +#define PLLCTL1_REG			0x0018
> > > > +#define		PLL_FRS_MASK		GENMASK(11, 10)
> > > > +#define		PLL_FRS(val)		FIELD_PREP(PLL_FRS_MASK, (val))
> > > > +#define		CKEN			BIT(4)
> > > > +#define		RESETB			BIT(1)
> > > > +#define		PLL_EN			BIT(0)
> > > > +
> > > > +#define CLKCTL_REG			0x0020
> > > > +#define		MCLKDIV_MASK		GENMASK(3, 2)
> > > > +#define		MCLKDIV(val)		FIELD_PREP(MCLKDIV_MASK, (val))
> > > > +#define		MCLKDIV_8		0
> > > > +#define		MCLKDIV_4		1
> > > > +#define		MCLKDIV_2		2
> > > > +
> > > > +#define WORDCNT_REG			0x0022
> > > > +#define PP_MISC_REG			0x0032
> > > > +#define		FRMSTOP			BIT(15)
> > > > +#define		RSTPTR			BIT(14)
> > > > +
> > > > +/* 32-bit registers */
> > > > +#define CLW_DPHYCONTTX_REG		0x0100
> > > > +#define CLW_CNTRL_REG			0x0140
> > > > +#define D0W_CNTRL_REG			0x0144
> > > > +#define		LANEDISABLE		BIT(0)
> > > > +
> > > > +#define STARTCNTRL_REG			0x0204
> > > > +#define		START			BIT(0)
> > > > +
> > > > +#define LINEINITCNT_REG			0x0210
> > > > +#define LPTXTIMECNT_REG			0x0214
> > > > +#define TCLK_HEADERCNT_REG		0x0218
> > > > +#define		TCLK_ZEROCNT(val)	FIELD_PREP(GENMASK(15, 8), (val))
> > > > +#define		TCLK_PREPARECNT(val)	FIELD_PREP(GENMASK(6, 0), (val))
> > > > +
> > > > +#define TCLK_TRAILCNT_REG		0x021C
> > > > +#define THS_HEADERCNT_REG		0x0220
> > > > +#define		THS_ZEROCNT(val)	FIELD_PREP(GENMASK(14, 8), (val))
> > > > +#define		THS_PREPARECNT(val)	FIELD_PREP(GENMASK(6, 0), (val))
> > > > +
> > > > +#define TWAKEUP_REG			0x0224
> > > > +#define TCLK_POSTCNT_REG		0x0228
> > > > +#define THS_TRAILCNT_REG		0x022C
> > > > +#define HSTXVREGEN_REG			0x0234
> > > > +#define TXOPTIONCNTRL_REG		0x0238
> > > > +#define CSI_CONTROL_REG			0x040C
> > > > +#define		CSI_MODE		BIT(15)
> > > > +#define		TXHSMD			BIT(7)
> > > > +#define		NOL(val)		FIELD_PREP(GENMASK(2, 1), (val))
> > > > +
> > > > +#define CSI_CONFW_REG			0x0500
> > > > +#define		MODE(val)		FIELD_PREP(GENMASK(31, 29), (val))
> > > > +#define		MODE_SET		0x5
> > > > +#define		ADDRESS(val)		FIELD_PREP(GENMASK(28, 24), (val))
> > > > +#define		CSI_CONTROL_ADDRESS	0x3
> > > > +#define		DATA(val)		FIELD_PREP(GENMASK(15, 0), (val))
> > > > +
> > > > +#define CSI_START_REG			0x0518
> > > > +#define		STRT			BIT(0)
> > > > +
> > > > +static const struct v4l2_mbus_framefmt tc358746_def_fmt =3D {
> > > > +	.width		=3D 640,
> > > > +	.height		=3D 480,
> > > > +	.code		=3D MEDIA_BUS_FMT_UYVY8_2X8,
> > > > +	.field		=3D V4L2_FIELD_NONE,
> > > > +	.colorspace	=3D V4L2_COLORSPACE_DEFAULT,
> > > > +	.ycbcr_enc	=3D V4L2_YCBCR_ENC_DEFAULT,
> > > > +	.quantization	=3D V4L2_QUANTIZATION_DEFAULT,
> > > > +	.xfer_func	=3D V4L2_XFER_FUNC_DEFAULT,
> > > > +};
> > > > +
> > > > +static const char * const tc358746_supplies[] =3D {
> > > > +	"vddc", "vddio", "vddmipi"
> > > > +};
> > > > +
> > > > +enum {
> > > > +	TC358746_SINK,
> > > > +	TC358746_SOURCE,
> > > > +	TC358746_NR_PADS
> > > > +};
> > > > +
> > > > +struct tc358746 {
> > > > +	struct v4l2_subdev		sd;
> > > > +	struct media_pad		pads[TC358746_NR_PADS];
> > > > +	struct v4l2_async_notifier	notifier;
> > > > +	struct v4l2_fwnode_endpoint	csi_vep;
> > > > +
> > > > +	struct v4l2_ctrl_handler	ctrl_hdl;
> > > > +
> > > > +	struct regmap			*regmap;
> > > > +	struct clk			*refclk;
> > > > +	struct gpio_desc		*reset_gpio;
> > > > +	struct regulator_bulk_data	supplies[ARRAY_SIZE(tc358746_supplies)=
];
> > > > +
> > > > +	struct clk_hw			mclk_hw;
> > > > +	unsigned long			mclk_rate;
> > > > +	u8				mclk_prediv;
> > > > +	u16				mclk_postdiv;
> > > > +
> > > > +	unsigned long			pll_rate;
> > > > +	u8				pll_post_div;
> > > > +	u16				pll_pre_div;
> > > > +	u16				pll_mul;
> > > > +
> > > > +#define TC358746_VB_MAX_SIZE		(511 * 32)
> > > > +#define TC358746_VB_DEFAULT_SIZE	  (1 * 32)
> > > > +	unsigned int			vb_size; /* Video buffer size in bits */
> > > > +
> > > > +	struct phy_configure_opts_mipi_dphy dphy_cfg;
> > > > +};
> > > > +
> > > > +static inline struct tc358746 *to_tc358746(struct v4l2_subdev *sd)
> > > > +{
> > > > +	return container_of(sd, struct tc358746, sd);
> > > > +}
> > > > +
> > > > +static inline struct tc358746 *clk_hw_to_tc358746(struct clk_hw *h=
w)
> > > > +{
> > > > +	return container_of(hw, struct tc358746, mclk_hw);
> > > > +}
> > > > +
> > > > +struct tc358746_format {
> > > > +	u32		code;
> > > > +	bool		csi_format;
> > > > +	unsigned char	bus_width;
> > > > +	unsigned char	bpp;
> > > > +	/* Register values */
> > > > +	u8		pdformat; /* Peripheral Data Format */
> > > > +	u8		pdataf;   /* Parallel Data Format Option */
> > > > +};
> > > > +
> > > > +enum {
> > > > +	PDFORMAT_RAW8 =3D 0,
> > > > +	PDFORMAT_RAW10,
> > > > +	PDFORMAT_RAW12,
> > > > +	PDFORMAT_RGB888,
> > > > +	PDFORMAT_RGB666,
> > > > +	PDFORMAT_RGB565,
> > > > +	PDFORMAT_YUV422_8BIT,
> > > > +	/* RESERVED =3D 7 */
> > > > +	PDFORMAT_RAW14 =3D 8,
> > > > +	PDFORMAT_YUV422_10BIT,
> > > > +	PDFORMAT_YUV444,
> > > > +};
> > > > +
> > > > +/* Check tc358746_src_mbus_code() if you add new formats */
> > > > +static const struct tc358746_format tc358746_formats[] =3D {
> > > > +	{
> > > > +		.code =3D MEDIA_BUS_FMT_UYVY8_2X8,
> > > > +		.bus_width =3D 8,
> > > > +		.bpp =3D 16,
> > > > +		.pdformat =3D PDFORMAT_YUV422_8BIT,
> > > > +		.pdataf =3D PDATAF_MODE0,
> > > > +	}, {
> > > > +		.code =3D MEDIA_BUS_FMT_UYVY8_1X16,
> > > > +		.csi_format =3D true,
> > > > +		.bus_width =3D 16,
> > > > +		.bpp =3D 16,
> > > > +		.pdformat =3D PDFORMAT_YUV422_8BIT,
> > > > +		.pdataf =3D PDATAF_MODE1,
> > > > +	}, {
> > > > +		.code =3D MEDIA_BUS_FMT_YUYV8_1X16,
> > > > +		.csi_format =3D true,
> > > > +		.bus_width =3D 16,
> > > > +		.bpp =3D 16,
> > > > +		.pdformat =3D PDFORMAT_YUV422_8BIT,
> > > > +		.pdataf =3D PDATAF_MODE2,
> > > > +	}, {
> > > > +		.code =3D MEDIA_BUS_FMT_UYVY10_2X10,
> > > > +		.bus_width =3D 10,
> > > > +		.bpp =3D 20,
> > > > +		.pdformat =3D PDFORMAT_YUV422_10BIT,
> > > > +		.pdataf =3D PDATAF_MODE0, /* don't care */
> > > > +	}
> > > > +};
> > > > +
> > > > +/* Get n-th format for pad */
> > > > +static const struct tc358746_format *
> > > > +tc358746_get_format_by_idx(unsigned int pad, unsigned int index)
> > > > +{
> > > > +	unsigned int idx =3D 0;
> > > > +	unsigned int i;
> > > > +
> > > > +	for (i =3D 0; i < ARRAY_SIZE(tc358746_formats); i++) {
> > > > +		const struct tc358746_format *fmt =3D &tc358746_formats[i];
> > > > +
> > > > +		if ((pad =3D=3D TC358746_SOURCE && fmt->csi_format) ||
> > > > +		    (pad =3D=3D TC358746_SINK)) {
> > > > +			if (idx =3D=3D index)
> > > > +				return fmt;
> > > > +			idx++;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	return ERR_PTR(-EINVAL);
> > > > +}
> > > > +
> > > > +static const struct tc358746_format *
> > > > +tc358746_get_format_by_code(unsigned int pad, u32 code)
> > > > +{
> > > > +	unsigned int i;
> > > > +
> > > > +	for (i =3D 0; i < ARRAY_SIZE(tc358746_formats); i++) {
> > > > +		const struct tc358746_format *fmt =3D &tc358746_formats[i];
> > > > +
> > > > +		if (pad =3D=3D TC358746_SINK && fmt->code =3D=3D code)
> > > > +			return fmt;
> > > > +
> > > > +		if (pad =3D=3D TC358746_SOURCE && !fmt->csi_format)
> > > > +			continue;
> > > > +
> > > > +		if (fmt->code =3D=3D code)
> > > > +			return fmt;
> > > > +	}
> > > > +
> > > > +	return ERR_PTR(-EINVAL);
> > > > +}
> > > > +
> > > > +static u32 tc358746_src_mbus_code(u32 code)
> > > > +{
> > > > +	switch (code) {
> > > > +	case MEDIA_BUS_FMT_UYVY8_2X8:
> > > > +		return MEDIA_BUS_FMT_UYVY8_1X16;
> > > > +	case MEDIA_BUS_FMT_UYVY10_2X10:
> > > > +		return MEDIA_BUS_FMT_UYVY10_1X20;
> > > > +	default:
> > > > +		return code;
> > > > +	}
> > > > +}
> > > > +
> > > > +static bool tc358746_writeable_reg(struct device *dev, unsigned in=
t reg)
> > > > +{
> > > > +	switch (reg) {
> > > > +	case SYSCTL_REG ... CSI_START_REG:
> > > > +		return true;
> > > > +	default:
> > > > +		return false;
> > > > +	}
> > > > +}
> > > > +
> > > > +static bool tc358746_readable_reg(struct device *dev, unsigned int=
 reg)
> > > > +{
> > > > +	switch (reg) {
> > > > +	case CHIPID_REG ... CSI_START_REG:
> > > > +		return true;
> > > > +	default:
> > > > +		return false;
> > > > +	}
> > > > +}
> > > > +
> > > > +static const struct regmap_config tc358746_regmap_config =3D {
> > > > +	.name =3D "tc358746",
> > > > +	.reg_bits =3D 16,
> > > > +	.val_bits =3D 16,
> > > > +	.max_register =3D CSI_START_REG,
> > > > +	.writeable_reg =3D tc358746_writeable_reg,
> > > > +	.readable_reg =3D tc358746_readable_reg,
> > > > +	.reg_format_endian =3D REGMAP_ENDIAN_BIG,
> > > > +	.val_format_endian =3D REGMAP_ENDIAN_BIG,
> > > > +};
> > > > +
> > > > +static int tc358746_write(struct tc358746 *tc358746, u32 reg, u32 =
val)
> > > > +{
> > > > +	size_t count;
> > > > +
> > > > +	/* 32-bit registers starting from CLW_DPHYCONTTX */
> > > > +	count =3D reg < CLW_DPHYCONTTX_REG ? 1 : 2;
> > > > +
> > > > +	return regmap_bulk_write(tc358746->regmap, reg, &val, count);
> > > > +}
> > > > +
> > > > +static int tc358746_read(struct tc358746 *tc358746, u32 reg, u32 *=
val)
> > > > +{
> > > > +	size_t count;
> > > > +
> > > > +	/* 32-bit registers starting from CLW_DPHYCONTTX */
> > > > +	count =3D reg < CLW_DPHYCONTTX_REG ? 1 : 2;
> > > > +	*val =3D 0;
> > > > +
> > > > +	return regmap_bulk_read(tc358746->regmap, reg, val, count);
> > > > +}
> > > > +
> > > > +static int
> > > > +tc358746_update_bits(struct tc358746 *tc358746, u32 reg, u32 mask,=
 u32 val)
> > > > +{
> > > > +	u32 tmp, orig;
> > > > +	int err;
> > > > +
> > > > +	err =3D tc358746_read(tc358746, reg, &orig);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	tmp =3D orig & ~mask;
> > > > +	tmp |=3D val & mask;
> > > > +
> > > > +	return tc358746_write(tc358746, reg, tmp);
> > > > +}
> > > > +
> > > > +static int tc358746_set_bits(struct tc358746 *tc358746, u32 reg, u=
32 bits)
> > > > +{
> > > > +	return tc358746_update_bits(tc358746, reg, bits, bits);
> > > > +}
> > > > +
> > > > +static int tc358746_clear_bits(struct tc358746 *tc358746, u32 reg,=
 u32 bits)
> > > > +{
> > > > +	return tc358746_update_bits(tc358746, reg, bits, 0);
> > > > +}
> > > > +
> > > > +static int tc358746_sw_reset(struct tc358746 *tc358746)
> > > > +{
> > > > +	int err;
> > > > +
> > > > +	err =3D tc358746_set_bits(tc358746, SYSCTL_REG, SRESET);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	udelay(10);
> > > > +
> > > > +	return tc358746_clear_bits(tc358746, SYSCTL_REG, SRESET);
> > > > +}
> > > > +
> > > > +static int
> > > > +tc358746_apply_pll_config(struct tc358746 *tc358746)
> > > > +{
> > > > +	u8 post =3D tc358746->pll_post_div;
> > > > +	u16 pre =3D tc358746->pll_pre_div;
> > > > +	u16 mul =3D tc358746->pll_mul;
> > > > +	u32 val, mask;
> > > > +	int err;
> > > > +
> > > > +	err =3D tc358746_read(tc358746, PLLCTL1_REG, &val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* Don't touch the PLL if running */
> > > > +	if (FIELD_GET(PLL_EN, val) =3D=3D 1)
> > > > +		return 0;
> > > > +
> > > > +	/* Pre-div and Multiplicator have a internal +1 logic */
> > > > +	val =3D PLL_PRD(pre - 1) | PLL_FBD(mul - 1);
> > > > +	mask =3D PLL_PRD_MASK | PLL_FBD_MASK;
> > > > +	err =3D tc358746_update_bits(tc358746, PLLCTL0_REG, mask, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D PLL_FRS(ilog2(post)) | RESETB | PLL_EN;
> > > > +	mask =3D PLL_FRS_MASK | RESETB | PLL_EN;
> > > > +	tc358746_update_bits(tc358746, PLLCTL1_REG, mask, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	udelay(1000);
> > > > +
> > > > +	return tc358746_set_bits(tc358746, PLLCTL1_REG, CKEN);
> > > > +}
> > > > +
> > > > +static int tc358746_apply_misc_config(struct tc358746 *tc358746)
> > > > +{
> > > > +	struct v4l2_subdev *sd =3D &tc358746->sd;
> > > > +	struct v4l2_subdev_state *sink_state;
> > > > +	struct v4l2_mbus_framefmt *mbusfmt;
> > > =

> > > This can be const.
> > =

> > Sure
> > =

> > > > +	const struct tc358746_format *fmt;
> > > > +	struct device *dev =3D sd->dev;
> > > > +	u32 val;
> > > > +	int err;
> > > > +
> > > > +	sink_state =3D v4l2_subdev_lock_and_get_active_state(sd);
> > > > +	mbusfmt =3D v4l2_subdev_get_pad_format(sd, sink_state, TC358746_S=
INK);
> > > > +	v4l2_subdev_unlock_state(sink_state);
> > > =

> > > You should keep the state locked until the end of this function,
> > > otherwise the format could change.
> > =

> > That couldn't be the case since this function is called during
> > .s_stream(on) and my understanding was that it is not allowed to change
> > the active format after calling .s_stream(on). But I can move it to the
> > end.
> =

> You're right, my bad. I can't wait for the .enable_streams() and
> .disable_streams() operations to replace .s_stream(), the state will
> then be passed by the framework to the drivers, simplifying all this.

Ah.. there are changes coming :) Is there some roadmap or todo or so?
Maybe we/I could support on some internal work.

> > > > +	fmt =3D tc358746_get_format_by_code(TC358746_SINK, mbusfmt->code);
> > > > +
> > > > +	/* Self defined CSI user data type id's are not supported yet */
> > > > +	val =3D PDFMT(fmt->pdformat);
> > > > +	dev_dbg(dev, "DATAFMT: 0x%x\n", val);
> > > > +	err =3D tc358746_write(tc358746, DATAFMT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D PDATAF(fmt->pdataf);
> > > > +	dev_dbg(dev, "CONFCTL[PDATAF]: 0x%x\n", fmt->pdataf);
> > > > +	err =3D tc358746_update_bits(tc358746, CONFCTL_REG, PDATAF_MASK, =
val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746->vb_size / 32;
> > > > +	dev_dbg(dev, "FIFOCTL: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, FIFOCTL_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* Total number of bytes for each line/width */
> > > > +	val =3D mbusfmt->width * fmt->bpp / 8;
> > > > +	dev_dbg(dev, "WORDCNT: %u (0x%x)\n", val, val);
> > > > +	return tc358746_write(tc358746, WORDCNT_REG, val);
> > > > +}
> > > > +
> > > > +#ifndef MHZ
> > > > +#define MHZ		(1000 * 1000)
> > > > +#endif
> > > > +
> > > > +/* Use MHz as base so the div needs no u64 */
> > > > +static u32 tc358746_cfg_to_cnt(unsigned int cfg_val,
> > > > +			       unsigned int clk_mhz,
> > > > +			       unsigned int time_base)
> > > > +{
> > > > +	return DIV_ROUND_UP(cfg_val * clk_mhz, time_base);
> > > > +}
> > > > +
> > > > +static u32 tc358746_ps_to_cnt(unsigned int cfg_val,
> > > > +			      unsigned int clk_mhz)
> > > > +{
> > > > +	return tc358746_cfg_to_cnt(cfg_val, clk_mhz, USEC_PER_SEC);
> > > > +}
> > > > +
> > > > +static u32 tc358746_us_to_cnt(unsigned int cfg_val,
> > > > +			      unsigned int clk_mhz)
> > > > +{
> > > > +	return tc358746_cfg_to_cnt(cfg_val, clk_mhz, 1);
> > > > +}
> > > > +
> > > > +static int tc358746_apply_dphy_config(struct tc358746 *tc358746)
> > > > +{
> > > > +	struct phy_configure_opts_mipi_dphy *cfg =3D &tc358746->dphy_cfg;
> > > > +	bool non_cont_clk =3D !!(tc358746->csi_vep.bus.mipi_csi2.flags &
> > > > +			       V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK);
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	unsigned long hs_byte_clk, hf_clk;
> > > > +	u32 val, val2, lptxcnt;
> > > > +	int err;
> > > > +
> > > > +	/* The hs_byte_clk is also called SYSCLK in the excel sheet */
> > > > +	hs_byte_clk =3D cfg->hs_clk_rate / 8;
> > > > +	hs_byte_clk /=3D MHZ;
> > > > +	hf_clk =3D hs_byte_clk / 2;
> > > > +
> > > > +	val =3D tc358746_us_to_cnt(cfg->init, hf_clk) - 1;
> > > > +	dev_dbg(dev, "LINEINITCNT: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, LINEINITCNT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->lpx, hs_byte_clk) - 1;
> > > > +	lptxcnt =3D val;
> > > > +	dev_dbg(dev, "LPTXTIMECNT: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, LPTXTIMECNT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->clk_prepare, hs_byte_clk) - 1;
> > > > +	val2 =3D tc358746_ps_to_cnt(cfg->clk_zero, hs_byte_clk) - 1;
> > > > +	dev_dbg(dev, "TCLK_PREPARECNT: %u (0x%x)\n", val, val);
> > > > +	dev_dbg(dev, "TCLK_ZEROCNT: %u (0x%x)\n", val2, val2);
> > > > +	dev_dbg(dev, "TCLK_HEADERCNT: 0x%x\n",
> > > > +		(u32)(TCLK_PREPARECNT(val) | TCLK_ZEROCNT(val2)));
> > > > +	err =3D tc358746_write(tc358746, TCLK_HEADERCNT_REG,
> > > > +			     TCLK_PREPARECNT(val) | TCLK_ZEROCNT(val2));
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->clk_trail, hs_byte_clk);
> > > > +	dev_dbg(dev, "TCLK_TRAILCNT: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, TCLK_TRAILCNT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->hs_prepare, hs_byte_clk) - 1;
> > > > +	val2 =3D tc358746_ps_to_cnt(cfg->hs_zero, hs_byte_clk) - 1;
> > > > +	dev_dbg(dev, "THS_PREPARECNT: %u (0x%x)\n", val, val);
> > > > +	dev_dbg(dev, "THS_ZEROCNT: %u (0x%x)\n", val2, val2);
> > > > +	dev_dbg(dev, "THS_HEADERCNT: 0x%x\n",
> > > > +		(u32)(THS_PREPARECNT(val) | THS_ZEROCNT(val2)));
> > > > +	err =3D tc358746_write(tc358746, THS_HEADERCNT_REG,
> > > > +			     THS_PREPARECNT(val) | THS_ZEROCNT(val2));
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* TWAKEUP > 1ms in lptxcnt steps */
> > > > +	val =3D tc358746_us_to_cnt(cfg->wakeup, hs_byte_clk);
> > > > +	val =3D val / (lptxcnt + 1) - 1;
> > > > +	dev_dbg(dev, "TWAKEUP: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, TWAKEUP_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->clk_post, hs_byte_clk);
> > > > +	dev_dbg(dev, "TCLK_POSTCNT: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, TCLK_POSTCNT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	val =3D tc358746_ps_to_cnt(cfg->hs_trail, hs_byte_clk);
> > > > +	dev_dbg(dev, "THS_TRAILCNT: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, THS_TRAILCNT_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	dev_dbg(dev, "CONTCLKMODE: %u", non_cont_clk ? 0 : 1);
> > > > +	return  tc358746_write(tc358746, TXOPTIONCNTRL_REG, non_cont_clk =
? 0 : 1);
> > > > +}
> > > > +
> > > > +#define MAX_DATA_LANES 4
> > > > +
> > > > +static int tc358746_enable_csi_lanes(struct tc358746 *tc358746, in=
t enable)
> > > > +{
> > > > +	unsigned int lanes =3D tc358746->dphy_cfg.lanes;
> > > > +	unsigned int lane;
> > > > +	u32 reg, val;
> > > > +	int err;
> > > > +
> > > > +	err =3D tc358746_update_bits(tc358746, CONFCTL_REG, DATALANE_MASK,
> > > > +				   lanes - 1);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* Clock lane */
> > > > +	val =3D enable ? 0 : LANEDISABLE;
> > > > +	dev_dbg(tc358746->sd.dev, "CLW_CNTRL: 0x%x\n", val);
> > > > +	err =3D tc358746_write(tc358746, CLW_CNTRL_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	for (lane =3D 0; lane < MAX_DATA_LANES; lane++) {
> > > > +		/* Data lanes */
> > > > +		reg =3D D0W_CNTRL_REG + lane * 0x4;
> > > > +		val =3D (enable && lane < lanes) ? 0 : LANEDISABLE;
> > > > +
> > > > +		dev_dbg(tc358746->sd.dev, "D%uW_CNTRL: 0x%x\n", lane, val);
> > > > +		err =3D tc358746_write(tc358746, reg, val);
> > > > +		if (err)
> > > > +			return err;
> > > > +	}
> > > > +
> > > > +	val =3D 0;
> > > > +	if (enable) {
> > > > +		/* Clock lane */
> > > > +		val |=3D BIT(0);
> > > > +
> > > > +		/* Data lanes */
> > > > +		for (lane =3D 1; lane <=3D lanes; lane++)
> > > > +			val |=3D BIT(lane);
> > > > +	}
> > > > +
> > > > +	dev_dbg(tc358746->sd.dev, "HSTXVREGEN: 0x%x\n", val);
> > > > +	return tc358746_write(tc358746, HSTXVREGEN_REG, val);
> > > > +}
> > > > +
> > > > +static int tc358746_enable_csi_module(struct tc358746 *tc358746, i=
nt enable)
> > > > +{
> > > > +	unsigned int lanes =3D tc358746->dphy_cfg.lanes;
> > > > +	int err;
> > > > +
> > > > +	/*
> > > > +	 * START and STRT are only reseted/disabled by sw reset. This is
> > > > +	 * required to put the lane state back into LP-11 state. The sw r=
eset
> > > > +	 * don't reset register values.
> > > > +	 */
> > > > +	if (!enable)
> > > > +		return tc358746_sw_reset(tc358746);
> > > > +
> > > > +	err =3D tc358746_write(tc358746, STARTCNTRL_REG, START);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	err =3D tc358746_write(tc358746, CSI_START_REG, STRT);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* CSI_CONTROL_REG is only indirect accessible */
> > > > +	return tc358746_write(tc358746, CSI_CONFW_REG,
> > > > +			      MODE(MODE_SET) |
> > > > +			      ADDRESS(CSI_CONTROL_ADDRESS) |
> > > > +			      DATA(CSI_MODE | TXHSMD | NOL(lanes - 1)));
> > > > +}
> > > > +
> > > > +static int tc358746_enable_parallel_port(struct tc358746 *tc358746=
, int enable)
> > > > +{
> > > > +	int err;
> > > > +
> > > > +	if (enable) {
> > > > +		err =3D tc358746_write(tc358746, PP_MISC_REG, 0);
> > > > +		if (err)
> > > > +			return err;
> > > > +
> > > > +		return tc358746_set_bits(tc358746, CONFCTL_REG, PPEN);
> > > > +	}
> > > > +
> > > > +	err =3D tc358746_set_bits(tc358746, PP_MISC_REG, FRMSTOP);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	err =3D tc358746_clear_bits(tc358746, CONFCTL_REG, PPEN);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	return tc358746_set_bits(tc358746, PP_MISC_REG, RSTPTR);
> > > > +}
> > > > +
> > > > +static inline struct v4l2_subdev *tc358746_get_remote_sd(struct me=
dia_pad *pad)
> > > > +{
> > > > +	pad =3D media_pad_remote_pad_first(pad);
> > > > +	if (!pad)
> > > > +		return NULL;
> > > > +
> > > > +	return media_entity_to_v4l2_subdev(pad->entity);
> > > > +}
> > > > +
> > > > +static int tc358746_s_stream(struct v4l2_subdev *sd, int enable)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +	struct v4l2_subdev *src;
> > > > +	int err;
> > > > +
> > > > +	dev_dbg(sd->dev, "%sable\n", enable ? "en" : "dis");
> > > > +
> > > > +	src =3D tc358746_get_remote_sd(&tc358746->pads[TC358746_SINK]);
> > > > +	if (!src)
> > > > +		return -EPIPE;
> > > > +
> > > > +	if (enable) {
> > > > +		err =3D pm_runtime_resume_and_get(sd->dev);
> > > > +		if (err)
> > > > +			return err;
> > > > +
> > > > +		err =3D tc358746_apply_dphy_config(tc358746);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		err =3D tc358746_apply_misc_config(tc358746);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		err =3D tc358746_enable_csi_lanes(tc358746, 1);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		err =3D tc358746_enable_csi_module(tc358746, 1);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		err =3D tc358746_enable_parallel_port(tc358746, 1);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		err =3D v4l2_subdev_call(src, video, s_stream, 1);
> > > > +		if (err)
> > > > +			goto err_out;
> > > > +
> > > > +		return err;
> > > > +
> > > > +err_out:
> > > > +		pm_runtime_mark_last_busy(sd->dev);
> > > > +		pm_runtime_put_sync_autosuspend(sd->dev);
> > > > +
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	/*
> > > > +	 * Lane disable trigger state change from LP-11 to LP-00
> > > > +	 * therefore it must happen before the CSI modile is disabled.
> > > > +	 */
> > > > +	err =3D tc358746_enable_csi_lanes(tc358746, 0);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	err =3D tc358746_enable_csi_module(tc358746, 0);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	err =3D tc358746_enable_parallel_port(tc358746, 0);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	pm_runtime_mark_last_busy(sd->dev);
> > > > +	pm_runtime_put_sync_autosuspend(sd->dev);
> > > > +
> > > > +	return v4l2_subdev_call(src, video, s_stream, 0);
> > > > +}
> > > > +
> > > > +static int tc358746_init_cfg(struct v4l2_subdev *sd,
> > > > +			     struct v4l2_subdev_state *state)
> > > > +{
> > > > +	struct v4l2_mbus_framefmt *fmt;
> > > > +
> > > > +	fmt =3D v4l2_subdev_get_pad_format(sd, state, TC358746_SINK);
> > > > +	*fmt =3D tc358746_def_fmt;
> > > > +
> > > > +	fmt =3D v4l2_subdev_get_pad_format(sd, state, TC358746_SOURCE);
> > > > +	*fmt =3D tc358746_def_fmt;
> > > > +	fmt->code =3D tc358746_src_mbus_code(tc358746_def_fmt.code);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int tc358746_enum_mbus_code(struct v4l2_subdev *sd,
> > > > +				   struct v4l2_subdev_state *sd_state,
> > > > +				   struct v4l2_subdev_mbus_code_enum *code)
> > > > +{
> > > > +	const struct tc358746_format *fmt;
> > > > +
> > > > +	fmt =3D tc358746_get_format_by_idx(code->pad, code->index);
> > > > +	if (IS_ERR(fmt))
> > > > +		return PTR_ERR(fmt);
> > > > +
> > > > +	code->code =3D fmt->code;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int tc358746_set_fmt(struct v4l2_subdev *sd,
> > > > +			    struct v4l2_subdev_state *sd_state,
> > > > +			    struct v4l2_subdev_format *format)
> > > > +{
> > > > +	struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
> > > > +	const struct tc358746_format *fmt;
> > > > +
> > > > +	/* Source follows the sink */
> > > > +	if (format->pad =3D=3D TC358746_SOURCE)
> > > > +		return 0;
> > > =

> > > You need to get the source pad format here and copy it to format,
> > > otherwise userspace will think whatever format it has passed has been
> > > accepted.
> > =

> > That's right, I will change that. Thanks.
> > =

> > > > +	sink_fmt =3D v4l2_subdev_get_pad_format(sd, sd_state, TC358746_SI=
NK);
> > > > +
> > > > +	fmt =3D tc358746_get_format_by_code(format->pad, format->format.c=
ode);
> > > > +	if (IS_ERR(fmt))
> > > > +		fmt =3D tc358746_get_format_by_code(format->pad, tc358746_def_fm=
t.code);
> > > > +
> > > > +	format->format.code =3D fmt->code;
> > > > +	format->format.field =3D V4L2_FIELD_NONE;
> > > > +
> > > =

> > > Is there no constraint at all on the width and height ?
> > =

> > No there are no contraints, at least not listed in the datasheet I have.
> > =

> > > I would expect zero width or height to be invalid for instance, and
> > > the width to be required to be a multiple of 2 for YUV 4:2:2 formats.
> > =

> > You just specify the wordcnt in bytes per line. The datasheet I have on
> > my side don't say that it is forbidden to write zero to it. Regarding
> > the alignment, the datasheet says nothing about it too. But sure it can
> > be that this will fail. But shouldn't this fail on the sensor first?
> =

> That's a good point. I'm fine without checks here.
> =

> > Since this is just a bridge, no-cropping/selection/zoom supported, it
> > just takes the input from the parallel interface. If someone
> > misconfigured it on purpose the link-validation will fail in case of
> > format missmatch. If the format has a wrong alignment, the sensor should
> > fail first. But of course I could add a helper to check the alignment
> > and to set some sane defaults.
> > =

> > > > +	dev_dbg(sd->dev, "Update format: %ux%u code:0x%x -> %ux%u code:0x=
%x",
> > > > +		sink_fmt->width, sink_fmt->height, sink_fmt->code,
> > > > +		format->format.width, format->format.height, format->format.code=
);
> > > > +
> > > > +	*sink_fmt =3D format->format;
> > > > +
> > > > +	src_fmt =3D v4l2_subdev_get_pad_format(sd, sd_state, TC358746_SOU=
RCE);
> > > > +	*src_fmt =3D *sink_fmt;
> > > > +	src_fmt->code =3D tc358746_src_mbus_code(sink_fmt->code);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static unsigned long tc358746_find_pll_settings(struct tc358746 *t=
c358746,
> > > > +						unsigned long refclk,
> > > > +						unsigned long fout)
> > > > +
> > > > +{
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	unsigned long best_freq =3D 0;
> > > > +	u32 min_delta =3D 0xffffffff;
> > > > +	u16 prediv_max =3D 17;
> > > > +	u16 prediv_min =3D 1;
> > > > +	u16 m_best, mul;
> > > > +	u16 p_best, p;
> > > > +	u8 postdiv;
> > > > +
> > > > +	if (fout > 1000 * MHZ) {
> > > > +		dev_err(dev, "HS-Clock above 1 Ghz are not supported\n");
> > > > +		return 0;
> > > > +	} else if (fout >=3D 500 * MHZ)
> > > =

> > > If one branch of an if uses curly braces, all should. You can work
> > > around this by turning this else if into an if.
> > =

> > Okay.
> > =

> > > > +		postdiv =3D 1;
> > > > +	else if (fout >=3D 250 * MHZ)
> > > > +		postdiv =3D 2;
> > > > +	else if (fout >=3D 125 * MHZ)
> > > > +		postdiv =3D 4;
> > > > +	else
> > > > +		postdiv =3D 8;
> > > > +
> > > > +	for (p =3D prediv_min; p <=3D prediv_max; p++) {
> > > > +		unsigned long delta, fin;
> > > > +		u64 tmp;
> > > > +
> > > > +		fin =3D DIV_ROUND_CLOSEST(refclk, p);
> > > > +		if (fin < 4 * MHZ || fin > 40 * MHZ)
> > > > +			continue;
> > > > +
> > > > +		tmp =3D fout * p * postdiv;
> > > > +		do_div(tmp, fin);
> > > > +		mul =3D tmp;
> > > > +		if (mul > 511)
> > > > +			continue;
> > > > +
> > > > +		tmp =3D mul * fin;
> > > > +		do_div(tmp, p * postdiv);
> > > > +
> > > > +		delta =3D abs(fout - tmp);
> > > > +		if (delta < min_delta) {
> > > > +			p_best =3D p;
> > > > +			m_best =3D mul;
> > > > +			min_delta =3D delta;
> > > > +			best_freq =3D tmp;
> > > > +		};
> > > > +
> > > > +		if (delta =3D=3D 0)
> > > > +			break;
> > > > +	};
> > > > +
> > > > +	if (!best_freq) {
> > > > +		dev_err(dev, "Failed find PLL frequency\n");
> > > > +		return 0;
> > > > +	}
> > > > +
> > > > +	tc358746->pll_post_div =3D postdiv;
> > > > +	tc358746->pll_pre_div =3D p_best;
> > > > +	tc358746->pll_mul =3D m_best;
> > > > +
> > > > +	if (best_freq !=3D fout)
> > > > +		dev_warn(dev, "Request PLL freq:%lu, found PLL freq:%lu\n",
> > > > +			 fout, best_freq);
> > > > +
> > > > +	dev_dbg(dev, "Found PLL settings: freq:%lu prediv:%u multi:%u pos=
tdiv:%u\n",
> > > > +		best_freq, p_best, m_best, postdiv);
> > > > +
> > > > +	return best_freq;
> > > > +}
> > > > +
> > > > +#define TC358746_PRECISION 10
> > > > +
> > > > +static int
> > > > +tc358746_link_validate(struct v4l2_subdev *sd, struct media_link *=
link,
> > > > +		       struct v4l2_subdev_format *source_fmt,
> > > > +		       struct v4l2_subdev_format *sink_fmt)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +	unsigned long csi_bitrate, sensor_bitrate;
> > > > +	struct v4l2_subdev_state *sink_state;
> > > > +	struct v4l2_mbus_framefmt *mbusfmt;
> > > > +	const struct tc358746_format *fmt;
> > > > +	unsigned int fifo_sz, tmp, n;
> > > > +	struct v4l2_subdev *sensor;
> > > > +	s64 sensor_pclk_rate;
> > > > +	int err;
> > > > +
> > > > +	err =3D v4l2_subdev_link_validate_default(sd, link, source_fmt, s=
ink_fmt);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	sink_state =3D v4l2_subdev_lock_and_get_active_state(sd);
> > > =

> > > This makes me thinkg we should pass the state to this function. Not
> > > something that needs to be addressed in this patch of course.
> > =

> > Passing the state? My understanding of *_get_active_state() is to get
> > the active state or do you want to add a new function like
> > *_get_state(active)?
> =

> I meant passing the state to the .link_validate() handler.

Ah.. :) Nice to see some progress within the media layer.

> > > > +	mbusfmt =3D v4l2_subdev_get_pad_format(sd, sink_state, TC358746_S=
INK);
> > > > +	v4l2_subdev_unlock_state(sink_state);
> > > =

> > > I'd release the lock at the end of the function, to make sure the for=
mat
> > > won't change during validation. This is also a race condition in the
> > > subdev core and should be fixed there, I'd be fine if you ignored it
> > > here for now.
> > =

> > I can change this but for my understanding. Why is it even possible to
> > change the state that late? We are going to enable the stream real
> > soon after the validation is done.
> =

> Due to bugs in the framework :-) I plan to address that by locking all
> states when constructing the pipelines, which will remove the need to
> lock them in individual drivers.

*Thumbs up*

> > > > +
> > > > +	/* Check the FIFO settings */
> > > > +	fmt =3D tc358746_get_format_by_code(TC358746_SINK, mbusfmt->code);
> > > > +	if (IS_ERR(fmt))
> > > > +		return PTR_ERR(fmt);
> > > =

> > > Can this happen if the format has been validate at set_fmt time ?
> > =

> > Of course not, I will drop the IS_ERR().
> > =

> > > > +
> > > > +	sensor =3D media_entity_to_v4l2_subdev(link->source->entity);
> > > > +	sensor_pclk_rate =3D v4l2_get_link_freq(sensor->ctrl_handler, 0, =
0);
> > > =

> > > Shouldn't you set the last two arguments to non-zero values, to suppo=
rt
> > > sources that only implement the V4L2_CID_PIXEL_RATE control ?
> > =

> > Nope, I don't wanna support PIXEL_RATE right now. This can be changed
> > later I think.
> =

> Would it be hard to support it already, given that the
> v4l2_get_link_freq() should make it easier ? That would avoid having to
> come back to this code later.

I had the pixel-rate first, then Jacobo mentioned (correctly) that my
usage of pixel-rate was wrong. Supporting PIXEL_RATE as well would add
more complexity because we need to take core of the mbus format to get
the correct mul/div settings. Also I think that only a few drivers
implementing the PIXEL_RATE correctly in case of parallel sensors _and_
this is just a fallback which will print a warning if triggered. All I
want to do here is: "give me the link frequence" :) If there are drivers
not supporting this but support PIXEL_RATE it shouldn't be that hard for
those driver to add the LINK_FREQ ctrl. This would also improve the
kernel quality since there are now heuristics and no warnings printed.

Is it okay, to keep it simple and just go with LINK_FREQ. for now?

> > > I'd also name the variable source_link_freq, as it may not be a senso=
r,
> > > and it's a link frequency, not a pixel clock rate.
> > =

> > In parallel case (which is the only supported right now) the pclk is the
> > link_freq. but I can change it of course.
> =

> I read "pclk" as "pixel clock". That makes me think of
> V4L2_CID_PIXEL_RATE, which indicates the number of pixels per second.
> With YUV 4:2:2 2X8 media bus formats, the link frequency will be twice
> the pixel rate.

Hm.. the link frequency is the frequency on the physical parallel bus,
as far as I understood the ctrl. In parallel use-case this is pixelclk.

Also according PIXEL_RATE documentation, it is defined as
pixel-per-second. For YUV 4:2:2 those this mean mean:
 - y1 =3D=3D 1st pixel,
 - u1 =3D=3D 2nd pixel,
 - y2 =3D=3D 3rd pixel,
 - ...

All I want is to get the rate/frequency of the physical bus from the
input device :) According my above explanation, could we please go with
"the LINK_FREQ ctrl only" since this would avoid possible kernel
warnings and is the most accurate one.

> > > > +	if (sensor_pclk_rate <=3D 0) {
> > > > +		dev_err(tc358746->sd.dev,
> > > > +			"Failed to query or invalid sensor link frequency\n");
> > > > +		/* Return -EINVAL in case of sensor_pclk_rate is 0 */
> > > > +		return sensor_pclk_rate ? : -EINVAL;
> > > > +	}
> > > > +	sensor_bitrate =3D sensor_pclk_rate * fmt->bus_width;
> > > > +
> > > > +	csi_bitrate =3D tc358746->dphy_cfg.lanes * tc358746->pll_rate;
> > > > +
> > > > +	dev_dbg(tc358746->sd.dev,
> > > > +		"Fifo settings params: sensor-bitrate:%lu csi-bitrate:%lu",
> > > > +		sensor_bitrate, csi_bitrate);
> > > > +
> > > > +	/* Avoid possible FIFO overflows */
> > > > +	if (csi_bitrate < sensor_bitrate) {
> > > > +		dev_err(sd->dev,
> > > > +			"Link validation failed csi-bitrate:%lu < sensor-bitrate:%lu\n",
> > > > +			csi_bitrate, sensor_bitrate);
> > > =

> > > As this can be triggered by userspace, I'd make it a dev_dbg().
> > =

> > So you would rather fail silently without printing the reason? Is there
> > a common kernel agreement when to use dev_err() or info() or dbg()?
> =

> It's not completely silent :-) The idea is that an error condition that
> can be triggered by unpriviledged userspace shouldn't be able to flood
> the kernel log. dev_dbg() will still allow debugging.

Okay, I droppped it completely since the dev_dbg() in front of this
call.

> > > > +		return -EINVAL;
> > > > +	}
> > > > +
> > > > +	/* Best case */
> > > > +	if (csi_bitrate =3D=3D sensor_bitrate) {
> > > > +		tc358746->vb_size =3D TC358746_VB_DEFAULT_SIZE;
> > > > +		goto out;
> > > > +	}
> > > > +
> > > > +	/*
> > > > +	 * Avoid possible FIFO underflow in case of
> > > > +	 * csi_bitrate > sensor_bitrate. For such case the chip has a int=
ernal
> > > > +	 * fifo which can be used to delay the line output.
> > > > +	 *
> > > > +	 * Fifo size calculation:
> > > > +	 *
> > > > +	 * fifo-sz, image-width - in bits
> > > > +	 * sbr                  - sensor_bitrate in bits/s
> > > > +	 * csir                 - csi_bitrate in bits/s
> > > > +	 *
> > > > +	 *                1             1      1
> > > > +	 * image-width * --- + fifo-sz --- >=3D ---- * image-width
> > > > +	 *               sbr           sbr    csir
> > > =

> > > Given that csir > sbr, 1/csir < 1 sbr, so this will always be true,
> > > even with fifo-sz set to 0. Am I missing something ?
> > =

> > Nope, that is right. Didn't checked that while I was coding it.
> > =

> > > > +	 *
> > > > +	 * fifo-sz >=3D abs(sbr/csir * image-width - image-width)
> > > > +	 *                `-----=B4
> > > > +	 *                   n
> > > =

> > > The n variable doesn't store sbr/csir but csir/sbr (multiplied by a
> > > precision factor). And do I understand correctly that, as sbr < csir,
> > > this would be equal to the following ?
> > > =

> > > 	 * fifo-sz >=3D image-width - sbr/csir * image-width
> > =

> > Exactly, my above comment and the below code is a bit of, you're right
> > but the calc is still correct:
> > =

> >         (mbusfmt->width * precision)   (mbusfmt->width * precision)
> >   tmp =3D ---------------------------- =3D ----------------------------
> >                         n                    csi_bitrate
> > 			                     --------------
> > 					     sensor_bitrate
> > =

> > 					`---------------------------=B4
> >    					   sbr/csir * image-width
> > =

> > maybe I should comment it like:
> > =

> > > * fifo-sz >=3D abs(sbr/csir * image-width - image-width)
> > > *
> > > * with n =3D 1/(sbr/csir) =3D csir/sbr
> > > *
> > > * fifo-sz >=3D abs(image-width / n - image-width)
> > > *
> > > *  or
> > > *
> > > *  fifo-sz >=3D image-width - image-width / n
> > =

> > > > +	 *
> > > > +	 */
> > > > +
> > > > +	sensor_bitrate /=3D TC358746_PRECISION;
> > > > +	n =3D csi_bitrate / sensor_bitrate;
> > > > +	tmp =3D (mbusfmt->width * TC358746_PRECISION) / n;
> > > > +	fifo_sz =3D mbusfmt->width - tmp;
> > > > +	fifo_sz *=3D fmt->bpp;
> > > > +	tc358746->vb_size =3D round_up(fifo_sz, 32);
> > > > +
> > > > +out:
> > > > +	dev_dbg(tc358746->sd.dev,
> > > > +		"Found FIFO size[bits]:%u -> aligned to size[bits]:%u\n",
> > > > +		fifo_sz, tc358746->vb_size);
> > > > +
> > > > +	return tc358746->vb_size > TC358746_VB_MAX_SIZE ? -EINVAL : 0;
> > > > +}
> > > > +
> > > > +static int tc358746_get_mbus_config(struct v4l2_subdev *sd, unsign=
ed int pad,
> > > > +				    struct v4l2_mbus_config *config)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +
> > > > +	if (pad !=3D TC358746_SOURCE)
> > > > +		return -EINVAL;
> > > > +
> > > > +	config->type =3D V4L2_MBUS_CSI2_DPHY;
> > > > +	config->bus.mipi_csi2 =3D tc358746->csi_vep.bus.mipi_csi2;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +int __maybe_unused
> > > =

> > > As reported by the buildbot, this should be static. Same for s_regist=
er.
> > =

> > Yes.
> > =

> > > > +tc358746_g_register(struct v4l2_subdev *sd, struct v4l2_dbg_regist=
er *reg)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +
> > > > +	/* 32-bit registers starting from CLW_DPHYCONTTX */
> > > > +	reg->size =3D reg->reg < CLW_DPHYCONTTX_REG ? 2 : 4;
> > > > +
> > > > +	if (pm_runtime_resume_and_get(sd->dev)) {
> > > > +		dev_err(sd->dev, "Failed to resume the device\n");
> > > > +		return 0;
> > > > +	}
> > > =

> > > Is there a point in powering the hardware on here if it's off, in ord=
er
> > > to read a register that will have been reset due to the power cycle ?
> > > pm_runtime_get_if_in_use() seems better. Same in .s_register().
> > =

> > You're right, I will change that.
> > =

> > > > +	tc358746_read(tc358746, reg->reg, (u32 *)&reg->val);
> > > > +
> > > > +	pm_runtime_mark_last_busy(sd->dev);
> > > > +	pm_runtime_put_sync_autosuspend(sd->dev);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +int __maybe_unused
> > > > +tc358746_s_register(struct v4l2_subdev *sd, const struct v4l2_dbg_=
register *reg)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +
> > > > +	if (pm_runtime_resume_and_get(sd->dev)) {
> > > > +		dev_err(sd->dev, "Failed to resume the device\n");
> > > > +		return 0;
> > > > +	}
> > > > +
> > > > +	tc358746_write(tc358746, (u32)reg->reg, (u32)reg->val);
> > > > +
> > > > +	pm_runtime_mark_last_busy(sd->dev);
> > > > +	pm_runtime_put_sync_autosuspend(sd->dev);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static const struct v4l2_subdev_core_ops tc358746_core_ops =3D {
> > > > +#ifdef CONFIG_VIDEO_ADV_DEBUG
> > > > +	.g_register =3D tc358746_g_register,
> > > > +	.s_register =3D tc358746_s_register,
> > > > +#endif
> > > > +};
> > > > +
> > > > +static const struct v4l2_subdev_video_ops tc358746_video_ops =3D {
> > > > +	.s_stream =3D tc358746_s_stream,
> > > > +};
> > > > +
> > > > +static const struct v4l2_subdev_pad_ops tc358746_pad_ops =3D {
> > > > +	.init_cfg =3D tc358746_init_cfg,
> > > > +	.enum_mbus_code =3D tc358746_enum_mbus_code,
> > > > +	.set_fmt =3D tc358746_set_fmt,
> > > > +	.get_fmt =3D v4l2_subdev_get_fmt,
> > > > +	.link_validate =3D tc358746_link_validate,
> > > > +	.get_mbus_config =3D tc358746_get_mbus_config,
> > > > +};
> > > > +
> > > > +static const struct v4l2_subdev_ops tc358746_ops =3D {
> > > > +	.core =3D &tc358746_core_ops,
> > > > +	.video =3D &tc358746_video_ops,
> > > > +	.pad =3D &tc358746_pad_ops,
> > > > +};
> > > > +
> > > > +static const struct media_entity_operations tc358746_entity_ops =
=3D {
> > > > +	.get_fwnode_pad =3D v4l2_subdev_get_fwnode_pad_1_to_1,
> > > > +	.link_validate =3D v4l2_subdev_link_validate,
> > > > +};
> > > > +
> > > > +static int tc358746_mclk_enable(struct clk_hw *hw)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
> > > > +	unsigned int div;
> > > > +	u32 val;
> > > > +	int err;
> > > > +
> > > > +	div =3D tc358746->mclk_postdiv / 2;
> > > > +	val =3D MCLK_HIGH(div - 1) | MCLK_LOW(div - 1);
> > > > +	dev_dbg(tc358746->sd.dev, "MCLKCTL: %u (0x%x)\n", val, val);
> > > > +	err =3D tc358746_write(tc358746, MCLKCTL_REG, val);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	if (tc358746->mclk_prediv =3D=3D 8)
> > > > +		val =3D MCLKDIV(MCLKDIV_8);
> > > > +	else if (tc358746->mclk_prediv =3D=3D 4)
> > > > +		val =3D MCLKDIV(MCLKDIV_4);
> > > > +	else
> > > > +		val =3D MCLKDIV(MCLKDIV_2);
> > > > +
> > > > +	dev_dbg(tc358746->sd.dev, "CLKCTL[MCLKDIV]: %u (0x%x)\n", val, va=
l);
> > > > +	return tc358746_update_bits(tc358746, CLKCTL_REG, MCLKDIV_MASK, v=
al);
> > > > +}
> > > > +
> > > > +static void tc358746_mclk_disable(struct clk_hw *hw)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
> > > > +
> > > > +	tc358746_write(tc358746, MCLKCTL_REG, 0);
> > > > +}
> > > > +
> > > > +static long
> > > > +tc358746_find_mclk_settings(struct tc358746 *tc358746, unsigned lo=
ng mclk_rate)
> > > > +{
> > > > +	unsigned long pll_rate =3D tc358746->pll_rate;
> > > > +	const unsigned char prediv[] =3D { 2, 4, 8 };
> > > > +	unsigned int mclk_prediv, mclk_postdiv;
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	unsigned int postdiv, mclkdiv;
> > > > +	unsigned long best_mclk_rate;
> > > > +	unsigned int i;
> > > > +
> > > > +	/*
> > > > +	 *                          MCLK-Div
> > > > +	 *           -------------------=B4`---------------------
> > > > +	 *          =B4                                          `
> > > > +	 *         +-------------+     +------------------------+
> > > > +	 *         | MCLK-PreDiv |     |       MCLK-PostDiv     |
> > > > +	 * PLL --> |   (2/4/8)   | --> | (mclk_low + mclk_high) | --> MCLK
> > > > +	 *         +-------------+     +------------------------+
> > > > +	 *
> > > > +	 * The register value of mclk_low/high is mclk_low/high+1, i.e.:
> > > > +	 *   mclk_low/high =3D 1   --> 2 MCLK-Ref Counts
> > > > +	 *   mclk_low/high =3D 255 --> 256 MCLK-Ref Counts =3D=3D max.
> > > > +	 * If mclk_low and mclk_high are 0 then MCLK is disabled.
> > > > +	 *
> > > > +	 * Keep it simple and support 50/50 duty cycles only for now,
> > > > +	 * so the calc will be:
> > > > +	 *
> > > > +	 *   MCLK =3D PLL / (MCLK-PreDiv * 2 * MCLK-PostDiv)
> > > > +	 */
> > > > +
> > > > +	if (mclk_rate =3D=3D tc358746->mclk_rate)
> > > > +		return mclk_rate;
> > > > +
> > > > +	/* Highest possible rate */
> > > > +	mclkdiv =3D pll_rate / mclk_rate;
> > > > +	if (mclkdiv <=3D 8) {
> > > > +		mclk_prediv =3D 2;
> > > > +		mclk_postdiv =3D 4;
> > > > +		best_mclk_rate =3D pll_rate / (2 * 4);
> > > > +		goto out;
> > > > +	}
> > > > +
> > > > +	/* First check the prediv */
> > > > +	for (i =3D 0; i < ARRAY_SIZE(prediv); i++) {
> > > > +		postdiv =3D mclkdiv / prediv[i];
> > > > +
> > > > +		if (postdiv % 2)
> > > > +			continue;
> > > > +
> > > > +		if (postdiv >=3D 4 && postdiv <=3D 512) {
> > > > +			mclk_prediv =3D prediv[i];
> > > > +			mclk_postdiv =3D postdiv;
> > > > +			best_mclk_rate =3D pll_rate / (prediv[i] * postdiv);
> > > > +			goto out;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	/* No suitable prediv found, so try to adjust the postdiv */
> > > > +	for (postdiv =3D 4; postdiv <=3D 512; postdiv +=3D 2) {
> > > > +		unsigned int pre;
> > > > +
> > > > +		pre =3D mclkdiv / postdiv;
> > > > +		if (pre =3D=3D 2 || pre =3D=3D 4 || pre =3D=3D 8) {
> > > > +			mclk_prediv =3D pre;
> > > > +			mclk_postdiv =3D postdiv;
> > > > +			best_mclk_rate =3D pll_rate / (pre * postdiv);
> > > > +			goto out;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	/* The MCLK <-> PLL gap is to high -> use largest possible div */
> > > > +	mclk_prediv =3D 8;
> > > > +	mclk_postdiv =3D 512;
> > > > +	best_mclk_rate =3D pll_rate / (8 * 512);
> > > > +
> > > > +out:
> > > > +	tc358746->mclk_prediv =3D mclk_prediv;
> > > > +	tc358746->mclk_postdiv =3D mclk_postdiv;
> > > > +	tc358746->mclk_rate =3D best_mclk_rate;
> > > > +
> > > > +	if (best_mclk_rate !=3D mclk_rate)
> > > > +		dev_warn(dev, "Request MCLK freq:%lu, found MCLK freq:%lu\n",
> > > > +			 mclk_rate, best_mclk_rate);
> > > > +
> > > > +	dev_dbg(dev, "Found MCLK settings: freq:%lu prediv:%u postdiv:%u\=
n",
> > > > +		best_mclk_rate, mclk_prediv, mclk_postdiv);
> > > > +
> > > > +	return best_mclk_rate;
> > > > +}
> > > > +
> > > > +unsigned long tc358746_recalc_rate(struct clk_hw *hw, unsigned lon=
g parent_rate)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
> > > > +	unsigned int prediv, postdiv;
> > > > +	u32 val;
> > > > +	int err;
> > > > +
> > > > +	err =3D tc358746_read(tc358746, MCLKCTL_REG, &val);
> > > > +	if (err)
> > > > +		return 0;
> > > > +
> > > > +	postdiv =3D FIELD_GET(MCLK_LOW_MASK, val) + 1;
> > > > +	postdiv +=3D FIELD_GET(MCLK_HIGH_MASK, val) + 1;
> > > > +
> > > > +	err =3D tc358746_read(tc358746, CLKCTL_REG, &val);
> > > > +	if (err)
> > > > +		return 0;
> > > > +
> > > > +	prediv =3D FIELD_GET(MCLKDIV_MASK, val);
> > > > +	if (prediv =3D=3D MCLKDIV_8)
> > > > +		prediv =3D 8;
> > > > +	else if (prediv =3D=3D MCLKDIV_4)
> > > > +		prediv =3D 4;
> > > > +	else
> > > > +		prediv =3D 2;
> > > > +
> > > > +	return tc358746->pll_rate / (prediv * postdiv);
> > > > +}
> > > > +
> > > > +static long tc358746_mclk_round_rate(struct clk_hw *hw, unsigned l=
ong rate,
> > > > +				     unsigned long *parent_rate)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
> > > > +
> > > > +	*parent_rate =3D tc358746->pll_rate;
> > > > +
> > > > +	return tc358746_find_mclk_settings(tc358746, rate);
> > > > +}
> > > > +
> > > > +static int tc358746_mclk_set_rate(struct clk_hw *hw, unsigned long=
 rate,
> > > > +				  unsigned long parent_rate)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
> > > > +
> > > > +	tc358746_find_mclk_settings(tc358746, rate);
> > > > +
> > > > +	return tc358746_mclk_enable(hw);
> > > > +}
> > > > +
> > > > +static const struct clk_ops tc358746_mclk_ops =3D {
> > > > +	.enable =3D tc358746_mclk_enable,
> > > > +	.disable =3D tc358746_mclk_disable,
> > > > +	.recalc_rate =3D tc358746_recalc_rate,
> > > > +	.round_rate =3D tc358746_mclk_round_rate,
> > > > +	.set_rate =3D tc358746_mclk_set_rate,
> > > > +};
> > > > +
> > > > +static int
> > > > +tc358746_init_subdev(struct tc358746 *tc358746, struct i2c_client =
*client)
> > > > +{
> > > > +	struct v4l2_subdev *sd;
> > > > +	int err;
> > > > +
> > > > +	sd =3D &tc358746->sd;
> > > =

> > > You could initialize the variable when declaring it.
> > =

> > Yes.
> > =

> > > > +	v4l2_i2c_subdev_init(sd, client, &tc358746_ops);
> > > > +	sd->flags |=3D V4L2_SUBDEV_FL_HAS_DEVNODE;
> > > > +	sd->entity.function =3D MEDIA_ENT_F_VID_IF_BRIDGE;
> > > > +	sd->entity.ops =3D &tc358746_entity_ops;
> > > > +
> > > > +	tc358746->pads[TC358746_SINK].flags =3D MEDIA_PAD_FL_SINK;
> > > > +	tc358746->pads[TC358746_SOURCE].flags =3D MEDIA_PAD_FL_SOURCE;
> > > > +	err =3D media_entity_pads_init(&sd->entity, TC358746_NR_PADS,
> > > > +				     tc358746->pads);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	err =3D v4l2_subdev_init_finalize(sd);
> > > > +	if (err)
> > > > +		media_entity_cleanup(&sd->entity);
> > > > +
> > > > +	return err;
> > > > +}
> > > > +
> > > > +static int
> > > > +tc358746_init_output_port(struct tc358746 *tc358746, unsigned long=
 refclk)
> > > > +{
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	struct v4l2_fwnode_endpoint *vep;
> > > > +	unsigned long csi_link_rate;
> > > > +	struct fwnode_handle *ep;
> > > > +	unsigned char csi_lanes;
> > > > +	int err;
> > > > +
> > > > +	ep =3D fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), TC358746_=
SOURCE,
> > > > +					     0, 0);
> > > > +	if (!ep) {
> > > > +		dev_err(dev, "Missing endpoint node\n");
> > > > +		return -EINVAL;
> > > > +	}
> > > > +
> > > > +	/* Currently we only support 'parallel in' -> 'csi out' */
> > > > +	vep =3D &tc358746->csi_vep;
> > > > +	vep->bus_type =3D V4L2_MBUS_CSI2_DPHY;
> > > > +	err =3D v4l2_fwnode_endpoint_alloc_parse(ep, vep);
> > > > +	fwnode_handle_put(ep);
> > > > +	if (err) {
> > > > +		dev_err(dev, "Failed to parse source endpoint\n");
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	csi_lanes =3D vep->bus.mipi_csi2.num_data_lanes;
> > > > +	if (csi_lanes =3D=3D 0 || csi_lanes > 4 ||
> > > > +	    vep->nr_of_link_frequencies =3D=3D 0) {
> > > > +		dev_err(dev, "error: Invalid CSI-2 settings\n");
> > > > +		err =3D -EINVAL;
> > > > +		goto err;
> > > > +	}
> > > > +
> > > > +	/* TODO: Add support to handle multiple link frequencies */
> > > > +	csi_link_rate =3D (unsigned long)vep->link_frequencies[0];
> > > > +	tc358746->pll_rate =3D tc358746_find_pll_settings(tc358746, refcl=
k,
> > > > +							csi_link_rate * 2);
> > > > +	if (!tc358746->pll_rate) {
> > > > +		err =3D -EINVAL;
> > > > +		goto err;
> > > > +	}
> > > > +
> > > > +	err =3D phy_mipi_dphy_get_default_config_for_hsclk(tc358746->pll_=
rate,
> > > > +						csi_lanes, &tc358746->dphy_cfg);
> > > > +	if (err)
> > > > +		goto err;
> > > > +
> > > > +	tc358746->vb_size =3D TC358746_VB_DEFAULT_SIZE;
> > > > +
> > > > +	return 0;
> > > > +
> > > > +err:
> > > > +	v4l2_fwnode_endpoint_free(vep);
> > > > +
> > > > +	return err;
> > > > +}
> > > > +
> > > > +static int tc358746_init_hw(struct tc358746 *tc358746)
> > > > +{
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	unsigned int chipid;
> > > > +	u32 val;
> > > > +	int err;
> > > > +
> > > > +	err =3D pm_runtime_resume_and_get(dev);
> > > > +	if (err < 0) {
> > > > +		dev_err(dev, "Failed to resume the device\n");
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	 /* Ensure that CSI interface is put into LP-11 state */
> > > > +	err =3D tc358746_sw_reset(tc358746);
> > > > +	if (err) {
> > > > +		pm_runtime_put_noidle(dev);
> > > =

> > > Don't you need a regular put (possibly with autosuspend) here ?
> > > Otherwise a reset failure will decrement the runtime PM use count but
> > > leave the decide powered.
> > =

> > The runtime_disable() will be called within the probe(). Please see
> > the error path there for tc358746_init_hw().
> =

> Those are two different things, I don't think pm_runtime_disable() will
> power the device off.

Arg.. Yes you're right. I will fix it by using the
pm_runtime_put_sync_suspend() now. Thanks.

> > > > +		dev_err(dev, "Failed to reset the device\n");
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	err =3D tc358746_read(tc358746, CHIPID_REG, &val);
> > > > +	pm_runtime_mark_last_busy(dev);
> > > > +	pm_runtime_put_sync_autosuspend(dev);
> > > > +	if (err) {
> > > > +		dev_err(dev, "Failed to read chipid\n");
> > > =

> > > How about moving the read failure message to tc358746_read() ? It's
> > > useful to get error messages for all failures, not just this one. Or =
do
> > > we get a message from regmap already ? If we do, then we could just d=
rop
> > > this.
> > =

> > I don't see any code within regmap. I will move it to tc358746_read()
> > and tc358746_write() helpers.
> > =

> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	chipid =3D FIELD_GET(CHIPID, val);
> > > > +	if (chipid !=3D 0x44) {
> > > > +		dev_err(dev, "Invalid chipid 0x%02x\n", chipid);
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int tc358746_setup_mclk_provider(struct tc358746 *tc358746)
> > > =

> > > I'd move this right after tc358746_mclk_ops as they're related.
> > =

> > Okay.
> > =

> > > > +{
> > > > +	struct clk_init_data mclk_initdata =3D { };
> > > > +	struct device *dev =3D tc358746->sd.dev;
> > > > +	const char *mclk_name;
> > > > +	int err;
> > > > +
> > > > +	/* MCLK clk provider support is optional */
> > > > +	if (!device_property_present(dev, "#clock-cells"))
> > > > +		return 0;
> > > > +
> > > > +	/* Init to highest possibel MCLK */
> > > > +	tc358746->mclk_postdiv =3D 512;
> > > > +	tc358746->mclk_prediv =3D 8;
> > > > +
> > > > +	mclk_name =3D "tc358746-mclk";
> > > > +	device_property_read_string(dev, "clock-output-names",
> > > > +				    &mclk_name);
> > > =

> > > This holds on a single line.
> > =

> > Sure.
> > =

> > > > +
> > > > +	mclk_initdata.name =3D mclk_name;
> > > > +	mclk_initdata.ops =3D &tc358746_mclk_ops;
> > > > +	tc358746->mclk_hw.init =3D &mclk_initdata;
> > > > +
> > > > +	err =3D devm_clk_hw_register(dev, &tc358746->mclk_hw);
> > > > +	if (err) {
> > > > +		dev_err(dev, "Failed to register mclk provider\n");
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	err =3D devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
> > > > +					  &tc358746->mclk_hw);
> > > > +	if (err)
> > > > +		dev_err(dev, "Failed to add mclk provider\n");
> > > > +
> > > > +	return err;
> > > > +}
> > > > +
> > > > +static int tc358746_init_controls(struct tc358746 *tc358746)
> > > > +{
> > > > +	u64 *link_frequencies =3D tc358746->csi_vep.link_frequencies;
> > > > +	struct v4l2_ctrl *ctrl;
> > > > +	int err;
> > > > +
> > > > +	err =3D v4l2_ctrl_handler_init(&tc358746->ctrl_hdl, 1);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	ctrl =3D v4l2_ctrl_new_int_menu(&tc358746->ctrl_hdl, NULL,
> > > > +				      V4L2_CID_LINK_FREQ, 0, 0,
> > > =

> > > Shouldn't the max argument be set to the number of items minus 1 ?
> > =

> > Right now I would keep it that way since the driver only supports one
> > link-frequencies setting. So the ctrl don't let the userspace assume
> > that there are more than one link-frequency.
> =

> Good point. Can you add a short comment above the call to explain this ?

Yes.

> =

> > > > +				      link_frequencies);
> > > > +	if (ctrl)
> > > > +		ctrl->flags |=3D V4L2_CTRL_FLAG_READ_ONLY;
> > > > +
> > > > +	tc358746->sd.ctrl_handler =3D &tc358746->ctrl_hdl;
> > > > +	if (tc358746->ctrl_hdl.error)
> > > > +		return tc358746->ctrl_hdl.error;
> > > =

> > > You need to call v4l2_ctrl_handler_free() in the failure paths.
> > =

> > Arg.. you're right.
> > =

> > > > +
> > > > +	return v4l2_ctrl_handler_setup(&tc358746->ctrl_hdl);
> > > =

> > > This can be skipped I think, as the only supported control is read-on=
ly.
> > =

> > Yes, you're right.
> > =

> > > > +}
> > > > +
> > > > +static int tc358746_notify_bound(struct v4l2_async_notifier *notif=
ier,
> > > > +				 struct v4l2_subdev *sd,
> > > > +				 struct v4l2_async_subdev *asd)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D
> > > > +		container_of(notifier, struct tc358746, notifier);
> > > > +	struct media_pad *sink =3D &tc358746->pads[TC358746_SINK];
> > > > +
> > > > +	return v4l2_create_fwnode_links_to_pad(sd, sink, MEDIA_LNK_FL_ENA=
BLED);
> > > =

> > > I'd make the link immutable too, as only one source subdev is support=
ed.
> > =

> > Yes, I can do that.
> > =

> > > > +}
> > > > +
> > > > +static const struct v4l2_async_notifier_operations tc358746_notify=
_ops =3D {
> > > > +	.bound =3D tc358746_notify_bound,
> > > > +};
> > > > +
> > > > +static int tc358746_async_register(struct tc358746 *tc358746)
> > > > +{
> > > > +	struct v4l2_fwnode_endpoint vep =3D {
> > > > +		.bus_type =3D V4L2_MBUS_PARALLEL,
> > > > +	};
> > > > +	struct v4l2_async_subdev *asd;
> > > > +	struct fwnode_handle *ep;
> > > > +	int err;
> > > > +
> > > > +	ep =3D fwnode_graph_get_endpoint_by_id(dev_fwnode(tc358746->sd.de=
v),
> > > > +					     TC358746_SINK, 0, 0);
> > > > +	if (!ep)
> > > > +		return -ENOTCONN;
> > > > +
> > > > +	err =3D v4l2_fwnode_endpoint_parse(ep, &vep);
> > > > +	if (err) {
> > > > +		fwnode_handle_put(ep);
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	v4l2_async_nf_init(&tc358746->notifier);
> > > > +	asd =3D v4l2_async_nf_add_fwnode_remote(&tc358746->notifier, ep,
> > > > +					      struct v4l2_async_subdev);
> > > > +	if (IS_ERR(asd)) {
> > > > +		fwnode_handle_put(ep);
> > > =

> > > You can move this before the error check and drop the next one.
> > =

> > Sure, thanks.
> > =

> > > > +		return PTR_ERR(asd);
> > > =

> > > Shouldn't v4l2_async_nf_cleanup() be called here ?
> > =

> > Yep.
> > =

> > > > +	}
> > > > +
> > > > +	fwnode_handle_put(ep);
> > > > +
> > > > +	tc358746->notifier.ops =3D &tc358746_notify_ops;
> > > > +
> > > > +	err =3D v4l2_async_subdev_nf_register(&tc358746->sd, &tc358746->n=
otifier);
> > > > +	if (err) {
> > > > +		v4l2_async_nf_cleanup(&tc358746->notifier);
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	tc358746->sd.fwnode =3D fwnode_graph_get_endpoint_by_id(
> > > > +		dev_fwnode(tc358746->sd.dev), TC358746_SOURCE, 0, 0);
> > > =

> > > Where is this reference dropped ?
> > =

> > That's a good question, should it be dropped upon the notify callback or
> > does the v4l2-subdev use the fwnode elsewhere? I introduced this to get
> > rid of the message: "considering updating the driver..".
> =

> I think it needs to be dropped in .remove() (and in probe error paths,
> as needed).

Yep, I think so too. I will fix that, thanks.

> > > > +
> > > > +	err =3D v4l2_async_register_subdev(&tc358746->sd);
> > > > +	if (err) {
> > > > +		v4l2_async_nf_unregister(&tc358746->notifier);
> > > > +		v4l2_async_nf_cleanup(&tc358746->notifier);
> > > > +	}
> > > > +
> > > > +	return err;
> > > =

> > > 	return 0;
> > =

> > This would drop possible errors from async_register, but I changed the
> > function completely, so I will return 0 :)
> =

> I had misread the code, I thought there was a return err in the error
> condition, my bad.
> =

> > > > +}
> > > > +
> > > > +static int tc358746_probe(struct i2c_client *client)
> > > > +{
> > > > +	struct device *dev =3D &client->dev;
> > > > +	struct tc358746 *tc358746;
> > > > +	unsigned long refclk;
> > > > +	unsigned int i;
> > > > +	int err;
> > > > +
> > > > +	tc358746 =3D devm_kzalloc(&client->dev, sizeof(*tc358746), GFP_KE=
RNEL);
> > > > +	if (!tc358746)
> > > > +		return -ENOMEM;
> > > > +
> > > > +	tc358746->regmap =3D devm_regmap_init_i2c(client, &tc358746_regma=
p_config);
> > > > +	if (IS_ERR(tc358746->regmap))
> > > > +		return dev_err_probe(dev, PTR_ERR(tc358746->regmap),
> > > > +				     "Failed to init regmap\n");
> > > > +
> > > > +	tc358746->refclk =3D devm_clk_get(dev, "refclk");
> > > > +	if (IS_ERR(tc358746->refclk))
> > > > +		return dev_err_probe(dev, PTR_ERR(tc358746->refclk),
> > > > +				     "Failed to get refclk\n");
> > > > +
> > > > +	err =3D clk_prepare_enable(tc358746->refclk);
> > > > +	if (err)
> > > > +		return dev_err_probe(dev, err,
> > > > +				     "Failed to enable refclk\n");
> > > > +
> > > > +	refclk =3D clk_get_rate(tc358746->refclk);
> > > > +	clk_disable_unprepare(tc358746->refclk);
> > > > +
> > > > +	if (refclk < 6 * MHZ || refclk > 40 * MHZ)
> > > > +		return dev_err_probe(dev, -EINVAL, "Invalid refclk range\n");
> > > > +
> > > > +	for (i =3D 0; i < ARRAY_SIZE(tc358746_supplies); i++)
> > > > +		tc358746->supplies[i].supply =3D tc358746_supplies[i];
> > > > +
> > > > +	err =3D devm_regulator_bulk_get(dev, ARRAY_SIZE(tc358746_supplies=
),
> > > > +				      tc358746->supplies);
> > > > +	if (err)
> > > > +		return dev_err_probe(dev, err, "Failed to get supplies\n");
> > > > +
> > > > +	tc358746->reset_gpio =3D devm_gpiod_get_optional(dev, "reset",
> > > > +						       GPIOD_OUT_HIGH);
> > > > +	if (IS_ERR(tc358746->reset_gpio))
> > > > +		return dev_err_probe(dev, PTR_ERR(tc358746->reset_gpio),
> > > > +				     "Failed to get reset-gpios\n");
> > > > +
> > > > +	err =3D tc358746_init_subdev(tc358746, client);
> > > > +	if (err)
> > > > +		return dev_err_probe(dev, err, "Failed to init subdev\n");
> > > > +
> > > > +	err =3D tc358746_init_output_port(tc358746, refclk);
> > > > +	if (err)
> > > > +		goto err_subdev;
> > > > +
> > > > +	/*
> > > > +	 * Keep this order since we need the output port link-frequencies
> > > > +	 * information.
> > > > +	 */
> > > > +	err =3D tc358746_init_controls(tc358746);
> > > > +	if (err)
> > > > +		goto err_fwnode;
> > > > +
> > > > +	dev_set_drvdata(dev, tc358746);
> > > > +	pm_runtime_set_autosuspend_delay(dev, 200);
> > > =

> > > 200ms may be a bit short for a complete stop/restart cycle. How about
> > > 1s ?
> > =

> > Isn't it the time upon which the pm-fw will put the device into stop? I
> > can increase it of course, but I don't see any improvements for it.
> =

> The idea is that autosuspend is helpful to avoid an expensive
> power-off/power-on cycle when stopping video capture, reconfiguring the
> source (and the pipeline) and restarting capture. Depending on the
> source, 200ms may be a bit short.

Ah now  I got your point. From that pov, I agree with you. I will
increase it to 1000, thanks.

Regards,
  Marco

> > Thanks again for the detailed review :)
> > =

> > Regards,
> >   Marco
> > =

> > > > +	pm_runtime_use_autosuspend(dev);
> > > > +	pm_runtime_enable(dev);
> > > > +
> > > > +	err =3D tc358746_init_hw(tc358746);
> > > > +	if (err)
> > > > +		goto err_pm;
> > > > +
> > > > +	err =3D tc358746_setup_mclk_provider(tc358746);
> > > > +	if (err)
> > > > +		goto err_pm;
> > > > +
> > > > +	err =3D tc358746_async_register(tc358746);
> > > > +	if (err < 0)
> > > > +		goto err_pm;
> > > > +
> > > > +	dev_dbg(dev, "%s found @ 0x%x (%s)\n", client->name,
> > > > +		client->addr, client->adapter->name);
> > > > +
> > > > +	return 0;
> > > > +
> > > > +err_pm:
> > > > +	pm_runtime_disable(dev);
> > > > +	pm_runtime_set_suspended(dev);
> > > > +	pm_runtime_dont_use_autosuspend(dev);
> > > > +	v4l2_ctrl_handler_free(&tc358746->ctrl_hdl);
> > > > +err_fwnode:
> > > > +	v4l2_fwnode_endpoint_free(&tc358746->csi_vep);
> > > > +err_subdev:
> > > > +	v4l2_subdev_cleanup(&tc358746->sd);
> > > > +	media_entity_cleanup(&tc358746->sd.entity);
> > > > +
> > > > +	return err;
> > > > +}
> > > > +
> > > > +static int tc358746_remove(struct i2c_client *client)
> > > > +{
> > > > +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> > > > +	struct tc358746 *tc358746 =3D to_tc358746(sd);
> > > > +
> > > > +	v4l2_subdev_cleanup(sd);
> > > > +	v4l2_ctrl_handler_free(&tc358746->ctrl_hdl);
> > > > +	v4l2_fwnode_endpoint_free(&tc358746->csi_vep);
> > > > +	v4l2_async_nf_unregister(&tc358746->notifier);
> > > > +	v4l2_async_nf_cleanup(&tc358746->notifier);
> > > > +	v4l2_async_unregister_subdev(sd);
> > > > +	media_entity_cleanup(&sd->entity);
> > > > +
> > > > +	pm_runtime_disable(sd->dev);
> > > > +	pm_runtime_set_suspended(sd->dev);
> > > > +	pm_runtime_dont_use_autosuspend(sd->dev);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int tc358746_suspend(struct device *dev)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D dev_get_drvdata(dev);
> > > > +	int err;
> > > > +
> > > > +	clk_disable_unprepare(tc358746->refclk);
> > > > +
> > > > +	err =3D regulator_bulk_disable(ARRAY_SIZE(tc358746_supplies),
> > > > +				     tc358746->supplies);
> > > > +	if (err)
> > > > +		clk_prepare_enable(tc358746->refclk);
> > > > +
> > > > +	return err;
> > > > +}
> > > > +
> > > > +static int tc358746_resume(struct device *dev)
> > > > +{
> > > > +	struct tc358746 *tc358746 =3D dev_get_drvdata(dev);
> > > > +	int err;
> > > > +
> > > > +	gpiod_set_value(tc358746->reset_gpio, 1);
> > > > +
> > > > +	err =3D regulator_bulk_enable(ARRAY_SIZE(tc358746_supplies),
> > > > +				    tc358746->supplies);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	/* min. 200ns */
> > > > +	usleep_range(10, 20);
> > > > +
> > > > +	gpiod_set_value(tc358746->reset_gpio, 0);
> > > > +
> > > > +	err =3D clk_prepare_enable(tc358746->refclk);
> > > > +	if (err)
> > > > +		goto err;
> > > > +
> > > > +	/* min. 700us ... 1ms */
> > > > +	usleep_range(1000, 1500);
> > > > +
> > > > +	/*
> > > > +	 * Enable the PLL here since it can be called by the clk-framewor=
k or by
> > > > +	 * the .s_stream() callback. So this is the common place for both.
> > > > +	 */
> > > > +	err =3D tc358746_apply_pll_config(tc358746);
> > > > +	if (err)
> > > > +		goto err_clk;
> > > > +
> > > > +	return 0;
> > > > +
> > > > +err_clk:
> > > > +	clk_disable_unprepare(tc358746->refclk);
> > > > +err:
> > > > +	regulator_bulk_disable(ARRAY_SIZE(tc358746_supplies),
> > > > +			       tc358746->supplies);
> > > > +	return err;
> > > > +}
> > > > +
> > > > +DEFINE_RUNTIME_DEV_PM_OPS(tc358746_pm_ops, tc358746_suspend,
> > > > +			  tc358746_resume, NULL);
> > > > +
> > > > +static const struct of_device_id __maybe_unused tc358746_of_match[=
] =3D {
> > > > +	{ .compatible =3D "toshiba,tc358746" },
> > > > +	{ },
> > > > +};
> > > > +MODULE_DEVICE_TABLE(of, tc358746_of_match);
> > > > +
> > > > +static struct i2c_driver tc358746_driver =3D {
> > > > +	.driver =3D {
> > > > +		.name =3D "tc358746",
> > > > +		.pm =3D pm_ptr(&tc358746_pm_ops),
> > > > +		.of_match_table =3D tc358746_of_match,
> > > > +	},
> > > > +	.probe_new =3D tc358746_probe,
> > > > +	.remove =3D tc358746_remove,
> > > > +};
> > > > +
> > > > +module_i2c_driver(tc358746_driver);
> > > > +
> > > > +MODULE_DESCRIPTION("Toshiba TC358746 Parallel to CSI-2 bridge driv=
er");
> > > > +MODULE_AUTHOR("Marco Felsch <kernel@pengutronix.de>");
> > > > +MODULE_LICENSE("GPL");
> =

> -- =

> Regards,
> =

> Laurent Pinchart
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
