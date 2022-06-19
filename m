Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CA9C43334
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 11:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iypf06Ijf+RLgW42lTYT33avwjeOKKPLd84P+TJuOG4=; b=VHdQmIrJHoeriU
	Bd5+6/OslcOLdxF3d1UKHrn3ejqLeoDCv21iECPzDpowTsKBbhpQHc7dphEV4+U0kIYH3bw6uwR1N
	Y1QttJpKuI/7V6hyFyCniN+HqBMsjoBImzUL6bf0uDAt99+G4ieUvcBitHWAsrTJB32WUqvjUKxNl
	qxDg2cP2xOUqi3QcUlwE61g9eQZbwbykkp1reIvLfA5TRCDfcArdn/S4lLorfBeSjK3m3Iyp8cqOB
	G9FefzxSBKi+9j7auxq7b8vE/bIxwnFSmtC3xjcF6KHke2DXh9R0W62h75G5OZf/yweAGvueqVeM4
	PO+G5aEEvu9Wru8RxYrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2t36-00Dzm2-2j; Sun, 19 Jun 2022 11:25:00 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2t2u-00Dzhs-Jt
	for linux-phy@lists.infradead.org; Sun, 19 Jun 2022 11:24:50 +0000
Received: by mail-ed1-x532.google.com with SMTP id ej4so7573846edb.7
        for <linux-phy@lists.infradead.org>; Sun, 19 Jun 2022 04:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G9AtLmFO1Q7zUjUcmfK78M/O6m/Nuz1KuycFWUuvq/I=;
        b=O3lMIEQfq5DCFApEzGRIUFMQfQ3a1G8SI1P9xeNf9OoLh/j+orfgq6AY7sVvuOtVbH
         mDltZoFpRnwfmW4o5iHSenyizSZCbt5NxqYnsgj5xZZErwi4HMkjMO5iLI95T62DGxXt
         o5SdFt7pNYjN+hCLnRJmvXsw46uD2mWDvo9pRXG8qNpDkQ3MQpYUmD+BykMt4MeGmBVj
         QU+ES8E+hWJyOIwNuV8vGTRFrTugECFNjnz3drt/9tg3IjG+C6jMEMsJ84E4uhm4Vta0
         izxp317u4/Dnl4eNVV8aO6RGLb5ejaspcPgwTyzbmi+QXa5ZpDyo9cERtQuvYgNm54hf
         FY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G9AtLmFO1Q7zUjUcmfK78M/O6m/Nuz1KuycFWUuvq/I=;
        b=WkraU6w+XgTs6WYHpLuKJ3VHI0UnItZgRA/c4ki7vMLB3LmVuE9lclbLeGfPasGH6j
         Md8dYESOwiFYw4chTGGx/WsafOF2UOIRkejZ6nqZzxTZHejQ/Cx+ALZDdaWGezc+I07H
         6+kgBXi7Vn+vKJ+KCkITN1sDX/OR2uIDNdW7L17pXrgm/dnl7EA8vL97oHyqN65oKeWI
         0i2iduOPgpLa/ocCltnOEbfkjm3XQbjKuciGqAeT6D78l6Of6gz9qnYTmcwsA4fOg7Cb
         aaKhlbohaBBhkGdzsA7oWsRumugTor6IgIwwkM70wC4QMY+xDpguO/WPNvLjbxQfTE/F
         LBTQ==
X-Gm-Message-State: AJIora8joXD8GZHW6rwzyyLhyAqtLz8tPEUMWafXNI6gTWG5Yk9gYCEN
	mIyZFo2Fqpxs1ZrPKZiVG2N2qw==
X-Google-Smtp-Source: AGRyM1vAtUjyt4xVHzND3Aw/WtRYqkX65iSIWe7BeNIpO+IWkZs5qF6SmoI/b40MHD3xsv73xib21w==
X-Received: by 2002:a05:6402:1c09:b0:435:6562:e70d with SMTP id ck9-20020a0564021c0900b004356562e70dmr12979868edb.203.1655637885978;
        Sun, 19 Jun 2022 04:24:45 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d5-20020a170906304500b0070f7d1c5a18sm4460333ejd.55.2022.06.19.04.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 04:24:45 -0700 (PDT)
Message-ID: <d79239ce-3959-15f8-7121-478fc6d432e4@linaro.org>
Date: Sun, 19 Jun 2022 13:24:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH net-next 01/28] dt-bindings: phy: Add QorIQ SerDes binding
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-2-sean.anderson@seco.com>
 <110c4a4b-8007-1826-ee27-02eaedd22d8f@linaro.org>
 <535a0389-6c97-523d-382f-e54d69d3907e@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <535a0389-6c97-523d-382f-e54d69d3907e@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_042448_739638_5ACD7DAD 
X-CRM114-Status: GOOD (  42.87  )
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

