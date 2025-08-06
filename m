Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE585C87FCA
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 04:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWvxu0Q44BBiIAqXmOI/z1MiZ47bQ465CYaG0c93UDE=; b=e6nlIJvWpgfhi5/k7GGjYJsmCy
	onAjb/lv/n8goWh2WKVFcdFxOdaFEFS8perTaosO/NS+5ZXXfAM+URT75lj3FH7RxMaBUslUdx+K+
	q1ZpNfa34tY4Ze8LH4HsD4KWGNORpZWINry28ouHM8F3i5yjMXDFR/9WNNegs1k9yBvno70V7Q6jh
	1U92Ljds/Zd/HpcsNA5WuPOom/R2+r3Ti+Xgf3S8T+Z5qyFGEq3zUa3bfyph62YZFBsQcTpGeJ5o8
	IsXS4zzZOiv7TM2tKUakDtWbc3IbD8cYOkqwyTkmcb+2YJe8LPpHRxGHtFhNrloKzLlDNIGzsDrhs
	Q6TGf2LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujVXO-0000000EGlz-1IRH;
	Wed, 06 Aug 2025 04:14:02 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujVXL-0000000EGlc-0uV2
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 04:14:00 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5764Dq9H433309;
	Tue, 5 Aug 2025 23:13:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1754453632;
	bh=UFOsYzaDbUpzLRfMOXFVDzr3S9Ise1+WhEi/jD9Ur4k=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=umEtVZaz7qHyOmT8AeV3Typz6x4qjlfP0YAbuhXPqTc1pSjSZ2RafZrr0Uyb/d3vf
	 N93/1Y4MsUP7O/Flpgrkf79ZBp6ZWC/faRm+4SrmtR3D7mxsPQy7XJH4Ny0I1H0hLx
	 vsgKJtnZCkQNJykJ61EzlUxBniDsr+aa5Zq+To9A=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 5764Dqmk3941416
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 5 Aug 2025 23:13:52 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 5
 Aug 2025 23:13:52 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 5 Aug 2025 23:13:52 -0500
Received: from [172.24.18.25] (lt5cd2489kgj.dhcp.ti.com [172.24.18.25])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5764Dmnb2923105;
	Tue, 5 Aug 2025 23:13:49 -0500
Message-ID: <1ebb82ea-4b6c-4496-b7c0-17d4168d8ddf@ti.com>
Date: Wed, 6 Aug 2025 09:43:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drivers: phy: cadence: cdns-dphy: Enabling lower
 resolutions in dphy
To: Harikrishna Shenoy <h-shenoy@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <u.kleine-koenig@baylibre.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devarsht@ti.com>, <s-jain1@ti.com>, <u-kumar1@ti.com>
References: <20250801115311.1384313-1-h-shenoy@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250801115311.1384313-1-h-shenoy@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_211359_461378_1C857590 
X-CRM114-Status: GOOD (  14.27  )
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

Thanks Hari for this patch

On 8/1/2025 5:23 PM, Harikrishna Shenoy wrote:
> The patch enables cdns dphy for hs_clk_rate in range between

No need of 'The patch' word

> 80 Mbps to 160 Mbps as mentioned in TRM [0] by setting the
> pll_opdiv field to 16.This change enables lower resolutions
> like 640x480 at 60Hz.

If you like to reword commit message, please feel free to use below

Enable support for hs_clk_rate between 80-160 Mbps cdns dphy
as mentioned in TRM [0] .....
With update in commit message, Please use
Reviewed-by: Udit Kumar <u-kumar1@ti.com>
> [0]: https://www.ti.com/lit/zip/spruil1
> (Table 12-552. DPHY_TX_PLL_CTRL Register Field Descriptions)
>
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
> Test log: https://gist.github.com/h-shenoy/3975156baf403a0ff8dbcce5b49b2b89
>
>   drivers/phy/cadence/cdns-dphy.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index ed87a3970f83..9abed2ece9b0 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -139,7 +139,7 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>   
>   	dlane_bps = opts->hs_clk_rate;
>   
> -	if (dlane_bps > 2500000000UL || dlane_bps < 160000000UL)
> +	if (dlane_bps > 2500000000UL || dlane_bps < 80000000UL)
>   		return -EINVAL;
>   	else if (dlane_bps >= 1250000000)
>   		cfg->pll_opdiv = 1;
> @@ -149,6 +149,8 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>   		cfg->pll_opdiv = 4;
>   	else if (dlane_bps >= 160000000)
>   		cfg->pll_opdiv = 8;
> +	else if (dlane_bps >= 80000000)
> +		cfg->pll_opdiv = 16;
>   
>   	cfg->pll_fbdiv = DIV_ROUND_UP_ULL(dlane_bps * 2 * cfg->pll_opdiv *
>   					  cfg->pll_ipdiv,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
