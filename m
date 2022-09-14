Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4339FECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 11:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6x/GOHBne1nnCEGg7gCwRkQDJmBWegLOnkQDK7yq4c=; b=adrTF/b1h7Db5X
	HQdqy4ERNW26LVknl+PmY2KYJa1lx9kZoZxlsTykeaEEYn8s15dLDLjTCTB8r0H022zwrBD1KrM+C
	IH1WHAO0xPw8iVIGOeFXfSKR2S3ukgc2vtm3AlxwyPJQyAk746XHywRJVsNZDRh11ZudqqkdGa83w
	XDclqdT0yXFD1+3dyEgF3ljrQgG4Ldl+Cj+LDxCxmTunKd7uleyRt/MTY66eH6Funk/ZMY3EYs5nH
	aDQ+JVu/8+8uAybFPaVGO3MyxlSbLmwc+PBQZDdOGrXY3sQgscT7+u48poGRJM7Gnyyn05mZl6i0N
	SY+CpugoRQaJ/mg9b9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYQfj-00GBaG-Dc; Wed, 14 Sep 2022 11:35:15 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYQfW-00GBIb-Mq; Wed, 14 Sep 2022 11:35:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 94383B8123D;
	Wed, 14 Sep 2022 11:34:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53CC9C433D6;
	Wed, 14 Sep 2022 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663155296;
	bh=ia0UlyWpO81OYMhvG9ZBvO4fqlKADUMRg3JooXCzaEE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ftbhB4eyx3LI1ZBtv6n5iIvxduLHIGz14kJAJ4ZyNVjzc8ovdk1iBxIU5DRFMsA82
	 WVi7hEjm/6vD9UKR2meEvMT9ookNF5ZS1jjyRew/q7XVvqSuUjLYI/S0yHoqLtvVTP
	 EJxLv0zkmpl8D9SxMoJTZSp/Iv69A3B19TrWGMSOZ1od3kDwS+9bj8kkOaQB3zrOiv
	 Ab/RwC5+GZeVNwdkrxZwRxK4pFbE498Tl6bcZ35a2YroeyRUgh1hSujuJUIot+RANv
	 i08vZAhadrvWb5DkK111W88ZfMB6YmrVUyCFqNVww+uDlnpn/THPcaOaV5xGOOYlno
	 tpB8SyXfQbh3g==
Message-ID: <dfb88c31-b6ae-32d4-2b8a-db6027ed19c8@kernel.org>
Date: Wed, 14 Sep 2022 14:34:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/6] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in
 J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
 dan.carpenter@oracle.com, grygorii.strashko@ti.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-4-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20220914093911.187764-4-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_043503_105280_AC835E3A 
X-CRM114-Status: GOOD (  26.78  )
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

Hi Siddharth,

On 14/09/2022 12:39, Siddharth Vadapalli wrote:
> Each of the CPSW9G ports in J721e support additional modes like QSGMII.
> Add a new compatible for J721e to support the additional modes.
> 
> In TI's J721e, each of the CPSW9G ethernet interfaces can act as a
> QSGMII main or QSGMII-SUB port. The QSGMII main interface is responsible
> for performing auto-negotiation between the MAC and the PHY while the rest
> of the interfaces are designated as QSGMII-SUB interfaces, indicating that
> they will not be taking part in the auto-negotiation process.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 47 +++++++++++++++++++++++++++--------
>  1 file changed, 37 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index f0b2ba7a9c96..fdb1a7db123d 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -223,6 +223,13 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
>  	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
>  };
>  
> +static const
> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
> +	.use_of_data = true,
> +	.regfields = phy_gmii_sel_fields_am654,
> +	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
> +};
> +
>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>  	{
>  		.compatible	= "ti,am3352-phy-gmii-sel",
> @@ -248,6 +255,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
>  		.compatible	= "ti,j7200-cpsw5g-phy-gmii-sel",
>  		.data		= &phy_gmii_sel_cpsw5g_soc_j7200,
>  	},
> +	{
> +		.compatible	= "ti,j721e-cpsw9g-phy-gmii-sel",
> +		.data		= &phy_gmii_sel_cpsw9g_soc_j721e,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
> @@ -389,7 +400,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  	struct device_node *node = dev->of_node;
>  	const struct of_device_id *of_id;
>  	struct phy_gmii_sel_priv *priv;
> -	u32 main_ports = 1;
> +	u32 main_ports[2] = {1, 1};
>  	int ret;
>  
>  	of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
> @@ -403,15 +414,31 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  	priv->dev = &pdev->dev;
>  	priv->soc_data = of_id->data;
>  	priv->num_ports = priv->soc_data->num_ports;
> -	of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports);
> -	/*
> -	 * Ensure that main_ports is within bounds. If the property
> -	 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
> -	 * is out of bounds, default to 1.
> -	 */
> -	if (main_ports < 1 || main_ports > 4)
> -		main_ports = 1;
> -	priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports);
> +	/* Differentiate between J7200 CPSW5G and J721e CPSW9G */
> +	if (of_device_is_compatible(node, "ti,j7200-cpsw5g-phy-gmii-sel") > 0) {

Why not just "if (of_device_is_compatible())" ?

> +		of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports[0]);
> +		/*
> +		 * Ensure that main_ports is within bounds. If the property
> +		 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
> +		 * is out of bounds, default to 1.
> +		 */
> +		if (main_ports[0] < 1 || main_ports[0] > 4)
> +			main_ports[0] = 1;

how about printing this issue with dev_err()?

> +		priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports[0]);
> +	} else if (of_device_is_compatible(node, "ti,j721e-cpsw9g-phy-gmii-sel") > 0) {
> +		of_property_read_u32_array(node, "ti,qsgmii-main-ports", &main_ports[0], 2);
> +		/*
> +		 * Ensure that main_ports is within bounds. If the property
> +		 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
> +		 * is out of bounds, default to 1.
> +		 */
> +		if (main_ports[0] < 1 || main_ports[0] > 8)
> +			main_ports[0] = 1;
> +		if (main_ports[1] < 1 || main_ports[1] > 8)
> +			main_ports[1] = 1;
> +		priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports[0]);
> +		priv->qsgmii_main_ports |= PHY_GMII_PORT(main_ports[1]);
> +	}

The whole if/else logic can be got rid of if you store num_qsgmii_main_ports in priv data structure
after obtaining it from of_data.

Then all the above reduces to
	for (i = 0; i < priv->num_qsgmii_main_ports; i++) {
		if (main_ports[i] ...)
	}

It will also make it very easy to scale later on for future platforms.

>  
>  	priv->regmap = syscon_node_to_regmap(node->parent);
>  	if (IS_ERR(priv->regmap)) {

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
