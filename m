Return-Path: <SRS0=DVIa=OF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52C3C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 03:51:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79B1960F25
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 03:51:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 79B1960F25
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VODXIgu3QxIEi/SUZOzLNGGQove0IKD2G8KSr3n0Br8=; b=Aforqbr74yU44zbvpTGNWCUP1y
	ZZUu6VjD8YrXtpqYUgVCJ+2gbc00ynyjU1k/nmgaK9YBH0hdKSFbou+WIDWmKpolmGOfhnQ/7lWms
	rA4HJlG7dBLO8FQElJEQRcZeokF4u55eStxdoVEMYP6ohsmy4ybTvrdsC4vlKjiC70mSpEnOBfq62
	Wc0xtPG4Q71hGVe2r/Oz9sDGmhhlF1vL1S/NkF3g4NnnAaPwjI4COlUHpggV0y4zxWmatWu5NVdDB
	ufMmNKuyyiQ5QEuJ4KZ/hmD2Pjs79LTPyhw2VVjV8VcbKSLwddEtm/83i7i6mvwU45gIyEBWt385o
	+iID34Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQLxX-0080CE-R0; Wed, 15 Sep 2021 03:51:43 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQLxU-0080Av-JU
 for linux-phy@lists.infradead.org; Wed, 15 Sep 2021 03:51:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 18F3pZDf019328;
 Tue, 14 Sep 2021 22:51:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1631677895;
 bh=0/DzyW1aTj0CujHkJ0bEl7T6yiNv8PfN/vXyA4LrYtY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nUeob6WsxUrTWfaC+yKmSe3UZ7TxJJ0mx0e99paHwFBRIrx/5KRsBMTOvrE/Ylprk
 ncAi1qPmgZjvPxGtZV4WptWa2B2flHEmWSezxczzgtF5bgEDG2zVbJGvkQ7u1hVuog
 SA7pcofEkQHXhzvw33Zg1WpsuoflR+nWoPIdU1pU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 18F3pZw6039433
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Sep 2021 22:51:35 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Sep 2021 22:51:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Sep 2021 22:51:35 -0500
Received: from [10.250.232.217] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 18F3pVj9109416;
 Tue, 14 Sep 2021 22:51:32 -0500
Subject: Re: [PATCH 1/5] phy: cadence-torrent: Migrate to clk_hw based
 registration and OF APIs
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>, <a-govindraju@ti.com>
References: <20210908182628.28364-1-sjakhade@cadence.com>
 <20210908182628.28364-2-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <e6c0b780-d5d5-f641-7e9f-d2c917eb4b51@ti.com>
Date: Wed, 15 Sep 2021 09:21:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210908182628.28364-2-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_205140_849736_CF69BB03 
X-CRM114-Status: GOOD (  20.43  )
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
> Use clk_hw based provider APIs to register clks.

Please explain the reasoning for moving to clk_hw based API.

Thanks,
Kishon
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 30 ++++++++++++++---------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 415ace64adc5..ecb1aa883c05 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -235,6 +235,8 @@
>  #define PHY_PMA_CMN_CTRL2		0x0001U
>  #define PHY_PMA_PLL_RAW_CTRL		0x0003U
>  
> +#define CDNS_TORRENT_OUTPUT_CLOCKS	1
> +
>  static const char * const clk_names[] = {
>  	[CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
>  };
> @@ -333,8 +335,7 @@ struct cdns_torrent_phy {
>  	struct regmap_field *phy_pma_pll_raw_ctrl;
>  	struct regmap_field *phy_reset_ctrl;
>  	struct regmap_field *phy_pcs_iso_link_ctrl_1[MAX_NUM_LANES];
> -	struct clk *clks[CDNS_TORRENT_REFCLK_DRIVER + 1];
> -	struct clk_onecell_data clk_data;
> +	struct clk_hw_onecell_data *clk_hw_data;
>  };
>  
>  enum phy_powerstate {
> @@ -1659,8 +1660,9 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  	const char *parent_name;
>  	struct regmap *regmap;
>  	char clk_name[100];
> +	struct clk_hw *hw;
>  	struct clk *clk;
> -	int i;
> +	int i, ret;
>  
>  	derived_refclk = devm_kzalloc(dev, sizeof(*derived_refclk), GFP_KERNEL);
>  	if (!derived_refclk)
> @@ -1706,11 +1708,12 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  
>  	derived_refclk->hw.init = init;
>  
> -	clk = devm_clk_register(dev, &derived_refclk->hw);
> -	if (IS_ERR(clk))
> -		return PTR_ERR(clk);
> +	hw = &derived_refclk->hw;
> +	ret = devm_clk_hw_register(dev, hw);
> +	if (ret)
> +		return ret;
>  
> -	cdns_phy->clks[CDNS_TORRENT_REFCLK_DRIVER] = clk;
> +	cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER] = hw;
>  
>  	return 0;
>  }
> @@ -2188,18 +2191,23 @@ static int cdns_torrent_clk_register(struct cdns_torrent_phy *cdns_phy)
>  {
>  	struct device *dev = cdns_phy->dev;
>  	struct device_node *node = dev->of_node;
> +	struct clk_hw_onecell_data *data;
>  	int ret;
>  
> +	data = devm_kzalloc(dev, struct_size(data, hws, CDNS_TORRENT_OUTPUT_CLOCKS), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->num = CDNS_TORRENT_OUTPUT_CLOCKS;
> +	cdns_phy->clk_hw_data = data;
> +
>  	ret = cdns_torrent_derived_refclk_register(cdns_phy);
>  	if (ret) {
>  		dev_err(dev, "failed to register derived refclk\n");
>  		return ret;
>  	}
>  
> -	cdns_phy->clk_data.clks = cdns_phy->clks;
> -	cdns_phy->clk_data.clk_num = CDNS_TORRENT_REFCLK_DRIVER + 1;
> -
> -	ret = of_clk_add_provider(node, of_clk_src_onecell_get, &cdns_phy->clk_data);
> +	ret = of_clk_add_hw_provider(node, of_clk_hw_onecell_get, data);
>  	if (ret) {
>  		dev_err(dev, "Failed to add clock provider: %s\n", node->name);
>  		return ret;
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
