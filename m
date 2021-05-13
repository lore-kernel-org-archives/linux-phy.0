Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5474BC433ED
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:43:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D81661434
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:43:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D81661434
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0JD+oqWcopQCQTsw59mwZKLh/vPUcOUkoAPIL8hJB+Q=; b=QAgNV6BOiBejcuZ/G5kFutA2Q
	htXVnD01uSTFgo4wVJLAxpNomyLPiXpzLlGu68hkke9R/3DW6tB3MjW9w7AaQR5RXZGNpkbKkN8tX
	B/WAMgZK0nPEqaL7lEbI95DXamnU7/toqA4rcVar/b6i5REoleNyyKIrREvQv4HL9RBeQw3Qu8vBG
	j8L3d4fDrupJYEifOHw2Ul+0GMK4ujhKX3Ew3PhMkU1aySDmzIpTE8Uvs/9KEkk8xJTUZ+EZynBGb
	4YkMhWRAgNG3zUQJSMMHrPgIcahTZ4p9rPr52mZXwEsrhApFM2vO56zX1UaQfFH3gAteKExCfgWpN
	VykPW3fGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh54Z-004wLx-BG; Thu, 13 May 2021 06:43:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh54X-004wLo-5R
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 06:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=+zblT7RxxicQpxktUE5x2p+78Rd6Nj/CZXdekxNjmPE=; b=ZzMZgSWeUVbw2IFJSoxD8MrD2p
 sSyvtasWv8Smiyu8Tlq5BBk3/kROCtP1QuaWseJWKs+flq5A6/2LH6waqOaie1ein1S6rDI0aAmxN
 deeE0nBfDdpahBWk/YMp0BPhks9HYuEdJlQHjZVm+p3zszW7ZA50KUWvnC5wNqVX1INVA7/L6+XUE
 7+On8anbG6NM7FvQ42bGsdm7DJo0KUo8DAEwMgniMbDRB9Tm8aC6H34ringBbC1Wrnoo9QZOf/zD4
 C+YuMDZiCzbJQFrf4YQgIO2gX6ZSSTmBgOOzwoH6oMLWTRPE75S25TnwLylmzcQGxWeo9jpP0oKV5
 dFiSDvfw==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh54U-00B3JT-2m
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 06:43:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D6hhRM101748;
 Thu, 13 May 2021 01:43:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620888223;
 bh=+zblT7RxxicQpxktUE5x2p+78Rd6Nj/CZXdekxNjmPE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NQ8hkYH/Q7xZJMDX2tERTxgAcumhPAUOQuKyZamuBpcHTl1cubAyu51zU1fAh1xZx
 7JSeSQ+VhPdSJ4INBkl3vyX/LFq1X6icI2Q06IqqSBfJVIaW1MeOGtlPW79lNDuAO7
 1eTk12kcLtZmiccbZcIOBBQPzi7D7BeDkQzGnsJQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D6hhL8036606
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 01:43:43 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 01:43:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 01:43:42 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D6hcju064420;
 Thu, 13 May 2021 01:43:39 -0500
Subject: Re: [PATCH 03/14] phy: cadence-torrent: Add enum to support different
 input reference clocks
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-4-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <3f1897aa-be23-c2ba-9e33-0d1983abb853@ti.com>
Date: Thu, 13 May 2021 12:13:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-4-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_234346_241142_EAD49D88 
X-CRM114-Status: GOOD (  22.74  )
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

On 09/04/21 11:04 am, Swapnil Jakhade wrote:
> Torrent PHY supports different input reference clock frequencies.
> Register configurations will be different based on reference clock value.
> Prepare driver to support register configs for multiple reference clocks.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

$subject can be changed to something like "Add enum for supported input
reference clocks frequencies"

