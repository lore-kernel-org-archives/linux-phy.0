Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE19C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 09:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoXPvecwR7tL9FHMN/9rqBr1ESVwGFYKn78TV9mwCkw=; b=vaqSntwqlT2DbK
	bbNU2acuDI94yGW70YVUKj7Kz30rl9ZCEg4lWAoTMwGmTP3rpm6GksghLH9gOS4tKZz5cjgJF+LlC
	dK2ufJF5cI6BezVGbvuHGokswWCgG8M5xfdw9SrRVS7a832IfzTg2KT3lAQ0hOEFi2/YPASti8JGD
	Jh+RfeSWGgPqkJcX11hZ3Jgg9Mi2laiznwDHsBCB1RtssCWUP7HMicKPHx4LSE9s5DZqP8dd8Q/y2
	QSwWPe+NxxAkwBh9/T5WTfEin5BXOR8R3TB8lGUltmYSVkmZ3klBBzYQC2iuvY8hpmciFN+6B4D6y
	H7Dj9bM4P8NOQU1IRNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2Ys-005esr-DW; Tue, 13 Sep 2022 09:50:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2U8-005RqV-Eo; Tue, 13 Sep 2022 09:45:42 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28D9jUwI040710;
	Tue, 13 Sep 2022 04:45:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1663062330;
	bh=AU++iYqWva29bjfI9XPz8HMqFvoP8KDo2s0Fll1WpH4=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=GOna1rC0nCv/Dng5o3Q8QaywDzCvKovFlIV4Oq1JEi/JQhJJFnknFCrfF115lC2cF
	 uwnFcbaImkbxaQ3Qjglgb4JzD/NAg1+v6x/Z1v1zPiwjwEOpQ1X6cNShvD9aJq3TE6
	 noTtnQyYQI1sr8k9S9pf2kXBsIeqP11fuLRbmyb0=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28D9jUhE016051
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 13 Sep 2022 04:45:30 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 13
 Sep 2022 04:45:30 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 13 Sep 2022 04:45:30 -0500
Received: from [10.24.69.241] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28D9jQcd076907;
	Tue, 13 Sep 2022 04:45:26 -0500
Message-ID: <d802f419-f2d6-faca-e0a9-591f4d705b28@ti.com>
Date: Tue, 13 Sep 2022 15:15:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20220912085650.83263-1-s-vadapalli@ti.com>
 <20220912085650.83263-3-s-vadapalli@ti.com>
 <7a673b7c-9e04-2a23-98b9-243696597bba@linaro.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <7a673b7c-9e04-2a23-98b9-243696597bba@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_024540_709745_B3D1A4B0 
X-CRM114-Status: GOOD (  15.33  )
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

On 13/09/22 14:57, Krzysztof Kozlowski wrote:
> On 12/09/2022 10:56, Siddharth Vadapalli wrote:
> 
>>  required:
>>    - compatible
>>    - reg
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> index 016a37db1ea1..da7cac537e15 100644
>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> @@ -53,12 +53,25 @@ properties:
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
> 
> Not really an array...
> 
>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
>> +      main port with the rest of them being the QSGMII_SUB ports.
>> +    maxItems: 1
> 
> 
> You say it is an array, but you have here just one item, so it is just
> uint32. Do you expect it to grow? If so, when? Why it cannot grow now?

Thank you for reviewing the patch.

I have defined it as an array because I plan to reuse this property for
other TI devices like J721e which supports up to two QSGMII main ports.
J7200 on the other hand can have at most one QSGMII main port, which is
why I have restricted the array size to one element as of this series.
In the upcoming patches that I will be posting for J721e, I will be
changing the maxItems to 2 for J721e's compatible while it will continue
to remain 1 for J7200's compatible. This is the reason for defining the
property as an array.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
