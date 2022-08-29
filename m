Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63084ECAAD2
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 12:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zm+HhwzMzSaThCPKqBpdjQ+Bt9vfQfc16lj0gtj2IC0=; b=nAYEuRT6UPN/hn
	Ll4cRiiji3tTby4Nb+fDtNF2eMnZKwKa0Kra6EbLrlAWneKygOUfuhlyYAYC1Z8itioPbK5FVGcwa
	5tpNILqzgh2Lj2U74yFJAeIR8eWA/VPX8irf33ILDgWekfz09w0VGhIA8Do/+4ShEP57aUTlZuwQ4
	CStLvj5WwNctIQ2jTRGwQegN6ck5948vjL3NOP3JD4FiprNd0hlSF6IK8vMh+NRqb76FG0zfe++9u
	GbfeFrxWyARlGkgqkgFP7eXDWlqq7ggfMzVWUvR+7L3ZxvOxnpHOrRxZQwU7lT25WJ4RXDSf1lGEZ
	xT/KKjy8FfhGcADF2/8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSe7e-009k3G-Q5; Mon, 29 Aug 2022 12:44:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSe7Z-009jxL-RK
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 12:44:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6155CB80EF3;
	Mon, 29 Aug 2022 12:44:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 642AAC433D6;
	Mon, 29 Aug 2022 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661777042;
	bh=R9zzgLzZSPVV9Mhehs5l6vfcLsVsdPiUxuIz3VgSFdo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rAzOexdtwUaWalSMuHplpDo742wK//OftfNO/vfAbjOdFacGSsdXf2ZZ8/pc/ve8k
	 5KtfkksWYEInD6/3ydeEYUdTxlkV/CtkIv+uRdJMLyFiwQEsVQld508DmWYNKDCqAK
	 HDo+JbVjDRyTLrZls65r59t/tWD13itz5DdED8U6Yexe/EQgo+x4O5EYn3T3Macvv9
	 AA5miCjKNd7u8gVsaSWN2WrP8GNNsCC8ULnBreEB1MXO+jV/0qmVDpbvaqor1I9Cud
	 PFMsd2e1l03gOiRQWjoMMHj5tu0Jcic2Pnc6Ts1BdjaGufoUxSONYOEVi0+XbxTm+u
	 TtV4o/wjzeg6w==
Message-ID: <8ef8b2f8-a1c1-b277-22b1-6e951e8dfc72@kernel.org>
Date: Mon, 29 Aug 2022 15:43:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 2/2] phy: ti: gmii-sel: Add support for CPSW5G GMII SEL
 in J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: robh+dt@kernel.org, lee.jones@linaro.org, krzysztof.kozlowski@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
 dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220822065631.27933-1-s-vadapalli@ti.com>
 <20220822065631.27933-3-s-vadapalli@ti.com>
 <655c39a3-cf5f-6dd7-3c1a-61ebeae915bd@kernel.org>
 <7dd27795-11d0-3147-ed86-959ff3e89df4@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <7dd27795-11d0-3147-ed86-959ff3e89df4@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_054406_296878_BD623594 
X-CRM114-Status: GOOD (  47.57  )
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

Siddharth,

