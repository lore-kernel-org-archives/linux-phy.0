Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46278C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joeK2GvcJDBCHhlOGzEQIt1buK7uYGOBkyfb4riy46Y=; b=H5Q76u4TzkNt/E
	kx4m3FrfMdqBnRqKgxsPViM5T49JWfuUIiZjH7qLKEcWYaTR9dcs+DHQvmJEs7NktP5zrPTpUxead
	J+H/vBBNvi9xW9QLUE9/yWQ81/aiBl9P1x7bQv3r1A+1fBsY4jnTQMfA7IA+RvMoo63XUIHPZCVC1
	HhftbJ7+B8XAvxw+aDZpyYQ3YFz8njnyXgSF51aeVlojw+2hjUY5c8wX8gVNSrBgNe+NYmS+dfyrP
	+Dyp7+N0VM/9lMYk5/tNF+eXPfmVDFV1AqEWOCx02dLEQBZhJhr+Ysx1sMoxqtiPQVHDGnpIPNWpo
	Efle+cush6UhsTe+uwTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooMos-00GjwZ-Le; Fri, 28 Oct 2022 10:42:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooMog-00GjtA-HN; Fri, 28 Oct 2022 10:42:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BE1366273F;
	Fri, 28 Oct 2022 10:42:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7096BC433C1;
	Fri, 28 Oct 2022 10:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666953741;
	bh=IjvP755jdlN+wQbNhyP6fWLphkrF4kx+6O7M2bcEjQk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cejt1lOqfNG2jD5H0VWS5ra9nvN3U8LVsf6RqncXJ+mHVABOVX8rHiZU3gR/V0ewX
	 7S9Sc0EM3a1Gwv4gGpa15ImgcL05jTiqAicn4LmRBlckQIA/VAdbBKMkQjaN0S8ag3
	 WaHu7qDKScQQ4pD/LlthzVgull7uiCRkoNZ+yv7tpecyXaNedhNiry+6Bavol1rwzv
	 j4UykbljPtrDhx1RSeFXNAFwCTKOAj7BD/4iV9M9GO9098mRZUiySwxwjd+ndmrZVD
	 m3En2nVhIr/HRjLXgU1/JZifEXPmWuaxLO9rD4/BhHxPlkc5lpdCA22GsrOhfJYWsB
	 UcCbLvvAxHnXw==
Message-ID: <7f85cf3e-e04d-c4b6-46c8-7125d76cd599@kernel.org>
Date: Fri, 28 Oct 2022 13:42:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 2/3] phy: ti: gmii-sel: Update methods for fetching and
 using qsgmii main port
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: robh+dt@kernel.org, lee@kernel.org, krzysztof.kozlowski@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20221026074532.109220-1-s-vadapalli@ti.com>
 <20221026074532.109220-3-s-vadapalli@ti.com>
 <ad852357-98a3-b8b9-e9eb-d65c28947ed5@kernel.org>
 <73df3de9-7f41-1164-b492-b96d6e73d306@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <73df3de9-7f41-1164-b492-b96d6e73d306@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_034222_688603_0A289EE5 
X-CRM114-Status: GOOD (  26.41  )
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



On 28/10/2022 13:32, Siddharth Vadapalli wrote:
> Hello Roger,
> 
> On 28/10/22 15:53, Roger Quadros wrote:
>> Hi Siddharth,
>>
>> On 26/10/2022 10:45, Siddharth Vadapalli wrote:
>>> The number of QSGMII main ports are specific to the device. TI's J7200 for
>>> which the QSGMII main port property is fetched from the device-tree has
>>> only one QSGMII main port. However, devices like TI's J721e support up to
>>> two QSGMII main ports. Thus, the existing methods for fetching and using
>>> the QSGMII main port are not scalable.
>>>
>>> Update the existing methods for handling the QSGMII main ports and its
>>> associated requirements to make it scalable for future devices.
>>>
>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>> ---
>>>  drivers/phy/ti/phy-gmii-sel.c | 29 ++++++++++++++++++++++-------
>>>  1 file changed, 22 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>>> index 0bcfd6d96b4d..c8f30d2e1f46 100644
>>> --- a/drivers/phy/ti/phy-gmii-sel.c
>>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>>> @@ -50,6 +50,7 @@ struct phy_gmii_sel_soc_data {
>>>  	const struct reg_field (*regfields)[PHY_GMII_SEL_LAST];
>>>  	bool use_of_data;
>>>  	u64 extra_modes;
>>> +	u32 num_qsgmii_main_ports;
>>>  };
>>>  
>>>  struct phy_gmii_sel_priv {
>>> @@ -213,6 +214,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
>>>  	.use_of_data = true,
>>>  	.regfields = phy_gmii_sel_fields_am654,
>>>  	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
>>> +	.num_ports = 4,
>>> +	.num_qsgmii_main_ports = 1,
>>>  };
>>>  
>>>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>>> @@ -378,11 +381,13 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
>>>  static int phy_gmii_sel_probe(struct platform_device *pdev)
>>>  {
>>>  	struct device *dev = &pdev->dev;
>>> +	const struct phy_gmii_sel_soc_data *soc_data;
>>>  	struct device_node *node = dev->of_node;
>>>  	const struct of_device_id *of_id;
>>>  	struct phy_gmii_sel_priv *priv;
>>>  	u32 main_ports = 1;
>>>  	int ret;
>>> +	u32 i;
>>>  
>>>  	of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
>>>  	if (!of_id)
>>> @@ -394,16 +399,26 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>>  
>>>  	priv->dev = &pdev->dev;
>>>  	priv->soc_data = of_id->data;
>>> +	soc_data = priv->soc_data;
>>>  	priv->num_ports = priv->soc_data->num_ports;
>>> -	of_property_read_u32(node, "ti,qsgmii-main-ports", &main_ports);
>>> +	priv->qsgmii_main_ports = 0;
>>> +
>>>  	/*
>>> -	 * Ensure that main_ports is within bounds. If the property
>>> -	 * ti,qsgmii-main-ports is not mentioned, or the value mentioned
>>> -	 * is out of bounds, default to 1.
>>> +	 * Based on the compatible, try to read the appropriate number of
>>> +	 * QSGMII main ports from the "ti,qsgmii-main-ports" property from
>>> +	 * the device-tree node.
>>>  	 */
>>> -	if (main_ports < 1 || main_ports > 4)
>>> -		main_ports = 1;
>>> -	priv->qsgmii_main_ports = PHY_GMII_PORT(main_ports);
>>> +	for (i = 0; i < soc_data->num_qsgmii_main_ports; i++) {
>>> +		of_property_read_u32_index(node, "ti,qsgmii-main-ports", i, &main_ports);
>>> +		/*
>>> +		 * Ensure that main_ports is within bounds.
>>> +		 */
>>> +		if (main_ports < 1 || main_ports > soc_data->num_ports) {
>>> +			dev_err(dev, "Invalid qsgmii main port provided\n");
>>
>> nit: This message is a bit misleading if the property does not exist in DT.
>>
>> How about just "Invalid ti,qsgmii-main-ports"
> 
> Thank you for reviewing the patch. The variable "main_ports" has been
> initialized to 1 at the top. Thus, the only way the error condition is
> entered is if "ti,qsgmii-main-ports" is mentioned in the device-tree
> with an invalid value. If "ti,qsgmii-main-ports" is not mentioned in the
> device-tree, then "main_ports" continues being 1, since the function
> "of_property_read_u32_index()" does not modify "main_ports" if
> "ti,qsgmii-main-ports" is not present in the device-tree. Thus, in this
> case, the error condition isn't reached.

You are right. No need to change the message in that case.

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
