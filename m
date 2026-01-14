Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DAEBD37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uez5tscPNAq0jiKoLGATrT9Yw2qR8K6A1i/N3hNlK3A=; b=YqpGbPTIfw3klA
	S4em6/zvH82U9zb8Is6Yltl6jVB4A/WPY9Yc2simTKjmOi7emT/k4snsleJcqUQ26EGYyBndPgNfQ
	k2JkX4rpA5+qdTuZzY3TlANnESYgzqBXCLoXX/+JoV5wsHw2QrE+TwE+iq6IbHm+03At9QuXu43WR
	6U7RElKfQjL/dUAVJTn67Nivr6MiH/W+BlbBQZU7NkDTsR6y+uMgpOtM6JOTfGEwLEzNXQn9Ad17R
	WWig/WcuPQ95hBKSY+GoujK4kwSSqWTodgoVEnaV2TZ3JzxWpRhfVJz3h4plx6KBxdJ+SJGn7LcDm
	7zRvSvXeoqkXLPLakM1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg28Z-00000009ZP5-1Osy;
	Wed, 14 Jan 2026 14:46:19 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg28V-00000009ZOI-3suJ
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:46:18 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-34c5f0222b0so4712479a91.3
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 06:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768401974; x=1769006774; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHcwbTkt2wJKMYzdpeFHm792d07zxoPY9Vc8wlApszQ=;
        b=U85siw7K+B0+g++q8eYUbr7nb/6J3mUUkAiTCkugDSCcYq7cZ/DIxJNZa01vkosqJN
         1EvzmWrJD+nqVgKoJS7qoPULZ56tVbGiviyFfhDd5rlUP/4vZaOwpIHNoUk5ewgaPls6
         qCl39Kpmhz7Ygw1WVJwMz+epBEq+dwLO69hFuCSF/3zX5NkcENPux4e5edRct1IhRiX1
         TTLN+kOcohVKSLJkNmQlIDzKm6Nd3UCPF5ed6EDgYTkgcxqkj+ok2ypXVPB07VfYzHR1
         s5fV8/wTY6wBNlZRrxBvDR7fD408OpquIMTcM9C200bImkNe+wKEZEBLwFVaf9mCxp2A
         3bNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768401974; x=1769006774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHcwbTkt2wJKMYzdpeFHm792d07zxoPY9Vc8wlApszQ=;
        b=QLB0hcjo9/NNr2tOVZnrb0V4U7BQSp+QhcAez9r/y43kvSIQBexkdVmwXEbu3L0mX5
         kjdfgguegXvkcwXM+GQqGbAbrKWRb1b8c77ne/RpwGoaowhTuW9eQWyfoibF75B7NEVa
         rS8A2y+k9Q5Oms3sdCN6JmSqBd+LvSSDe5KNVvASwBa625Dz6dopFt6Iu+hgzaW9WuO8
         tYXJRECp+KX/ZhtEffUMR1P+UaMtlD0t0fWHdaVrpd5rubcddkl3YFlOpDKRSOFkrjOu
         HXQpMqojLjtLMiRS869OkRrMcMMA39So3vnSJqswQW8Di+M6kZyh8UolTLe2a5Y6qoEe
         VTCA==
X-Forwarded-Encrypted: i=1; AJvYcCWx6Ltxx9x/iEl9JKt52FEcDRjI4ks3TdZZeoWo8v8NxhxRNE3qF+M5TzU56P7RlLg+5V1sZTDuOZQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbSGTfkAP7+QoTK/aY5AZv9rWY3lji0SOJd96245kPmUOh+koQ
	Qwy4ZbrqWuUf8qYkb7VRqb4qUDyJQK1chW9UPTgkulAE2O74WkWzkAbw
X-Gm-Gg: AY/fxX7EwwMBmKWIkxs/hmH+yc14rv/fIj1Vs8PlsqFEQnGSHoesWt0yCn0h3Mje2vj
	YTiMrE5VGmLtHWUxC64gUewi3QK/yK6Lc+2v3HP8A5HC3m7LuaCEx3exdH40wLdSWImmQlDq58A
	OYzsQvI7r5a32HamPSrdm7ozye6DvXku4zhWYlGLkSr9oOthdpixnTCnlXclJy4SP0ePP3FFeWA
	0cpLr2AJft08/AWJA8Uh6uEeH1xgRKQXlWn1RlSPulce2iZGGhmN4cD+rEL3tcgqGAT+hShVXPm
	UUSZtip+ST6wW2TQV7Y/kgxC9U6c2BijVQkcoHNNWtx54pSQJ7zv4uW/AtcHH7NvQQEISwQlTaG
	TBWAmwak8GyarIWzmBRT9PkyNdMCjY72ZVdQFNjYmLLeKMOpYvXhZshGBO0W9H+KSNZizMpjE1E
	m32LRb8CwOH7jpX2eoYtoKFksc5zdWYf8/U1s=
X-Received: by 2002:a17:90b:51c1:b0:34c:aba2:dd95 with SMTP id 98e67ed59e1d1-35109134b00mr3121476a91.26.1768401974283;
        Wed, 14 Jan 2026 06:46:14 -0800 (PST)
Received: from [192.168.1.5] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109d5e20asm2235127a91.1.2026.01.14.06.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 06:46:13 -0800 (PST)
Message-ID: <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>
Date: Wed, 14 Jan 2026 20:16:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com> <aWelQ7P1kjKrQMG9@vaman>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <aWelQ7P1kjKrQMG9@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_064615_980533_A15EC077 
X-CRM114-Status: GOOD (  17.10  )
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



On 14-01-2026 19:46, Vinod Koul wrote:
> On 07-01-26, 16:11, Charan Pedumuru wrote:
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
> 
> That is not correct, please check the current people on TI for this.

I checked the driver author and MAINTAINERS, I couldn't find anyone. No one seems to have updated the MAINTAINER.

> 
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
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,phy-usb3
>> +      - ti,phy-pipe3-sata
>> +      - ti,phy-pipe3-pcie
>> +      - ti,omap-usb3
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
>> +
>> +dependencies:
>> +  syscon-pllreset:
>> +    properties:
>> +      compatible:
>> +        contains:
>> +          const: ti,phy-pipe3-sata
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
> 

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
