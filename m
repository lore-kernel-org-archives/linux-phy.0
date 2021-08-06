Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B20BC432BE
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:15:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 431AE611B0
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:15:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 431AE611B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beRICRCVi+UbCsGIAcnXvuiLMzmxzbfIELkPJ87ko9o=; b=KTARFxsH/gPu5L
	fSmOlOseLnHcoc3AOJ3gxQWLsIWYgeFwdNEwQ3u4IVTNYrciTVhla4QZ1npaglNAAC8DJ4iY4m2FM
	pjLbj6PpnQ16UCzAVHGj837fbU+57eNRuI/4bfe76d5cBKPqFJBRSkEJK8+Z4jKJSDHeT4TOIEvjW
	ucOv6qwC6GIpwHpnu7GH+d3F4zmt01QUaE1EXM7hYSnq4xzdf3o91B4+UZbrx/x25jme6HDr8w/7O
	+m0wmTZiM4w/1upfQc33dX6sAqiX/lHKKoJia0kCmuE3YyOAFovf5aPacrtL1gnzz60ESDP63k1Kc
	HJRul2EdqhuPf6b71mQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBxpL-00CFwe-M6; Fri, 06 Aug 2021 11:15:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBxpI-00CFw5-Bz
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 11:15:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 119EE601FD;
 Fri,  6 Aug 2021 11:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628248543;
 bh=wRWDcF2YvttmXXcK3mW0+9W5kfOoLugUDOW/UaWhK/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZFfadV2wZfUfftS3tuNCS3lDCRxqy0SIxSA7Pd3Na7gyPSfqrr+73Q22PCgXbtowU
 BsmhB8kV1szXFyghUE8sotwL8y5F2LaQ9l+F9hRc4oxDLYN9QbFJWB4xFdS3Xykmzs
 ydsERGOAGgw56NIyrWtqpvdF/mSRSzEhPj5wo2LQQ3JsjB2rrnQxI+n2tJluq8qHoz
 eXOLxF0fI4XiRYT2ey8J2UpTzsCymIqUL2epYxRe45N31oZtMNJscdatxENnJesvya
 nMyJueJmj9inE8RcsrUqLYZc0lc9HU7EqdF+yMQdDNYNDEA1m806m/I6h5VAD8zpAS
 VFNj8KiBfOG+g==
Date: Fri, 6 Aug 2021 16:45:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Nikhil Devshatwar <nikhil.nd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/7] phy: cdns-dphy: Add Rx support
Message-ID: <YQ0Z2wYQYAFn2KCY@matsya>
References: <20210624184108.21312-1-p.yadav@ti.com>
 <20210624184108.21312-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624184108.21312-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_041544_492753_C335A973 
X-CRM114-Status: GOOD (  27.33  )
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

