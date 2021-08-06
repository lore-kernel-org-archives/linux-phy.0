Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB07C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:39:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0051261165
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:39:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0051261165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HexXveVwIhMCxo556dOiN0HCv0wzAOzaBcZI6a8xapE=; b=L9hDAWf15oypQO
	dHHnLPBFiHUywkNfUKx9QPKJibYQKY1L7z+Z4QzbnouKtgMzFlts2Xtx2qeJQyHXxoChu0TUQbL6s
	ZMOCzv9nhwdh0SetV/YntmeDA3dtO+sXpO+UdrxMY/mGgQkfV9Gnfvghbk/JAOlBj2zKwxGPu4z1R
	eus8yoTJhAdxkcdIhLgQTp5lvWiigxc1unE7yPi/NrIKa3rnRbu8R/QwCRkgXypEn98BHhC+uM+fR
	aHyae3OIFbU8iaZHwGa3RB6aN4yucdIiRK5Pbubzjbl2gtKgsx2c384HrMgIGk7HwFZpPV6sSaydB
	5mXqw2CWxCaosGvMj+xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBz8U-00CUP1-AZ; Fri, 06 Aug 2021 12:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBz8G-00CUNj-EQ; Fri, 06 Aug 2021 12:39:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C241461164;
 Fri,  6 Aug 2021 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628253563;
 bh=6KW4drSBaol116KRRyQDv1cUDRFBcaYb2BiJI3EhakU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yy7mKNHTXWRhJPFaKM3A9lVqTOYnpq3YVbcoDppGlU3OUQsgXDpr2iQtmD6OaEwvE
 LNE9CRQlQR/QQpsrxPMlmQLm4FVJjNbt5PlJbFheFEHV308/WQPvcyEwkQzfoeGXlr
 Gv6AwnC/PROvMEwgT4tVm75IlhVp35AiZ6Ebhmel9lowGIQLOQhi/hj3M9K0ntu20B
 MIm4FfjSh3h+2yRjye9e/XAV9yIk5BRVc8KggJ3+n4vVH9YgdAt87qTjSkmwOpZQt2
 Uz7hO7LT4ijCb5VGvPLHeEqW1aW3AmeXRq4y7qI39TtRz8tn/pcW5Ea3bovJxhkRkD
 AedF5WlszXJOw==
Date: Fri, 6 Aug 2021 18:09:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: rashmi.a@intel.com
Cc: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org, mgross@linux.intel.com,
 kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 kenchappa.demakkanavar@intel.com
Subject: Re: [PATCH 3/3] phy: intel: Add Thunder Bay eMMC PHY support
Message-ID: <YQ0td9y5+RNFxWZs@matsya>
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-4-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730063309.8194-4-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_053924_562236_DC874C07 
X-CRM114-Status: GOOD (  20.55  )
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

On 30-07-21, 12:03, rashmi.a@intel.com wrote:

> diff --git a/drivers/phy/intel/Kconfig b/drivers/phy/intel/Kconfig
> index ac42bb2fb394..18a3cc5b98c0 100644
> --- a/drivers/phy/intel/Kconfig
> +++ b/drivers/phy/intel/Kconfig
> @@ -46,3 +46,13 @@ config PHY_INTEL_LGM_EMMC
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the Intel EMMC PHY
> +
> +config PHY_INTEL_THUNDERBAY_EMMC

Alphabetical sort please

> +        tristate "Intel Thunder Bay eMMC PHY driver"
> +        depends on OF && (ARCH_THUNDERBAY || COMPILE_TEST)
> +        select GENERIC_PHY
> +        help
> +	  This option enables support for Intel Thunder Bay SoC eMMC PHY.
> +
> +	  To compile this driver as a module, choose M here: the module
> +	  will be called phy-intel-thunderbay-emmc.ko.
> diff --git a/drivers/phy/intel/Makefile b/drivers/phy/intel/Makefile
> index 14550981a707..6a4db3ee7393 100644
> --- a/drivers/phy/intel/Makefile
> +++ b/drivers/phy/intel/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_PHY_INTEL_KEEMBAY_EMMC)	+= phy-intel-keembay-emmc.o
> +obj-$(CONFIG_PHY_INTEL_THUNDERBAY_EMMC)	+= phy-intel-thunderbay-emmc.o

here as well

