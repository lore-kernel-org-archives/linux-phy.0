Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71016C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 16:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDx4ri4sOL1n/B0qIwq33bS2YpRdNUA6rKuInkr8DZU=; b=Xx+jhlBKkWFzlu
	xVJPAUsQKDH6Stzvq1qbfX7ym+88SyLYdRbRj4OCdtSPMqbzN4pCMLZljKXJtwc2GXfGI4BLS3enI
	/QNR5QKeN7eM43YvaB/xeD5Dht9g1W/ez06tAtymrD2KYirAJzniqgnLtK8eoEpe6iFPQ1N/xD9Gm
	xF57TQmTTXodwQvr3AcOg94StJOftdvq0Jv6Dr3OV1xDHu4dFe03yAxuhwGkOtlEeHojV7B0U34lG
	fqdpQ9US6Z6ThqrouIhwMzIv0V7AmWHfX3mfoQHVsGdRLfhd0eUi0dEmd0TLU9QY8+cpW8RMzYz8i
	2pK/1fiAlk+tsItOCSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A7b-000000008ki-3f3e;
	Thu, 03 Sep 2026 16:17:03 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A7Z-000000008kK-1ZXI
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 16:17:02 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-3a180d7c70bso136891fa.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 09:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788452219; x=1789057019; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=igQxfgp7/0QiUpGltOrm94v15geXiIvSoDekjF5iba4=;
        b=O5J9yFYmiEnEouRf1HeZIoMqVlvZPLhz8BiAtdjBxon5E7zDin9K873o1HagYkit35
         uA5k5c5/mzVTs/V0jTqqW236B5bfGizKxYYs3yOKojKEJx1JyUG0vio5Ypqiecs+sZFu
         tSqNAcLZtnO0Z51mrVZqn2cvRPMmvrZQht139p1p+V56rXT5eD8sZVeNnLMKuFt04ayf
         OaOjJr34j+4JKAjPQLbEdcbkMYYIa17WHRHim2B6sIzvVqYurUwUofKEtcAg/5MXuk6N
         DLIIdQpIegR8cz8yDkx1ek0hiiTAJTuWKlPc9Yb4sT7pS+ug41lQD2dxIrqC+zG7tTJU
         +WAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788452219; x=1789057019;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=igQxfgp7/0QiUpGltOrm94v15geXiIvSoDekjF5iba4=;
        b=QRiaP4iBjXq2PLYCWwt3fIWbDIE0RiZJzasRjLR1PbghlEgtt8MlCJLWR2Yx2Z9Rsu
         D9eqtZJ5EsHvXSewRkZI6gSc4vCZKqxhodeiyG9lXF4j0RPkku8NhdrrDjdRJrVjdIC6
         1F99aD/H2ZwOJ9PB85/xeoNMrLuyGS9hglVZgZekiuuzFzQVBsLWDgAA5Yq4tOAgkMsd
         DpkvuvvS5zwIfTU8hD+XatlpfOM2stb8/V9yHRFw9VnbtMS2UyKTueNM5I//KCDPzkJE
         U9ZLPdBLBRXjdW0RPP5eAGrfO32kNEVbTdXwvj5AZth1p0skBIF5Q3IQBJm9yxzM+t7s
         YAGw==
X-Forwarded-Encrypted: i=1; AKwUvByidkmZhEeDRGm4G3SUQEPvkjJuiHydxs4IXyejzAkTt9IhdF0aL1slbEdGG/caWewDHFaPFHaGQ18=@lists.infradead.org
X-Gm-Message-State: AFuF++m3uvEFEwadnalTh0O3Le9o8ckbaKYytNLHeajIbJG80pG9Cyx8
	L+md16GqJKb7oGD2oDcD/0g/9dXrIATZwUFQ1YV+EoFifoazYFjbkFQGs6OI9HcEcEs=
