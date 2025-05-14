Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA94C3ABDA
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 19:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxnSF4y+GNOpHjV4dZIapRmaqCeW9A8wwHZC20Vn5/E=; b=uL2Jvivg8tgz0C
	ykLFWxma8p5X4qFs5SC1Fi7wXnPEOhnYttuB0JYnlQ+h6hMObRF0Y6MFr7j/1aZ5Hd6zxqvH16RHI
	mNin3mMVWytS+dHnvymQ84rlYG1ViUWDwkrUQLN14Jbkp8T9745KQuJepTEOKz/0tb0/B9hLWejbF
	uA6fTHWY1ZDi+SA5L9HrsKbg9g3AJS/GgthSqrRouYbQyHKt2kS4zUoN8Vy8WKa6rQZ87nODR+Vj0
	xOUr0kCqfa1Cl1O85KM+ORRZYbHZzfKQtmfS8NRkOvBfhx8IR0QwlsFjh8FME5k24gdwXZoFhlEu1
	lqn6epC0dRA5xTT1Rzpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFI2v-0000000GCbI-0B5y;
	Wed, 14 May 2025 19:45:41 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFHoV-0000000GBE8-3zSl
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 19:30:49 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-441c0d8eb3bso263455e9.1
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 12:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747251046; x=1747855846; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wu8CYbxrZGvQTelT4Z4uIdtuj7A0yMOmk3v2JdGPTT0=;
        b=hocVDzVfGAQn4XfwQy06n3MBTPV2s0jag4XEVidw41jq9RL/ne1V2bpDKFW/bV+Xjo
         9qEkJ+T6353vcgZZlFmyvcDTaiAw/BnYaFBv9+uFVvecClyl2biRFU6vZVvWiqt/U2dK
         gA5Q0l+xpYyiMgK7wLjisqJl23wK/jZbqpB+sDbj2V57VVVh/i2BdRiJd3OxGxcrPiY6
         XecXlIpiCbjbp3HjFSCfY1uguQAgRGrlCNsaZGpeIXE9IpCTnosXzki6c658v516o3iz
         +67GyfxwyEqxCSWMMEGzisQoin81x6w1+M9/GpxwtMghRMmhPzNkAu/ix7jn2+0jVp3/
         iUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747251046; x=1747855846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wu8CYbxrZGvQTelT4Z4uIdtuj7A0yMOmk3v2JdGPTT0=;
        b=dXpQwMF3gZcDKnv1TnngLeUHl9QW2pgomAvEf7SfFmzmec7vDO4gZqDQeRnjdhcY+O
         26MLJ+oX2jbYozm+99AlsLFjTgXJwIuApvsBXlJAdeHauCWO0fDI1lY4kjuqspc7bGr/
         px+KOrOU5vhl/CPrHnsv+l8K14TB2UTBMXECuGd1vHV/zfD+IShRUYapdQ5Jr1GIssmU
         Fd6ze9prOuD8lGWoaYVn36DsvLMv97pbZYnaAoiKeq06GWZdfAtI1J26AZ+MMJtxEW6p
         Dp9vdGW60+apHsNEtIAiC34xNzB9SSoixfEuLjLLXlgxGMysra7s4SJzHsjdpIlAAUQQ
         qlyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyn1jZjLD5SiCm2rucfZJCTEaY5LpjMXd7MJprIh5d4nH40Rm3wGTO0H/wTzpKP/sOarnBBMMpUjY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUUwIqODQZsEgpo9gM2EOHLJLvQZmgNwYNgstAuVivLltnaN14
	Z1YdwaaiGmu7zaTXXjQJjNps1+FQGm5XsmWcMpUZj8s22momkNWITg0SXcNv6iw=
X-Gm-Gg: ASbGncskXAgt9OqYVDL/GzydEBs6bITAC2eEjJNKUQ1Nw0Ht7YtGNzxmnT3yyrQdNQK
	8mlUVSzNuPHvstbmI4fBQznoviiP5mXgrklOjOMRj45R+ibc3D4vMN7CanUOu7Y1Fnxc/GfJtts
	keYgQzSJmonWYGFuhOpu1w/fGuyZ+L335n9mNo8nQJmal0xtJ2669vWDly1ajAsEwmQ4IKeBvtt
	ut0eLcOIKu87SCcL5xp1lUIfRZvLoqewJKt/lPI569qg1Qz5uqPcl1TzbvLfJDcoFUlF7m65TJh
	3IlZP38qMdYe5s8U7INUMkf9kcOxKeAA2cRNuSoH+8EFuILFWZQr1hMRUfYdKd/PkFdG0UHS4vJ
	MGILBdKwQ/MGE5TgS
