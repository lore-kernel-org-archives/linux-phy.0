Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 158FCC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 16:35:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C75736124B
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 16:35:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C75736124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJ+Ah907t0u4aWJjCxZf7zUxkbxh4zQlMnUystOJO7c=; b=JKNMWtV07XuXRG
	TyAo0qWvI3ssD+B5ow5ZENopJvKcNuCO2sUFT4h6gCo2PmPf0x+Gm0jmiLYvTr5NsKPtfGiATNNz0
	oYmUZQb05fFN6I+oT1uMhM8CDV2A+bBOPeHH2r+uq0kFSmZgMSTmlNvU/f5VA1JQyPh4SR87MbLLv
	SEMFAMOUM61FuhyIjdozRjNJMBh+p6hCSXpfWlh4MGjVq1StbZxsoDt33UXcJAIHNjY/bEIk9Wo3/
	0GwhPc+K9X34htPoB7tpBKXbkmW2/uxwvU46XC5QFrpvxzCi6iM7HKXdpFnbJLYMlGP0Ai6YKt9Ml
	rdXkCS5THsfcH87zK8EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVG58-0086KM-DB; Tue, 28 Sep 2021 16:35:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVG54-0086JN-H9
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 16:35:49 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 18SGZc0E003471;
 Tue, 28 Sep 2021 11:35:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1632846938;
 bh=fpI1Kx1T6FBZ5bICzOy4tp1WnCGqRMUYHEJ5kwbOz6A=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=WdfkFXwbsPamEFEih8atqwRXwCz3q0bCYdvfQGwRExTolFKcX5aTPJgyiz/X6Bck0
 K9PuYXpknIhkCU+GQ4kErZ9OwoEGaKch59woVZOhQdqAagydiNY6Q1xDqhh2mureQV
 5+QWBorD7nn9wJH5i3cP3usSLYOE4oBaJ+qufeG0=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 18SGZcnG036389
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 Sep 2021 11:35:38 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 28
 Sep 2021 11:35:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 28 Sep 2021 11:35:38 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 18SGZbNr036224;
 Tue, 28 Sep 2021 11:35:38 -0500
Date: Tue, 28 Sep 2021 22:05:37 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
CC: Vinod Koul <vkoul@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
 <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <20210928163535.2lpifgb23zzlolib@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917172809.rjtf7ww7vjcfvey5@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_093546_735407_6CC83BE6 
X-CRM114-Status: GOOD (  53.55  )
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

On 17/09/21 10:58PM, Pratyush Yadav wrote:
> +Rob
> 
> On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > protocol. Add support for Rx mode. The programming sequence differs from
> > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > paths. The mode in which the DPHY has to be used is selected based on
> > > the compatible.
> > 
> > I just realized that I didn't follow-up on a previous revision on the debate
> > about using the phy sub-mode to distinguish between rx/tx.
> > 
> > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > good fit either. My understanding is that the compatible should describe a group
> > of register-compatible revisions of a hardware component, not how the hardware
> > is used specifically. I guess the distinction between rx/tx falls under
> > the latter rather than the former.
> 
> I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> supports Octal SPI (8 lines).
> 
> In addition, I feel like the Rx DPHY is almost a different type of 
> device from a Tx DPHY. The programming sequence is completely different, 
> the clocks required are different, etc. So I think using a different 
> compatible for Rx mode makes sense.
> 
> Rob, what do you think?

Ping. I think my current approach works well. Unless there are any 
objections I would like this series to move forward please.