> +static int thunderbay_emmc_phy_power(struct phy *phy, bool power_on)
> +{
> +	struct thunderbay_emmc_phy *tbh_phy = phy_get_drvdata(phy);
> +	unsigned int freqsel = FREQSEL_200M_170M;
> +	unsigned long rate;
> +	static int lock;
> +	u32 val;
> +	int ret;
> +
> +	/* Disable DLL */
> +	rate = clk_get_rate(tbh_phy->emmcclk);
> +	switch (rate) {
> +	case 200000000:
> +	/* lock dll only when it is used, i.e only if SEL_DLY_TXCLK/RXCLK are 0 */
> +		update_reg(tbh_phy, PHY_CFG_0, DLL_EN_MASK, DLL_EN_SHIFT, 0x0);

pls keep the same indent for comment and code!

> +		break;
> +	/* dll lock not required for other frequencies */
> +	case 50000000 ... 52000000:
> +	case 400000:
> +	default:
> +		break;
> +	}
> +
> +	if (!power_on)
> +		return 0;

should this not be the first thing you check...

> +
> +	rate = clk_get_rate(tbh_phy->emmcclk);
> +	switch (rate) {
> +	case 170000001 ... 200000000:
> +		freqsel = FREQSEL_200M_170M;
> +		break;
> +	case 140000001 ... 170000000:
> +		freqsel = FREQSEL_170M_140M;
> +		break;
> +	case 110000001 ... 140000000:
> +		freqsel = FREQSEL_140M_110M;
> +		break;
> +	case 80000001 ... 110000000:
> +		freqsel = FREQSEL_110M_80M;
> +		break;
> +	case 50000000 ... 80000000:
> +		freqsel = FREQSEL_80M_50M;
> +		break;
> +	case 250000001 ... 275000000:
> +		freqsel = FREQSEL_275M_250M;
> +		break;
> +	case 225000001 ... 250000000:
> +		freqsel = FREQSEL_250M_225M;
> +		break;
> +	case 200000001 ... 225000000:
> +		freqsel = FREQSEL_225M_200M;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	if (rate > 200000000)
> +	/* only the upper limit is considered as the clock rate may fall low during init */
> +		dev_warn(&phy->dev, "Unsupported rate: %lu\n", rate);

here as well! (checkpatch --strict should have told you so)

> +static int thunderbay_emmc_phy_power_on(struct phy *phy)
> +{
> +	struct thunderbay_emmc_phy *tbh_phy = phy_get_drvdata(phy);
> +	unsigned long rate;
> +
> +	/* Overwrite capability bits configurable in bootloader */
> +	update_reg(tbh_phy, CTRL_CFG_0,
> +		   SUPPORT_HS_MASK, SUPPORT_HS_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_0,
> +		   SUPPORT_8B_MASK, SUPPORT_8B_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_1,
> +		   SUPPORT_SDR50_MASK, SUPPORT_SDR50_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_1,
> +		   SUPPORT_DDR50_MASK, SUPPORT_DDR50_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_1,
> +		   SUPPORT_SDR104_MASK, SUPPORT_SDR104_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_1,
> +		   SUPPORT_HS400_MASK, SUPPORT_HS400_SHIFT, 0x1);
> +	update_reg(tbh_phy, CTRL_CFG_1,
> +		   SUPPORT_64B_MASK, SUPPORT_64B_SHIFT, 0x1);
> +
> +	if (tbh_phy->phy_power_sts == PHY_UNINITIALIZED) {
> +	/* Indicates initialization, so settings to be done for init , same as 400KHZ setting */
> +		update_reg(tbh_phy, PHY_CFG_0, SEL_DLY_TXCLK_MASK, SEL_DLY_TXCLK_SHIFT, 0x1);

inconsistent indent here too!

> +		update_reg(tbh_phy, PHY_CFG_0, SEL_DLY_RXCLK_MASK, SEL_DLY_RXCLK_SHIFT, 0x1);
> +		update_reg(tbh_phy, PHY_CFG_0, ITAP_DLY_ENA_MASK, ITAP_DLY_ENA_SHIFT, 0x0);
> +		update_reg(tbh_phy, PHY_CFG_0, ITAP_DLY_SEL_MASK, ITAP_DLY_SEL_SHIFT, 0x0);
> +		update_reg(tbh_phy, PHY_CFG_0, OTAP_DLY_ENA_MASK, OTAP_DLY_ENA_SHIFT, 0x0);
> +		update_reg(tbh_phy, PHY_CFG_0, OTAP_DLY_SEL_MASK, OTAP_DLY_SEL_SHIFT, 0);
> +		update_reg(tbh_phy, PHY_CFG_0, DLL_TRIM_ICP_MASK, DLL_TRIM_ICP_SHIFT, 0);
> +		update_reg(tbh_phy, PHY_CFG_0, DR_TY_MASK, DR_TY_SHIFT, 0x1);
> +
> +	} else if (tbh_phy->phy_power_sts == PHY_INITIALIZED) {
> +		/* Indicates actual clock setting */
> +		rate = clk_get_rate(tbh_phy->emmcclk);
> +		switch (rate) {
> +		case 200000000:
> +			update_reg(tbh_phy, PHY_CFG_0, SEL_DLY_TXCLK_MASK,
> +				   SEL_DLY_TXCLK_SHIFT, 0x0);
> +			update_reg(tbh_phy, PHY_CFG_0, SEL_DLY_RXCLK_MASK,
> +				   SEL_DLY_RXCLK_SHIFT, 0x0);
> +			update_reg(tbh_phy, PHY_CFG_0, ITAP_DLY_ENA_MASK,
> +				   ITAP_DLY_ENA_SHIFT, 0x0);
> +			update_reg(tbh_phy, PHY_CFG_0, ITAP_DLY_SEL_MASK,
> +				   ITAP_DLY_SEL_SHIFT, 0x0);
> +			update_reg(tbh_phy, PHY_CFG_0, OTAP_DLY_ENA_MASK,
> +				   OTAP_DLY_ENA_SHIFT, 0x1);
> +			update_reg(tbh_phy, PHY_CFG_0, OTAP_DLY_SEL_MASK,
> +				   OTAP_DLY_SEL_SHIFT, 2);
> +			update_reg(tbh_phy, PHY_CFG_0, DLL_TRIM_ICP_MASK,
> +				   DLL_TRIM_ICP_SHIFT, 0x8);
> +			update_reg(tbh_phy, PHY_CFG_0, DR_TY_MASK,
> +				   DR_TY_SHIFT, 0x1);
> +			/* For HS400 only */
> +			update_reg(tbh_phy, PHY_CFG_2, SEL_STRB_MASK,
> +				   SEL_STRB_SHIFT, STRB);
> +			break;

pls give a empty line after break, helps to read the code

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
