Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D8FC433B4
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:36:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB88661428
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:36:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB88661428
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k9dg6OXiwnhw6ofyAdJCEnN4fRCQxpbfygk9cA7+dYw=; b=WMlU5jIuFy875YNTMJFq5KXpX
	5hV7bTAIjqryH8nmp7GlHzdNxGJl8jSKKgGMFCgU3optTKIejKKahBL/X2+eXu0onvR7CmcODzSWp
	rsRbNcr3N7t0d2AsdMg2i1ZVZtMQVnR/ofeoSkRz0libz25z6gOKt4rLXt8W5yGV/rd21jTjHKAKr
	GYQEVo5pnd8OFXWB086UH4WFg00DIwDhkTRxI3ENtjqrUVBTAeaW/P0yrJ1th75RIyUu+Kz+jilgH
	Jf2I9kgzzsaW55Fu7sOlg38tR6ChZJYSgVtJ/RquD1p2YTVSSQiFLxXZ6Rd6A9XurK7l7ozeeQVev
	O700Ev+7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh4x5-004vX9-Ug; Thu, 13 May 2021 06:36:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh4x3-004vVg-8d
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 06:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=pd8BkFDwQHZHNLYzodafkan6ZZGBf5KN/Hd/GxNBdpk=; b=BWtLk32SZRCAthwr/Ax5zG415S
 vu7DTeI5Sua9B9YqDMIq0XOFMOPI3s8u+g2PbYk8yMGEbBDhyZvDC/rdpDNLH8F7Y6otI5VZHGZS1
 Lo9BcTZ/Gup2/hSNZp8qZJJV4e9OcIFHwkbXmsGQdOH2MJuvJTjvJvT23QLODIVCAnfuMAR/yp4FS
 oFdwclTM9UAcODI8czo/bVRO1sMsFtZcdpiTzk3bJHTzObmTTa3/LQD206YTf6atBj+h3PYmQy7Mf
 ocgXncmMJ7FpTZx86m6iB/afKGXgfGFN2gAWa0blKJxfWN4rBdqGpRbdRz/p5OPzUxyau6UmawHs0
 jwafJgvg==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh4wz-00B38O-Hq
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 06:36:03 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D6ZvWF099031;
 Thu, 13 May 2021 01:35:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620887757;
 bh=pd8BkFDwQHZHNLYzodafkan6ZZGBf5KN/Hd/GxNBdpk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=qfnmISxRv5EggH8t9WDL83UK1Atm1nprRs5YhIG4Iknb7P58PgwKC6upaTPtEDTPb
 2NnsKkNh07aqi9J6hcvFHArwFb0sp/1jSk7z9X2cIa3ALTpXYMd2f8bnTWvxcZaKpL
 leFTMnhRNkhAPkg4ExUjDcDfLD28FKIklhMr0zx4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D6ZvqP095975
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 01:35:57 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 01:35:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 01:35:57 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D6ZreZ023388;
 Thu, 13 May 2021 01:35:54 -0500
Subject: Re: [PATCH 01/14] phy: cadence-torrent: Remove use of CamelCase to
 fix checkpatch CHECK message
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-2-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <286c7937-d426-c50e-21b0-3fc24b6e367a@ti.com>
Date: Thu, 13 May 2021 12:05:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-2-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_233601_712263_495EAB01 
X-CRM114-Status: GOOD (  16.44  )
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



On 09/04/21 11:04 am, Swapnil Jakhade wrote:
> Script checkpatch with --strict option gives message:
> CHECK: Avoid CamelCase: <REF_CLK_19_2MHz>
> CHECK: Avoid CamelCase: <REF_CLK_25MHz>
> Fix this by removing CamelCase usage. No functional change.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 24 +++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 0477e7beebbf..ff647669f1a3 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -24,8 +24,8 @@
>  #include <linux/reset.h>
>  #include <linux/regmap.h>
>  
> -#define REF_CLK_19_2MHz		19200000
> -#define REF_CLK_25MHz		25000000
> +#define REF_CLK_19_2MHZ		19200000
> +#define REF_CLK_25MHZ		25000000
>  
>  #define MAX_NUM_LANES		4
>  #define DEFAULT_MAX_BIT_RATE	8100 /* in Mbps */
> @@ -695,12 +695,12 @@ static int cdns_torrent_dp_configure_rate(struct cdns_torrent_phy *cdns_phy,
>  	ndelay(200);
>  
>  	/* DP Rate Change - VCO Output settings. */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHz) {
> +	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ) {
>  		/* PMA common configuration 19.2MHz */
>  		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy, dp->link_rate,
>  							dp->ssc);
>  		cdns_torrent_dp_pma_cmn_cfg_19_2mhz(cdns_phy);
> -	} else if (cdns_phy->ref_clk_rate == REF_CLK_25MHz) {
> +	} else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ) {
>  		/* PMA common configuration 25MHz */
>  		cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(cdns_phy, dp->link_rate,
>  						      dp->ssc);
> @@ -993,8 +993,8 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
>  
>  	switch (cdns_phy->ref_clk_rate) {
> -	case REF_CLK_19_2MHz:
> -	case REF_CLK_25MHz:
> +	case REF_CLK_19_2MHZ:
> +	case REF_CLK_25MHZ:
>  		/* Valid Ref Clock Rate */
>  		break;
>  	default:
> @@ -1026,11 +1026,11 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  
>  	/* PHY PMA registers configuration functions */
>  	/* Initialize PHY with max supported link rate, without SSC. */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHz)
> +	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
>  		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy,
>  							cdns_phy->max_bit_rate,
>  							false);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHz)
> +	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
>  		cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(cdns_phy,
>  						      cdns_phy->max_bit_rate,
>  						      false);
> @@ -1074,10 +1074,10 @@ static void cdns_torrent_dp_pma_cfg(struct cdns_torrent_phy *cdns_phy,
>  {
>  	unsigned int i;
>  
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHz)
> +	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
>  		/* PMA common configuration 19.2MHz */
>  		cdns_torrent_dp_pma_cmn_cfg_19_2mhz(cdns_phy);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHz)
> +	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
>  		/* PMA common configuration 25MHz */
>  		cdns_torrent_dp_pma_cmn_cfg_25mhz(cdns_phy);
>  
> @@ -1529,10 +1529,10 @@ static void cdns_torrent_dp_pma_lane_cfg(struct cdns_torrent_phy *cdns_phy,
>  					 unsigned int lane)
>  {
>  	/* Per lane, refclock-dependent receiver detection setting */
> -	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHz)
> +	if (cdns_phy->ref_clk_rate == REF_CLK_19_2MHZ)
>  		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[lane],
>  				       TX_RCVDET_ST_TMR, 0x0780);
> -	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHz)
> +	else if (cdns_phy->ref_clk_rate == REF_CLK_25MHZ)
>  		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[lane],
>  				       TX_RCVDET_ST_TMR, 0x09C4);
>  
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
