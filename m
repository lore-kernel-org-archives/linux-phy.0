Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80FC3D74EC5
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUffo7zEvIAorenqDzwAGhNG5mm0YSpR5s6tRXtbkrI=; b=lw801r+2Tq995E
	cGVd+uet0g7xMor4HR9ScmUl/rIDUU8gFG5LpGgNr30ciQqE8JoQGNklgvKkxYiz5iumdc02iham1
	bz2E2SyBWllZW6iIfSNq8N8EXaO3GoJJ9iNTT4Xs1d93HUbrzR7QUijnmv+56WqeGBlZfXjb0sv6s
	rV81MeGqIdVivQa8QjeXK9UNq1ESSyxO53gvGa+kyXEbpZfNOAnun021K6+vQnuBDoxJdZsSDSmPM
	EOj2u0cDq4hJ60yixn4HAMx6upquims84Sec2DbnMSQhrsFYFJKtHwJ8+oGbI+RnqZt8cM5hVOoui
	ACVwDnimH4jVSR8Y5v2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjGxn-00000008wX5-4C5P;
	Fri, 23 Jan 2026 13:12:36 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjGxl-00000008wWj-0YSP
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:12:34 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3530f597ea3so1030106a91.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769173952; x=1769778752; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3F6Q0KrzJx/PydalRZY11/eFAiNA4NIIjUoKpRMvjGE=;
        b=M7vQOnLa87RbxIGtV2A6rgiakRUpPFWO6Xo4ZxpVxqqdhOGDi+IDpc0aua8sxZydo/
         0d8p8uiVfSUXo7KqbEpNhrh6CZWaUoZbBmaxz5ZGywbSbAU2xUBpDADehc/Myc/RWUYK
         oG4ucB+dUd/lwKIoxiQftHOPT5S1LFVs2wjVsP9KYEDD4KFvBzxs6c+jbWLoxZ1Irf3y
         ZNR0NMWAOtsSPNIlJvHTig8XW5lWrCmVNSGNykEAvKf8X1WV7IC7r34xiRZUwoClLYGk
         Tbtfnj/1YhC+BIuLGKoY6HNEGCQ99dKSzR3RT1lqTGjSGkgyP4MYH7CvlYN9QeMyfyfH
         u+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769173952; x=1769778752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3F6Q0KrzJx/PydalRZY11/eFAiNA4NIIjUoKpRMvjGE=;
        b=Hqn/lSS9y7j798j862JG2KHxOrfzYfAlF7hJ7GQfX11N5VzkWKrrlTnHxLjsiLn7S5
         8DOTXS0+iWZ//aC0fHQwu4/mvIecFks73vZgZWUuLVL77dBoVyPz0Soi4DmOdTRVsqL8
         Tj3fQMuDVNEjXx/Vf4lyY5foX1k4Sbz9YZxKPtPZY4D762dUXp36odlXW7wtzL2eBD7L
         f1Eu0/qNVDDGmGQFVGGr+UrXDeUYc5dbj3nDhl7xvIIZdkmi852/QV1+ajYRb/8pHAVM
         NPyPubWzbohfphWnC5oMC3RGu+iYGO9NrTNZgUqsCW8aFiByzqxbe9IekZPRMfcW1ktd
         WObg==
X-Forwarded-Encrypted: i=1; AJvYcCXfw59opbgCbDIjP21UgfMJv2kPGe70LKGHBUr+LQiPoe0lRSwo71ubvwIK3hrLKuHmFr1gfrIhcbg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJWBoYv78X/ToQUPUIRFhMG6EbpxyJq74nGpPnkJyoUP0a1DEW
	x3SkCn5rryyG1BCuZ0BEy6jzLl0QIEt0KmiXO7y4Z+OmIhQ5Vdfg3Pd5