On 29/08/2022 07:53, Siddharth Vadapalli wrote:
> Hello Roger,
> 
> On 25/08/22 13:11, Roger Quadros wrote:
>> Hi Siddharth,
>>
>> On 22/08/2022 09:56, Siddharth Vadapalli wrote:
>>> Each of the CPSW5G ports in J7200 support additional modes like QSGMII.
>>> Add a new compatible for J7200 to support the additional modes.
>>>
>>> In TI's J7200, each of the CPSW5G ethernet interfaces can act as a
>>> QSGMII or QSGMII-SUB port. The QSGMII interface is responsible for
>>> performing auto-negotiation between the MAC and the PHY while the rest of
>>> the interfaces are designated as QSGMII-SUB interfaces, indicating that
>>> they will not be taking part in the auto-negotiation process.
>>>
>>> To indicate the interface which will serve as the main QSGMII interface,
>>> add a property "ti,qsgmii-main-ports", whose value indicates the
>>> port number of the interface which shall serve as the main QSGMII
>>> interface. The rest of the interfaces are then assigned QSGMII-SUB mode by
>>> default.
>>
>> Can you please describe here why you are using "ti,qsgmii-main-ports" instead
>> of "ti,qsgmii-main-port" as there can be only one main port per PHY instance?
> 
> Thank you for reviewing the patch. I am using "ports" instead of "port"
> because I plan to add support for CPSW9G on TI's J721e device in the
> future patches. CPSW9G (8 external ports) supports up to two QSGMII main
> ports. For CPSW9G, by specifying the two main ports in the device tree,
> it is possible to configure the CTRLMMR_ENETx_CTRL register for each of
> the 8 ports, with the two QSGMII main ports being configured as main
> ports in the CTRLMMR_ENETx_CTRL register and the rest of them being
> configured as sub ports. Since I will be using the same property
> "ti,qsgmii-main-ports" for CPSW9G as well, the property will be an array
> of 2 values for CPSW9G. Therefore, I am using "ports" instead of "port".
> Please let me know if this is fine.
> 

OK. Please mention this in commit message.

