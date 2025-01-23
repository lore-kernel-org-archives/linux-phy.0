Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F39FC02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 20:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evi1UWo2TYkHV1F7z00kRDXGkkXKt91U6KgEgVNkse4=; b=4NDL3MG6kixaA8
	4KPEQl9Y0XxDsxCvWk2hLfh0cifpHuEzfR8z516U4J7EMTjlYfY2q8zY0jnR8wPF+3QeG+P4NbuRS
	lY65wkoWb+/VgfbiHNNZ5fFR/vQLaKwsrxPo84g2PTUFosuGpacHoJqTz8TvgaCaUVEYnHQQRb/wI
	tW2qa4keokGQIf3T7jmhBpe+0E7cDMKmAaHjZk8jwvr2o9YfYCfmEcBA2R0rNQd6JswUFZG25Lf0O
	aBdD3j6QZwT7+mNZAVk3WXWCPUZ9GWYxhrnUjbCCC2RHE1/R3/UsdEuVOCIzV41YKse9HDYdt45WX
	tszj3KI0gNidlX+Mn7OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tb3Sz-0000000DCIJ-0DiV;
	Thu, 23 Jan 2025 20:06:17 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tb3Sw-0000000DCHy-2vwJ
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 20:06:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50NK69hY1231541
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 23 Jan 2025 14:06:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737662769;
	bh=oYuwtqx4a6F9C+tImobQ3bGq2hD/7a9uKAeUF4MRwSM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=NhI5IAWyvNZVElOR2kIWtHz8ao/6zLnRnTygEfOIPMwhQcC9L/Kh1BUk3R/JUNJ0S
	 lWiPICjNs5TxAPpx7/IGuxyYkltI+l1nYEUe1zbwe341tV5/0N1i0N5M1T4qMk/I4M
	 V+Eg0lDlOoql+xezQc55McjXvDsP6F9Qh/DWQiVM=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50NK69cl017887
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Jan 2025 14:06:09 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 23
 Jan 2025 14:06:09 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 23 Jan 2025 14:06:09 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50NK69i5024992;
	Thu, 23 Jan 2025 14:06:09 -0600
Date: Thu, 23 Jan 2025 14:06:09 -0600
From: Nishanth Menon <nm@ti.com>
To: Andrew Davis <afd@ti.com>, Vinod Koul <vkoul@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>, Lee
 Jones <lee@kernel.org>
Subject: Re: [PATCH] phy: ti: gmii-sel: Do not use syscon helper to build
 regmap
Message-ID: <20250123200609.mjdts4opcrrvzy2s@stunning>
References: <20250123182234.597665-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123182234.597665-1-afd@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_120614_826814_D9CE4C95 
X-CRM114-Status: GOOD (  25.17  )
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

On 12:22-20250123, Andrew Davis wrote:
> The syscon helper device_node_to_regmap() is used to fetch a regmap
> registered to a device node. It also currently creates this regmap
> if the node did not already have a regmap associated with it. This
> should only be used on "syscon" nodes. This driver is not such a
> device and instead uses device_node_to_regmap() on its own node as
> a hacky way to create a regmap for itself.
> 
> This will not work going forward and so we should create our regmap
> the normal way by defining our regmap_config, fetching our memory
> resource, then using the normal regmap_init_mmio() function.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Tested-by: Nishanth Menon <nm@ti.com>

Vinod,

This is part of the fixes TI K3 platforms boot issues reported in
https://lore.kernel.org/all/b2413460-ec8b-4c77-99b8-4c32b262439a@ti.com/
on the latest linus master v6.13-5001-gd0d106a2bd21 + linux
next-20250123

Total set of patches tested with:
https://lore.kernel.org/all/20250119182121.3956546-1-vaishnav.a@ti.com/
https://lore.kernel.org/r/20250123181726.597144-1-afd@ti.com
https://lore.kernel.org/r/20250123181913.597304-1-afd@ti.com
https://lore.kernel.org/r/20250123182059.597491-1-afd@ti.com
https://lore.kernel.org/r/20250123182234.597665-1-afd@ti.com

Could we get this routed to master as fixes asap please to get a sane 6.14?

Cc Rob and Lee

>  drivers/phy/ti/phy-gmii-sel.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index e0ca59ae31531..ff5d5e29629fa 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -424,6 +424,12 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
>  	return 0;
>  }
>  
> +static const struct regmap_config phy_gmii_sel_regmap_cfg = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +};
> +
>  static int phy_gmii_sel_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -468,7 +474,14 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  
>  	priv->regmap = syscon_node_to_regmap(node->parent);
>  	if (IS_ERR(priv->regmap)) {
> -		priv->regmap = device_node_to_regmap(node);
> +		void __iomem *base;
> +
> +		base = devm_platform_ioremap_resource(pdev, 0);
> +		if (IS_ERR(base))
> +			return dev_err_probe(dev, PTR_ERR(base),
> +					     "failed to get base memory resource\n");
> +
> +		priv->regmap = regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
>  		if (IS_ERR(priv->regmap))
>  			return dev_err_probe(dev, PTR_ERR(priv->regmap),
>  					     "Failed to get syscon\n");
> -- 
> 2.39.2
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
