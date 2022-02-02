Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3BEC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Feb 2022 14:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ia/bjrJqVh7sGHBlTE4vP5qcaFazd4V3998ltLBrcZ4=; b=F1e51CTWA8q5ihcLI/i8sJfagu
	pzFg28tcjNd2jESESry79s8G0o+4P1fNDpWmv70kRIsj3jTO3tk6u7gTQysVlvKsQPQQGUzUXJTAD
	aqq2wjuj7NgFtKdVH2i32WU8PO/nnpmflv+U+81uNN5z10Xuba+kW5NK0DobhKz+pPB5FWm8oDQRU
	636H32axlEaTzYlNoEm30o4RsTia7nxeC4FmIbvb6QKXEAcMkzWokLAw2i11WZLoF2YLFEv0zzytk
	z0BSWzwVMXaN80t5tnXqG+JQeLqC0KKYgoH7rTw2hYgSM2fY/8J9f2C6Uo8sy2Ecbx24hkNVVBCmu
	fEeeNrdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFGsj-00Fmsn-5P; Wed, 02 Feb 2022 14:45:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFGsf-00FmpV-Am
 for linux-phy@lists.infradead.org; Wed, 02 Feb 2022 14:45:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 212Eiv3c037183;
 Wed, 2 Feb 2022 08:44:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1643813097;
 bh=1P/IClS+efUO5LSsmY9p+5Zw2D0ZHIgPB4F3hLLb1HE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ycDeFE3KOH32NjxOqmcu+PLnyDJCqH2nGju269y0eQM7tWFhuXhNAi6va4r/lk9aj
 bINl6vnbtYHOT2RFkJfKrPxqkuUq8+OunREv8h98WLTSwBhdjdPIr2ZehZ187De0sk
 436uvVXKdLmUVPY1oIiCbWESweC6dTj9oQ9ZBjx0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 212EivLi040947
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 2 Feb 2022 08:44:57 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 2
 Feb 2022 08:44:56 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 2 Feb 2022 08:44:56 -0600
Received: from [10.250.235.191] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 212Eir4J104102;
 Wed, 2 Feb 2022 08:44:54 -0600
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Swapnil Jakhade <sjakhade@cadence.com>, Dan
 Carpenter <dan.carpenter@oracle.com>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20220128072642.29188-1-a-govindraju@ti.com>
 <YfqT444YoGBIturt@matsya>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
Date: Wed, 2 Feb 2022 20:14:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YfqT444YoGBIturt@matsya>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_064509_542498_99B7F253 
X-CRM114-Status: GOOD (  26.10  )
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

Hi Vinod,

On 02/02/22 7:53 pm, Vinod Koul wrote:
> On 28-01-22, 12:56, Aswath Govindraju wrote:
>> In some cases, a single SerDes instance can be shared between two different
>> processors, each using a separate link. In these cases, the SerDes
>> configuration is done in an earlier boot stage. Therefore, add support to
>> skip reconfiguring, if it is was already configured beforehand.
> 
> This fails to apply, pls rebase and resend
> 

On rebasing, I am seeing no difference in the patch and I am able to
apply it on top of linux-next/master commit 6abab1b81b65. May I know if
there is any other branch that I would need to rebase this patch on top of?

Thanks,
Aswath

