Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C53CC43460
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:01:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF3FE6143B
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:01:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF3FE6143B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HRMLApLhVJT3eOj4trwRZ/fKyibvDnr6Lg9OuX6hUX0=; b=nYqMIrL3JpzvE84oL7jT/P0Ih
	mAIRyDbxv0wLPdDYyfVNRnfKODql5dT10oFii0DOFdVixbdgegGiQxr2GLDmtk1TTYuTYDuU941Im
	y9RE5+8jqS2vWgEWtqMFqUcDLVRmOkRGuQzWOu8bRiVYsSwYCly8qi9wvByFN9H6eE+2xnJWJPFo7
	9CFFxRp3rCG0Z/NuyN+eCmXKRceoxHmehBjxfkQQkTaXrBIW/pIATMBGaCcItbNtgK7jmRy9osf33
	Iaq/HhQjVMgoBAFS7mcbdPgUIG96UXOBs5cYmACkjy1t1z+Og8KWcSkaO42gcqnqUD7CAYkK8t5Ib
	Ab6C39CEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh5LI-004xsO-1a; Thu, 13 May 2021 07:01:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh5Ky-004xnk-Rr
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 07:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=ATw62jokpw3S2/vubslMDgTOmV3VoTzaiau5RmJC0dM=; b=LBqLxIIZG9mO7S3Gi88xB/w6nD
 udu25GuOuLcxsh1SHC9sfFg7W8hyQWMz4r4OVgud2sgsB0szkiOXMXOQ6YxzgpZCQxtlDj0fL8BXH
 gL3Elqb/OtAzMbE3v1w5Pq0OXUIDNCUcjSMEz8aKOaYaoD0OnPMko5zBptrNgg+ojV2xu6sM1+VPs
 Xl5LGpq7evcbKpprHyxuEOzbe3t2mk86vjlRHCvqfbwYdTfqTUct9hTOuOJdwBFgKqkZlr9WU3trR
 Rna663nxBVmAUXkhMX3W/4FAFuWL36uQwXiMoVccvf0zWPtBhhwIQ7DryYbdDcMapR2XJ/2nGFBcY
 jTk/xG1w==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh5Kw-00B3u3-3g
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 07:00:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D70hi2099772;
 Thu, 13 May 2021 02:00:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620889243;
 bh=ATw62jokpw3S2/vubslMDgTOmV3VoTzaiau5RmJC0dM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=u/8wfn/Hy6vJeMWlpvOFGbj+vy47dZIb8kQmso0S+8EVcC9PIWuRAXdtbrL7jM50w
 mXeOAXjILIkT5YL5c780m+ZpaP+l7qfFDdvq2MLuSVNw+iSUvDSzmq61oNYIht2s58
 gJ+cSz8dQ4qv/cR/SwEYH10No3ujwGZlUa97XxBk=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D70haO129012
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 02:00:43 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 02:00:43 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 02:00:43 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D70dVO109177;
 Thu, 13 May 2021 02:00:40 -0500
Subject: Re: [PATCH 09/14] phy: cadence-torrent: Add separate functions for
 reusable code
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-10-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <9d234a02-d1f4-ab09-56e0-81676ef1bf21@ti.com>
Date: Thu, 13 May 2021 12:30:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-10-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_000046_290349_91525034 
X-CRM114-Status: GOOD (  19.27  )
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
> Torrent PHY driver currently supports single link DP configuration.
> Prepare driver to support multilink DP configurations by adding
> separate functions for common initialization sequence.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 53 +++++++++++++++--------
>  1 file changed, 35 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 69466481af26..e4dd8d1711a6 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -1472,24 +1472,11 @@ static int cdns_torrent_phy_off(struct phy *phy)
>  	return reset_control_assert(inst->lnk_rst);
>  }
>  
> -static int cdns_torrent_dp_init(struct phy *phy)
> +static void cdns_torrent_dp_common_init(struct cdns_torrent_phy *cdns_phy,
> +					struct cdns_torrent_inst *inst)
>  {
> -	unsigned char lane_bits;
> -	int ret;
> -	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> -	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
>  	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> -
> -	switch (cdns_phy->ref_clk_rate) {
> -	case CLK_19_2_MHZ:
> -	case CLK_25_MHZ:
> -	case CLK_100_MHZ:
> -		/* Valid Ref Clock Rate */
> -		break;
> -	default:
> -		dev_err(cdns_phy->dev, "Unsupported Ref Clock Rate\n");
> -		return -EINVAL;
> -	}
> +	unsigned char lane_bits;
>  
>  	cdns_torrent_dp_write(regmap, PHY_AUX_CTRL, 0x0003); /* enable AUX */
>  
> @@ -1510,8 +1497,10 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  	/* release pma_xcvr_pllclk_en_ln_*, only for the master lane */
>  	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_PLLCLK_EN, 0x0001);
>  
> -	/* PHY PMA registers configuration functions */
> -	/* Initialize PHY with max supported link rate, without SSC. */
> +	/*
> +	 * PHY PMA registers configuration functions
> +	 * Initialize PHY with max supported link rate, without SSC.
> +	 */
>  	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ)
>  		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy,
>  							cdns_phy->max_bit_rate,
> @@ -1530,6 +1519,13 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  
>  	/* take out of reset */
>  	regmap_field_write(cdns_phy->phy_reset_ctrl, 0x1);
> +}
> +
> +static int cdns_torrent_dp_start(struct cdns_torrent_phy *cdns_phy,
> +				 struct cdns_torrent_inst *inst,
> +				 struct phy *phy)
> +{
> +	int ret;
>  
>  	cdns_torrent_phy_on(phy);
>  
> @@ -1542,6 +1538,27 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  	return ret;
>  }
>  
> +static int cdns_torrent_dp_init(struct phy *phy)
> +{
> +	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> +	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
> +
> +	switch (cdns_phy->ref_clk_rate) {
> +	case CLK_19_2_MHZ:
> +	case CLK_25_MHZ:
> +	case CLK_100_MHZ:
> +		/* Valid Ref Clock Rate */
> +		break;
> +	default:
> +		dev_err(cdns_phy->dev, "Unsupported Ref Clock Rate\n");
> +		return -EINVAL;
> +	}
> +
> +	cdns_torrent_dp_common_init(cdns_phy, inst);
> +
> +	return cdns_torrent_dp_start(cdns_phy, inst, phy);
> +}
> +
>  static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
>  {
>  	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
