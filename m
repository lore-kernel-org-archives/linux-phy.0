Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D40D2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 14:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NSpZLbPKSbpKlA9YXAbQ6j7UtjKHlUU+ID3/QRkgAA=; b=vHScqScwAt5XYS
	ViENNEy6JIFhqvgWglCKHKBimvAVsQaLwfC7G39HUUbkA5jfrs9jjXs8EUvPAF2YpvtnoYAzfm4G/
	aCdkb0qvJc4nUrQTtVZRKRsConkXt4LJOBysAVAyucJ0oarEIWP+qFiSuOEr7+XDaF+cH4SM/Irns
	8TPDkqZ1PTNsmRFb5O5Z7cU+R12Z1sHqcPJEhQ8noamzYlsYgXwDEW6Gba7G8MRjmfDWTX6frU4ik
	lZNGf4C41mydk7CLEMFUfDNGTDLZuUe2ndgCXBiZiicsBtgmN1P7P63PVdOLanBZe6FvLOdcgdIJh
	zFFZi9w5Z01W9OOWfeMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD3s-000000041MS-45NR;
	Tue, 20 Jan 2026 14:50:28 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD3q-000000041M4-1Oy5
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 14:50:28 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-81f416c0473so4661321b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 06:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768920625; x=1769525425; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bIm0elalg2KtUJFISn8Zrfv+qOvCEqd9XEPFzu+c7x8=;
        b=IBKbhLdIU7ixI9lg2dRN9uGUg2J637dJNrx/HpxuaPUfVWxdgyhhgCecJmlietmhhS
         RoFQqtlcDcrrmGgUQshC1bocik20q+bqziSMM99i9ls/2COmpY29A+tsRxWfSsrIy5go
         PYYJD8fQ0hlr9MdrynQ92bJ+YUtgolTS/+Lx22N/P8KA296S6FKgOLdLHLqVIMqouGxb
         YBQhJRi25RmfoAQO3EZR5fEq2VFwY6Se4PO43JyZFLfbtKkY6vwVSMTxxtw9kSUXwd4O
         +7gL9PGZiGtMheKJ+RYcdR2z1BCVxW7m8n0XBbD4yL3RTHj0MQO28L/PmfqMFw9bIpxY
         uiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920625; x=1769525425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bIm0elalg2KtUJFISn8Zrfv+qOvCEqd9XEPFzu+c7x8=;
        b=EL/1xte5cNIruVPl1LMD0fCH5PcdI0u6uZoqMcliCmhEN4bHeaXcQbq5up75vuXoYl
         W6pNCkQqRDe0R0/Zt5K5yoR/7W8UYWf9I31oFUhZJ07Outpt0u/y1TyLbYF39uCiTLIb
         RNr0q8OUGPQdf9hLZgAR1LpyUL37pfAYKocbrjHdzlUFQxnQydEkPJM/Z4gpBtakJmgx
         64YBLwR0VxNuwwZbaa7x8yIhSyvK+Ar+BKI3KNR2nPMIKZcQHfAmpw0u/3lv6T19dBFy
         BGVHOwc10Ud8sk5zTYq5YtewuKGTwTYxVH0akdy/LhaikYqo5ck2sEsiZHq3seVWhcGa
         bR5g==
X-Forwarded-Encrypted: i=1; AJvYcCV+gO8GD2f/bxVBDalhiTmnB4OojmMKrmaCmZbjGg103KdyL66dygDAYmnrp7jcs8CcLWAf65Cg1pQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDX8BAWlnVLJO15IGL4OM9Zv5lwKrR9ZoYmgtpWOgtA/9w9FGE
	uovos4saqw+zUWYDqovOv/rvMCiX2tUldTSFUltxbsTCLJPDqkrgz9w/
X-Gm-Gg: AZuq6aLnzPQHLikgxtZVcEZwmIAzi6fyiH0t7N6iv3cSJeSqMEfNebIsC3QIDfTFbSl
	Bw1+qtoHY+KE/jujQ/kZaaCzEWzRbG87Gm/cd7M3T22OsO5H7dnoMrlBhKfIC+f98l+lKRxMvM1
	yttoun+Eoacce6addwi4CF4h3gndtYjOhWABhyfu8SN3GaxOXZN4BOnnqYVbTZh3ur6NkPItiBP
	8dccUvz2Ht4LTsBzm+kh9PD/IFzCmK2ngaMLKOCjJvXwfU1UhaERcOblNTtrRlU/QGsJkqERIWI
	njef5NPhnJyrXCicNMa9zL0uhdqrdLaJColhyx4A9aY9aixcIHPeLcAAVGZL/hXgq24L1TCW6ul
	24nYvjfXIvGCGUs6LaTaWI58H/X8ivSVXFeeE0NsstHViLXLkgqwgRElRfyNd+ibUqcWLK/ZIbM
	cl4jLc0Zd+pEzpMXQVmFBcXxC0CgjH5MS2MvQ=