> 
> > 
> > I just sent out a patch in my Allwinner MIPI CSI-2+ISP series adding
> > a specific direction property:
> > - https://lists.infradead.org/pipermail/linux-phy/2021-September/001420.html
> > - https://lists.infradead.org/pipermail/linux-phy/2021-September/001421.html
> > 
> > Which I feel is a more appropriate solution to implement the distinction.
> > 
> > What do you think?
> > 
> > Cheers,
> > 
> > Paul
> >  
> > > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > > 
> > > ---
> > > 
> > > Changes in v5:
> > > - Use the new cdns_dphy_info to specify PHY ops.
> > > - Re-order include in alphabetical order.
> > > - Make bands const.
> > > - Drop num_bands.
> > > - Make i, lanes unsigned.
> > > - Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
> > >   complete and return -EOPNOTSUPP when we reach the end.
> > > - Drop the "rate < bands[i].min_rate" check since the bands are in
> > >   ascending order.
> > > - Move data_lane_ctrl to start of function and make it static const.
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
> > >  drivers/phy/cadence/cdns-dphy.c | 182 ++++++++++++++++++++++++++++++++
> > >  1 file changed, 182 insertions(+)
> > > 
> > > diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> > > index e2c2b27c6539..9a4c1c684e9a 100644
> > > --- a/drivers/phy/cadence/cdns-dphy.c
> > > +++ b/drivers/phy/cadence/cdns-dphy.c
> > > @@ -1,11 +1,14 @@
> > >  // SPDX-License-Identifier: GPL-2.0+
> > >  /*
> > >   * Copyright: 2017-2018 Cadence Design Systems, Inc.
> > > + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
> > >   */
> > >  
> > > +#include <linux/bitfield.h>
> > >  #include <linux/bitops.h>
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
> > > @@ -105,6 +132,20 @@ struct cdns_dphy {
> > >  	struct phy *phy;
> > >  };
> > >  
> > > +struct cdns_dphy_rx_band {
> > > +	unsigned int min_rate;
> > > +	unsigned int max_rate;
> > > +};
> > > +
> > > +/* Order of bands is important since the index is the band number. */
> > > +static const struct cdns_dphy_rx_band bands[] = {
> > > +	{80, 100}, {100, 120}, {120, 160}, {160, 200}, {200, 240},
> > > +	{240, 280}, {280, 320}, {320, 360}, {360, 400}, {400, 480},
> > > +	{480, 560}, {560, 640}, {640, 720}, {720, 800}, {800, 880},
> > > +	{880, 1040}, {1040, 1200}, {1200, 1350}, {1350, 1500}, {1500, 1750},
> > > +	{1750, 2000}, {2000, 2250}, {2250, 2500}
> > > +};
> > > +
> > >  static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
> > >  				     struct cdns_dphy_cfg *cfg,
> > >  				     struct phy_configure_opts_mipi_dphy *opts,
> > > @@ -360,6 +401,145 @@ static const struct cdns_dphy_info tx_ref_info = {
> > >  	.tx_ops = &tx_ref_dphy_ops,
> > >  };
> > >  
> > > +static int cdns_dphy_rx_power_on(struct phy *phy)
> > > +{
> > > +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> > > +
> > > +	/* Start RX state machine. */
> > > +	writel(DPHY_CMN_SSM_EN | DPHY_CMN_RX_MODE_EN |
> > > +	       FIELD_PREP(DPHY_CMN_RX_BANDGAP_TIMER_MASK,
> > > +			  DPHY_CMN_RX_BANDGAP_TIMER),
> > > +	       dphy->regs + DPHY_CMN_SSM);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_power_off(struct phy *phy)
> > > +{
> > > +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> > > +
> > > +	writel(0, dphy->regs + DPHY_CMN_SSM);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_get_band_ctrl(unsigned long hs_clk_rate)
> > > +{
> > > +	unsigned int rate, i;
> > > +
> > > +	rate = hs_clk_rate / 1000000UL;
> > > +	/* Since CSI-2 clock is DDR, the bit rate is twice the clock rate. */
> > > +	rate *= 2;
> > > +
> > > +	if (rate < bands[0].min_rate)
> > > +		return -EOPNOTSUPP;
> > > +
> > > +	for (i = 0; i < ARRAY_SIZE(bands); i++) {
> > > +		if (rate < bands[i].max_rate)
> > > +			return i;
> > > +	}
> > > +
> > > +	return -EOPNOTSUPP;
> > > +}
> > > +
> > > +static int cdns_dphy_rx_wait_for_bit(void __iomem *addr, unsigned int bit)
> > > +{
> > > +	u32 val;
> > > +
> > > +	return readl_relaxed_poll_timeout(addr, val, val & BIT(bit), 10,
> > > +					  DPHY_ISO_LANE_READY_TIMEOUT_MS * 1000);
> > > +}
> > > +
> > > +static int cdns_dphy_rx_wait_lane_ready(struct cdns_dphy *dphy,
> > > +					unsigned int lanes)
> > > +{
> > > +	static const u32 data_lane_ctrl[] = {DPHY_ISO_DL_CTRL_L0,
> > > +					     DPHY_ISO_DL_CTRL_L1,
> > > +					     DPHY_ISO_DL_CTRL_L2,
> > > +					     DPHY_ISO_DL_CTRL_L3};
> > > +	void __iomem *reg = dphy->regs;
> > > +	unsigned int i;
> > > +	int ret;
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
> > > +static int cdns_dphy_rx_configure(struct phy *phy,
> > > +				  union phy_configure_opts *opts)
> > > +{
> > > +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
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
> > > +static int cdns_dphy_rx_validate(struct phy *phy, enum phy_mode mode,
> > > +				 int submode, union phy_configure_opts *opts)
> > > +{
> > > +	int ret;
> > > +
> > > +	if (mode != PHY_MODE_MIPI_DPHY)
> > > +		return -EINVAL;
> > > +
> > > +	ret = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
> > > +	if (ret < 0)
> > > +		return ret;
> > > +
> > > +	return phy_mipi_dphy_config_validate(&opts->mipi_dphy);
> > > +}
> > > +
> > > +static const struct phy_ops rx_ref_phy_ops = {
> > > +	.power_on = cdns_dphy_rx_power_on,
> > > +	.power_off = cdns_dphy_rx_power_off,
> > > +	.configure = cdns_dphy_rx_configure,
> > > +	.validate = cdns_dphy_rx_validate,
> > > +};
> > > +
> > > +static const struct cdns_dphy_info rx_ref_info = {
> > > +	.phy_ops = &rx_ref_phy_ops,
> > > +};
> > > +
> > >  static int cdns_dphy_probe(struct platform_device *pdev)
> > >  {
> > >  	struct phy_provider *phy_provider;
> > > @@ -417,6 +597,7 @@ static int cdns_dphy_remove(struct platform_device *pdev)
> > >  
> > >  static const struct of_device_id cdns_dphy_of_match[] = {
> > >  	{ .compatible = "cdns,dphy", .data = &tx_ref_info },
> > > +	{ .compatible = "cdns,dphy-rx", .data = &rx_ref_info },
> > >  	{ /* sentinel */ },
> > >  };
> > >  MODULE_DEVICE_TABLE(of, cdns_dphy_of_match);
> > > @@ -432,5 +613,6 @@ static struct platform_driver cdns_dphy_platform_driver = {
> > >  module_platform_driver(cdns_dphy_platform_driver);
> > >  
> > >  MODULE_AUTHOR("Maxime Ripard <maxime.ripard@bootlin.com>");
> > > +MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
> > >  MODULE_DESCRIPTION("Cadence MIPI D-PHY Driver");
> > >  MODULE_LICENSE("GPL");
> > > -- 
> > > 2.33.0
> > > 
> > 
> > -- 
> > Paul Kocialkowski, Bootlin
> > Embedded Linux and kernel engineering
> > https://bootlin.com
> 
> 
> 
> -- 
> Regards,
> Pratyush Yadav
> Texas Instruments Inc.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
