Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C23CC77B7A
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 12:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WmUkoWVtBkVp5Gzv0KgfJF6qp7+RuHzfOcmpjnTeaE=; b=4HH7zhXhHx+M06
	F8c2pyi17JeILaYFzxBvGtYhmWyE/kCb82k5u8PpD0MPkTugaTiPdDtqC6WJjyJxLeHte5El8aKD0
	QfgLQEoIT4lo5ZttTSFYHaoKd5b6Ua9j/0oXQ8yJnC1C7rQfxBcYJppKupMxECWeHia3mZj8zFJ1O
	3y2U5yXpPCbOBbv5RaqbQfw3Y9QI5csh178HGFU20cR8Ob0Vu6ZkqzXXo/YoXjW1NblYAgHb5bTaW
	NUsSskYOqxKxYmQaPvfYS58DZVsWox3HJXJgDieH0vZomgsUf2RWtBIVlIFJbKruvl9Xix0jA4KH/
	JkdPg3xNM1QG8K+BZ12Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rtz-005kS2-2w;
	Wed, 07 Jun 2023 12:04:35 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rtw-005kRR-0O
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 12:04:34 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f62cf9755eso3731468e87.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 05:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686139470; x=1688731470;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KZ6mcI1bKJ1Kz+T1ZnrarK0a6kbd0xZgbwjVj3l23gQ=;
        b=QyNIyfZNjvs9IoORoZOHIWYIzs/i5XmcHk9EYJVDXS+JzHFp2tltW8FHlmN3Sg9g8y
         hmIaMvv6uFlwRmY5iv+w7QkRqDzSkn5JYRvFvqcBd4loOW1d8Q14l2plZfWcAUO+n4IW
         FkuCdTvX+r2gydNGGHI7Im42L/LicBYZK1BKAH1+e3dk8MP1+iJBYYLSjj8JQbVYZwbP
         zpKeR6gtE7iXZlvDqnhUdc3Uf7R54JkbemoUv7uCyRe4x8Pj0u5HLqhKV5RKZjRr1xNv
         q7PZPuZnPszQw1pRNO//YWeWi2lHZCx0AQ/bfQWmd9bu+928uyzC3GJbllU2hKdybS7E
         oRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686139470; x=1688731470;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KZ6mcI1bKJ1Kz+T1ZnrarK0a6kbd0xZgbwjVj3l23gQ=;
        b=KlxmnfKU99n5INbiTU9rn1paLlfQOXF+Lgg+rQvHqEdWqJ28V6VU/g/wewQhx1rb18
         nPbwf363iZ46YsT7AXP4Svp1PPuJubWKAKJ4JDQK2SDLvkEH3bgBmEIY0p4lpK/qllSy
         m3sz7TK7PY5l8NmiqRTzDuiflcIWfbnUiYdilqPwP7ERanwX3sxW2ipQQWeD/NPxSVyJ
         OdPsmF3TS+x+Ce28I2F0YnKSGKYExhzW1rOvoB/+v6peDMFavnXbIPtaWvTM3Ww1DCJF
         93riUjXHgJ5ScFizvxtIf5V+mqwgMRSrE23417tb7mGNsrt5IT4WjwqCCDlIdj0p4uDP
         nRmA==
X-Gm-Message-State: AC+VfDwpxcRo2sN/GnhlxrVYwR/PoTo+zC5pznc3aLMeN0go0MDxRNQA
	JzXiYMp9AKnYu2WXyHbOIGuBcA==
X-Google-Smtp-Source: ACHHUZ65yqG1QTublwh1Yaw6Z8SsrNVJqtjy+wO7w5acN3E/o/a6FRCaVjvVnek45VpoZHg3PnLUmQ==
X-Received: by 2002:ac2:5d2b:0:b0:4ec:8615:303e with SMTP id i11-20020ac25d2b000000b004ec8615303emr1855791lfb.33.1686139470262;
        Wed, 07 Jun 2023 05:04:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q22-20020aa7d456000000b0051631518aabsm6057200edr.93.2023.06.07.05.04.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 05:04:29 -0700 (PDT)
