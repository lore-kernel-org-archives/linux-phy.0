Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B827CCDC193
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 12:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2p0e5G0UWwuS8MLMbVhyyw+WudO/As/KA8q9O0F1uLA=; b=0PunFcoBoWqFnA
	Lew/sgKGWQoE5iI72IQ9K2KJW3x8cX3Sc/BRXo6CFW+zGqRHVPM6aBbeM/1KP2PzpjUpqaD95arnP
	yPEQSGvnfvUWGZFqt1j92EH/0sOQ7VPyZRW/W4AQctw0MlEvnnb57qvC+u1r22CsF94LuoesVyky/
	hXNmtEAoaT3lyA0wu76E7zKWjbsjvzFZlWecI994YPlcY6AMZUNdrDcaGqnqnCLJX+hvH7xGUlni/
	kgSd99jG5Ix2jYjFSL570wvav1BQpx1fYlI2KY0EQ1L5a/uywU7b4yc9dZGlinwi3cvSzVFaGrTzJ
	iGFO3F2e7tM7Sq+ornXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd65m-0000000CzSv-1HyN;
	Tue, 06 Jan 2026 12:23:18 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd65j-0000000CzSC-41mt
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 12:23:17 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-c2a9a9b43b1so644495a12.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 04:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767702195; x=1768306995; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kq3C2EX5go7tonSsueKHleKcgx8MdpUmDsXaRxdCcZY=;
        b=diME+uA8e/m8YI0PMIL8otqnfB7K6u9fRUE7mQO5w3c0mJ/oAj72spqw1BVGT6Ty6b
         kx6h3X98bn0peioJAAYz8he8z5P6GHvFfjdNt5FrurBM+6CpTXaXN1Ese0JjlJwOUJmB
         Pen4LopZ2i0EM9QmLbJ9023E3DSj1zdy96QTLHI7HO93JF4K2sgR2TENHrBm91qDroTl
         13nBv65I5I1PL+4o0YbeAIbwsqZjjzCUEPCGfs77S/lnR1Ue15a8Gbh452hfWtZVon5g
         kbK96pkFjmSyEdg0WAdx2QwOv07ySJEiGs4P+pCSUqgRgAmz9tT4TO0LYojLGYrNhQ9h
         MHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767702195; x=1768306995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kq3C2EX5go7tonSsueKHleKcgx8MdpUmDsXaRxdCcZY=;
        b=JnOeTZgOl15mrubTdIBo+P7Kl9Pd01HjSM4nDMv+m6g9rm/AUx7S94pcEUYBN7+9uV
         q3mRuHfx5uxGfFMsEpnyG/v/Qph9uN0MaWGd6xAj2BP8HB3lORh/DzrT9gmjU7tAonx/
         9oAZFwmiEJmTHq7AYtZWOrKEOsQaAmGzclHGNeNPUDI/f0kA2vnsUAlyf6C+EXreVTJ0
         sfWbdiMaPthO5rdjOYiPDiL4YpUSw3JcRJdIgGACeD0pYgDeNOwzQB0sQ+mr5z8COO44
         vtPZqfMrP0i6/t4MavWJlwSCMMEl8BcHbMSkbL4c+pu2eWJoUteFjL9GZVxj4Kp4t5mJ
         oSUg==
X-Forwarded-Encrypted: i=1; AJvYcCV0GpaBML5RKhpXsa95el2yzkAqAHqnGYkIZNhESfHIx8Knq6MdhYpgYJjFyAstMcFK89vFqlCG3gw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyU9hJQDpq4iex/Puk3rxVprPAzGz0zwDrsSIStYM9gD5aIRYK1
	EL/fx37E+ba8RtxCvUv3qQPti8uXE/lEqJ9bUJkSP0o81cUqfTDtkagm
X-Gm-Gg: AY/fxX4FN95jqtkt97Vftszr4n3ZGfZ/a/B0t31UdCvYADVlOCY7smt1AcvhBkKh434
	43ZZgg7ETbX/OHL5M/qBM1uzSDPlKco+JjWtA4D8UJ2Txj0nmdkZ8hR5d/6r6KussFJGPcU1Hs3
	7yIqQMEZFltfurNKZpnttEa6fuYeUv8dIrLaEo8gyswGwl5HLMdNy3KJjAlNaiSnrJEn2EW9XDb
	cDLb6knnkfdGnc/rSg8u+pbVHCa6LLRXk8m4rzBmWi/R5UvuHPupsdPxojPnSHHjyScQO2FrOV1
	MqkunBgqhIgSd13+ZHacyK4WtEl7EXCJIvkdbLsuzYSse9QTMgWIEwvTKqL4PpJ29ifKtAMk/Ar
	TEXRIKVfAC2d5KFplCESNZB6EjRT7Lw1U7+mus+CKhqwIxucEJ6aqQVDai6rRoCaJMa7yjW9SYd
	PpuOJ7vYdJyOvx3HtBJzDjM1M9o/UbB/Eu