X-Received: by 2002:a05:6a00:1bcc:b0:7b8:ac7f:5969 with SMTP id d2e1a72fcca58-81fe87b2942mr2099646b3a.4.1768920624786;
        Tue, 20 Jan 2026 06:50:24 -0800 (PST)
Received: from [192.168.1.7] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108c4dbsm12573861b3a.5.2026.01.20.06.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 06:50:24 -0800 (PST)
Message-ID: <b626470b-f1e2-4869-baea-bd7629b2feaa@gmail.com>
Date: Tue, 20 Jan 2026 20:20:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
 <20260115144541.GA3319937-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260115144541.GA3319937-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_065026_411074_A54ADFC2 
X-CRM114-Status: GOOD (  25.96  )
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



On 15-01-2026 20:15, Rob Herring wrote:
> On Wed, Jan 07, 2026 at 04:11:15PM +0000, Charan Pedumuru wrote:
>> Convert TI PIPE3 PHY binding to DT schema.
>> Changes during conversion:
>> - Define a new pattern 'pciephy' to match nodes defined in DT.
>> - Drop obsolete "id" property from the schema.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
>>  1 file changed, 127 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> new file mode 100644
>> index 000000000000..41b3828723ae
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> @@ -0,0 +1,127 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI PIPE3 PHY Module
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +description:
>> +  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
>> +  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
>> +  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
>> +  interface standard, which defines a common physical layer for
>> +  high-speed serial interfaces.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"
> 
> Again, don't define your own patterns. Either update the .dts files to 
> use the established patterns (pcie-phy, usb3-phy, phy) or leave it 
> undefined here.

Sure, I will try to update them in dts.

> 
> Plus the unit-address is not optional as 'reg' is not optional...

Okay.

> 
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,phy-usb3
>> +      - ti,phy-pipe3-sata
>> +      - ti,phy-pipe3-pcie
>> +      - ti,omap-usb3
> 
> Alphabetical order please.

Sure.

> 
>> +
>> +  reg:
>> +    minItems: 2
>> +    maxItems: 3
>> +
>> +  reg-names:
>> +    minItems: 2
>> +    maxItems: 3
>> +    items:
>> +      enum:
>> +        - phy_rx
>> +        - phy_tx
>> +        - pll_ctrl
> 
> Do this really need to be any order? Looks to me like this works for all 
> users in tree:
> 
> minItems: 2
> items:
>   - const: phy_rx
>   - const: phy_tx
>   - const: pll_ctrl

This will work, I tested it now.

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
>> +  syscon-phy-power:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module register for PHY
>> +      power on/off.
> 
> Needs constrants on the size:
> 
> items:
>   - items:
>       - description: phandle to ...
>       - description: offset of ...

Sure, I will change for the other properties too.

> 
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
>> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
> 
> Same here.
> 
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module for writing PCS delay value.
> 
> Same here.
> 
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of control module for PHY power on.
>> +    deprecated: true
>> +
>> +dependencies:
>> +  syscon-pllreset:
>> +    properties:
>> +      compatible:
>> +        contains:
>> +          const: ti,phy-pipe3-sata
> 
> Usually we express this the other way around:
> 
> if:
>   properties:
>     compatible:
>       contains:
>         const: ti,phy-pipe3-sata
> then:
>   required:
>     - syscon-pllreset
> else:
>   properties:
>     syscon-pllreset: false
> 
> But that's slightly different as syscon-pllreset is optional for 
> ti,phy-pipe3-sata in your case. Seems like it should be required if 
> ti,phy-pipe3-sata?

I checked the DTS, it is not a required property. So, I will not change the format.

> 
> 
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - reg-names
>> +  - "#phy-cells"
>> +  - clocks
>> +  - clock-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    /* TI PIPE3 USB3 PHY */
>> +    usb3phy@4a084400 {
>> +        compatible = "ti,phy-usb3";
>> +        reg = <0x4a084400 0x80>,
>> +              <0x4a084800 0x64>,
>> +              <0x4a084c00 0x40>;
>> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> +        #phy-cells = <0>;
>> +        clocks = <&usb_phy_cm_clk32k>,
>> +                 <&sys_clkin>,
>> +                 <&usb_otg_ss_refclk960m>;
>> +        clock-names = "wkupclk", "sysclk", "refclk";
>> +        ctrl-module = <&omap_control_usb>;
>> +    };
>> +
>> +  - |
>> +    /* TI PIPE3 SATA PHY */
>> +    phy@4a096000 {
>> +        compatible = "ti,phy-pipe3-sata";
>> +        reg = <0x4A096000 0x80>,  /* phy_rx */
>> +              <0x4A096400 0x64>,  /* phy_tx */
>> +              <0x4A096800 0x40>;  /* pll_ctrl */
>> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> +        clocks = <&sys_clkin1>, <&sata_ref_clk>;
>> +        clock-names = "sysclk", "refclk";
>> +        syscon-pllreset = <&scm_conf 0x3fc>;
>> +        #phy-cells = <0>;
>> +    };
>> +...
>>
>> -- 
>> 2.52.0
>>

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