X-Google-Smtp-Source: AGHT+IFvXW9lDEbATxNOLcqkk2qKYmb2LjJaI24O9bk39OdZTYE2y1+5m007eE4YtTFHo4ArFYYXmA==
X-Received: by 2002:a05:600c:1c8e:b0:43e:94fa:4aef with SMTP id 5b1f17b1804b1-442f21905eemr15565055e9.8.1747251045917;
        Wed, 14 May 2025 12:30:45 -0700 (PDT)
Received: from [10.61.0.68] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f33691bbsm44060495e9.7.2025.05.14.12.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 12:30:45 -0700 (PDT)
Message-ID: <634e9d0d-fbab-4101-b968-d335b656e099@linaro.org>
Date: Wed, 14 May 2025 22:30:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
 <959b9c65-50d7-426d-9c2a-64e143e28ded@kernel.org>
Content-Language: ru-RU
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <959b9c65-50d7-426d-9c2a-64e143e28ded@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_123048_017580_CE78E0ED 
X-CRM114-Status: GOOD (  24.40  )
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

Hello Krzysztof.

On 5/14/25 13:25, Krzysztof Kozlowski wrote:
> On 13/05/2025 16:39, Vladimir Zapolskiy wrote:
>> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
>> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>>   1 file changed, 110 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> 
> Looks like not tested, so limited review follows.
> 
> Filename matching compatible.
> 

Thank you for the review, the change is deliberately tagged as RFC.

I read this review comment as the displayed generic compatible 'qcom,csiphy'
shall be added to the list of compatibles.

>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
>> new file mode 100644
>> index 000000000000..ef712c5442ec
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> Please post the driver or any other user. Or explain why this is RFC or
> what you expect here from us.
> 

The CSIPHY driver agnostic CAMSS changes are on the linux-media list [1], the CSIPHY
driver specific changes will be added on top of these changes, however I believe
it makes sense to review these two different CAMSS changesets independently.

Here the RFC tag is given explicitly to get change reviews for the dt binding
documentation part, and the first user is the example embedded into the change.

>> @@ -0,0 +1,110 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm CSI PHY
> 
> SM8250 ?
> 

It's supposed to be a generic device tree binding, and it covers SM8250
CAMSS CSIPHY IP as well, which could be quite handly for testing/review.

>> +
>> +maintainers:
>> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> +
>> +description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 

Ack.

>> +  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
>> +  supports D-PHY or C-PHY interfaces to camera sensors.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,sm8250-csiphy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
> 
> Need to list the items instead
> 

Ack.

>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  vdda-csi-0p9-supply:
>> +    description: Voltage supply, 0.9V
>> +
>> +  vdda-csi-1p2-supply:
>> +    description: Voltage supply, 1.2V
>> +
>> +  '#phy-cells':
>> +    const: 0
>> +
>> +  port:
>> +    $ref: /schemas/graph.yaml#/$defs/port-base
>> +    description: CAMSS CSIPHY input port
>> +
>> +    patternProperties:
>> +      "^endpoint@[0-1]$":
> 
> Keep consistent quotes, either " or '
> 

Ack.

>> +        $ref: /schemas/media/video-interfaces.yaml#
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          data-lanes:
>> +            minItems: 1
>> +            maxItems: 4
>> +
>> +          bus-type:
>> +            enum:
>> +              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
>> +              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>> +
>> +        required:
>> +          - data-lanes
>> +
>> +    oneOf:
>> +      - required:
>> +          - endpoint
>> +      - required:
>> +          - endpoint@0
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - interrupts
>> +  - '#phy-cells'
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sm8250-csiphy
>> +    then:
>> +      required:
>> +        - vdda-csi-0p9-supply
>> +        - vdda-csi-1p2-supply
> 
> This makes no sense - it is only sm8250 - so this if is always true.
> 

Ack, thank you for the review comments.

--
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
