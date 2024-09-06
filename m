Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 491B4CE7B14
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 13:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNbcIVdvbRxn/ssJ0hT/foL2eu+T7cWk89SnNeZtBvQ=; b=Iv6S56rerr6rW4
	920P+/iCJiJs0Nu1PsAVt4kXvkeXK41WXLM6hVRaQdtWeV4XJn1CD1zgwKoVcNLV1rMBowFSK8Ub9
	EAPivv17604kmsSqIpoo8jhu/U22dTq6e2H+UOhrkCOaUFz5SwXogYVrp3uPO30vMsWn6f5qFhQcB
	DPzhaFlZ0uUGFapmAjomxIsG1yMyyBCj/YzmvzHhjbh5DjQg2wvzTR4fpgi8QO7wTiVr/kGXcAGl9
	utjc0M3Ozm4FPCEsDQoilxcj83BBLDUSDMsM2U4GQjABcGo547V21vgxWE8q9KW0fO/DTMZDyiYrQ
	7Af7Yw/DAFHSI2y0hmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZIt-0000000CP3g-3dzG;
	Fri, 06 Sep 2024 13:47:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZGD-0000000COJj-0Vex
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 13:44:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1smZFt-0000Lh-1c; Fri, 06 Sep 2024 15:44:05 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1smZFq-005xU3-5T; Fri, 06 Sep 2024 15:44:02 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1smZFq-0009UL-0F;
	Fri, 06 Sep 2024 15:44:02 +0200
Message-ID: <d743de28a5dd643cf775f4d8a3baaabd09d48c48.camel@pengutronix.de>
Subject: Re: [PATCH v5 2/5] phy: stm32: Add support for STM32MP25 COMBOPHY.
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Christian Bruel <christian.bruel@foss.st.com>, vkoul@kernel.org, 
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org,  mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 fabrice.gasnier@foss.st.com
Date: Fri, 06 Sep 2024 15:44:01 +0200
In-Reply-To: <20240903121303.2953150-3-christian.bruel@foss.st.com>
References: <20240903121303.2953150-1-christian.bruel@foss.st.com>
	 <20240903121303.2953150-3-christian.bruel@foss.st.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_064425_352348_AA9B17AA 
X-CRM114-Status: GOOD (  23.69  )
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

Hi,

On Di, 2024-09-03 at 14:13 +0200, Christian Bruel wrote:
> Addition of the COMBOPHY driver found on STM32MP25 platforms
> 
> This single lane PHY is shared (exclusive) between the USB3 and PCIE
> controllers.
> Supports 5Gbit/s for PCIE gen2 or 2.5Gbit/s for PCIE gen1.
> 
> Supports wakeup-source capability to wakeup system using remote-wakeup
> capable USB device
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  drivers/phy/st/Kconfig              |  11 +
>  drivers/phy/st/Makefile             |   1 +
>  drivers/phy/st/phy-stm32-combophy.c | 590 ++++++++++++++++++++++++++++
>  3 files changed, 602 insertions(+)
>  create mode 100644 drivers/phy/st/phy-stm32-combophy.c
> 
[...]
> diff --git a/drivers/phy/st/phy-stm32-combophy.c b/drivers/phy/st/phy-stm32-combophy.c
> new file mode 100644
> index 000000000000..305ba124d092
> --- /dev/null
> +++ b/drivers/phy/st/phy-stm32-combophy.c
> @@ -0,0 +1,590 @@
[...]
> +static int stm32_combophy_pll_init(struct stm32_combophy *combophy)
> +{
> +	int ret;
> +	u32 refclksel, pllmult, propcntrl, val;
> +	u32 clk_rate;
> +	struct clk *clk;
> +
> +	if (combophy->have_pad_clk)
> +		clk = combophy->clks[PAD_CLK].clk;
> +	else
> +		clk = combophy->clks[KER_CLK].clk;
> +
> +	clk_rate = clk_get_rate(clk);
> +
> +	reset_control_assert(combophy->phy_reset);
> +
> +	dev_dbg(combophy->dev, "%s pll init rate %d\n",
> +		combophy->have_pad_clk ? "External" : "Ker", clk_rate);
> +
> +	/*
> +	 * vddcombophy is interconnected with vddcore. Isolation bit should be unset
> +	 * before using the ComboPHY.
> +	 */
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR2,
> +			   SYSCFG_COMBOPHY_CR2_ISO_DIS, SYSCFG_COMBOPHY_CR2_ISO_DIS);
> +
> +	if (combophy->type != PHY_TYPE_PCIE)
> +		regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +				   SYSCFG_COMBOPHY_CR1_REFSSPEN, SYSCFG_COMBOPHY_CR1_REFSSPEN);

Could the multiple accesses to SYSCFG_COMBOPHY_CR1 be consolidated into
a single regmap_update_bits()?

