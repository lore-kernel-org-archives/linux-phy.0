Return-Path: <SRS0=DVIa=OF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8184AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 03:55:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44A0160F25
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 03:55:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 44A0160F25
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ot4q4Cc+kTP+n3+A7DLZyEZtEiV4aU55eMBP3gDDEiA=; b=rTKUkJaLVZcN/rI0HrGN31Xr26
	Seu92nAELMXEYrwYoKlp0OP5v/NNqXPUPh/LvRvcZs8G95WP9DaN/7EMV3li1RQUGZvxoB0ZFvbI1
	/F+OxZieeG6XnXjqIwLIHKmy6eqi8TpzHExl69t2PVpQqkFR2dO1LvAIfPPTl3g2RWvKwszCMLKFe
	eK4VlHmBkBIuJUyeAl58bXWGNuCdqVgnfLiQEFG/04pZECQ897aFOfv+rgXrfSysVeVUXCAfdj33B
	8sXqxCN9JxhXJWGulPeY263rreIE0/y91lIzMTvAAMFgEaIdYG758V8BTUSIjn/S8F/qXENCzwrpP
	CtivpX5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQM1e-0081Hc-OL; Wed, 15 Sep 2021 03:55:58 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQM1c-0081H2-7Q
 for linux-phy@lists.infradead.org; Wed, 15 Sep 2021 03:55:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 18F3trWQ020925;
 Tue, 14 Sep 2021 22:55:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1631678153;
 bh=NOWf3Tw8nMIlDygnj/QSqgpmbmyCG8WVn2RlCuUiO+s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=myBKNqNIc4Vy/AXf6edo9Ki+y2c6mpWxY0q4BApw5Mu7vyTi9rfa/YZG1R+Un0KOl
 9cqek7oRP3w+GVnfkd6S8YSa6tkPzCTudPOISHWcLBeQmor7iKbYV2QnZ2in1t+J6A
 MV7YjYn+EmH5gI1Rs5tn1qXTgfOr4XzoJGDrwkZg=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 18F3troO064145
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Sep 2021 22:55:53 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Sep 2021 22:55:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Sep 2021 22:55:52 -0500
Received: from [10.250.232.217] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 18F3tmu7069566;
 Tue, 14 Sep 2021 22:55:49 -0500
Subject: Re: [PATCH 3/5] phy: cadence-torrent: Add support for derived
 reference clock output
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>, <a-govindraju@ti.com>
References: <20210908182628.28364-1-sjakhade@cadence.com>
 <20210908182628.28364-4-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <48b7b8c0-5550-623f-ae28-caf99b17cee3@ti.com>
Date: Wed, 15 Sep 2021 09:25:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210908182628.28364-4-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_205556_420152_D337898C 
X-CRM114-Status: GOOD (  24.39  )
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

Hi Swapnil,

On 08/09/21 11:56 pm, Swapnil Jakhade wrote:
> Update the reference clock driver implementation where cmn_refclk_<p/m>
> is configured to output the reference clock. cmn_refclk_p/m will output
> either derived or received reference clock based on the selection. So,
> all these clocks should be modelled separately. Model the derived
> reference clock here as a first step to support reference clock driver.
> 

Will AM64 work after this patch? Since you are removing bunch of configurations
here, would it affect git bisectability?

Thanks
Kishon

> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 78 +++++++++--------------
>  1 file changed, 31 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index ecb1aa883c05..6dceb12e88c4 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -235,10 +235,11 @@
>  #define PHY_PMA_CMN_CTRL2		0x0001U
>  #define PHY_PMA_PLL_RAW_CTRL		0x0003U
>  
> -#define CDNS_TORRENT_OUTPUT_CLOCKS	1
> +#define CDNS_TORRENT_OUTPUT_CLOCKS	2
>  
>  static const char * const clk_names[] = {
>  	[CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
> +	[CDNS_TORRENT_DERIVED_REFCLK] = "refclk-der",
>  };
>  
>  static const struct reg_field phy_pll_cfg =
> @@ -261,23 +262,8 @@ static const struct reg_field phy_pcs_iso_link_ctrl_1 =
>  
>  static const struct reg_field phy_pipe_cmn_ctrl1_0 = REG_FIELD(PHY_PIPE_CMN_CTRL1, 0, 0);
>  
> -#define REFCLK_OUT_NUM_CMN_CONFIG	5
> -
> -enum cdns_torrent_refclk_out_cmn {
> -	CMN_CDIAG_REFCLK_OVRD_4,
> -	CMN_CDIAG_REFCLK_DRV0_CTRL_1,
> -	CMN_CDIAG_REFCLK_DRV0_CTRL_4,
> -	CMN_CDIAG_REFCLK_DRV0_CTRL_5,
> -	CMN_CDIAG_REFCLK_DRV0_CTRL_6,
> -};
> -
> -static const struct reg_field refclk_out_cmn_cfg[] = {
> -	[CMN_CDIAG_REFCLK_OVRD_4]	= REG_FIELD(CMN_CDIAG_REFCLK_OVRD, 4, 4),
> -	[CMN_CDIAG_REFCLK_DRV0_CTRL_1]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 1, 1),
> -	[CMN_CDIAG_REFCLK_DRV0_CTRL_4]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 4, 4),
> -	[CMN_CDIAG_REFCLK_DRV0_CTRL_5]  = REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 5, 5),
> -	[CMN_CDIAG_REFCLK_DRV0_CTRL_6]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 6, 6),
> -};
> +static const struct reg_field cmn_cdiag_refclk_ovrd_4 =
> +				REG_FIELD(CMN_CDIAG_REFCLK_OVRD, 4, 4);
>  
>  enum cdns_torrent_phy_type {
>  	TYPE_NONE,
> @@ -330,6 +316,8 @@ struct cdns_torrent_phy {
>  	struct regmap *regmap_phy_pcs_lane_cdb[MAX_NUM_LANES];
>  	struct regmap *regmap_dptx_phy_reg;
>  	struct regmap_field *phy_pll_cfg;
> +	struct regmap_field *phy_pipe_cmn_ctrl1_0;
> +	struct regmap_field *cmn_cdiag_refclk_ovrd_4;
>  	struct regmap_field *phy_pma_cmn_ctrl_1;
>  	struct regmap_field *phy_pma_cmn_ctrl_2;
>  	struct regmap_field *phy_pma_pll_raw_ctrl;
> @@ -348,7 +336,7 @@ enum phy_powerstate {
>  struct cdns_torrent_derived_refclk {
>  	struct clk_hw		hw;
>  	struct regmap_field	*phy_pipe_cmn_ctrl1_0;
> -	struct regmap_field	*cmn_fields[REFCLK_OUT_NUM_CMN_CONFIG];
> +	struct regmap_field	*cmn_cdiag_refclk_ovrd_4;
>  	struct clk_init_data	clk_data;
>  };
>  
> @@ -1618,11 +1606,7 @@ static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
>  {
>  	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
>  
> -	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_6], 0);
> -	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4], 1);
> -	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_5], 1);
> -	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_1], 0);
> -	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_OVRD_4], 1);
> +	regmap_field_write(derived_refclk->cmn_cdiag_refclk_ovrd_4, 1);
>  	regmap_field_write(derived_refclk->phy_pipe_cmn_ctrl1_0, 1);
>  
>  	return 0;
> @@ -1633,6 +1617,7 @@ static void cdns_torrent_derived_refclk_disable(struct clk_hw *hw)
>  	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
>  
>  	regmap_field_write(derived_refclk->phy_pipe_cmn_ctrl1_0, 0);
> +	regmap_field_write(derived_refclk->cmn_cdiag_refclk_ovrd_4, 0);
>  }
>  
>  static int cdns_torrent_derived_refclk_is_enabled(struct clk_hw *hw)
> @@ -1640,7 +1625,7 @@ static int cdns_torrent_derived_refclk_is_enabled(struct clk_hw *hw)
>  	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
>  	int val;
>  
> -	regmap_field_read(derived_refclk->phy_pipe_cmn_ctrl1_0, &val);
> +	regmap_field_read(derived_refclk->cmn_cdiag_refclk_ovrd_4, &val);
>  
>  	return !!val;
>  }
> @@ -1655,21 +1640,19 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  {
>  	struct cdns_torrent_derived_refclk *derived_refclk;
>  	struct device *dev = cdns_phy->dev;
> -	struct regmap_field *field;
>  	struct clk_init_data *init;
>  	const char *parent_name;
> -	struct regmap *regmap;
>  	char clk_name[100];
>  	struct clk_hw *hw;
>  	struct clk *clk;
> -	int i, ret;
> +	int ret;
>  
>  	derived_refclk = devm_kzalloc(dev, sizeof(*derived_refclk), GFP_KERNEL);
>  	if (!derived_refclk)
>  		return -ENOMEM;
>  
>  	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev),
> -		 clk_names[CDNS_TORRENT_REFCLK_DRIVER]);
> +		 clk_names[CDNS_TORRENT_DERIVED_REFCLK]);
>  
>  	clk = devm_clk_get_optional(dev, "phy_en_refclk");
>  	if (IS_ERR(clk)) {
> @@ -1688,23 +1671,8 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  	init->flags = 0;
>  	init->name = clk_name;
>  
> -	regmap = cdns_phy->regmap_phy_pcs_common_cdb;
> -	field = devm_regmap_field_alloc(dev, regmap, phy_pipe_cmn_ctrl1_0);
> -	if (IS_ERR(field)) {
> -		dev_err(dev, "phy_pipe_cmn_ctrl1_0 reg field init failed\n");
> -		return PTR_ERR(field);
> -	}
> -	derived_refclk->phy_pipe_cmn_ctrl1_0 = field;
> -
> -	regmap = cdns_phy->regmap_common_cdb;
> -	for (i = 0; i < REFCLK_OUT_NUM_CMN_CONFIG; i++) {
> -		field = devm_regmap_field_alloc(dev, regmap, refclk_out_cmn_cfg[i]);
> -		if (IS_ERR(field)) {
> -			dev_err(dev, "CMN reg field init failed\n");
> -			return PTR_ERR(field);
> -		}
> -		derived_refclk->cmn_fields[i] = field;
> -	}
> +	derived_refclk->phy_pipe_cmn_ctrl1_0 = cdns_phy->phy_pipe_cmn_ctrl1_0;
> +	derived_refclk->cmn_cdiag_refclk_ovrd_4 = cdns_phy->cmn_cdiag_refclk_ovrd_4;
>  
>  	derived_refclk->hw.init = init;
>  
> @@ -1713,7 +1681,7 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  	if (ret)
>  		return ret;
>  
> -	cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER] = hw;
> +	cdns_phy->clk_hw_data->hws[CDNS_TORRENT_DERIVED_REFCLK] = hw;
>  
>  	return 0;
>  }
> @@ -1768,6 +1736,22 @@ static int cdns_torrent_regfield_init(struct cdns_torrent_phy *cdns_phy)
>  	}
>  	cdns_phy->phy_pll_cfg = field;
>  
> +	regmap = cdns_phy->regmap_phy_pcs_common_cdb;
> +	field = devm_regmap_field_alloc(dev, regmap, phy_pipe_cmn_ctrl1_0);
> +	if (IS_ERR(field)) {
> +		dev_err(dev, "phy_pipe_cmn_ctrl1_0 reg field init failed\n");
> +		return PTR_ERR(field);
> +	}
> +	cdns_phy->phy_pipe_cmn_ctrl1_0 = field;
> +
> +	regmap = cdns_phy->regmap_common_cdb;
> +	field = devm_regmap_field_alloc(dev, regmap, cmn_cdiag_refclk_ovrd_4);
> +	if (IS_ERR(field)) {
> +		dev_err(dev, "cmn_cdiag_refclk_ovrd_4 reg field init failed\n");
> +		return PTR_ERR(field);
> +	}
> +	cdns_phy->cmn_cdiag_refclk_ovrd_4 = field;
> +
>  	regmap = cdns_phy->regmap_phy_pma_common_cdb;
>  	field = devm_regmap_field_alloc(dev, regmap, phy_pma_cmn_ctrl_1);
>  	if (IS_ERR(field)) {
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
