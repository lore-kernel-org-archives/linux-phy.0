Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 458A6EB64DC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jul 2023 06:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhGWOUVDqxgPBCJ8abK4/qctBRpunMxVlLg+gkQvcn4=; b=AnPrI7F2uvui9v
	Fy9mOHwxChQz5TrTCuRTsq9eMtgkBJa/86zeWrT7Pc7e/qXlwIqmmGr/tbPrWQjMFk93uXuYOgue6
	3a4R0LAO/dhaHVqAj/me1R0Ft2/VJAKQbddPOZ9+LMq9todv64c/PC+QSDE/q/F0RVVlqsDWEa6IH
	sjHjy0bYfz+nsRScgtKVlemE0OkOI+44KUlMHA3G8qllyivtHubE90hY4wOGb9PqY6/I1PXW0InFH
	KKQ+YRa+qHN+lRVe5gE+fZVzrVgcc84K+99a5rxEhqnAmUPVt3fFThf7Pj21daxKaDSlIB5yfdAtm
	E4MKnK9v0bUtXJLxF4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKC1R-00592a-2f;
	Fri, 14 Jul 2023 06:11:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKC1O-005926-2j
	for linux-phy@lists.infradead.org;
	Fri, 14 Jul 2023 06:11:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 36E6BAhO115963;
	Fri, 14 Jul 2023 01:11:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1689315070;
	bh=2vAhJx66rHvckNcSApzgwU33k1lw4bSihtSG2sdoJWw=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=wZNOvYD5VtRWtJmT7mDU/CbY2lqeU61WOZHcxMgwI6rMCV8O++x4XgZKeMqCEn9EI
	 JON4GG+8fzsycqTz4dQ4pJ65KpoTAuCXxQjxH+h7/lsKqlOiqqSEwpaQyUz4Ty9hQq
	 lnLxwMrmQZJSrbIsfXh5+tQkx7RdAcg7FitfE/f8=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 36E6BA7t007649
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 14 Jul 2023 01:11:10 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 14
 Jul 2023 01:11:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 14 Jul 2023 01:11:09 -0500
Received: from [172.24.227.9] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 36E6B7C5112738;
	Fri, 14 Jul 2023 01:11:07 -0500
Message-ID: <c9947c45-09e8-e2e1-ea0f-6b6f2fd15594@ti.com>
Date: Fri, 14 Jul 2023 11:41:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
CC: Kishon Vijay Abraham I <kishon@kernel.org>,
        Roger Quadros
	<rogerq@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2] phy: ti: gmii-sel: Allow parent to not be syscon node
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Vinod Koul <vkoul@kernel.org>
References: <20230713200957.134480-1-afd@ti.com>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20230713200957.134480-1-afd@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_231118_986344_695955A1 
X-CRM114-Status: GOOD (  19.05  )
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



On 14/07/23 01:39, Andrew Davis wrote:
> If the parent node is not a syscon type, then fallback and check
> if we can get a regmap from our own node. This no longer forces
> us to make the parent of this node a syscon node when that might
> not be appropriate.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

> ---
> 
> Changes from v1:
>  - Rebased on v6.5-rc1
> 
>  drivers/phy/ti/phy-gmii-sel.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 6286cf25a4264..555b323f45da1 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -465,9 +465,12 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  
>  	priv->regmap = syscon_node_to_regmap(node->parent);
>  	if (IS_ERR(priv->regmap)) {
> -		ret = PTR_ERR(priv->regmap);
> -		dev_err(dev, "Failed to get syscon %d\n", ret);
> -		return ret;
> +		priv->regmap = device_node_to_regmap(node);
> +		if (IS_ERR(priv->regmap)) {
> +			ret = PTR_ERR(priv->regmap);
> +			dev_err(dev, "Failed to get syscon %d\n", ret);
> +			return ret;
> +		}
>  	}
>  
>  	ret = phy_gmii_sel_init_ports(priv);

-- 
Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
