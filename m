Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F29C87FD1
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNK8o5wcsa0YEAO/fejNP4oDpYZ6YcUErvZ/7kpzt48=; b=bDmzhKNMGWdf33
	YYRixp41/8af4VoVbvYpRkZAW9j42qkmtxClkBriWA2cYvwVME1dvtowsPH1ng+J1GK1CeUVZtEc5
	2wEO/0/tmygiQqSQcJ5j6zBeDBtaVl/LJX6K4QiOdWfKrOAcvPGCV5dbFEYTYfg99C6E26QivPOMv
	nVOii9g9DdANePjNTeAOQs4RbH6d1SiRTQNW0VJRHQoquGrIWIK1V9VmpQKVWnL6atKzitzY6ogvm
	TWFmZn6gAc9RcBNTPe/r0PeyXDcGW2tC8xdJ4S9U/vbVU1VrsJpNmAGyrYadLlHhj4dupuio3YQxq
	UUwooMll+GjLHCX93LTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujX7c-0000000EMUB-3pjV;
	Wed, 06 Aug 2025 05:55:32 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujX7Z-0000000EMTn-3CA5
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 05:55:31 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5765tOjD052489;
	Wed, 6 Aug 2025 00:55:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1754459724;
	bh=gcuSVn9btBKHc65kLz4H5AYTIgr2bH7AoR+0HbNH/CM=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=ukV00SyLTfHvl3tmbh2Hvkaq76gjpkBqzVcR57VB8EDfaOpn1Kgjv+7SO9FaKDSEn
	 X9Z4wcB0ugHpRv00Rgd7aWcdbBWb1wJjJ0jzABdrAfQsJYXenNfrpkOLVtolWREHN1
	 QUCb9skmabje6lwSW4pQe2+mqoXQQRE1ptWCOb1M=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 5765tOUn2860820
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 6 Aug 2025 00:55:24 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 6
 Aug 2025 00:55:23 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 6 Aug 2025 00:55:23 -0500
Received: from [10.249.145.16] ([10.249.145.16])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5765tKDV3348142;
	Wed, 6 Aug 2025 00:55:21 -0500
Message-ID: <385d9185-e187-48c2-9854-10cdd98d2f1b@ti.com>
Date: Wed, 6 Aug 2025 11:25:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drivers: phy: cadence: cdns-dphy: Enable lower
 resolutions in dphy
To: Harikrishna Shenoy <h-shenoy@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <u.kleine-koenig@baylibre.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <u-kumar1@ti.com>, <s-jain1@ti.com>
References: <20250806052650.429767-1-h-shenoy@ti.com>
Content-Language: en-US
From: devarsh <devarsht@ti.com>
In-Reply-To: <20250806052650.429767-1-h-shenoy@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_225529_895965_0D2B54CC 
X-CRM114-Status: GOOD (  13.80  )
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

On 06/08/25 10:56, Harikrishna Shenoy wrote:
> Enable support for hs_clk_rate between 80-160 Mbps cdns dphy

Enable support for data lane rates between 80-160 Mbps

> as mentioned in TRM [0] by setting the pll_opdiv field to 16.
> This change enables lower resolutions like 640x480 at 60Hz.
> 
> [0]: https://www.ti.com/lit/zip/spruil1
> (Table 12-552. DPHY_TX_PLL_CTRL Register Field Descriptions)
> 
> Reviewed-by: Udit Kumar <u-kumar1@ti.com>
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>

With suggested change,
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>

Regards
Devarsh
> ---
> Changes in v2:
> - Updated commit message and title.
> - Added Reviewed-by tag.
> - Link to v1: https://lore.kernel.org/all/1ebb82ea-4b6c-4496-b7c0-17d4168d8ddf@ti.com/
> 
> Test log: https://gist.github.com/h-shenoy/3975156baf403a0ff8dbcce5b49b2b89
> 
>  drivers/phy/cadence/cdns-dphy.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index ed87a3970f83..9abed2ece9b0 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -139,7 +139,7 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>  
>  	dlane_bps = opts->hs_clk_rate;
>  
> -	if (dlane_bps > 2500000000UL || dlane_bps < 160000000UL)
> +	if (dlane_bps > 2500000000UL || dlane_bps < 80000000UL)
>  		return -EINVAL;
>  	else if (dlane_bps >= 1250000000)
>  		cfg->pll_opdiv = 1;
> @@ -149,6 +149,8 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>  		cfg->pll_opdiv = 4;
>  	else if (dlane_bps >= 160000000)
>  		cfg->pll_opdiv = 8;
> +	else if (dlane_bps >= 80000000)
> +		cfg->pll_opdiv = 16;
>  
>  	cfg->pll_fbdiv = DIV_ROUND_UP_ULL(dlane_bps * 2 * cfg->pll_opdiv *
>  					  cfg->pll_ipdiv,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