>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>
>> Changes since v1:
>> - Removed redundant braces
>> - Corrected the logic for skipping multilink configuration
>> - Corrected the order in failure path
>>
>>  drivers/phy/cadence/phy-cadence-sierra.c | 82 ++++++++++++++++--------
>>  1 file changed, 57 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
>> index e265647e29a2..6b917f7bddbe 100644
>> --- a/drivers/phy/cadence/phy-cadence-sierra.c
>> +++ b/drivers/phy/cadence/phy-cadence-sierra.c
>> @@ -370,6 +370,7 @@ struct cdns_sierra_phy {
>>  	int nsubnodes;
>>  	u32 num_lanes;
>>  	bool autoconf;
>> +	int already_configured;
>>  	struct clk_onecell_data clk_data;
>>  	struct clk *output_clks[CDNS_SIERRA_OUTPUT_CLOCKS];
>>  };
>> @@ -517,7 +518,7 @@ static int cdns_sierra_phy_init(struct phy *gphy)
>>  	int i, j;
>>  
>>  	/* Initialise the PHY registers, unless auto configured */
>> -	if (phy->autoconf || phy->nsubnodes > 1)
>> +	if (phy->autoconf || phy->already_configured || phy->nsubnodes > 1)
>>  		return 0;
>>  
>>  	clk_set_rate(phy->input_clks[CMN_REFCLK_DIG_DIV], 25000000);
>> @@ -646,6 +647,18 @@ static const struct phy_ops ops = {
>>  	.owner		= THIS_MODULE,
>>  };
>>  
>> +static int cdns_sierra_noop_phy_on(struct phy *gphy)
>> +{
>> +	usleep_range(5000, 10000);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct phy_ops noop_ops = {
>> +	.power_on	= cdns_sierra_noop_phy_on,
>> +	.owner		= THIS_MODULE,
>> +};
>> +
>>  static u8 cdns_sierra_pll_mux_get_parent(struct clk_hw *hw)
>>  {
>>  	struct cdns_sierra_pll_mux *mux = to_cdns_sierra_pll_mux(hw);
>> @@ -1118,13 +1131,6 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
>>  	struct clk *clk;
>>  	int ret;
>>  
>> -	clk = devm_clk_get_optional(dev, "phy_clk");
>> -	if (IS_ERR(clk)) {
>> -		dev_err(dev, "failed to get clock phy_clk\n");
>> -		return PTR_ERR(clk);
>> -	}
>> -	sp->input_clks[PHY_CLK] = clk;
>> -
>>  	clk = devm_clk_get_optional(dev, "cmn_refclk_dig_div");
>>  	if (IS_ERR(clk)) {
>>  		dev_err(dev, "cmn_refclk_dig_div clock not found\n");
>> @@ -1160,17 +1166,33 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
>>  	return 0;
>>  }
>>  
>> -static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
>> +static int cdns_sierra_phy_clk(struct cdns_sierra_phy *sp)
>>  {
>> +	struct device *dev = sp->dev;
>> +	struct clk *clk;
>>  	int ret;
>>  
>> +	clk = devm_clk_get_optional(dev, "phy_clk");
>> +	if (IS_ERR(clk)) {
>> +		dev_err(dev, "failed to get clock phy_clk\n");
>> +		return PTR_ERR(clk);
>> +	}
>> +	sp->input_clks[PHY_CLK] = clk;
>> +
>>  	ret = clk_prepare_enable(sp->input_clks[PHY_CLK]);
>>  	if (ret)
>>  		return ret;
>>  
>> +	return 0;
>> +}
>> +
>> +static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
>> +{
>> +	int ret;
>> +
>>  	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
>>  	if (ret)
>> -		goto err_pll_cmnlc;
>> +		return ret;
>>  
>>  	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
>>  	if (ret)
>> @@ -1181,9 +1203,6 @@ static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
>>  err_pll_cmnlc1:
>>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
>>  
>> -err_pll_cmnlc:
>> -	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
>> -
>>  	return ret;
>>  }
>>  
>> @@ -1191,7 +1210,8 @@ static void cdns_sierra_phy_disable_clocks(struct cdns_sierra_phy *sp)
>>  {
>>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
>>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
>> -	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
>> +	if (!sp->already_configured)
>> +		clk_disable_unprepare(sp->input_clks[PHY_CLK]);
>>  }
>>  
>>  static int cdns_sierra_phy_get_resets(struct cdns_sierra_phy *sp,
>> @@ -1382,22 +1402,30 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  	if (ret)
>>  		return ret;
>>  
>> -	ret = cdns_sierra_phy_get_resets(sp, dev);
>> -	if (ret)
>> -		goto unregister_clk;
>> -
>>  	ret = cdns_sierra_phy_enable_clocks(sp);
>>  	if (ret)
>>  		goto unregister_clk;
>>  
>> -	/* Enable APB */
>> -	reset_control_deassert(sp->apb_rst);
>> +	regmap_field_read(sp->pma_cmn_ready, &sp->already_configured);
>> +
>> +	if (!sp->already_configured) {
>> +		ret = cdns_sierra_phy_clk(sp);
>> +		if (ret)
>> +			goto clk_disable;
>> +
>> +		ret = cdns_sierra_phy_get_resets(sp, dev);
>> +		if (ret)
>> +			goto clk_disable;
>> +
>> +		/* Enable APB */
>> +		reset_control_deassert(sp->apb_rst);
>> +	}
>>  
>>  	/* Check that PHY is present */
>>  	regmap_field_read(sp->macro_id_type, &id_value);
>>  	if  (sp->init_data->id_value != id_value) {
>>  		ret = -EINVAL;
>> -		goto clk_disable;
>> +		goto ctrl_assert;
>>  	}
>>  
>>  	sp->autoconf = of_property_read_bool(dn, "cdns,autoconf");
>> @@ -1433,8 +1461,10 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  
>>  		sp->num_lanes += sp->phys[node].num_lanes;
>>  
>> -		gphy = devm_phy_create(dev, child, &ops);
>> -
>> +		if (!sp->already_configured)
>> +			gphy = devm_phy_create(dev, child, &ops);
>> +		else
>> +			gphy = devm_phy_create(dev, child, &noop_ops);
>>  		if (IS_ERR(gphy)) {
>>  			ret = PTR_ERR(gphy);
>>  			of_node_put(child);
>> @@ -1455,7 +1485,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  	}
>>  
>>  	/* If more than one subnode, configure the PHY as multilink */
>> -	if (!sp->autoconf && sp->nsubnodes > 1) {
>> +	if (!sp->already_configured && !sp->autoconf && sp->nsubnodes > 1) {
>>  		ret = cdns_sierra_phy_configure_multilink(sp);
>>  		if (ret)
>>  			goto put_control;
>> @@ -1473,9 +1503,11 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  put_control:
>>  	while (--node >= 0)
>>  		reset_control_put(sp->phys[node].lnk_rst);
>> +ctrl_assert:
>> +	if (!sp->already_configured)
>> +		reset_control_assert(sp->apb_rst);
>>  clk_disable:
>>  	cdns_sierra_phy_disable_clocks(sp);
>> -	reset_control_assert(sp->apb_rst);
>>  unregister_clk:
>>  	cdns_sierra_clk_unregister(sp);
>>  	return ret;
>> -- 
>> 2.17.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
