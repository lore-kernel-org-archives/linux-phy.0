Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40BC2C38145
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 05:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tpgdgGq7TubF3WmZ+lHMmOTAfu6N/nvu+2UwJJEl5Q=; b=DLQBe6dhMxS1RE
	ir9/wDFRv2Vq/Vep+PUNNP8ekWxXE6bZbHIJvppJx4QfIkjVHhSJHhmaP5O2YjsCfDcDNn5g87Bzh
	QDSqAFPvJwngoXqU6FyszjGBnQH7UaK9eIhL6TN5FeRmYkaojyn7sTHQHqphwNbYjdMJB4snNJupu
	x5xpQi+4tQwz1orlInYRpVb8R7vSsCJXQNIQQCnt1Ui+9VUZKGmfgO9JV4blQfoVqTBE5eaOATNdy
	rfTpGYaczyjzByHC/rZVcAkIJOQfs5SA9pdxaXnIC2nJ4K9JDTM+x54lUYF6oiy+KsuUhkgj1rDyx
	KRtaj3sDk/69SOhB+e5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVQjx-009WKK-Bc; Tue, 06 Sep 2022 05:03:13 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVQjs-009WCV-MT
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 05:03:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28652scP115894;
	Tue, 6 Sep 2022 00:02:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662440574;
	bh=lad9PYHCFTX9rpN54N6reSxPPXK1wvxB4OEOct3iU9E=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=nFLOhv+cqgOi8Yh/EkUDnSumBp3Kot3PMmMDZRrklHKUjJct+tWsLl5Rj4T/OqeUe
	 GK8I1aI0kM7ebRr7nb9bw2TRNDoVC2jPYZnJtU9tQTIn/9xma+6nryfmnOG6T1iaEd
	 vsVS6io10zD7zltTKaF2m0YhWCXxr0oGd9WD6pRc=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28652sCw125777
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 6 Sep 2022 00:02:54 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 6 Sep
 2022 00:02:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 6 Sep 2022 00:02:54 -0500
Received: from [10.24.69.241] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28652n2V028471;
	Tue, 6 Sep 2022 00:02:50 -0500
Message-ID: <dfa9e613-054e-cffc-747f-27842e825cc8@ti.com>
Date: Tue, 6 Sep 2022 10:32:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20220901085506.138633-1-s-vadapalli@ti.com>
 <20220901085506.138633-2-s-vadapalli@ti.com>
 <4b681c03-7f5a-0234-2276-316e0bad1de5@linaro.org>
 <44339382-c4e2-26db-de5d-263ae5a585b8@ti.com>
 <4e61b63b-74ac-1682-968f-17e5d8db7ce6@linaro.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <4e61b63b-74ac-1682-968f-17e5d8db7ce6@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_220308_973151_F36B389F 
X-CRM114-Status: GOOD (  28.28  )
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

Hello Krzysztof,

