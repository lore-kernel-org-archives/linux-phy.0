Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264B1C71155
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 14:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXIB1FT0sdFFo5NFhNkeukeOwTtQl2fjGHnFkn/RE4w=; b=SzWNzRCZewI+bv
	2BIrV9WH60Z2DqXNICRHCAFD3J6nccS5PWbh81m3tsieuh/VzDbxKn3qtnGSIo/9raHK0JCyGtb0s
	IUZxN4GNz6u9RBagIz/j/QVOyHC4t554iqtafMzyWIQO0KAR+nhpSck3dY5NbvZJsmai2eM1XqLFr
	wwLiSUap++UgmeNyWyQ2cM6FvZLpjoHsXBQwqU6yW4mAosuN4jmi9GmWj0b0nGnKs0aYkz+4qg6hN
	JGB20q4KubdX52OKlmcbS7tCfRzgYnB5zegU4hvs42sVaL0F6uMeacoh0s/u1ZXVfybIY9kjhJxWQ
	BK71CTjopQWG9y9opHuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScyB-0000000Fsym-3mqv;
	Fri, 20 Jun 2025 14:43:55 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScwc-0000000Fsji-1wHF
	for linux-phy@lists.infradead.org;
	Fri, 20 Jun 2025 14:42:19 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55KEg42J323400;
	Fri, 20 Jun 2025 09:42:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750430524;
	bh=jDJmtsqpNaS2MUMDPjXt8puYBGShfidvE6+OEKBxG1I=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=hcUFAaTbrxlBZz5MS9yf4pU5Yv2mYMKvbqhFvl331FL7peA/AJ+zyV3pc1uDLxcl+
	 Bc6zL4H13EAisLT2pn9zwERDvpA+QNeqWySFmAH6qgkNcotN8QwCVpIbQiTlkpl+5+
	 Tv5XhyLS4bCC8djgbw9Lmebyx43nt3u3Ms8MlYMk=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55KEg3be1861484
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 20 Jun 2025 09:42:03 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 20
 Jun 2025 09:42:03 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 20 Jun 2025 09:42:03 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55KEfxkL3111049;
	Fri, 20 Jun 2025 09:42:00 -0500
Message-ID: <21e81030-189f-4f21-8800-f62cb351a3d6@ti.com>
Date: Fri, 20 Jun 2025 20:11:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
To: Vinod Koul <vkoul@kernel.org>
CC: <kishon@kernel.org>, <mripard@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <sakari.ailus@linux.intel.com>,
        <u.kleine-koenig@baylibre.com>, <vigneshr@ti.com>,
        <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <tomi.valkeinen@ideasonboard.com>
References: <20250502033451.2291330-1-devarsht@ti.com>
 <20250502033451.2291330-2-devarsht@ti.com> <aCRwmohPq5E2RsGC@vaman>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <aCRwmohPq5E2RsGC@vaman>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_074218_595723_D95F0B41 
X-CRM114-Status: GOOD (  23.96  )
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

Hi Vinod,

Thanks for the review.