On 25-06-21, 00:11, Pratyush Yadav wrote:
> The Cadence DPHY can be used to receive image data over the CSI-2
> protocol. Add support for Rx mode. The programming sequence differs from
> the Tx mode so it is added as a separate set of hooks to isolate the two
> paths.
> 
> The PHY is in Tx mode by default and it needs to be set in Rx mode by
> setting the submode to PHY_MIPI_DPHY_SUBMODE_RX in the set_mode()
> callback.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v3:
> - Use a table to select the band.
> - Use a table to poll the data lane ready bits.
> - Multiply the DPHY HS clock rate by 2 to get the bit rate since the
>   clock is DDR.
> 
>  drivers/phy/cadence/cdns-dphy.c | 174 ++++++++++++++++++++++++++++++++
>  1 file changed, 174 insertions(+)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index 7d5f7b333893..7534ec957dc5 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -1,11 +1,14 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Copyright: 2017-2018 Cadence Design Systems, Inc.
> + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  
>  #include <linux/bitops.h>
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/module.h>
>  #include <linux/of_address.h>
>  #include <linux/of_device.h>
> @@ -25,10 +28,14 @@
>  #define DPHY_PMA_RCLK(reg)		(0x600 + (reg))
>  #define DPHY_PMA_RDATA(lane, reg)	(0x700 + ((lane) * 0x100) + (reg))
>  #define DPHY_PCS(reg)			(0xb00 + (reg))
> +#define DPHY_ISO(reg)			(0xc00 + (reg))
>  
>  #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
>  #define DPHY_CMN_SSM_EN			BIT(0)
> +#define DPHY_CMN_RX_BANDGAP_TIMER_MASK	GENMASK(8, 1)
>  #define DPHY_CMN_TX_MODE_EN		BIT(9)
> +#define DPHY_CMN_RX_MODE_EN		BIT(10)
> +#define DPHY_CMN_RX_BANDGAP_TIMER	0x14
>  
>  #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
>  #define DPHY_CMN_PWM_DIV(x)		((x) << 20)
> @@ -45,10 +52,27 @@
>  #define DPHY_CMN_OPDIV_FROM_REG		BIT(6)
>  #define DPHY_CMN_OPDIV(x)		((x) << 7)
>  
> +#define DPHY_BAND_CFG			DPHY_PCS(0x0)
> +#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
> +#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
> +
>  #define DPHY_PSM_CFG			DPHY_PCS(0x4)
>  #define DPHY_PSM_CFG_FROM_REG		BIT(0)
>  #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
>  
> +#define DPHY_POWER_ISLAND_EN_DATA	DPHY_PCS(0x8)
> +#define DPHY_POWER_ISLAND_EN_DATA_VAL	0xaaaaaaaa
> +#define DPHY_POWER_ISLAND_EN_CLK	DPHY_PCS(0xc)
> +#define DPHY_POWER_ISLAND_EN_CLK_VAL	0xaa
> +
> +#define DPHY_ISO_CL_CTRL_L		DPHY_ISO(0x10)
> +#define DPHY_ISO_DL_CTRL_L0		DPHY_ISO(0x14)
> +#define DPHY_ISO_DL_CTRL_L1		DPHY_ISO(0x20)
> +#define DPHY_ISO_DL_CTRL_L2		DPHY_ISO(0x30)
> +#define DPHY_ISO_DL_CTRL_L3		DPHY_ISO(0x3c)
> +#define DPHY_ISO_LANE_READY_BIT		0
> +#define DPHY_ISO_LANE_READY_TIMEOUT_MS	100UL
> +
>  #define DSI_HBP_FRAME_OVERHEAD		12
>  #define DSI_HSA_FRAME_OVERHEAD		14
>  #define DSI_HFP_FRAME_OVERHEAD		6
> @@ -57,6 +81,9 @@
>  #define DSI_NULL_FRAME_OVERHEAD		6
>  #define DSI_EOT_PKT_SIZE		4
>  
> +#define DPHY_LANES_MIN			1
> +#define DPHY_LANES_MAX			4
> +
>  struct cdns_dphy_cfg {
>  	u8 pll_ipdiv;
>  	u8 pll_opdiv;
> @@ -103,6 +130,22 @@ struct cdns_dphy_driver_data {
>  	const struct cdns_dphy_ops *rx;
>  };
>  
> +struct cdns_dphy_rx_band {
> +	unsigned int min_rate;
> +	unsigned int max_rate;
> +};
> +
> +/* Order of bands is important since the index is the band number. */
> +struct cdns_dphy_rx_band bands[] = {
> +	{80, 100}, {100, 120}, {120, 160}, {160, 200}, {200, 240},
> +	{240, 280}, {280, 320}, {320, 360}, {360, 400}, {400, 480},
> +	{480, 560}, {560, 640}, {640, 720}, {720, 800}, {800, 880},
> +	{880, 1040}, {1040, 1200}, {1200, 1350}, {1350, 1500}, {1500, 1750},
> +	{1750, 2000}, {2000, 2250}, {2250, 2500}
> +};
> +
> +int num_bands = ARRAY_SIZE(bands);
> +
>  static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>  				     struct cdns_dphy_cfg *cfg,
>  				     struct phy_configure_opts_mipi_dphy *opts,
> @@ -312,6 +355,135 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
>  	.set_psm_div = cdns_dphy_ref_set_psm_div,
>  };
>  
> +static int cdns_dphy_rx_power_on(struct cdns_dphy *dphy)
> +{
> +	/* Start RX state machine. */
> +	writel(DPHY_CMN_SSM_EN | DPHY_CMN_RX_MODE_EN |
> +	       FIELD_PREP(DPHY_CMN_RX_BANDGAP_TIMER_MASK,
> +			  DPHY_CMN_RX_BANDGAP_TIMER),
> +	       dphy->regs + DPHY_CMN_SSM);
> +
> +	return 0;
> +}
> +
> +static int cdns_dphy_rx_power_off(struct cdns_dphy *dphy)
> +{
> +	writel(0, dphy->regs + DPHY_CMN_SSM);
> +
> +	return 0;
> +}
> +
> +static int cdns_dphy_rx_get_band_ctrl(unsigned long hs_clk_rate)
> +{
> +	unsigned int rate;
> +	int i;
> +
> +	rate = hs_clk_rate / 1000000UL;
> +	/* Since CSI-2 clock is DDR, the bit rate is twice the clock rate. */
> +	rate *= 2;
> +
> +	if (rate < bands[0].min_rate || rate >= bands[num_bands - 1].max_rate)
> +		return -EOPNOTSUPP;
> +
> +	for (i = 0; i < num_bands; i++) {
> +		if (rate >= bands[i].min_rate && rate < bands[i].max_rate)
> +			return i;
> +	}
> +
> +	/* Unreachable. */
> +	WARN(1, "Reached unreachable code.");
> +	return -EINVAL;
> +}
> +
> +static int cdns_dphy_rx_wait_for_bit(void __iomem *addr, unsigned int bit)
> +{
> +	u32 val;
> +
> +	return readl_relaxed_poll_timeout(addr, val, val & BIT(bit), 10,
> +					  DPHY_ISO_LANE_READY_TIMEOUT_MS * 1000);

this looks wrong, val is not initialized, so what/when is condition to
be met..?
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