With that fixed
Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 51 +++++++++++++++++------
>  1 file changed, 38 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 6eeb753fbb78..252920ea7fdf 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -26,11 +26,13 @@
>  
>  #define REF_CLK_19_2MHZ		19200000
>  #define REF_CLK_25MHZ		25000000
> +#define REF_CLK_100MHZ		100000000
>  
>  #define MAX_NUM_LANES		4
>  #define DEFAULT_MAX_BIT_RATE	8100 /* in Mbps */
>  
>  #define NUM_SSC_MODE		3
> +#define NUM_REF_CLK		3
>  #define NUM_PHY_TYPE		6
>  
>  #define POLL_TIMEOUT_US		5000
> @@ -273,6 +275,12 @@ enum cdns_torrent_phy_type {
>  	TYPE_USB,
>  };
>  
> +enum cdns_torrent_ref_clk {
> +	CLK_19_2_MHZ,
> +	CLK_25_MHZ,
> +	CLK_100_MHZ
> +};
> +
>  enum cdns_torrent_ssc_mode {
>  	NO_SSC,
>  	EXTERNAL_SSC,
> @@ -296,7 +304,7 @@ struct cdns_torrent_phy {
>  	struct reset_control *apb_rst;
>  	struct device *dev;
>  	struct clk *clk;
> -	unsigned long ref_clk_rate;
> +	enum cdns_torrent_ref_clk ref_clk_rate;
>  	struct cdns_torrent_inst phys[MAX_NUM_LANES];
>  	int nsubnodes;
>  	const struct cdns_torrent_data *init_data;
> @@ -817,12 +825,12 @@ static int cdns_torrent_dp_configure_rate(struct cdns_torrent_phy *cdns_phy,
>  	ndelay(200);
>  
>  	/* DP Rate Change - VCO Output settings. */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ) {
> +	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ) {
>  		/* PMA common configuration 19.2MHz */
>  		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy, dp->link_rate,
>  							dp->ssc);
>  		cdns_torrent_dp_pma_cmn_cfg_19_2mhz(cdns_phy);
> -	} else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ) {
> +	} else if (cdns_phy->ref_clk_rate == CLK_25_MHZ) {
>  		/* PMA common configuration 25MHz */
>  		cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(cdns_phy, dp->link_rate,
>  						      dp->ssc);
> @@ -1165,8 +1173,8 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
>  
>  	switch (cdns_phy->ref_clk_rate) {
> -	case REF_CLK_19_2MHZ:
> -	case REF_CLK_25MHZ:
> +	case CLK_19_2_MHZ:
> +	case CLK_25_MHZ:
>  		/* Valid Ref Clock Rate */
>  		break;
>  	default:
> @@ -1198,11 +1206,11 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  
>  	/* PHY PMA registers configuration functions */
>  	/* Initialize PHY with max supported link rate, without SSC. */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
> +	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ)
>  		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy,
>  							cdns_phy->max_bit_rate,
>  							false);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
> +	else if (cdns_phy->ref_clk_rate == CLK_25_MHZ)
>  		cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(cdns_phy,
>  						      cdns_phy->max_bit_rate,
>  						      false);
> @@ -1228,10 +1236,10 @@ static void cdns_torrent_dp_pma_cfg(struct cdns_torrent_phy *cdns_phy,
>  {
>  	unsigned int i;
>  
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
> +	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ)
>  		/* PMA common configuration 19.2MHz */
>  		cdns_torrent_dp_pma_cmn_cfg_19_2mhz(cdns_phy);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
> +	else if (cdns_phy->ref_clk_rate == CLK_25_MHZ)
>  		/* PMA common configuration 25MHz */
>  		cdns_torrent_dp_pma_cmn_cfg_25mhz(cdns_phy);
>  
> @@ -1636,10 +1644,10 @@ static void cdns_torrent_dp_pma_lane_cfg(struct cdns_torrent_phy *cdns_phy,
>  					 unsigned int lane)
>  {
>  	/* Per lane, refclock-dependent receiver detection setting */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
> +	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ)
>  		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[lane],
>  				       TX_RCVDET_ST_TMR, 0x0780);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
> +	else if (cdns_phy->ref_clk_rate == CLK_25_MHZ)
>  		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[lane],
>  				       TX_RCVDET_ST_TMR, 0x09C4);
>  
> @@ -2270,6 +2278,7 @@ static int cdns_torrent_reset(struct cdns_torrent_phy *cdns_phy)
>  static int cdns_torrent_clk(struct cdns_torrent_phy *cdns_phy)
>  {
>  	struct device *dev = cdns_phy->dev;
> +	unsigned long ref_clk_rate;
>  	int ret;
>  
>  	cdns_phy->clk = devm_clk_get(dev, "refclk");
> @@ -2284,13 +2293,29 @@ static int cdns_torrent_clk(struct cdns_torrent_phy *cdns_phy)
>  		return ret;
>  	}
>  
> -	cdns_phy->ref_clk_rate = clk_get_rate(cdns_phy->clk);
> -	if (!(cdns_phy->ref_clk_rate)) {
> +	ref_clk_rate = clk_get_rate(cdns_phy->clk);
> +	if (!ref_clk_rate) {
>  		dev_err(cdns_phy->dev, "Failed to get ref clock rate\n");
>  		clk_disable_unprepare(cdns_phy->clk);
>  		return -EINVAL;
>  	}
>  
> +	switch (ref_clk_rate) {
> +	case REF_CLK_19_2MHZ:
> +		cdns_phy->ref_clk_rate = CLK_19_2_MHZ;
> +		break;
> +	case REF_CLK_25MHZ:
> +		cdns_phy->ref_clk_rate = CLK_25_MHZ;
> +		break;
> +	case REF_CLK_100MHZ:
> +		cdns_phy->ref_clk_rate = CLK_100_MHZ;
> +		break;
> +	default:
> +		dev_err(cdns_phy->dev, "Invalid Ref Clock Rate\n");
> +		clk_disable_unprepare(cdns_phy->clk);
> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
