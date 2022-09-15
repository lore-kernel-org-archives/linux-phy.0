Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD0EECAAD3
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 06:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HutL3C7Ei6ESOjXcbJD1q5oUSuoVI+FTHueQpOzqtCA=; b=rAp022NA+jYKOU
	D85IwaY0+WRWB6P4LEXaQ69E0Q5N7RJAuffPtgoOpaPtDFjZo66g7xQxz8PjkOlactwHPdE+qmy1z
	pXouCxpUCZkrzZUeCSXYIvGikdRhv8skvU0BT4atXBtChw0rYrex0KyqRfOhF1W2/5JsYe0zc/Umg
	ku/cySZy5qapxDK8mAkxdIUtCQrMxbieFhP1HWoHN/Gc1f/MPj6gried6qlQ12U7Usn7iBeqs8KR5
	sLsf80YQa5mcjHE4CRfq3fUS3dIqbSwTmDLUKF9SuT8cIb6NWiXwMYcUuWMFAI5JNsrP3I07FToZw
	4zVjPYjG/+JQUxBNqvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYiEC-001zr8-BW; Thu, 15 Sep 2022 06:20:00 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYiE0-001zkm-6P; Thu, 15 Sep 2022 06:19:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28F6JgKZ080619;
	Thu, 15 Sep 2022 01:19:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1663222782;
	bh=j/00PjYVqUZW6pY/LRc0/xTw2zanbwYMcCDvuOddwzU=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=Ottj6VqNfd1sEgwJ4t9zIBtp+TgTaa/1HZmrfgzEUNbVFIu+Yy7zF6gk/m8Je4W4d
	 d9B9uFYTVkXmgU69OPm0vk3h/MKJQlhsHRoT7A/fu9Kx8B3qFQYgq7qjjLFAYQRSGb
	 IXIwrqGpLbjasUoMbuksKamzYREP95KsRILWtv64=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28F6JgRM085529
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Sep 2022 01:19:42 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 15
 Sep 2022 01:19:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 15 Sep 2022 01:19:41 -0500
Received: from [10.24.69.241] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28F6JbNQ011013;
	Thu, 15 Sep 2022 01:19:37 -0500
Message-ID: <cc3d140a-d26e-3227-e7d6-14430cdbff8c@ti.com>
Date: Thu, 15 Sep 2022 11:49:36 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <sjakhade@cadence.com>,
        <s-vadapalli@ti.com>
Subject: Re: [PATCH 3/6] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in
 J721e
Content-Language: en-US
To: Roger Quadros <rogerq@kernel.org>
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-4-s-vadapalli@ti.com>
 <dfb88c31-b6ae-32d4-2b8a-db6027ed19c8@kernel.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <dfb88c31-b6ae-32d4-2b8a-db6027ed19c8@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_231948_354084_20660374 
X-CRM114-Status: GOOD (  31.51  )
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

Hello Roger,

