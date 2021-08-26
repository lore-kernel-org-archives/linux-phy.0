Return-Path: <SRS0=C1RB=NR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30CB7C4320E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Aug 2021 19:34:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BFA1B60FF2
	for <linux-phy@archiver.kernel.org>; Thu, 26 Aug 2021 19:34:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BFA1B60FF2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfTD0yd7PpqejUEXIalYid7pvo8kDu45eJ/lQ4KT7YM=; b=fTqwrpbgY69SO/
	rhD5rz9mCiSVn6BPjSvmlJcU+VYBnWHdrKDhxhO7FsgA16DNCV1gYPHPd+Cj5Eb9rc3EvN6AvySr2
	r6HwdLM0TBik/Z1X18/5geKjrqArdcJ2zV+EnbIEIPwgywgtNGDjw78stUNeWmreJQPTeq00oDZYY
	0RXZKthBK9VUp4rSykBVN7kG+6ap9c5RirdvHWQu9E0v7SmSVsRp5eQdmNOerqk/QVlDLMYd0prIZ
	mWVwPziW7Hqs4F+xUR3DjBKnTE+kEu3BoSeJt0kxrfR0C3CDT9UISwP7yD5H2ewWxkZoY/wLUiSGR
	0of2mvjiIY/XfnMqp7cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJL9M-00Aonh-57; Thu, 26 Aug 2021 19:34:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJL9G-00Aon9-At
 for linux-phy@lists.infradead.org; Thu, 26 Aug 2021 19:34:54 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2549A191F;
 Thu, 26 Aug 2021 21:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1630006485;
 bh=29sfX5f6zFOE8RGP1Ds2kw8J4ROZOVu9LFklZ6mngSc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RQb+RmCmg77FTK18gorKs9ciGJEMv5tRgY4VEirbFNoX8aUhPIoRJGtt+6MVeRvlH
 9beuiaJeZdX2oHVYVYUtD1sxEsNIrqPNBK8itPdV60CUKFS+YS/iB54fDLtJwaBkFQ
 y2k3w+ghwUEO9a3Yz+nFBVhKAtOWodNOdwTbaGug=
Date: Thu, 26 Aug 2021 22:34:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <YSfsyOlYHorct2R1@pendragon.ideasonboard.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
 <20210820190346.18550-3-p.yadav@ti.com>
 <YSL79vtTGsK+zwTQ@pendragon.ideasonboard.com>
 <20210826184923.zgevk33rmdq6g3uo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210826184923.zgevk33rmdq6g3uo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_123450_589419_FC40E101 
X-CRM114-Status: GOOD (  51.13  )
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

Hi Pratyush,