> +
> +	if (combophy->type == PHY_TYPE_PCIE && !combophy->have_pad_clk)
> +		regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
> +				   STM32MP25_PCIEPRGCR_EN, STM32MP25_PCIEPRGCR_EN);
> +
> +	if (of_property_present(combophy->dev->of_node, "st,ssc-on")) {
> +		dev_dbg(combophy->dev, "Enabling clock with SSC\n");
> +		regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +				   SYSCFG_COMBOPHY_CR1_SSCEN, SYSCFG_COMBOPHY_CR1_SSCEN);
> +	}
> +
> +	if (!of_property_read_u32(combophy->dev->of_node, "st,rx-equalizer", &val)) {
> +		dev_dbg(combophy->dev, "Set RX equalizer %u\n", val);
> +		if (val > SYSCFG_COMBOPHY_CR4_RX0_EQ) {
> +			dev_err(combophy->dev, "Invalid value %u for rx0 equalizer\n", val);

This path looks like it should deassert the phy_reset as well.

> +			return -EINVAL;
> +		}
> +
> +		regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR4,
> +			   SYSCFG_COMBOPHY_CR4_RX0_EQ, val);
> +	}
> +
> +	if (combophy->type == PHY_TYPE_PCIE) {
> +		ret = stm32_impedance_tune(combophy);
> +		if (ret) {
> +			reset_control_deassert(combophy->phy_reset);
> +			goto out;
> +		}
> +
> +		regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +				   SYSCFG_COMBOPHY_CR1_REFUSEPAD,
> +				   combophy->have_pad_clk ? SYSCFG_COMBOPHY_CR1_REFUSEPAD : 0);
> +	}
> +
> +	switch (clk_rate) {
> +	case 100000000:
> +		pllmult = MPLLMULT_100;
> +		refclksel = REFCLKSEL_0;
> +		propcntrl = 0x8u << 4;
> +		break;
> +	case 19200000:
> +		pllmult = MPLLMULT_19_2;
> +		refclksel = REFCLKSEL_1;
> +		propcntrl = 0x8u << 4;
> +		break;
> +	case 25000000:
> +		pllmult = MPLLMULT_25;
> +		refclksel = REFCLKSEL_0;
> +		propcntrl = 0xeu << 4;
> +		break;
> +	case 24000000:
> +		pllmult = MPLLMULT_24;
> +		refclksel = REFCLKSEL_1;
> +		propcntrl = 0xeu << 4;
> +		break;
> +	case 20000000:
> +		pllmult = MPLLMULT_20;
> +		refclksel = REFCLKSEL_0;
> +		propcntrl = 0xeu << 4;
> +		break;
> +	default:
> +		dev_err(combophy->dev, "Invalid rate 0x%x\n", clk_rate);
> +		reset_control_deassert(combophy->phy_reset);
> +		ret = -EINVAL;
> +		goto out;
> +	};
> +
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +			   SYSCFG_COMBOPHY_CR1_REFCLKDIV2, REFCLDIV_0);
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +			   SYSCFG_COMBOPHY_CR1_REFCLKSEL, refclksel);
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +			   SYSCFG_COMBOPHY_CR1_MPLLMULT, pllmult);
> +
> +	/*
> +	 * Force elasticity buffer to be tuned for the reference clock as
> +	 * the separated clock model is not supported
> +	 */
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR5,
> +			   SYSCFG_COMBOPHY_CR5_COMMON_CLOCKS, SYSCFG_COMBOPHY_CR5_COMMON_CLOCKS);
> +
> +	reset_control_deassert(combophy->phy_reset);
> +
> +	ret = regmap_read_poll_timeout(combophy->regmap, SYSCFG_COMBOPHY_SR, val,
> +				       !(val & STM32MP25_PIPE0_PHYSTATUS),
> +				       10, 1000);
> +	if (ret) {
> +		dev_err(combophy->dev, "timeout, cannot lock PLL\n");
> +		goto out;
> +	}
> +
> +	if (combophy->type == PHY_TYPE_PCIE) {
> +		val = readl_relaxed(combophy->base + COMBOPHY_SUP_ANA_MPLL_LOOP_CTL);
> +		val &= ~COMBOPHY_PROP_CNTRL;
> +		val |= propcntrl;
> +		writel_relaxed(val, combophy->base + COMBOPHY_SUP_ANA_MPLL_LOOP_CTL);
> +	}
> +
> +	return 0;
> +
> +out:
> +	if (combophy->type == PHY_TYPE_PCIE && !combophy->have_pad_clk)
> +		regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
> +				   STM32MP25_PCIEPRGCR_EN, 0);
> +
> +	if (combophy->type != PHY_TYPE_PCIE)
> +		regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR1,
> +				   SYSCFG_COMBOPHY_CR1_REFSSPEN, 0);
> +
> +	regmap_update_bits(combophy->regmap, SYSCFG_COMBOPHY_CR2,
> +			   SYSCFG_COMBOPHY_CR2_ISO_DIS, 0);
> +
> +	return ret;
> +}
> +
[...]
> +
> +static int stm32_combophy_probe(struct platform_device *pdev)
> +{
> +	struct stm32_combophy *combophy;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *phy_provider;
> +	int ret, irq;
> +
> +	combophy = devm_kzalloc(dev, sizeof(*combophy), GFP_KERNEL);
> +	if (!combophy)
> +		return -ENOMEM;
> +
> +	combophy->dev = dev;
> +
> +	dev_set_drvdata(dev, combophy);
> +
> +	combophy->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(combophy->base))
> +		return PTR_ERR(combophy->base);
> +
> +	if (stm32_combophy_get_clocks(combophy))
> +		return ret;
> +
> +	combophy->phy_reset = devm_reset_control_get(dev, "phy");

Please use devm_reset_control_get_exclusive() directly.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