On 05/09/22 18:39, Krzysztof Kozlowski wrote:
> On 02/09/2022 08:09, Siddharth Vadapalli wrote:
>> Hello Krzysztof,
>>
>> On 01/09/22 20:51, Krzysztof Kozlowski wrote:
>>> On 01/09/2022 11:55, Siddharth Vadapalli wrote:
>>>> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
>>>> that are not supported on earlier SoCs. Add a compatible for it.
>>>>
>>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>>> ---
>>>>  .../mfd/ti,j721e-system-controller.yaml       |  6 ++++
>>>>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 30 ++++++++++++++++++-
>>>>  2 files changed, 35 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> index 1aeac43cad92..802374e7645f 100644
>>>> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> @@ -54,6 +54,12 @@ patternProperties:
>>>>      description:
>>>>        Clock provider for TI EHRPWM nodes.
>>>>  
>>>> +  "phy@[0-9a-f]+$":
>>>> +    type: object
>>>> +    $ref: /schemas/phy/phy-provider.yaml
>>>
>>> You need instead ref to specific device bindings/schema. Probably to
>>> /schemas/phy/ti,phy-gmii-sel.yaml#
>>
>> Thank you for the clarification. I will update $ref to
>> "/schemas/phy/ti,phy-gmii-sel.yaml#" in the v5 series.
>>
>>>
>>> This was entirely different in v3, so your change is very confusing.
>>
>> I had misunderstood Rob's comment in the v3 patch. I had initially
>> provided the relative path to the bindings file ti,phy-gmii-sel.yaml in
>> the v3 patch. When Rob commented "/schemas/phy/..", I misunderstood and
>> thought that I had to point $ref to a generic phy-provider schema
>> present in the dt-schema repo and thus, in this v4 patch, I had updated
>> $ref accordingly.
>>
>>>
>>>> +    description:
>>>> +      This is the register to set phy mode through phy-gmii-sel driver.
>>>
>>> I don't understand the description. Please focus on the hardware not
>>> some drivers - what is here? Phy for something?
>>
>> I will fix the description, updating it to the following:
>> "Address of the CTRLMMR_ENETx_CTRL registers which are used to configure
>> the phy-mode of the CPSW MAC ports."
>>
>> Please let me know if the above description is fine.
> 
> Hm, but that's a phy node, not address of register... Isn't this a phy
> node representing the phy of the CPSW MAC ports?

Despite it being a phy node, the phy-gmii-sel driver actually uses this
node to obtain the address of the CTRLMMR_ENETx_CTRL registers which
correspond to the CPSW MAC configuration and are therefore unrelated to
the PHY. Please let me know if my suggested description would be fine.

> 
>>
>>>
>>>> +
>>>>  required:
>>>>    - compatible
>>>>    - reg
>>>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> index ff8a6d9eb153..0ffb97f1a77c 100644
>>>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> @@ -53,12 +53,24 @@ properties:
>>>>        - ti,am43xx-phy-gmii-sel
>>>>        - ti,dm814-phy-gmii-sel
>>>>        - ti,am654-phy-gmii-sel
>>>> +      - ti,j7200-cpsw5g-phy-gmii-sel
>>>>  
>>>>    reg:
>>>>      maxItems: 1
>>>>  
>>>>    '#phy-cells': true
>>>>  
>>>> +  ti,qsgmii-main-ports:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +    description: |
>>>> +      Required only for QSGMII mode. Array to select the port for
>>>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>>>> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
>>>> +      main port with the rest of them being the QSGMII_SUB ports.
>>>> +    items:
>>>> +      minimum: 1
>>>> +      maximum: 4
>>>> +
>>>>  allOf:
>>>>    - if:
>>>>        properties:
>>>> @@ -73,6 +85,22 @@ allOf:
>>>>          '#phy-cells':
>>>>            const: 1
>>>>            description: CPSW port number (starting from 1)
>>>
>>> Blank line
>>
>> I will fix this in the v5 series.
>>
>>>
>>>
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - ti,j7200-cpsw5g-phy-gmii-sel
>>>> +    then:
>>>> +      properties:
>>>> +        '#phy-cells':
>>>> +          const: 1
>>>> +          description: CPSW port number (starting from 1)
>>>> +        ti,qsgmii-main-ports:
>>>> +          maxItems: 1
>>>
>>> It does not really make sense to limit items here, in the context of
>>> this patch. You got a comment for it already. Your patch should make
>>> sense on its own.
>>
>> I had defined the property as an array because there are more than one
>> QSGMII main ports for other devices for which I will be posting the
>> patches. I had planned to reuse this property, with "maxItems: 2" in the
>> future patches for other compatibles. However, as suggested by you, I
>> will change the property to a uint32 instead of uint32-array in this
>> series. Later, in my future patches for other devices, I will change it
>> back to a uint32-array when I reuse the property.
> 
> Wait, no. You should not change the property. This should be
> uint32-array, because you will extend it soon, just maxItems must be
> defined in top-level place.

Thank you for clarifying. I will move "maxItems: 1" to the top where
"ti,qsgmii-main-ports" property is first defined, and continue using the
property as a uint32-array.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