X-Gm-Gg: AZuq6aIEQFA3Ky1jvpKF1+NkwmxvX0a5hPIiVHOhHK7+XoX1lktqmIgUuX9bAntzhDm
	/1gM/FjaW2BcmnkZmbdU2vrYrrLRrV14tPSLl8DMSQodNL9bZpJdRUVRC6Bw5V4s12oB17Iry7+
	yNhT6CxYNBNqv1kcMDaQBKpgPzGJd6mUIcLpfpE96vbhkFEdiynU5glaKiV9T+bnOSP29I58TCB
	UqNZ0OT7Lzk+l/A3H0hY9xGw7uELfTlqktbxk9DRGq3LoY+GhYFUqvr96w08oNZKflHm34Urztc
	3QczgFPik4spHZTQhYKVYA7A6RxfntTbTbtS0l2ownrfMIbxSHsU3L30jVe16YVXtcxzvGzlUJN
	QDwtIVwt6EQ023LeCVKfTptfuydDJDrMeAGJz7tnFQ/vtXwJ0+fMjdPqkiWCfOsy+LdfaI8m8hq
	AqNoT7M5MlQylewUo03wZ5vzO7/XBIVYBBYZ4=
X-Received: by 2002:a17:90b:2cc3:b0:340:54a1:d6fe with SMTP id 98e67ed59e1d1-353676fbaf3mr2327414a91.15.1769173951647;
        Fri, 23 Jan 2026 05:12:31 -0800 (PST)
Received: from [192.168.1.7] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35335205bb5sm5183483a91.1.2026.01.23.05.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:12:31 -0800 (PST)
Message-ID: <7b922a72-f17b-492f-ae04-a97a75738d4d@gmail.com>
Date: Fri, 23 Jan 2026 18:42:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
 <20260122-ti-phy-v3-2-751619729433@gmail.com>
 <20260122233309.GA3730160-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260122233309.GA3730160-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_051233_189044_F8A6ACB2 
X-CRM114-Status: GOOD (  17.32  )
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



On 23-01-2026 05:03, Rob Herring wrote:
> On Thu, Jan 22, 2026 at 05:52:58PM +0000, Charan Pedumuru wrote:
>> Convert TI PIPE3 PHY binding to DT schema.
>> Changes during conversion:
>> - Define a new pattern 'pcie-phy' to match nodes defined in DT.
>> - Drop obsolete "id" property from the schema.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 135 +++++++++++++++++++++
>>  1 file changed, 135 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> new file mode 100644
>> index 000000000000..605f12f0f79a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> @@ -0,0 +1,135 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI PIPE3 PHY Module
>> +
>> +maintainers:
>> +  - Roger Quadros <rogerq@ti.com>
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
>> +    pattern: "^(pcie-phy|usb3-phy|phy)@[0-9a-f]+$"
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,omap-usb3
>> +      - ti,phy-pipe3-pcie
>> +      - ti,phy-pipe3-sata
>> +      - ti,phy-usb3
>> +
>> +  reg:
>> +    minItems: 2
>> +    maxItems: 3
>> +
>> +  reg-names:
>> +    minItems: 2
>> +    items:
>> +      - const: phy_rx
>> +      - const: phy_tx
>> +      - const: pll_ctrl
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
>> +    items:
>> +      items:
>> +        - description: Phandle to the system control module
>> +        - description: Register offset controlling PHY power
> 
> This allows N entries of 2 cells each. You need either:
> 
> items:
>   - items:
>       - description: ...
>       - description: ...
> 
> (the hyphen is important!)
> 
> Or:
> 
> maxItems: 1
> items:
>   items:
>     - description: ...
>     - description: ...

Okay, I will use the above format in the next revision.

> 
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      items:
>> +        - description: Phandle to the system control module
>> +        - description: Register offset of CTRL_CORE_SMA_SW_0
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      items:
>> +        - description: Phandle to the system control module
>> +        - description: Register offset for PCS delay programming
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of control module for PHY power on.
>> +    deprecated: true
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: ti,phy-pipe3-sata
>> +    then:
>> +      properties:
>> +        syscon-pllreset: true
>> +    else:
>> +      properties:
>> +        syscon-pllreset: false
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
>> +    usb3-phy@4a084400 {
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
> 
> Use lowercase hex.

Sure.

> 
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