On 14/05/25 15:59, Vinod Koul wrote:
> On 02-05-25, 09:04, Devarsh Thakkar wrote:
>> PLL lockup and O_CMN_READY assertion can only happen after common state
>> machine gets enabled (by programming DPHY_CMN_SSM register), but driver was
>> polling them before the common state machine was enabled. To fix this :
>>
>> - Add new function callbacks for polling on PLL lock and O_CMN_READY
>>    assertion.
>> - As state machine and clocks get enabled in power_on callback only, move
>>    the clock related programming part from configure callback to power_on
>>    callback and poll for the PLL lockup and O_CMN_READY assertion after
>>    state machine gets enabled.
>> - The configure callback only saves the PLL configuration received from the
>>    client driver which will be applied later on in power_on callback.
>> - Add checks to ensure configure is called before power_on and state
>>    machine is in disabled state before power_on callback is called.
>> - Disable state machine in power_off so that client driver can
>>    re-configure the PLL by following up a power_off, configure, power_on
>>    sequence.
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
>> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
>> ---
>> V3:
>> - Move out clock programming logic to power_on as PLL polling and enable
>>    can happen only after SSM enable
>> - Disable state machine on power off
>>
>> V2:
>> - Return error code on polling timeout
>> - Moved out calibration logic to separate patch
>>
>>   drivers/phy/cadence/cdns-dphy.c | 109 +++++++++++++++++++++++++-------
>>   1 file changed, 85 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
>> index ed87a3970f83..a94109a63788 100644
>> --- a/drivers/phy/cadence/cdns-dphy.c
>> +++ b/drivers/phy/cadence/cdns-dphy.c
>> @@ -79,6 +79,7 @@ struct cdns_dphy_cfg {
>>   	u8 pll_ipdiv;
>>   	u8 pll_opdiv;
>>   	u16 pll_fbdiv;
>> +	u64 hs_clk_rate;
>>   	unsigned int nlanes;
>>   };
>>   
>> @@ -99,6 +100,8 @@ struct cdns_dphy_ops {
>>   	void (*set_pll_cfg)(struct cdns_dphy *dphy,
>>   			    const struct cdns_dphy_cfg *cfg);
>>   	unsigned long (*get_wakeup_time_ns)(struct cdns_dphy *dphy);
>> +	int (*wait_for_pll_lock)(struct cdns_dphy *dphy);
>> +	int (*wait_for_cmn_ready)(struct cdns_dphy *dphy);
>>   };
>>   
>>   struct cdns_dphy {
>> @@ -108,6 +111,8 @@ struct cdns_dphy {
>>   	struct clk *pll_ref_clk;
>>   	const struct cdns_dphy_ops *ops;
>>   	struct phy *phy;
>> +	bool is_configured;
>> +	bool is_powered;
>>   };
>>   
>>   /* Order of bands is important since the index is the band number. */
>> @@ -191,6 +196,26 @@ static unsigned long cdns_dphy_get_wakeup_time_ns(struct cdns_dphy *dphy)
>>   	return dphy->ops->get_wakeup_time_ns(dphy);
>>   }
>>   
>> +static int cdns_dphy_wait_for_pll_lock(struct cdns_dphy *dphy)
>> +{
>> +	int ret = 0;
>> +
>> +	if (dphy->ops->wait_for_pll_lock)
>> +		ret = dphy->ops->wait_for_pll_lock(dphy);
>> +
>> +	return ret;
>> +}
>> +
>> +static int cdns_dphy_wait_for_cmn_ready(struct cdns_dphy *dphy)
>> +{
>> +	int ret = 0;
>> +
>> +	if (dphy->ops->wait_for_cmn_ready)
>> +		ret = dphy->ops->wait_for_cmn_ready(dphy);
>> +
>> +	return ret;
> 
> We can drop ret from both, also it is called only once, so maybe open
> code this one line?
> 

Agreed.

>> +}
>> +
>>   static unsigned long cdns_dphy_ref_get_wakeup_time_ns(struct cdns_dphy *dphy)
>>   {
>>   	/* Default wakeup time is 800 ns (in a simulated environment). */
>> @@ -232,7 +257,6 @@ static unsigned long cdns_dphy_j721e_get_wakeup_time_ns(struct cdns_dphy *dphy)
>>   static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
>>   					const struct cdns_dphy_cfg *cfg)
>>   {
>> -	u32 status;
>>   
>>   	/*
>>   	 * set the PWM and PLL Byteclk divider settings to recommended values
>> @@ -249,13 +273,6 @@ static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
>>   
>>   	writel(DPHY_TX_J721E_WIZ_LANE_RSTB,
>>   	       dphy->regs + DPHY_TX_J721E_WIZ_RST_CTRL);
>> -
>> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
>> -			   (status & DPHY_TX_WIZ_PLL_LOCK), 0, POLL_TIMEOUT_US);
>> -
>> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
>> -			   (status & DPHY_TX_WIZ_O_CMN_READY), 0,
>> -			   POLL_TIMEOUT_US);
>>   }
>>   
>>   static void cdns_dphy_j721e_set_psm_div(struct cdns_dphy *dphy, u8 div)
>> @@ -263,6 +280,23 @@ static void cdns_dphy_j721e_set_psm_div(struct cdns_dphy *dphy, u8 div)
>>   	writel(div, dphy->regs + DPHY_TX_J721E_WIZ_PSM_FREQ);
>>   }
>>   
>> +static int cdns_dphy_j721e_wait_for_pll_lock(struct cdns_dphy *dphy)
>> +{
>> +	u32 status;
>> +
>> +	return readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
>> +			       status & DPHY_TX_WIZ_PLL_LOCK, 0, POLL_TIMEOUT_US);
>> +}
>> +
>> +static int cdns_dphy_j721e_wait_for_cmn_ready(struct cdns_dphy *dphy)
>> +{
>> +	u32 status;
>> +
>> +	return readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
>> +			       status & DPHY_TX_WIZ_O_CMN_READY, 0,
>> +			       POLL_TIMEOUT_US);
>> +}
>> +
>>   /*
>>    * This is the reference implementation of DPHY hooks. Specific integration of
>>    * this IP may have to re-implement some of them depending on how they decided
>> @@ -278,6 +312,8 @@ static const struct cdns_dphy_ops j721e_dphy_ops = {
>>   	.get_wakeup_time_ns = cdns_dphy_j721e_get_wakeup_time_ns,
>>   	.set_pll_cfg = cdns_dphy_j721e_set_pll_cfg,
>>   	.set_psm_div = cdns_dphy_j721e_set_psm_div,
>> +	.wait_for_pll_lock = cdns_dphy_j721e_wait_for_pll_lock,
>> +	.wait_for_cmn_ready = cdns_dphy_j721e_wait_for_cmn_ready,
>>   };
>>   
>>   static int cdns_dphy_config_from_opts(struct phy *phy,
>> @@ -298,6 +334,7 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
>>   		return ret;
>>   
>>   	opts->wakeup = cdns_dphy_get_wakeup_time_ns(dphy) / 1000;
>> +	cfg->hs_clk_rate = opts->hs_clk_rate;
>>   
>>   	return 0;
>>   }
>> @@ -334,13 +371,23 @@ static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
>>   static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>>   {
>>   	struct cdns_dphy *dphy = phy_get_drvdata(phy);
>> -	struct cdns_dphy_cfg cfg = { 0 };
>> -	int ret, band_ctrl;
>> -	unsigned int reg;
>> +	int ret = 0;
> 
> Superfluous init
> 

Agreed. I will do the fixups in next revision.

Thanks,
Devarsh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
