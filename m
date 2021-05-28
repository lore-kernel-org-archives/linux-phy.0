Return-Path: <SRS0=Ugb/=KX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 432B3C4708C
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 06:09:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9658F613D1
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 06:09:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9658F613D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFhAWzPEft/eAunaPh1f+IKps5L3t13skpbohsC9VZ4=; b=cyNU1bqeuniw5udpGFSVd1bLzH
	Jb1/T/iHQJFdZtXnep/Xp2kJRrCkRcz2JAjxSZcGcxS/tpE1chCJ3cYtYGgPM2iJBTu7MaMgU60qS
	rbUXKER5AjFaPxwJzCAzZj1RDgLcneW7Qrud2lG7A2E+k6jgDRRxgCpl0YatrT51ysfNRvyf//P60
	QDkj7cgtBtybRu18ppGQDmTpgDS7toQJqo+9Y/5VkLIEQ5GihebUtvd71vB/08tJ4t61RfSBdVSBk
	nXarsmwTTYbg7qayTkbm7tLESJtCUkupsKwDQ84nhp9aynFVkc/XY2o5zaaYXc7OY2R1sVwQqT3bu
	FjtdEdFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmVga-00CTG5-4U; Fri, 28 May 2021 06:09:32 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmVgX-00CTE7-D5
 for linux-phy@lists.infradead.org; Fri, 28 May 2021 06:09:31 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB4168C7;
 Fri, 28 May 2021 08:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622182167;
 bh=jDi8jSXdNVCFkVabP69b1FsiwFVcxxaghC6ZX3Y2Wh8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ALKPxTKurVV3J/hhWaapdlQIBfCUG2H/vzXBM8nOrEf6L9tF0tej1oqbr4a0uKZ2a
 1+/0vF1qGf28iM1zMs/CheknE+gmyVSFrI6aA6bU4jtswKHXXW084l+V+4YopcJ44C
 wb1JdXxad/9xVE41rU0+nSzuWz1LEyEw9EU5X0Dk=