Message-ID: <7cce1d72-6b4d-9fff-32bc-942193388134@linaro.org>
Date: Wed, 7 Jun 2023 14:04:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0 PHY
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Ray Chi <raychi@google.com>, Matthias Kaehlcke <mka@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Flavio Suligoi <f.suligoi@asem.it>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-4-stanley_chang@realtek.com>
Content-Language: en-US
In-Reply-To: <20230607062500.24669-4-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050432_189639_0854283E 
X-CRM114-Status: GOOD (  28.51  )
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

On 07/06/2023 08:24, Stanley Chang wrote:
> Add the documentation explain the property about Realtek USB PHY driver.
> 
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the USB 2.0 PHY transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v2 to v3 change:
>     1. Broken down into two patches, one for each of USB 2 & 3.
>     2. Add more description about Realtek RTD SoCs architecture.
>     3. Removed parameter v1 support for simplification.
>     4. Revised the compatible name for fallback compatible.
>     5. Remove some properties that can be set in the driver.
> v1 to v2 change:
>     Add phy-cells for generic phy driver
> ---
>  .../bindings/phy/realtek,usb2phy.yaml         | 213 ++++++++++++++++++
>  1 file changed, 213 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,usb2phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,usb2phy.yaml b/Documentation/devicetree/bindings/phy/realtek,usb2phy.yaml
> new file mode 100644
> index 000000000000..69911e20a561
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,usb2phy.yaml
> @@ -0,0 +1,213 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Realtek Semiconductor Corporation
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,usb2phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek DHC SoCs USB 2.0 PHY
> +
> +maintainers:
> +  - Stanley Chang <stanley_chang@realtek.com>
> +
> +description:
> +  Realtek USB 2.0 PHY support the digital home center (DHC) RTD series SoCs.
> +  The USB 2.0 PHY driver is designed to support the XHCI controller. The SoCs
> +  support multiple XHCI controllers. One PHY device node maps to one XHCI
> +  controller.
> +
> +  RTD1295/RTD1619 SoCs USB
> +  The USB architecture includes three XHCI controllers.
> +  Each XHCI maps to one USB 2.0 PHY and map one USB 3.0 PHY on some
> +  controllers.
> +  XHCI controller#0 -- usb2phy -- phy#0
> +                    |- usb3phy -- phy#0
> +  XHCI controller#1 -- usb2phy -- phy#0
> +  XHCI controller#2 -- usb2phy -- phy#0
> +                    |- usb3phy -- phy#0
> +
> +  RTD1395 SoCs USB
> +  The USB architecture includes two XHCI controllers.
> +  The controller#0 has one USB 2.0 PHY. The controller#1 includes two USB 2.0
> +  PHY.
> +  XHCI controller#0 -- usb2phy -- phy#0
> +  XHCI controller#1 -- usb2phy -- phy#0
> +                               |- phy#1
> +
> +  RTD1319/RTD1619b SoCs USB
> +  The USB architecture includes three XHCI controllers.
> +  Each XHCI maps to one USB 2.0 PHY and map one USB 3.0 PHY on controllers#2.
> +  XHCI controller#0 -- usb2phy -- phy#0
> +  XHCI controller#1 -- usb2phy -- phy#0
> +  XHCI controller#2 -- usb2phy -- phy#0
> +                    |- usb3phy -- phy#0
> +
> +  RTD1319d SoCs USB
> +  The USB architecture includes three XHCI controllers.
> +  Each xhci maps to one USB 2.0 PHY and map one USB 3.0 PHY on controllers#0.
> +  XHCI controller#0 -- usb2phy -- phy#0
> +                    |- usb3phy -- phy#0
> +  XHCI controller#1 -- usb2phy -- phy#0
> +  XHCI controller#2 -- usb2phy -- phy#0
> +
> +  RTD1312c/RTD1315e SoCs USB
> +  The USB architecture includes three XHCI controllers.
> +  Each XHCI maps to one USB 2.0 PHY.
> +  XHCI controller#0 -- usb2phy -- phy#0
> +  XHCI controller#1 -- usb2phy -- phy#0
> +  XHCI controller#2 -- usb2phy -- phy#0
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtd1295-usb2phy
> +          - realtek,rtd1395-usb2phy
> +          - realtek,rtd1619-usb2phy
> +          - realtek,rtd1319-usb2phy
> +          - realtek,rtd1619b-usb2phy
> +          - realtek,rtd1312c-usb2phy
> +          - realtek,rtd1319d-usb2phy
> +          - realtek,rtd1315e-usb2phy