>>
>>>
>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>> ---
>>>  drivers/phy/ti/phy-gmii-sel.c | 40 ++++++++++++++++++++++++++++++++---
>>>  1 file changed, 37 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>>> index d0ab69750c6b..270083606b14 100644
>>> --- a/drivers/phy/ti/phy-gmii-sel.c
>>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>>> @@ -22,6 +22,12 @@
>>>  #define AM33XX_GMII_SEL_MODE_RMII	1
>>>  #define AM33XX_GMII_SEL_MODE_RGMII	2
>>>  
>>> +/* J72xx SoC specific definitions for the CONTROL port */
>>> +#define J72XX_GMII_SEL_MODE_QSGMII	4
>>> +#define J72XX_GMII_SEL_MODE_QSGMII_SUB	6
>>> +
>>> +#define PHY_GMII_PORT(n)	BIT((n) - 1)
>>> +
>>>  enum {
>>>  	PHY_GMII_SEL_PORT_MODE = 0,
>>>  	PHY_GMII_SEL_RGMII_ID_MODE,
>>> @@ -43,6 +49,7 @@ struct phy_gmii_sel_soc_data {
>>>  	u32 features;
>>>  	const struct reg_field (*regfields)[PHY_GMII_SEL_LAST];
>>>  	bool use_of_data;
>>> +	u64 extra_modes;
>>>  };
>>>  
>>>  struct phy_gmii_sel_priv {
>>> @@ -53,6 +60,7 @@ struct phy_gmii_sel_priv {
>>>  	struct phy_gmii_sel_phy_priv *if_phys;
>>>  	u32 num_ports;
>>>  	u32 reg_offset;
>>> +	u32 qsgmii_main_ports;
>>>  };
>>>  
>>>  static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
>>> @@ -88,10 +96,17 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
>>>  		gmii_sel_mode = AM33XX_GMII_SEL_MODE_MII;
>>>  		break;
>>>  
>>> +	case PHY_INTERFACE_MODE_QSGMII:
>>> +		if (!(soc_data->extra_modes & BIT(PHY_INTERFACE_MODE_QSGMII)))
>>> +			goto unsupported;
>>> +		if (if_phy->priv->qsgmii_main_ports & BIT(if_phy->id - 1))
>>> +			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII;
>>> +		else
>>> +			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII_SUB;
>>> +		break;
>>> +
>>>  	default:
>>> -		dev_warn(dev, "port%u: unsupported mode: \"%s\"\n",
>>> -			 if_phy->id, phy_modes(submode));
>>> -		return -EINVAL;
>>> +		goto unsupported;
>>>  	}
>>>  
>>>  	if_phy->phy_if_mode = submode;
>>> @@ -123,6 +138,11 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
>>>  	}
>>>  
>>>  	return 0;
>>> +
>>> +unsupported:
>>> +	dev_warn(dev, "port%u: unsupported mode: \"%s\"\n",
>>> +		 if_phy->id, phy_modes(submode));
>>> +	return -EINVAL;
>>>  }
>>>  
>>>  static const
>>> @@ -188,6 +208,13 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_am654 = {
>>>  	.regfields = phy_gmii_sel_fields_am654,
>>>  };
>>>  
>>> +static const
>>> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
>>> +	.use_of_data = true,
>>> +	.regfields = phy_gmii_sel_fields_am654,
>>> +	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
>>> +};
>>> +
>>>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>>>  	{
>>>  		.compatible	= "ti,am3352-phy-gmii-sel",
>>> @@ -209,6 +236,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
>>>  		.compatible	= "ti,am654-phy-gmii-sel",
>>>  		.data		= &phy_gmii_sel_soc_am654,
>>>  	},
>>> +	{
>>> +		.compatible	= "ti,j7200-cpsw5g-phy-gmii-sel",
>>> +		.data		= &phy_gmii_sel_cpsw5g_soc_j7200,
>>> +	},
>>>  	{}
>>>  };
>>>  MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
>>> @@ -350,6 +381,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>>  	struct device_node *node = dev->of_node;
>>>  	const struct of_device_id *of_id;
>>>  	struct phy_gmii_sel_priv *priv;
>>> +	u32 main_ports = 1;
>>>  	int ret;
>>>  
>>>  	of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
>>> @@ -363,6 +395,8 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>>  	priv->dev = &pdev->dev;
>>>  	priv->soc_data = of_id->data;
>>>  	priv->num_ports = priv->soc_data->num_ports;
>>> +	of_property_read_u32_array(node, "ti,qsgmii-main-ports", &main_ports, 1);
>>
>> of_property_read_u32_array can return error and you are not doing any sanity checks.
>> This should fail if "ti,qsgmii-main-ports" is not present or out of bounds if port mode is QSGMII.
> 
> In the scenario that the user doesn't want to use QSGMII mode, the
> property will not be mentioned in the device tree. In the phy-gmii-sel
> driver, the call to of_property_read_u32_array() will return an error
> since the optional ti,qsgmii-main-ports property doesn't exist in the
> device tree. However, the main_ports variable has already been
> initialized to 1 and in case of Non-QSGMII modes, the main_ports
> variable will not even be used. If the mode is QSGMII and the user
> forgets to mention the ti,qsgmii-main-ports property in the device tree,
> then the default value of 1 is used.
> 
> Since the of_property_read_u32_array() function doesn't overwrite
> main_ports variable if the ti,qsgmii-main-ports property is not present
> in the device tree, the value of main_ports will continue to remain 1
> even in the case where of_property_read_u32_array() errors out.
> 
> In the other scenario where the user mentions a value that is smaller or
> greater than the allowed value for "ti,qsgmii-main-ports" property, I
> have added bindings to ensure that make dtbs_check fails. This will
> enforce the bounds on the property.

This I'm not sure about. dtbs_check is not always run at build time and we cannot
depend on that.

> 
> For the above reasons, I think that the return value of the call to
> of_property_read_u32_array() can be safely ignored, and the value of
> main_ports doesn't need to be validated within the driver as it is being
> enforced in the bindings.
> 
>>
>> How is this going to scale if you are going to have multiple main ports?
>> Let's say you increase it to 2 in the future. won't this break with -EOVERFLOW for older
>> DTs where you had only 1 u32.
> 
> For multiple main ports (like CPSW9G for example), I had planned to add
> an IF-ELSE condition to check the compatible (I plan to add a new
> compatible for J721e which uses CPSW9G) and then call
> of_property_read_u32_array() with either 1 or 2 values to be read based
> on the compatible.

In that case please use of_property_read_u32 for the case where you know only there is only 1 value.

> 
> Please let me know if you have a suggestion for a better way to
> implement this.
> 
> Regards,
> Siddharth.

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