Subject: Re: [PATCH v2 04/18] phy: cdns-dphy: Add Rx support
To: Pratyush Yadav <p.yadav@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit Parrot <bparrot@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-5-p.yadav@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <b4de2fb9-6169-136b-e7b3-9eb4b0240eb8@ideasonboard.com>
Date: Fri, 28 May 2021 09:09:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210526152308.16525-5-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_230929_636453_F178424D 
X-CRM114-Status: GOOD (  27.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/05/2021 18:22, Pratyush Yadav wrote:
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
> ---
> 
> (no changes since v1)
> 
>   drivers/phy/cadence/cdns-dphy.c | 237 ++++++++++++++++++++++++++++++++
>   1 file changed, 237 insertions(+)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index 7d5f7b333893..7bbca679e2bb 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -1,11 +1,14 @@
>   // SPDX-License-Identifier: GPL-2.0+
>   /*
>    * Copyright: 2017-2018 Cadence Design Systems, Inc.
> + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
>    */
>   
>   #include <linux/bitops.h>
> +#include <linux/bitfield.h>
>   #include <linux/clk.h>
>   #include <linux/io.h>
> +#include <linux/iopoll.h>
>   #include <linux/module.h>
>   #include <linux/of_address.h>
>   #include <linux/of_device.h>
> @@ -25,10 +28,14 @@
>   #define DPHY_PMA_RCLK(reg)		(0x600 + (reg))
>   #define DPHY_PMA_RDATA(lane, reg)	(0x700 + ((lane) * 0x100) + (reg))
>   #define DPHY_PCS(reg)			(0xb00 + (reg))
> +#define DPHY_ISO(reg)			(0xc00 + (reg))
>   
>   #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
>   #define DPHY_CMN_SSM_EN			BIT(0)
> +#define DPHY_CMN_RX_BANDGAP_TIMER_MASK	GENMASK(8, 1)
>   #define DPHY_CMN_TX_MODE_EN		BIT(9)
> +#define DPHY_CMN_RX_MODE_EN		BIT(10)
> +#define DPHY_CMN_RX_BANDGAP_TIMER	0x14
>   
>   #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
>   #define DPHY_CMN_PWM_DIV(x)		((x) << 20)
> @@ -45,10 +52,27 @@
>   #define DPHY_CMN_OPDIV_FROM_REG		BIT(6)
>   #define DPHY_CMN_OPDIV(x)		((x) << 7)
>   
> +#define DPHY_BAND_CFG			DPHY_PCS(0x0)
> +#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
> +#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
> +
>   #define DPHY_PSM_CFG			DPHY_PCS(0x4)
>   #define DPHY_PSM_CFG_FROM_REG		BIT(0)
>   #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
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
>   #define DSI_HBP_FRAME_OVERHEAD		12
>   #define DSI_HSA_FRAME_OVERHEAD		14
>   #define DSI_HFP_FRAME_OVERHEAD		6
> @@ -57,6 +81,9 @@
>   #define DSI_NULL_FRAME_OVERHEAD		6
>   #define DSI_EOT_PKT_SIZE		4
>   
> +#define DPHY_LANES_MIN			1
> +#define DPHY_LANES_MAX			4
> +
>   struct cdns_dphy_cfg {
>   	u8 pll_ipdiv;
>   	u8 pll_opdiv;
> @@ -312,6 +339,214 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
>   	.set_psm_div = cdns_dphy_ref_set_psm_div,
>   };
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
> +	unsigned int rate = hs_clk_rate / 1000000UL;
> +
> +	if (rate < 80 || rate >= 2500)
> +		return -EOPNOTSUPP;
> +
> +	if (rate >= 80 && rate < 100)
> +		return 0;
> +
> +	if (rate >= 100 && rate < 120)
> +		return 1;
> +
> +	if (rate >= 120 && rate < 160)
> +		return 2;
> +
> +	if (rate >= 160 && rate < 200)
> +		return 3;
> +
> +	if (rate >= 200 && rate < 240)
> +		return 4;
> +
> +	if (rate >= 240 && rate < 280)
> +		return 5;
> +
> +	if (rate >= 280 && rate < 320)
> +		return 6;
> +
> +	if (rate >= 320 && rate < 360)
> +		return 7;
> +
> +	if (rate >= 360 && rate < 400)
> +		return 8;
> +
> +	if (rate >= 400 && rate < 480)
> +		return 9;
> +
> +	if (rate >= 480 && rate < 560)
> +		return 10;
> +
> +	if (rate >= 560 && rate < 640)
> +		return 11;
> +
> +	if (rate >= 640 && rate < 720)
> +		return 12;
> +
> +	if (rate >= 720 && rate < 800)
> +		return 13;
> +
> +	if (rate >= 800 && rate < 880)
> +		return 14;
> +
> +	if (rate >= 880 && rate < 1040)
> +		return 15;
> +
> +	if (rate >= 1040 && rate < 1200)
> +		return 16;
> +
> +	if (rate >= 1200 && rate < 1350)
> +		return 17;
> +
> +	if (rate >= 1350 && rate < 1500)
> +		return 18;
> +
> +	if (rate >= 1500 && rate < 1750)
> +		return 19;
> +
> +	if (rate >= 1750 && rate < 2000)
> +		return 20;
> +
> +	if (rate >= 2000 && rate < 2250)
> +		return 21;
> +
> +	if (rate >= 2250 && rate < 2500)
> +		return 22;
> +

All the above could be handled with a simple table and a for loop.

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
> +}
> +
> +static int cdns_dphy_rx_wait_lane_ready(struct cdns_dphy *dphy, int lanes)
> +{
> +	void __iomem *reg = dphy->regs;
> +	int ret;
> +
> +	if (lanes < DPHY_LANES_MIN || lanes > DPHY_LANES_MAX)
> +		return -EINVAL;
> +
> +	/* Clock lane */
> +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_CL_CTRL_L,
> +					DPHY_ISO_LANE_READY_BIT);
> +	if (ret)
> +		return ret;
> +
> +	/* Data lanes. Minimum one lane is mandatory. */
> +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L0,
> +					DPHY_ISO_LANE_READY_BIT);
> +	if (ret)
> +		return ret;
> +
> +	if (lanes < 2)
> +		return 0;
> +
> +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L1,
> +					DPHY_ISO_LANE_READY_BIT);
> +	if (ret)
> +		return ret;
> +
> +	if (lanes < 3)
> +		return 0;
> +
> +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L2,
> +					DPHY_ISO_LANE_READY_BIT);
> +	if (ret)
> +		return ret;
> +
> +	if (lanes < 4)
> +		return 0;
> +
> +	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L3,
> +					DPHY_ISO_LANE_READY_BIT);
> +	if (ret)
> +		return ret;
> +

This, too, could be handled with an array (for the regs) and a for loop.

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