On 14/09/22 17:04, Roger Quadros wrote:
> Hi Siddharth,
> 
> On 14/09/2022 12:39, Siddharth Vadapalli wrote:
>> Each of the CPSW9G ports in J721e support additional modes like QSGMII.
>> Add a new compatible for J721e to support the additional modes.
>>
>> In TI's J721e, each of the CPSW9G ethernet interfaces can act as a
>> QSGMII main or QSGMII-SUB port. The QSGMII main interface is responsible
>> for performing auto-negotiation between the MAC and the PHY while the rest
>> of the interfaces are designated as QSGMII-SUB interfaces, indicating that
>> they will not be taking part in the auto-negotiation process.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  drivers/phy/ti/phy-gmii-sel.c | 47 +++++++++++++++++++++++++++--------
>>  1 file changed, 37 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>> index f0b2ba7a9c96..fdb1a7db123d 100644
>> --- a/drivers/phy/ti/phy-gmii-sel.c
>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>> @@ -223,6 +223,13 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
>>  	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
>>  };
>>  
>> +static const
>> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
>> +	.use_of_data = true,
>> +	.regfields = phy_gmii_sel_fields_am654,
>> +	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
>> +};
>> +
>>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>>  	{
>>  		.compatible	= "ti,am3352-phy-gmii-sel",
>> @@ -248,6 +255,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
>>  		.compatible	= "ti,j7200-cpsw5g-phy-gmii-sel",
>>  		.data		= &phy_gmii_sel_cpsw5g_soc_j7200,
>>  	},
>> +	{
>> +		.compatible	= "ti,j721e-cpsw9g-phy-gmii-sel",
>> +		.data		= &phy_gmii_sel_cpsw9g_soc_j721e,
>> +	},
>>  	{}
>>  };
>>  MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
>> @@ -389,7 +400,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>  	struct device_node *node = dev->of_node;
>>  	const struct of_device_id *of_id;
>>  	struct phy_gmii_sel_priv *priv;
>> -	u32 main_ports = 1;
>> +	u32 main_ports[2] = {1, 1};
>>  	int ret;
>>  
>>  	of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
>> @@ -403,15 +414,31 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>  	priv->dev = &pdev->dev;
>>  	priv->soc_data = of_id->data;
>>  	priv->num_ports = priv->soc_data->num_ports;
>> -	of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports);
>> -	/*
>> -	 * Ensure that main_ports is within bounds. If the property
>> -	 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
>> -	 * is out of bounds, default to 1.
>> -	 */
>> -	if (main_ports < 1 || main_ports > 4)
>> -		main_ports = 1;
>> -	priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports);
>> +	/* Differentiate between J7200 CPSW5G and J721e CPSW9G */
>> +	if (of_device_is_compatible(node, "ti,j7200-cpsw5g-phy-gmii-sel") > 0) {
> 
> Why not just "if (of_device_is_compatible())" ?

Thank you for reviewing the patch. I will fix this in the v2 series.

> 
>> +		of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports[0]);
>> +		/*
>> +		 * Ensure that main_ports is within bounds. If the property
>> +		 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
>> +		 * is out of bounds, default to 1.
>> +		 */
>> +		if (main_ports[0] < 1 || main_ports[0] > 4)
>> +			main_ports[0] = 1;
> 
> how about printing this issue with dev_err()?

I agree that using dev_err() instead of defaulting to a value is a
better choice here. I had initially planned on defaulting to a value
since this check is a part of the probe function and I had thought that
the phy-mode is not yet known at this point. However, looking at it
again, for the special case where the property "ti,qsgmii-main-ports" is
mentioned in the devicetree node, it is possible to know with certainty
that QSGMII mode is intended and a wrong value has been provided in the
devicetree node. I will add dev_err() in the v2 series, instead of
defaulting to 1 if the check fails.

For the other scenario where "ti,qsgmii-main-ports" is not mentioned in
the devicetree node, I think that defaulting to 1 would be the correct
choice since the intended phy-mode is not yet known at this point.

> 
>> +		priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports[0]);
>> +	} else if (of_device_is_compatible(node, "ti,j721e-cpsw9g-phy-gmii-sel") > 0) {
>> +		of_property_read_u32_array(node, "ti,qsgmii-main-ports", &main_ports[0], 2);
>> +		/*
>> +		 * Ensure that main_ports is within bounds. If the property
>> +		 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
>> +		 * is out of bounds, default to 1.
>> +		 */
>> +		if (main_ports[0] < 1 || main_ports[0] > 8)
>> +			main_ports[0] = 1;
>> +		if (main_ports[1] < 1 || main_ports[1] > 8)
>> +			main_ports[1] = 1;
>> +		priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports[0]);
>> +		priv->qsgmii_main_ports |= PHY_GMII_PORT(main_ports[1]);
>> +	}
> 
> The whole if/else logic can be got rid of if you store num_qsgmii_main_ports in priv data structure
> after obtaining it from of_data.
> 
> Then all the above reduces to
> 	for (i = 0; i < priv->num_qsgmii_main_ports; i++) {
> 		if (main_ports[i] ...)
> 	}
> 
> It will also make it very easy to scale later on for future platforms.

Thank you for the suggestion. I will add the variable "u32
num_qsgmii_main_ports" in "struct phy_gmii_sel_soc_data" and set its
value to 1 for the "phy_gmii_sel_cpsw5g_soc_j7200" compatible and to 2
for the "phy_gmii_sel_cpsw9g_soc_j721e" compatible. I will implement
this in the v2 series.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