X-Gm-Gg: AYBFou1T7ItIfHoMASZy2ZPBGXFodkxI5EuxFvwSmDyp09GhoP2l4Jn5PXTskl9jJSx
	OQHu4SsAdlW5F5VVWRQAF6ylJl6fD8GzRrfDA9d9DfvXwL+ZaqFPSmWmdJ7rCLGqTnc+RIqmKME
	w/RWTy6dH0ta8M60F3ZJHHuxo8tNXlvLjUJ6Y3+J8uzzJhKGRWP4SoiY4Vg7dnEWXzwDwbkUrN4
	vJiU5e2jNttRItzdcSTQLTlFkovINac/emf8sXvlYookbnUB78KHklGseC8JwZtykcOUrunaZMx
	ew6IwK7x2stN7XYRa3TumRx2CdIwhrd5ZrQg+7BEqB/wMZwEw11HVMsXZb/b9nQ67+03BmFWlWI
	e3y+y6ua3NoNv8zN0phV9ZFtJskb/CGi6uWIyG1UimaRs+pDsuKj6BrfHxYBnwlt+gp6a2eCtLs
	1Zibpy4AyRqA/Fu0eVzmBb4tEo/MkwXGT9VYw2jvBopOEBSh2+NV0V02jAG0XmFHiZq0I0KYBpD
	AwIwJU0pkGCPD7xSjDz9KOMVabEZizbnwIeKTDCGmLDeXGGUVT2t+4=
X-Received: by 2002:a2e:bcc3:0:b0:3a2:fc47:4c1f with SMTP id 38308e7fff4ca-3a34fcd002dmr15579741fa.1.1788452219071;
        Thu, 03 Sep 2026 09:16:59 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b606b0ebedsm1499193e87.5.2026.09.03.09.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 09:16:58 -0700 (PDT)
Message-ID: <65ef2024-4f5e-4df3-881c-50d5a72b655b@linaro.org>
Date: Thu, 3 Sep 2026 19:16:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
Content-Language: ru-RU
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
 <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
 <RXmjC1LUSR46nHPlGyexr-0HTUa9z8BZY8CabY4J7P4YM9_ntzOucrOnanQBTZlD1jH69cHJEmPb_Xw7dRuqKA==@protonmail.internalid>
 <9b0ac659-999a-4caa-8578-f34a39a67e4f@linaro.org>
 <faa755f7-e5cc-46c0-b838-8d015a481edb@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <faa755f7-e5cc-46c0-b838-8d015a481edb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091701_476670_621ED61F 