On Fri, Aug 27, 2021 at 12:19:25AM +0530, Pratyush Yadav wrote:
> On 23/08/21 04:37AM, Laurent Pinchart wrote:
> > On Sat, Aug 21, 2021 at 12:33:42AM +0530, Pratyush Yadav wrote:
> > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > protocol. Add support for Rx mode. The programming sequence differs from
> > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > paths. The mode in which the DPHY has to be used is selected based on
> > > the compatible.
> > > 
> > > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > > 
> > > ---
> > > 
> > > Changes in v4:
> > > - Drop the submode parts. Use a different compatible for the Rx ops.
> > > - Make bands and num_bands static.
> > > 
> > > Changes in v3:
> > > - Use a table to select the band.
> > > - Use a table to poll the data lane ready bits.
> > > - Multiply the DPHY HS clock rate by 2 to get the bit rate since the
> > >   clock is DDR.
> > > 
> > >  drivers/phy/cadence/cdns-dphy.c | 171 ++++++++++++++++++++++++++++++++
> > >  1 file changed, 171 insertions(+)
> > > 
> > > diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> > > index 0a169d649216..149fccdfad38 100644
> > > --- a/drivers/phy/cadence/cdns-dphy.c
> > > +++ b/drivers/phy/cadence/cdns-dphy.c
> > > @@ -1,11 +1,14 @@
> > >  // SPDX-License-Identifier: GPL-2.0+
> > >  /*
> > >   * Copyright: 2017-2018 Cadence Design Systems, Inc.
> > > + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
> > >   */
> > >  
> > >  #include <linux/bitops.h>
> > > +#include <linux/bitfield.h>
> > 
> > Alphabetical order please.
> > 
> > >  #include <linux/clk.h>
> > >  #include <linux/io.h>
> > > +#include <linux/iopoll.h>
> > >  #include <linux/module.h>
> > >  #include <linux/of_address.h>
> > >  #include <linux/of_device.h>
> > > @@ -25,10 +28,14 @@
> > >  #define DPHY_PMA_RCLK(reg)		(0x600 + (reg))
> > >  #define DPHY_PMA_RDATA(lane, reg)	(0x700 + ((lane) * 0x100) + (reg))
> > >  #define DPHY_PCS(reg)			(0xb00 + (reg))
> > > +#define DPHY_ISO(reg)			(0xc00 + (reg))
> > >  
> > >  #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
> > >  #define DPHY_CMN_SSM_EN			BIT(0)
> > > +#define DPHY_CMN_RX_BANDGAP_TIMER_MASK	GENMASK(8, 1)
> > >  #define DPHY_CMN_TX_MODE_EN		BIT(9)
> > > +#define DPHY_CMN_RX_MODE_EN		BIT(10)
> > > +#define DPHY_CMN_RX_BANDGAP_TIMER	0x14
> > >  
> > >  #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
> > >  #define DPHY_CMN_PWM_DIV(x)		((x) << 20)
> > > @@ -45,10 +52,27 @@
> > >  #define DPHY_CMN_OPDIV_FROM_REG		BIT(6)
> > >  #define DPHY_CMN_OPDIV(x)		((x) << 7)
> > >  
> > > +#define DPHY_BAND_CFG			DPHY_PCS(0x0)
> > > +#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
> > > +#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
> > > +
> > >  #define DPHY_PSM_CFG			DPHY_PCS(0x4)
> > >  #define DPHY_PSM_CFG_FROM_REG		BIT(0)
> > >  #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
> > >  
> > > +#define DPHY_POWER_ISLAND_EN_DATA	DPHY_PCS(0x8)
> > > +#define DPHY_POWER_ISLAND_EN_DATA_VAL	0xaaaaaaaa
> > > +#define DPHY_POWER_ISLAND_EN_CLK	DPHY_PCS(0xc)
> > > +#define DPHY_POWER_ISLAND_EN_CLK_VAL	0xaa
> > > +
> > > +#define DPHY_ISO_CL_CTRL_L		DPHY_ISO(0x10)
> > > +#define DPHY_ISO_DL_CTRL_L0		DPHY_ISO(0x14)
> > > +#define DPHY_ISO_DL_CTRL_L1		DPHY_ISO(0x20)
> > > +#define DPHY_ISO_DL_CTRL_L2		DPHY_ISO(0x30)
> > > +#define DPHY_ISO_DL_CTRL_L3		DPHY_ISO(0x3c)
> > > +#define DPHY_ISO_LANE_READY_BIT		0
> > > +#define DPHY_ISO_LANE_READY_TIMEOUT_MS	100UL
> > > +
> > >  #define DSI_HBP_FRAME_OVERHEAD		12
> > >  #define DSI_HSA_FRAME_OVERHEAD		14
> > >  #define DSI_HFP_FRAME_OVERHEAD		6
> > > @@ -57,6 +81,9 @@
> > >  #define DSI_NULL_FRAME_OVERHEAD		6
> > >  #define DSI_EOT_PKT_SIZE		4
> > >  
> > > +#define DPHY_LANES_MIN			1
> > > +#define DPHY_LANES_MAX			4
> > > +
> > >  struct cdns_dphy_cfg {
> > >  	u8 pll_ipdiv;
> > >  	u8 pll_opdiv;
> > > @@ -98,6 +125,22 @@ struct cdns_dphy {
> > >  	struct phy *phy;
> > >  };
> > >  
> > > +struct cdns_dphy_rx_band {
> > > +	unsigned int min_rate;
> > > +	unsigned int max_rate;
> > > +};
> > > +
> > > +/* Order of bands is important since the index is the band number. */
> > > +static struct cdns_dphy_rx_band bands[] = {
> > 
> > static const
> > 
> > > +	{80, 100}, {100, 120}, {120, 160}, {160, 200}, {200, 240},
> > > +	{240, 280}, {280, 320}, {320, 360}, {360, 400}, {400, 480},
> > > +	{480, 560}, {560, 640}, {640, 720}, {720, 800}, {800, 880},
> > > +	{880, 1040}, {1040, 1200}, {1200, 1350}, {1350, 1500}, {1500, 1750},
> > > +	{1750, 2000}, {2000, 2250}, {2250, 2500}
> > > +};
> > > +
> > > +static int num_bands = ARRAY_SIZE(bands);
> > 
> > No need for a variable (which should be const otherwise), you can use
> > ARRAY_SIZE(bands) where needed.
> > 
> > > +
> > >  static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
> > >  				     struct cdns_dphy_cfg *cfg,
> > >  				     struct phy_configure_opts_mipi_dphy *opts,
> > > @@ -309,6 +352,132 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
> > >  	.set_psm_div = cdns_dphy_ref_set_psm_div,
> > >  };
> > >  
> > > +static int cdns_dphy_rx_power_on(struct cdns_dphy *dphy)
> > > +{
> > > +	/* Start RX state machine. */
> > > +	writel(DPHY_CMN_SSM_EN | DPHY_CMN_RX_MODE_EN |
> > > +	       FIELD_PREP(DPHY_CMN_RX_BANDGAP_TIMER_MASK,
> > > +			  DPHY_CMN_RX_BANDGAP_TIMER),
> > > +	       dphy->regs + DPHY_CMN_SSM);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_power_off(struct cdns_dphy *dphy)
> > > +{
> > > +	writel(0, dphy->regs + DPHY_CMN_SSM);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_get_band_ctrl(unsigned long hs_clk_rate)
> > > +{
> > > +	unsigned int rate;
> > > +	int i;
> > 
> > i is never negative, you can make it an unsigned int.
> > 
> > > +
> > > +	rate = hs_clk_rate / 1000000UL;
> > > +	/* Since CSI-2 clock is DDR, the bit rate is twice the clock rate. */
> > > +	rate *= 2;
> > > +
> > > +	if (rate < bands[0].min_rate || rate >= bands[num_bands - 1].max_rate)
> > > +		return -EOPNOTSUPP;
> > > +
> > > +	for (i = 0; i < num_bands; i++) {
> > > +		if (rate >= bands[i].min_rate && rate < bands[i].max_rate)
> > 
> > You can replace this with
> > 
> > 		if (rate < bands[i].max_rate)
> > 
> > as the bands are in increasing order.
> > 
> > > +			return i;
> > > +	}
> > > +
> > > +	/* Unreachable. */
> > > +	WARN(1, "Reached unreachable code.");
> > > +	return -EINVAL;
> > 
> > That's not very nice.
> > 
> > As a clock rate higher than the maximum isn't supposed to happen, you
> > could drop that initial check (it won't affect performance) and return
> > -EOPNOTSUPP here without a WARN().
> 
> Ok.
> 
> > > +}
> > > +
> > > +static int cdns_dphy_rx_wait_for_bit(void __iomem *addr, unsigned int bit)
> > > +{
> > > +	u32 val;
> > > +
> > > +	return readl_relaxed_poll_timeout(addr, val, val & BIT(bit), 10,
> > > +					  DPHY_ISO_LANE_READY_TIMEOUT_MS * 1000);
> > 
> > A busy wait for one second is quite long. How long does it typically
> > take for the condition to be true ?
> 
> I have not measured. I don't see any timing information in the 
> datasheet.
> 
> But the timeout is 100 miliseconds not 1 second. 
> readl_relaxed_poll_timeout() expects microseconds, so we multiply by 
> 1000. The value of DPHY_ISO_LANE_READY_TIMEOUT_MS is 100, so it will be 
> a 100 ms timeout, which I think is reasonable.
> 
> > > +}
> > > +
> > > +static int cdns_dphy_rx_wait_lane_ready(struct cdns_dphy *dphy, int lanes)
> > 
> > lanes should be an unsigned int.
> > 
> > > +{
> > > +	void __iomem *reg = dphy->regs;
> > 
> > You can use dphy->regs directly in the code below.
> > 
> > > +	u32 data_lane_ctrl[] = {DPHY_ISO_DL_CTRL_L0, DPHY_ISO_DL_CTRL_L1,
> > > +				DPHY_ISO_DL_CTRL_L2, DPHY_ISO_DL_CTRL_L3};
> > 
> > static const, and move it first in the function.
> 
> Ok. But out of curiosity, why?

static const because it will then be allocated as global read-only data,
instead of being created on the stack every time the function is called
(the const also lets the compiler catch unintented modifications by
buggy code). Moving it to the beginning of the function, that's just a
coding style rule, and it may very well be personal to prefer grouping
static const data at the beginning :-) I find that it gets it out of the
way, especially as static const data needs to be initialized, and thus
results in longer lines or multi-line statements. If you prefer a
different style, that's fine too as long as the array is static const.

> > > +	int ret, i;
> > 
> > i is never negative here either.
> 
> Yes. Will change to unsigned.
> 
> > > +
> > > +	/* Data lanes. Minimum one lane is mandatory. */
> > > +	if (lanes < DPHY_LANES_MIN || lanes > DPHY_LANES_MAX)
> > > +		return -EINVAL;
> > > +
> > > +	/* Clock lane */
> > > +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_CL_CTRL_L,
> > > +					DPHY_ISO_LANE_READY_BIT);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	for (i = 0; i < lanes; i++) {
> > > +		ret = cdns_dphy_rx_wait_for_bit(reg + data_lane_ctrl[i],
> > > +						DPHY_ISO_LANE_READY_BIT);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_configure(struct cdns_dphy *dphy,
> > > +				  union phy_configure_opts *opts)
> > > +{
> > > +	unsigned int reg;
> > > +	int band_ctrl, ret;
> > > +
> > > +	band_ctrl = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
> > > +	if (band_ctrl < 0)
> > > +		return band_ctrl;
> > > +
> > > +	reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
> > > +	      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, band_ctrl);
> > > +	writel(reg, dphy->regs + DPHY_BAND_CFG);
> > > +
> > > +	/*
> > > +	 * Set the required power island phase 2 time. This is mandated by DPHY
> > > +	 * specs.
> > > +	 */
> > > +	reg = DPHY_POWER_ISLAND_EN_DATA_VAL;
> > > +	writel(reg, dphy->regs + DPHY_POWER_ISLAND_EN_DATA);
> > > +	reg = DPHY_POWER_ISLAND_EN_CLK_VAL;
> > > +	writel(reg, dphy->regs + DPHY_POWER_ISLAND_EN_CLK);
> > > +
> > > +	ret = cdns_dphy_rx_wait_lane_ready(dphy, opts->mipi_dphy.lanes);
> > > +	if (ret) {
> > > +		dev_err(dphy->dev, "DPHY wait for lane ready timeout\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_validate(struct cdns_dphy *dphy, enum phy_mode mode,
> > > +				 int submode, union phy_configure_opts *opts)
> > > +{
> > > +	int ret;
> > > +
> > > +	ret = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
> > > +	if (ret < 0)
> > > +		return ret;
> > > +
> > > +	return phy_mipi_dphy_config_validate(&opts->mipi_dphy);
> > > +}
> > > +
> > > +static const struct cdns_dphy_ops rx_ref_dphy_ops = {
> > > +	.power_on = cdns_dphy_rx_power_on,
> > > +	.power_off = cdns_dphy_rx_power_off,
> > > +	.configure = cdns_dphy_rx_configure,
> > > +	.validate = cdns_dphy_rx_validate,
> > > +};
> > > +
> > >  static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
> > >  			      union phy_configure_opts *opts)
> > >  {
> > > @@ -421,6 +590,7 @@ static int cdns_dphy_remove(struct platform_device *pdev)
> > >  
> > >  static const struct of_device_id cdns_dphy_of_match[] = {
> > >  	{ .compatible = "cdns,dphy", .data = &tx_ref_dphy_ops },
> > > +	{ .compatible = "cdns,dphy-rx", .data = &rx_ref_dphy_ops },
> > >  	{ /* sentinel */ },
> > >  };
> > >  MODULE_DEVICE_TABLE(of, cdns_dphy_of_match);
> > > @@ -436,5 +606,6 @@ static struct platform_driver cdns_dphy_platform_driver = {
> > >  module_platform_driver(cdns_dphy_platform_driver);
> > >  
> > >  MODULE_AUTHOR("Maxime Ripard <maxime.ripard@bootlin.com>");
> > > +MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
> > >  MODULE_DESCRIPTION("Cadence MIPI D-PHY Driver");
> > >  MODULE_LICENSE("GPL");

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