On 18/06/2022 05:38, Sean Anderson wrote:
> Hi Krzysztof,
> 
> On 6/17/22 9:15 PM, Krzysztof Kozlowski wrote:
>> On 17/06/2022 13:32, Sean Anderson wrote:
>>> This adds a binding for the SerDes module found on QorIQ processors. The
>>> phy reference has two cells, one for the first lane and one for the
>>> last. This should allow for good support of multi-lane protocols when
>>> (if) they are added. There is no protocol option, because the driver is
>>> designed to be able to completely reconfigure lanes at runtime.
>>> Generally, the phy consumer can select the appropriate protocol using
>>> set_mode. For the most part there is only one protocol controller
>>> (consumer) per lane/protocol combination. The exception to this is the
>>> B4860 processor, which has some lanes which can be connected to
>>> multiple MACs. For that processor, I anticipate the easiest way to
>>> resolve this will be to add an additional cell with a "protocol
>>> controller instance" property.
>>>
>>> Each serdes has a unique set of supported protocols (and lanes). The
>>> support matrix is stored in the driver and is selected based on the
>>> compatible string. It is anticipated that a new compatible string will
>>> need to be added for each serdes on each SoC that drivers support is
>>> added for.
>>>
>>> There are two PLLs, each of which can be used as the master clock for
>>> each lane. Each PLL has its own reference. For the moment they are
>>> required, because it simplifies the driver implementation. Absent
>>> reference clocks can be modeled by a fixed-clock with a rate of 0.
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>> ---
>>>
>>>   .../bindings/phy/fsl,qoriq-serdes.yaml        | 78 +++++++++++++++++++
>>>   1 file changed, 78 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml b/Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml
>>> new file mode 100644
>>> index 000000000000..4b9c1fcdab10
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml
>>> @@ -0,0 +1,78 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/phy/fsl,qoriq-serdes.yaml#
>>
>> File name: fsl,ls1046a-serdes.yaml
> 
> This is not appropriate, since this binding will be used for many QorIQ
> devices, not just LS1046A.

This is the DT bindings convention and naming style, so why do you say
it is not appropriate? If the new SoC at some point requires different
binding what filename do you use? fsl,qoriq-serdes2.yaml? And then again
fsl,qoriq-serdes3.yaml?

Please follow DT bindings convention and name it after first compatible
in the bindings.

> The LS1046A is not even an "ur" device (first
> model, etc.) but simply the one I have access to.

It does not matter that much if it is first in total. Use the first one
from the documented compatibles.

> 
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: NXP QorIQ SerDes Device Tree Bindings
>>
>> s/Device Tree Bindings//
> 
> OK
> 
>>> +
>>> +maintainers:
>>> +  - Sean Anderson <sean.anderson@seco.com>
>>> +
>>> +description: |
>>> +  This binding describes the SerDes devices found in NXP's QorIQ line of
>>
>> Describe the device, not the binding, so wording "This binding" is not
>> appropriate.
> 
> OK
> 
>>> +  processors. The SerDes provides up to eight lanes. Each lane may be
>>> +  configured individually, or may be combined with adjacent lanes for a
>>> +  multi-lane protocol. The SerDes supports a variety of protocols, including up
>>> +  to 10G Ethernet, PCIe, SATA, and others. The specific protocols supported for
>>> +  each lane depend on the particular SoC.
>>> +
>>> +properties:
>>
>> Compatible goes first.
>>
>>> +  "#phy-cells":
>>> +    const: 2
>>> +    description: |
>>> +      The cells contain the following arguments.
>>> +
>>> +      - description: |
>>
>> Not a correct schema. What is this "- description" attached to? There is
>> no items here...
> 
> This is the same format as used by
> Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml

I'll fix it.

> 
> How should the cells be documented?

Could be something like that:
Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml

> 
>>> +          The first lane in the group. Lanes are numbered based on the register
>>> +          offsets, not the I/O ports. This corresponds to the letter-based
>>> +          ("Lane A") naming scheme, and not the number-based ("Lane 0") naming
>>> +          scheme. On most SoCs, "Lane A" is "Lane 0", but not always.
>>> +        minimum: 0
>>> +        maximum: 7
>>> +      - description: |
>>> +          Last lane. For single-lane protocols, this should be the same as the
>>> +          first lane.
>>> +        minimum: 0
>>> +        maximum: 7
>>> +
>>> +  compatible:
>>> +    enum:
>>> +      - fsl,ls1046a-serdes-1
>>> +      - fsl,ls1046a-serdes-2
>>
>> Does not look like proper compatible and your explanation from commit
>> msg did not help me. What "1" and "2" stand for? Usually compatibles
>> cannot have some arbitrary properties encoded.
> 
> Each serdes has a different set of supported protocols for each lane. This is encoded
> in the driver data associated with the compatible

Implementation does not matter.

> , along with the appropriate values
> to plug into the protocol control registers. Because each serdes has a different set
> of supported protocols 

Another way is to express it with a property.

> and register configuration, 

What does it mean exactly? The same protocols have different programming
model on the instances?

> adding support for a new SoC will
> require adding the appropriate configuration to the driver, and adding a new compatible
> string. Although most of the driver is generic, this critical portion is shared only
> between closely-related SoCs (such as variants with differing numbers of cores).
> 

Again implementation - we do not talk here about driver, but the bindings.

> The 1 and 2 stand for the number of the SerDes on that SoC. e.g. the documentation will
> refer to SerDes1 and SerDes2.
>   
> So e.g. other compatibles might be
> 
> - fsl,ls1043a-serdes-1 # There's only one serdes on this SoC
> - fsl,t4042-serdes-1 # This SoC has four serdes
> - fsl,t4042-serdes-2
> - fsl,t4042-serdes-3
> - fsl,t4042-serdes-4

If the devices are really different - there is no common parts in the
programming model (registers) - then please find some descriptive
compatible. However if the programming model of common part is
consistent and the differences are only for different protocols (kind of
expected), this should be rather a property describing which protocols
are supported.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