Keep entries ordered alphabetically.

> +      - const: realtek,usb2phy
> +
> +  reg:
> +    items:
> +      - description: PHY data registers
> +      - description: PHY control registers
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  realtek,usb-ctrl:
> +    description: The phandle of syscon used to control USB PHY power domain.
> +    $ref: /schemas/types.yaml#/definitions/phandle

No, we have power-domains for this.

> +
> +patternProperties:
> +  "^phy@[0-3]+$":
> +    type: object
> +    description:
> +      Each sub-node is a PHY device for one XHCI controller.

I don't think it is true. You claim above that you have 0 as phy-cells,
means you have one phy. Here you say you can have up to 4 phys.

> +      For most Relatek SoCs, one XHCI controller only support one the USB 2.0
> +      phy. For RTD1395 SoC, the one XHCI controller has two USB 2.0 PHYs.
> +    properties:
> +      realtek,page0-param:
> +        description: PHY parameter at page 0. The data are the pair of the
> +          offset and value.

This needs to be specific. What the heck is "PHY parameter"?

> +        $ref: /schemas/types.yaml#/definitions/uint32-array

Array? Then maxItems.

> +
> +      realtek,page1-param:
> +        description: PHY parameter at page 1. The data are the pair of the
> +          offset and value.
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +      realtek,page2-param:
> +        description: PHY parameter at page 2. The data are the pair of the
> +          offset and value. If the PHY support the page 2 parameter.
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +      realtek,support-page2-param:
> +        description: Set this flag if PHY support page 2 parameter.

Why this cannot be deducted from compatible?

> +        type: boolean
> +
> +      realtek,do-toggle:
> +        description: Set this flag to enable PHY parameter toggle when port
> +          status change.

Do not instruct OS what to do. Explain why this is a hardware
characteristic.

> +        type: boolean
> +
> +      realtek,do-toggle-driving:
> +        description: Set this flag to enable PHY parameter toggle for adjust
> +          the driving when port status change.

Do not instruct OS what to do. Explain why this is a hardware
characteristic.


> +        type: boolean
> +
> +      realtek,check-efuse:
> +        description: Enable to update PHY parameter from reading otp table.

Do not instruct OS what to do. Explain why this is a hardware
characteristic.

> +        type: boolean
> +
> +      realtek,use-default-parameter:
> +        description: Don't set parameter and use default value in hardware.

NAK, you are just making things up.

> +        type: boolean
> +
> +      realtek,is-double-sensitivity-mode:
> +        description: Set this flag to enable double sensitivity mode.

All your descriptions copy the name of property. You basically say
nothing more. I already mentioned this before. Don't ignore the
feedback, but address it.

> +        type: boolean
> +
> +      realtek,ldo-force-enable:
> +        description: Set this flag to force enable ldo mode.

Drop everywhere "Set this flag to", because it is redundant. Now compare
what is left with property name.

Property name: realtek,ldo-force-enable
Your description: "force enable ldo mode"

How is this helpful to anybody?


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
