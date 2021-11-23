Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E430C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 04:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPlTlYYESM9YnhSZbbuL5we4DU+YPIutaWh7i6jxojE=; b=O2WBgzAHdjmaCE
	rhcyCvaaaLpBmbtrWhdC/j1jnaEwo5OgLAjY9zHX89LYCf7t7dTswlu7E2CiAB17FtKiQKUPQmjOM
	924xF/hpq1K9khbrMgDrQRpR+fX9WgpUb+uF+8ZfiZF7Z36cIWrtzH3X6c06KHX3Gd8nV6m93OorT
	fLn65+4c4wip4qIP4EMUBKl53YUQx/Y16BH8VG6OX8EUOTew5CsFlFruf65X3pViDija0uNXLWb8Z
	blheTZgElqxCfwhgaifsVh9/V9FZHWDTHiak3ymsFbcpKv4OTAVY1bAHCJ2gPYadggfO2suEEKqbr
	6gOPzlF12yg9cXhg5pJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpNUT-000mgj-O2; Tue, 23 Nov 2021 04:33:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpNUQ-000mfg-Gp
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 04:33:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EFD86104F;
 Tue, 23 Nov 2021 04:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637641986;
 bh=WMJ0SUwHiEh+5VwvYdRoIq8Y62uB4ILz7Td2erOQqiQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SQw8Dl+gg+/dtJFb+l1ps+/4npWKzUKcHobsgkSiCS4CioAnl3nsxjgC80H4tZmc7
 UgqmUfrqQq3v5Us6I5ehHDWLlakZwQUiMkApV4tjO7sMrSiHFV91fTEP5RmBLmXNJL
 wDb1QQ1pty0JC3vPIUEsk35QOwSMz/RHpY3o9BnVAnYsROcD1oLFcZxIFsfRM9xwkg
 q5bwBxKNb42Z5osk2VLRA0AUgeC0unK2ZjAB4H7ByHeNj5p3OIUoJ4HELKB1ciMjsG
 Csxvk+2ZzVoXmslJYtUNH+KpBqIyRA/UV5oZnjA/4ZELXnLohnyoyuS6lEKHHzNHpL
 Uwneq6zvUI4gg==
Date: Tue, 23 Nov 2021 10:03:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, robh+dt@kernel.org, p.zabel@pengutronix.de,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, a-govindraju@ti.com
Subject: Re: [PATCH v3 02/15] phy: cadence: Sierra: Prepare driver to add
 support for multilink configurations
Message-ID: <YZxu/Tzo4fdiHKtR@matsya>
References: <20211022170236.18839-1-sjakhade@cadence.com>
 <20211022170236.18839-3-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211022170236.18839-3-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_203306_636449_F4C6A6C7 
X-CRM114-Status: GOOD (  23.78  )
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

