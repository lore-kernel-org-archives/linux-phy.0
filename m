Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FF3C8303C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 09:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OkG6lFrJxLGXN2PNtcWO5l9Rr0InTzR8aO2RINsRRA=; b=QsTBsGbzI0C7kx
	DU9pmk2RNfOOJ9SvqQzh8/43m1eqU1ROmDDAc5rgItA8DluUe5wibPmfJBUgjHB8Qc5hC8err0jGs
	k/qhlpaag65zYJtLM/irmfKFllwWIUuCUva60XzH85KC3FzWVDsyxe+1HczlVhki8OD282hkzthLa
	YGoDn4UG+/WBAqrzCsF0+h3LFvQXq4l6J7E3gLR0RG4Y1ku5sIDqRdFTTJd0MHmYGI3gZZbVguADv
	9XlQqfTdDXPdtk95mTTLrsNa8ZQjomAEBhdHrV1Qe9xlh1tIWGd7Zc2S+yTmZALhdKHS6opZ8Z8tW
	s6aS6KaHLKtRci+sCRcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua9c4-0000000EEzI-3rWc;
	Fri, 11 Jul 2025 09:00:12 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8sS-0000000E60X-25EN
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 08:13:05 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56B8Cgee1984752;
	Fri, 11 Jul 2025 03:12:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752221562;
	bh=WMD3xrgiF98me+Yp3/1SVavZPEcDUvxBFb64BI/zS2w=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=P32IEVOyFAD8NZJz9gZyCjxXBR4MF9E8XCNrJ3VTWPqXR+a+tZNRbATgglGDDBqj7
	 BP+mvEd9w7r/CMoBxuwFWupEgf7iMndyTUiUK+x2nG+DWdWddJIdWEt6KtvDRWksWz
	 SKNv9ynD6HGEk3a0ZY+CCGFeeXK6WTTiQBjhVozk=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56B8Cg1J126244
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 11 Jul 2025 03:12:42 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 11
 Jul 2025 03:12:41 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 11 Jul 2025 03:12:41 -0500
Received: from [172.24.227.12] (hkshenoy.dhcp.ti.com [172.24.227.12])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56B8CbQ33138235;
	Fri, 11 Jul 2025 03:12:38 -0500
Message-ID: <c2576c2f-2e19-40e8-bfea-27cf0acdc686@ti.com>
Date: Fri, 11 Jul 2025 13:42:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: cadence: cdns-dphy: Update calibration wait
 time for startup state machine
To: Devarsh Thakkar <devarsht@ti.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <j-choudhary@ti.com>,
        "Shenoy,
 Harikrishna" <h-shenoy@ti.com>
References: <20250704125915.1224738-1-devarsht@ti.com>
 <20250704125915.1224738-3-devarsht@ti.com>
Content-Language: en-US
From: Harikrishna Shenoy <a0512644@ti.com>
In-Reply-To: <20250704125915.1224738-3-devarsht@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_011304_627550_D336066F 
X-CRM114-Status: GOOD (  16.96  )
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

Hi Devarsh,

Thank you for the patch.

On 04/07/25 18:29, Devarsh Thakkar wrote:
> Do read-modify-write so that we re-use the characterized reset value as
> specified in TRM [1] to program calibration wait time which defines number
> of cycles to wait for after startup state machine is in bandgap enable
> state.
>
> This fixes PLL lock timeout error faced while using RPi DSI Panel on TI's
> AM62L and J721E SoC since earlier calibration wait time was getting
> overwritten to zero value thus failing the PLL to lockup and causing
> timeout.
>
> [1] AM62P TRM (Section 14.8.6.3.2.1.1 DPHY_TX_DPHYTX_CMN0_CMN_DIG_TBIT2):
> Link: https://www.ti.com/lit/pdf/spruj83
>
> Cc: stable@vger.kernel.org
> Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>


Tested-by: Harikrishna Shenoy <h-shenoy@ti.com>


> ---
> V4: No change
> V3:
> - Do read-modify-write to preserve reset value for calibration wait
>    time
> V2:
> Introduced this as as separate patch
>
>   drivers/phy/cadence/cdns-dphy.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index da8de0a9d086..24a25606996c 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -30,6 +30,7 @@
>   
>   #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
>   #define DPHY_CMN_SSM_EN			BIT(0)
> +#define DPHY_CMN_SSM_CAL_WAIT_TIME	GENMASK(8, 1)
>   #define DPHY_CMN_TX_MODE_EN		BIT(9)
>   
>   #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
> @@ -410,7 +411,8 @@ static int cdns_dphy_power_on(struct phy *phy)
>   	writel(reg, dphy->regs + DPHY_BAND_CFG);
>   
>   	/* Start TX state machine. */
> -	writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
> +	reg = readl(dphy->regs + DPHY_CMN_SSM);
> +	writel((reg & DPHY_CMN_SSM_CAL_WAIT_TIME) | DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
>   	       dphy->regs + DPHY_CMN_SSM);
>   
>   	ret = cdns_dphy_wait_for_pll_lock(dphy);
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