X-CRM114-Status: GOOD (  24.24  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/3/26 15:32, Bryan O'Donoghue wrote:
> On 03/09/2026 12:53, Vladimir Zapolskiy wrote:
>> On 9/1/26 23:15, Bryan O'Donoghue wrote:
>>> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
>>> supports both DPHY and CPHY operation. A special mode of DPHY operation -
>>> called variously split-mode or combo-mode also allows for two sensors to be
>>> connected to one PHY.
>>>
>>> The submitted binding here describes the DPHY modes of operation only. CPHY
>>> is left to future work.
>>
>> Like I've said in v14 review, the statement above is incorrect, and it has
>> to be changed, for whatever reason it hasn't happened so far.
>>
>>    From https://lore.kernel.org/all/1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org/
> Well, I'm not trying to describe CPHY here so I'm not claiming it is
> adequately described.

The CSIPHY IP supports C-PHY bus type, and it should be represented in
the documentation.

Right in this presented change 'bus-type' property value can be either D-PHY
or C-PHY, so even if there is no intention to describe C-PHY, it's done.

> I'll reword this.
> 
>>>>> C-PHY bus type is also well described by this version of the bindings.
>>
>>> Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>     .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 222 +++++++++++++++++++++
>>>     1 file changed, 222 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>>> new file mode 100644
>>> index 0000000000000..17de0701eb103
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>>> @@ -0,0 +1,222 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Qualcomm X1E80100 SoC CSI2 PHY
>>> +
>>> +maintainers:
>>> +  - Bryan O'Donoghue <bod@kernel.org>
>>> +
>>> +description:
>>> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
>>> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
>>> +  modes.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: qcom,x1e80100-csi2-phy
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 3
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: core
>>> +      - const: timer
>>> +      - const: ahb
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  operating-points-v2: true
>>> +
>>> +  opp-table:
>>> +    type: object
>>> +
>>> +  power-domains:
>>> +    items:
>>> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
>>> +      - description: MMCX voltage rail
>>> +      - description: MXC or MXA voltage rail
>>> +
>>> +  power-domain-names:
>>> +    items:
>>> +      - const: top
>>> +      - const: mmcx
>>> +      - const: mx
>>> +
>>> +  vdda-0p9-supply:
>>> +    description: Phandle to a 0.9V regulator supply to a PHY.
>>> +
>>> +  vdda-1p2-supply:
>>> +    description: Phandle to 1.2V regulator supply to a PHY.
>>> +
>>> +  ports:
>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>> +
>>> +    properties:
>>> +      port@0:
>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>> +        description:
>>> +          Sensor input. Always present. A single sensor is described by a
>>> +          single endpoint with the clock lane at position 0 and one to four
>>> +          data lanes.
>>> +
>>> +          DPHY split mode, where two independent sensors share the same PHY,
>>> +          is described by two endpoints, each with its own clock lane position;
>>> +          endpoint@0 with clock-lanes = <0> and one or two data-lanes and
>>> +          endpoint@1 with clock-lanes = <3> and one data lane.
>>> +
>>> +        unevaluatedProperties: false
>>> +
>>> +        patternProperties:
>>> +          "^endpoint(@[01])?$":
>>> +            $ref: /schemas/media/video-interfaces.yaml#
>>> +            unevaluatedProperties: false
>>> +            properties:
>>> +              bus-type:
>>> +                enum:
>>> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
>>> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>>> +
>>> +              clock-lanes:
>>> +                maxItems: 1
>>> +
>>> +              data-lanes:
>>> +                minItems: 1
>>> +                maxItems: 4
>>> +                items:
>>> +                  minimum: 1
>>> +                  maximum: 4
>>> +                description:
>>> +                  Data lane positions following this endpoint's clock
>>> +                  lane. Positions are a per-port logical numbering, not
>>> +                  package pad or ball positions.
>>> +
>>> +            required:
>>> +              - bus-type
>>
>> A review comment given to v14 is still applicable, 'bus-type' property
>> should be set as optional with D-PHY mode fallback.
> 
> I believe you said "could" be optional in v14 but, if you actually
> _want_ it optional, I'll update this to reflect, np.

Sure, thank you.

>>
>>> +              - data-lanes
>>> +              - clock-lanes
>>
>> Here 'clock-lanes' is a truly optional proiperty since its value is
>> immutable in each endpoint, it should be removed from the list of
>> required properties.
> 
> Hmm.
> 
> I want to make sure clock-lanes is defined and set to the correct value.

It's not needed, the mutable properties make sense, the immutable ones
can be removed without any loss. The correctness of the propertly value
is checked by the driver in runtime.

> For example clock-lanes = <2> for split mode is wrong.

If there is a wrong value of 'clock-lanes' property given, the driver will
complain, because it knows the proper value.

And if there is no 'clock-lanes' property given, the driver knows the proper
value and it reuses it rightfully.

So, there is nothing got missed, if 'clock-lanes' becomes an optional
property, as I request. A comment in the documentation can be left though.

>>
>> Also 'clock-lanes' are not expected to be found in C-PHY bus type case.
> 
> Right so to both verify the property and not require it from CPHY I will
> make it required only for DPHY.

By making 'clock-lanes' optional both bus type cases will be well described.

For clarity, the property is not required for D-PHY bus type mode also,
please make it optional in the next version, thank you.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