X-Google-Smtp-Source: AGHT+IHCXWckuv1AxdRWanWDxivNrmKr0XWM9dXpBTiU3chSVncH2Joe2Ulg4UuoyBz40JzMDf/qag==
X-Received: by 2002:a05:6a20:3d81:b0:2e5:655c:7f93 with SMTP id adf61e73a8af0-38982336877mr2593001637.33.1767702194775;
        Tue, 06 Jan 2026 04:23:14 -0800 (PST)
Received: from [192.168.1.6] ([27.7.214.154])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc95d5c66sm2299581a12.24.2026.01.06.04.23.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 04:23:14 -0800 (PST)
Message-ID: <35bc3e4e-5fc2-4578-85d8-33d20313cc86@gmail.com>
Date: Tue, 6 Jan 2026 17:53:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
 <20260105220859.GA3498531-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260105220859.GA3498531-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_042316_020267_FC666A0B 
X-CRM114-Status: GOOD (  21.45  )
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



On 06-01-2026 03:38, Rob Herring wrote:
> On Sat, Jan 03, 2026 at 11:06:10AM +0000, Charan Pedumuru wrote:
>> Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
>> Changes during conversion:
>> - Define a new pattern 'pciephy'and 'control-phy' to match nodes
>>   defined in DT.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
>>  Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
>>  2 files changed, 206 insertions(+), 98 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> new file mode 100644
>> index 000000000000..830be2af5fb6
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> @@ -0,0 +1,206 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
>> +
>> +maintainers:
>> +  - Vinod Koul <vkoul@kernel.org>
> 
> No, this should be a TI person or someone with the h/w.

Okay, I will look into it.

> 
>> +
>> +description:
>> +  This device tree binding describes the TI PHYs used in TI platforms.
>> +  Two types of PHYs are supported.
>> +  1. OMAP Control PHY - Simple control PHYs for power control
>> +  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"
> 
> Only phy, pcie-phy, or usb3-phy are valid node names.

Yeah, but control-phy was defined in DTS, so included it here.

> 
> A-F is not valid for unit-addresses either.

Sure, I will remove it.

> 
>> +
>> +  compatible:
>> +    oneOf:
>> +      - description: OMAP Control PHY compatibles
>> +        items:
>> +          enum:
>> +            - ti,control-phy-otghs
>> +            - ti,control-phy-usb2
>> +            - ti,control-phy-pipe3
>> +            - ti,control-phy-pcie
>> +            - ti,control-phy-usb2-dra7
>> +            - ti,control-phy-usb2-am437
>> +      - description: PIPE3 high-speed PHY compatibles
>> +        items:
>> +          enum:
>> +            - ti,phy-usb3
>> +            - ti,phy-pipe3-sata
>> +            - ti,phy-pipe3-pcie
>> +            - ti,omap-usb3
> 
> IMO, these 2 bindings are completely unrelated and should be split to 2 
> schema files.

Okay, I will create 2 bindings in 2 separate patches then.

> 
>> +
>> +  reg:
>> +    minItems: 1
>> +    maxItems: 4
>> +
>> +  reg-names:
>> +    oneOf:
>> +      - description: OMAP Control PHY
>> +        items:
>> +          enum: [otghs_control, power, pcie_pcs, control_sma]
>> +      - description: PIPE3 high-speed PHY
>> +        items:
>> +          enum: [phy_rx, phy_tx, pll_ctrl]
> 
> Here's one example why.
> 
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 7
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    maxItems: 7
>> +    items:
>> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
>> +             dpll_ref_m2, phy-div, div-clk]
>> +
>> +# Optional Properties
>> +  id:
>> +    description:
>> +      Instance ID for multiple instances of same PHY type.
>> +      Used for multi-lane PCIe PHYs.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    default: 1
> 
> There aren't any users of this that I see. Drop it (and note that in the 
> commit msg).

Sure.

> 
>> +
>> +  syscon-phy-power:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module register for PHY
>> +      power on/off.
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
>> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module for writing PCS delay value.
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of control module for PHY power on.
>> +    deprecated: true
> 
> I believe all these phandle props only apply to the PIPE3 binding.

Yes, I will add them to PIPE3 binding seperately.

> 
> Rob

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
