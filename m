Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9A99C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 07:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq13WcPQrChK6ZmbWl1thQq247Y+YSPcvfAtjr7dBQs=; b=3PpmPLZb8Q5Md3
	Tf2IS4Om9pmBevkkvWm471K7oBzK86VoNwzDfeL+gUVOHC0o8nVgvk1bQc3jaAsF3WVq5BO2JUjxG
	e4Efb17wvn8q4hWYA+IkrHdpLtpbglDn557BuPk1OUcSPd7WdACv0FpV9s+riNNU3xvqs5hCq3tqy
	VjOp+5O1wEakdfZRLr720C81X7mEJiRd7LtOISCUxatTkPztapOYI3uuau+m2uAGAyP/0bDDOPMoZ
	POupxVWb6VbAXIogv+ArL72oIlu2cgDXKiB4vltKtilvYNFII8cgJPd9MOdqU5l3w/WQmrlL7cCig
	J2pG9oYMSufjTHHtcXPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oau5a-009ZUa-4R; Wed, 21 Sep 2022 07:24:10 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oau5J-009ZN7-95; Wed, 21 Sep 2022 07:23:54 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28L7Nh3o103785;
	Wed, 21 Sep 2022 02:23:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1663745023;
	bh=1tXXuTJUrFvjH2SvVXWV78/Emi2CIN9ra9cU3bjPyAc=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=yiQA4Lu1V02mwKjdpTgNHNkLTzV14czG3TRLwaxdKHWhvt1wF+tHdKoUiP7DcTT93
	 uQ9/xPKdsbopmU7c7aKNMPJ6GNVHpA9KDEpv3LCgSDRWtwOWzR+Ogh2X5G/aM0tqGX
	 dVDtuh0KknfzZA3jFu643ya0R9eem5A6Z7i4OjkA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28L7Nhh4111593
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 21 Sep 2022 02:23:43 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 21
 Sep 2022 02:23:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 21 Sep 2022 02:23:43 -0500
Received: from [10.24.69.241] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28L7Nc1Y056475;
	Wed, 21 Sep 2022 02:23:39 -0500
Message-ID: <e1422def-fab5-dad8-00a2-8977200e2146@ti.com>
Date: Wed, 21 Sep 2022 12:53:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>, <rogerq@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <sjakhade@cadence.com>,
        <s-vadapalli@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
 <2dfb57cd-d9d4-9a26-dd4c-f116894c9baf@linaro.org>
 <fdeb4f4f-2712-fe35-a5c2-935d3a4baf38@ti.com>
 <011ce9d2-ea39-9235-323a-eac453effb66@linaro.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <011ce9d2-ea39-9235-323a-eac453effb66@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_002353_537284_442FCE90 
X-CRM114-Status: GOOD (  12.93  )
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

On 21/09/22 12:09, Krzysztof Kozlowski wrote:
> On 20/09/2022 06:27, Siddharth Vadapalli wrote:
>> Hello Krzysztof,
>>
>>>> +    then:
>>>> +      properties:
>>>> +        ti,qsgmii-main-ports:
>>>> +          minItems: 2
>>>> +          maxItems: 2
>>>> +          items:
>>>> +            minimum: 1
>>>> +            maximum: 8
>>>> +
>>>>    - if:
>>>>        not:
>>>>          properties:
>>>> @@ -94,6 +133,7 @@ allOf:
>>>>              contains:
>>>>                enum:
>>>>                  - ti,j7200-cpsw5g-phy-gmii-sel
>>>> +                - ti,j721e-cpsw9g-phy-gmii-sel
>>>>      then:
>>>>        properties:
>>>>          ti,qsgmii-main-ports: false
>>>
>>> This is interesting here... Did you test the bindings with your DTS?
>>
>> Yes, I tried it out with different compatibles in the DTS file for the
>> node, making sure that the property "ti,qsgmii-main-ports" is allowed
>> only for the "ti,j7200-cpsw5g-phy-gmii-sel" and the
>> "ti,j721e-cpsw9g-phy-gmii-sel" compatibles. Additionally, I also tested
>> that the "minItems", "maxItems", "minimum" and "maximum" checks apply.
>> All of the rules within the "allOf", are enforced one after the other in
>> sequence, based on my testing. Please let me know in case of any
>> suggestions to implement it in a better way.
> 
> Great! I think I see now what I missed previously. The last hunk with
> "ti,qsgmii-main-ports: false" is in a if: with negation ("not:")?

Yes, the newly added compatible "ti,j721e-cpsw9g-phy-gmii-sel" is placed
within an "if:" followed by a "not:", along with the already existing
"ti,j7200-cpsw5g-phy-gmii-sel" compatible. With this,
"ti,qsgmii-main-ports" is allowed only for the aforementioned
compatibles and disallowed for the rest.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
