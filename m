Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3438EC25B0E
	for <linux-phy@archiver.kernel.org>; Fri, 19 Aug 2022 06:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7mIJS3+Njpe/mtoehs+2WXXBfbUevnZCdhycYYKZZw=; b=P+5Me8jSz3zs6f
	+CiQMxsZ+Gd//ocXnNXZHTp/NjnZ0JBmxAfjDnFZBD5LKfPhVIVnjyRdYYCz5OHKMVW5GCW2nP2tx
	rlDx0F5KWmekaQ+lhcSzfdcRp2zxErjNi6DTw7USpwbpyo0Oh3NPQ/ByD82oAnqvw3he5DxK7pTik
	oTFeg1bMNZ7T1CadxbnCO666xbex/oBugpy+wgUog3PFFyyvDC3k4cbiRh2BKBHm6mZvsii7EXlnu
	HAZXZdKbnqgJgy4qJaKEeMjMuDFcGLobECTEVJ6N3s3dqTHz4QI2djbhE3wXCClBJS6DV16SHiTzA
	3b6wIF+QG90R2wUP3h1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOv38-001wKJ-BC; Fri, 19 Aug 2022 06:00:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOv34-001wGg-3D
	for linux-phy@lists.infradead.org; Fri, 19 Aug 2022 06:00:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27J5xbo3048870;
	Fri, 19 Aug 2022 00:59:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1660888777;
	bh=g8oyDk7JBZxiYlL06SI8ybX1FXh3s1KT+kFnj1vFyGo=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=hHdkAwTP1EitZwBSwO0WeHRjek6uVGOxzEPV9Rjeh7n7YEGOvUzLkeNf4RgseNV51
	 xJXhS/IEd5zeKbCnTpSvJwQrn8y+/xRbFExXRTPQ87VAxSrNP5oupacjJzKD5bIV3W
	 YbqDsGY9Vqa83G6KpS7jXkQH8h7tZCmRln2/0jg4=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27J5xbwV102751
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Aug 2022 00:59:37 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 19
 Aug 2022 00:59:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 19 Aug 2022 00:59:37 -0500
Received: from [10.24.69.241] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27J5xX8j065125;
	Fri, 19 Aug 2022 00:59:34 -0500
Message-ID: <8fd1e19e-5d40-2847-47ae-93131ed9260d@ti.com>
Date: Fri, 19 Aug 2022 11:29:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <lee.jones@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
References: <20220816055848.111482-1-s-vadapalli@ti.com>
 <20220816055848.111482-2-s-vadapalli@ti.com>
 <20220818144326.GA1829017-robh@kernel.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20220818144326.GA1829017-robh@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_230002_338471_F3A8B4F4 
X-CRM114-Status: GOOD (  25.79  )
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

Hello Rob,

On 18/08/22 20:13, Rob Herring wrote:
> On Tue, Aug 16, 2022 at 11:28:47AM +0530, Siddharth Vadapalli wrote:
>> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
>> that are not supported on earlier SoCs. Add a compatible for it.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
>>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 27 ++++++++++++++++++-
>>  2 files changed, 31 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> index 73cffc45e056..527fd47b648b 100644
>> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> @@ -54,6 +54,11 @@ patternProperties:
>>      description:
>>        Clock provider for TI EHRPWM nodes.
>>  
>> +  "phy@[0-9a-f]+$":
>> +    type: object
>> +    description:
>> +      This is the register to set phy mode through phy-gmii-sel driver.
> 
> No properties for this node? A whole node for 1 register?
> 
> Or this node is ti,phy-gmii-sel.yaml? If so, add a $ref to it.

Thank you for reviewing the patch. Yes, the node is for
ti,phy-gmii-sel.yaml. I will add the $ref for it.

> 
>> +
>>  required:
>>    - compatible
>>    - reg
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> index ff8a6d9eb153..54da408d0360 100644
>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> @@ -53,12 +53,21 @@ properties:
>>        - ti,am43xx-phy-gmii-sel
>>        - ti,dm814-phy-gmii-sel
>>        - ti,am654-phy-gmii-sel
>> +      - ti,j7200-cpsw5g-phy-gmii-sel
>>  
>>    reg:
>>      maxItems: 1
>>  
>>    '#phy-cells': true
>>  
>> +  ti,qsgmii-main-ports:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    description: |
>> +      Required only for QSGMII mode. Array to select the port for
>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
>> +      main port with the rest of them being the QSGMII_SUB ports.
> 
> Constraints? 

This is an optional property that should only be used for the
ti,j7200-cpsw5g-phy-gmii-sel compatible if it is used. I did not realize
that by defining it here, I had automatically defined it as a valid
property for all the compatibles. I will restrict this property only to
the ti,j7200-cpsw5g-phy-gmii-sel compatible by extending the if-then
statement below, adding an else statement with "ti,qsgmii-main-ports:
false", which will disallow this property for other compatibles.

> 
>> +
>>  allOf:
>>    - if:
>>        properties:
>> @@ -73,6 +82,22 @@ allOf:
>>          '#phy-cells':
>>            const: 1
>>            description: CPSW port number (starting from 1)
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,j7200-cpsw5g-phy-gmii-sel
>> +    then:
>> +      properties:
>> +        '#phy-cells':
>> +          const: 1
>> +          description: CPSW port number (starting from 1)
>> +        ti,qsgmii-main-ports:
>> +          maxItems: 1
> 
> An array, but only 1 entry allowed?

For the ti,j7200-cpsw5g-phy-gmii-sel compatible, only one entry is
allowed, but in the future, I will be adding a new compatible which will
require two entries for the ti,qsgmii-main-ports property. On TI's J721e
device, there are a total of 8 external ports, therefore making it
possible to configure them as two sets of QSGMII interfaces. This
requires two qsgmii-main ports which can be specified in the
ti,qsgmii-main-ports property as an array. Therefore, I have declared
the property as an array.

> 
>> +          items:
>> +            minimum: 1
>> +            maximum: 4
> 
> Can't this be up above?

Yes, I will move it to the top where the ti,qsgmii-main-ports property
is defined.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