On 22-10-21, 19:02, Swapnil Jakhade wrote:
> Sierra driver currently supports single link configurations only. Prepare
> driver to support multilink multiprotocol configurations along with
> different SSC modes.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Reviewed-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-sierra.c | 195 ++++++++++++++++-------
>  1 file changed, 139 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
> index 54d1c63932ac..c82ac6716f5e 100644
> --- a/drivers/phy/cadence/phy-cadence-sierra.c
> +++ b/drivers/phy/cadence/phy-cadence-sierra.c
> @@ -23,6 +23,9 @@
>  #include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/phy/phy-cadence.h>
>  
> +#define NUM_SSC_MODE		3
> +#define NUM_PHY_TYPE		3
> +
>  /* PHY register offsets */
>  #define SIERRA_COMMON_CDB_OFFSET			0x0
>  #define SIERRA_MACRO_ID_REG				0x0
> @@ -217,9 +220,21 @@ static const int pll_mux_parent_index[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
>  
>  static u32 cdns_sierra_pll_mux_table[] = { 0, 1 };
>  
> +enum cdns_sierra_phy_type {
> +	TYPE_NONE,

What does NONE type mean?

> +	TYPE_PCIE,
> +	TYPE_USB
> +};
> +
> +enum cdns_sierra_ssc_mode {
> +	NO_SSC,
> +	EXTERNAL_SSC,
> +	INTERNAL_SSC
> +};
> +
>  struct cdns_sierra_inst {
>  	struct phy *phy;
> -	u32 phy_type;
> +	enum cdns_sierra_phy_type phy_type;
>  	u32 num_lanes;
>  	u32 mlane;
>  	struct reset_control *lnk_rst;
> @@ -230,18 +245,19 @@ struct cdns_reg_pairs {
>  	u32 off;
>  };
>  
> +struct cdns_sierra_vals {
> +	const struct cdns_reg_pairs *reg_pairs;
> +	u32 num_regs;
> +};
> +
>  struct cdns_sierra_data {
> -		u32 id_value;
> -		u8 block_offset_shift;
> -		u8 reg_offset_shift;
> -		u32 pcie_cmn_regs;
> -		u32 pcie_ln_regs;
> -		u32 usb_cmn_regs;
> -		u32 usb_ln_regs;
> -		const struct cdns_reg_pairs *pcie_cmn_vals;
> -		const struct cdns_reg_pairs *pcie_ln_vals;
> -		const struct cdns_reg_pairs *usb_cmn_vals;
> -		const struct cdns_reg_pairs *usb_ln_vals;
> +	u32 id_value;
> +	u8 block_offset_shift;
> +	u8 reg_offset_shift;
> +	struct cdns_sierra_vals *pma_cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
> +					     [NUM_SSC_MODE];
> +	struct cdns_sierra_vals *pma_ln_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
> +					    [NUM_SSC_MODE];

You have defined phy type and ssc, that sounds fine, I am not sure why
you need a third dimension here? What purpose does it solve?

>  };
>  
>  struct cdns_regmap_cdb_context {
> @@ -341,10 +357,14 @@ static int cdns_sierra_phy_init(struct phy *gphy)
>  {
>  	struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);
>  	struct cdns_sierra_phy *phy = dev_get_drvdata(gphy->dev.parent);
> +	const struct cdns_sierra_data *init_data = phy->init_data;
> +	struct cdns_sierra_vals *pma_cmn_vals, *pma_ln_vals;
> +	enum cdns_sierra_phy_type phy_type = ins->phy_type;
> +	enum cdns_sierra_ssc_mode ssc = EXTERNAL_SSC;
> +	const struct cdns_reg_pairs *reg_pairs;
>  	struct regmap *regmap;
> +	u32 num_regs;
>  	int i, j;
> -	const struct cdns_reg_pairs *cmn_vals, *ln_vals;
> -	u32 num_cmn_regs, num_ln_regs;
>  
>  	/* Initialise the PHY registers, unless auto configured */
>  	if (phy->autoconf)
> @@ -352,28 +372,26 @@ static int cdns_sierra_phy_init(struct phy *gphy)
>  
>  	clk_set_rate(phy->input_clks[CMN_REFCLK_DIG_DIV], 25000000);
>  	clk_set_rate(phy->input_clks[CMN_REFCLK1_DIG_DIV], 25000000);
> -	if (ins->phy_type == PHY_TYPE_PCIE) {
> -		num_cmn_regs = phy->init_data->pcie_cmn_regs;
> -		num_ln_regs = phy->init_data->pcie_ln_regs;
> -		cmn_vals = phy->init_data->pcie_cmn_vals;
> -		ln_vals = phy->init_data->pcie_ln_vals;
> -	} else if (ins->phy_type == PHY_TYPE_USB3) {
> -		num_cmn_regs = phy->init_data->usb_cmn_regs;
> -		num_ln_regs = phy->init_data->usb_ln_regs;
> -		cmn_vals = phy->init_data->usb_cmn_vals;
> -		ln_vals = phy->init_data->usb_ln_vals;
> -	} else {
> -		return -EINVAL;
> -	}
>  
> -	regmap = phy->regmap_common_cdb;
> -	for (j = 0; j < num_cmn_regs ; j++)
> -		regmap_write(regmap, cmn_vals[j].off, cmn_vals[j].val);
> +	/* PMA common registers configurations */
> +	pma_cmn_vals = init_data->pma_cmn_vals[phy_type][TYPE_NONE][ssc];
> +	if (pma_cmn_vals) {
> +		reg_pairs = pma_cmn_vals->reg_pairs;
> +		num_regs = pma_cmn_vals->num_regs;
> +		regmap = phy->regmap_common_cdb;
> +		for (i = 0; i < num_regs; i++)
> +			regmap_write(regmap, reg_pairs[i].off, reg_pairs[i].val);
> +	}
>  
> -	for (i = 0; i < ins->num_lanes; i++) {
> -		for (j = 0; j < num_ln_regs ; j++) {
> +	/* PMA lane registers configurations */
> +	pma_ln_vals = init_data->pma_ln_vals[phy_type][TYPE_NONE][ssc];
> +	if (pma_ln_vals) {
> +		reg_pairs = pma_ln_vals->reg_pairs;
> +		num_regs = pma_ln_vals->num_regs;
> +		for (i = 0; i < ins->num_lanes; i++) {
>  			regmap = phy->regmap_lane_cdb[i + ins->mlane];
> -			regmap_write(regmap, ln_vals[j].off, ln_vals[j].val);
> +			for (j = 0; j < num_regs; j++)
> +				regmap_write(regmap, reg_pairs[j].off, reg_pairs[j].val);
>  		}
>  	}
>  
> @@ -583,15 +601,28 @@ static int cdns_sierra_clk_register(struct cdns_sierra_phy *sp)
>  static int cdns_sierra_get_optional(struct cdns_sierra_inst *inst,
>  				    struct device_node *child)
>  {
> +	u32 phy_type;
> +
>  	if (of_property_read_u32(child, "reg", &inst->mlane))
>  		return -EINVAL;
>  
>  	if (of_property_read_u32(child, "cdns,num-lanes", &inst->num_lanes))
>  		return -EINVAL;
>  
> -	if (of_property_read_u32(child, "cdns,phy-type", &inst->phy_type))
> +	if (of_property_read_u32(child, "cdns,phy-type", &phy_type))
>  		return -EINVAL;
>  
> +	switch (phy_type) {
> +	case PHY_TYPE_PCIE:
> +		inst->phy_type = TYPE_PCIE;
> +		break;
> +	case PHY_TYPE_USB3:
> +		inst->phy_type = TYPE_USB;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -1006,6 +1037,16 @@ static const struct cdns_reg_pairs cdns_pcie_ln_regs_ext_ssc[] = {
>  	{0x44CC, SIERRA_CREQ_EQ_OPEN_EYE_THRESH_PREG}
>  };
>  
> +static struct cdns_sierra_vals pcie_100_ext_ssc_cmn_vals = {
> +	.reg_pairs = cdns_pcie_cmn_regs_ext_ssc,
> +	.num_regs = ARRAY_SIZE(cdns_pcie_cmn_regs_ext_ssc),
> +};
> +
> +static struct cdns_sierra_vals pcie_100_ext_ssc_ln_vals = {
> +	.reg_pairs = cdns_pcie_ln_regs_ext_ssc,
> +	.num_regs = ARRAY_SIZE(cdns_pcie_ln_regs_ext_ssc),
> +};
> +
>  /* refclk100MHz_20b_USB_cmn_pll_ext_ssc */
>  static const struct cdns_reg_pairs cdns_usb_cmn_regs_ext_ssc[] = {
>  	{0x2085, SIERRA_CMN_PLLLC_LF_COEFF_MODE1_PREG},
> @@ -1113,32 +1154,74 @@ static const struct cdns_reg_pairs cdns_usb_ln_regs_ext_ssc[] = {
>  	{0x4243, SIERRA_RXBUFFER_DFECTRL_PREG}
>  };
>  
> +static struct cdns_sierra_vals usb_100_ext_ssc_cmn_vals = {
> +	.reg_pairs = cdns_usb_cmn_regs_ext_ssc,
> +	.num_regs = ARRAY_SIZE(cdns_usb_cmn_regs_ext_ssc),
> +};
> +
> +static struct cdns_sierra_vals usb_100_ext_ssc_ln_vals = {
> +	.reg_pairs = cdns_usb_ln_regs_ext_ssc,
> +	.num_regs = ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
> +};
> +
>  static const struct cdns_sierra_data cdns_map_sierra = {
> -	SIERRA_MACRO_ID,
> -	0x2,
> -	0x2,
> -	ARRAY_SIZE(cdns_pcie_cmn_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_pcie_ln_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_usb_cmn_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
> -	cdns_pcie_cmn_regs_ext_ssc,
> -	cdns_pcie_ln_regs_ext_ssc,
> -	cdns_usb_cmn_regs_ext_ssc,
> -	cdns_usb_ln_regs_ext_ssc,
> +	.id_value = SIERRA_MACRO_ID,
> +	.block_offset_shift = 0x2,
> +	.reg_offset_shift = 0x2,
> +	.pma_cmn_vals = {
> +		[TYPE_PCIE] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &pcie_100_ext_ssc_cmn_vals,
> +			},
> +		},
> +		[TYPE_USB] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &usb_100_ext_ssc_cmn_vals,
> +			},
> +		},
> +	},
> +	.pma_ln_vals = {
> +		[TYPE_PCIE] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &pcie_100_ext_ssc_ln_vals,
> +			},
> +		},
> +		[TYPE_USB] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &usb_100_ext_ssc_ln_vals,
> +			},
> +		},
> +	},
>  };
>  
>  static const struct cdns_sierra_data cdns_ti_map_sierra = {
> -	SIERRA_MACRO_ID,
> -	0x0,
> -	0x1,
> -	ARRAY_SIZE(cdns_pcie_cmn_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_pcie_ln_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_usb_cmn_regs_ext_ssc),
> -	ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
> -	cdns_pcie_cmn_regs_ext_ssc,
> -	cdns_pcie_ln_regs_ext_ssc,
> -	cdns_usb_cmn_regs_ext_ssc,
> -	cdns_usb_ln_regs_ext_ssc,
> +	.id_value = SIERRA_MACRO_ID,
> +	.block_offset_shift = 0x0,
> +	.reg_offset_shift = 0x1,
> +	.pma_cmn_vals = {
> +		[TYPE_PCIE] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &pcie_100_ext_ssc_cmn_vals,
> +			},
> +		},
> +		[TYPE_USB] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &usb_100_ext_ssc_cmn_vals,
> +			},
> +		},
> +	},
> +	.pma_ln_vals = {
> +		[TYPE_PCIE] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &pcie_100_ext_ssc_ln_vals,
> +			},
> +		},
> +		[TYPE_USB] = {
> +			[TYPE_NONE] = {
> +				[EXTERNAL_SSC] = &usb_100_ext_ssc_ln_vals,
> +			},
> +		},
> +	},
>  };
>  
>  static const struct of_device_id cdns_sierra_id_table[] = {
> -- 
> 2.26.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
