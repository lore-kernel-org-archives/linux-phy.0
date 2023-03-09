Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C356C64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 10:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cEiNjEVtum2GU1LcRmJItLaJ/rXXcIpVdBv9ahs/PA=; b=moCheeR66I0vbk
	sH8w7TzNpYr9A8gT24mWLSf4xZubt9lTeT6Cuax4XqIVl6BXoCcEC+fYwprdUnZDDuvK0zYzhdySV
	kh37kIEhgn3Sit1rh2AG+mPqD8LqO6EtBqwpSYRTgCHoi3Dr/x3G4eVkxXPNbjSgJ6cW4JjjuXj/Z
	irr6V0WzFwcloYIElebIaya3Op8VcDpZF29ztnaa6Q0gTnJMIQP1o7IPJ1dqagaeTWF8CEcV40uue
	HStGlpnu/+wQh5TZRruULy9zMfPDUB2NZ+uIVHHOq1NQ6CY+PGxXCSk7CzhLo0ZSrjX+bMGx5pZrB
	iKdN/9RbLVjempBhspSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDAz-0090Ee-Sn; Thu, 09 Mar 2023 10:07:09 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDAw-0090DO-R7
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 10:07:08 +0000
Received: by mail-ed1-x52d.google.com with SMTP id cy23so4673528edb.12
        for <linux-phy@lists.infradead.org>; Thu, 09 Mar 2023 02:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678356425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1rKZQWrvQdsaiUknj2gLx58N9hXAh/NcUMYH+8P2Io=;
        b=NiDoNuNKomZlAKL/pzyIYZUo/9we1SdUtGyI3dm+QSAUoxdzMY/2nMis/n7ozTn75i
         HSwbe8wbQkXHxOAs30NTUKURdBt9sThyysncB6m1Yo6aDJ2QzR6S4UBYIDhbPFiTBSC/
         NihP53M2ZqKtlgm4yaGtqyG3HVJNt/CwqGCdK1ZKu/Hg0yf6pnT5gnzUTlaBP4rpoRES
         uhG/BDxi+XD/M4qr0/qq3y04uC4Gr1kA6DxGhWxgYgjE/nmgwwsrRWf7mTcU58Thgez8
         GM9JgCHjwZxLJG1YapfL1jM3GriBjqgbZ0qxTMbX+mbpUzM/5+857XK4DKHmVZdcU+ej
         c9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678356425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O1rKZQWrvQdsaiUknj2gLx58N9hXAh/NcUMYH+8P2Io=;
        b=DkqkBfB56R6uYI/IKwImMT3PpIrVC/e7MCoR8zCWFeEiEWYzT7a0xwTFrUYPe4wIUF
         DeyFZJ23A8xOuthDyUl8W+1NjNFhzAFS80fFhD/woV/VrZe+MaynSLuQcB3cg4/GZXgE
         47SEemRS1M9JpbpWlkI/RM2eUsUxZE2+Gc31nxGRxOuqXca0a5FHJ/Z0eVq0TfgQqwLw
         aX8lMMxPn86gETVUmshZJNYkvPhr7smtX6B8q6tpWGZvTTITqxvE3UE4fBtgXKv+U+BJ
         e1NlE4hUELsWVIB5aZVeZgt4Tsu9CvYfT9/fjVSmP2xhTmf3LjgBDIhXoU+/xABuwOwW
         UenA==
X-Gm-Message-State: AO0yUKXwIrgP9sVsdnmmJF376713pA5wWF0pUDx5TMwZxgzxJDSJyKQP
	hrMilwIAn1hc4/9cnf/vcwg5vg==
X-Google-Smtp-Source: AK7set9dG7e71ZUsBA8QSEtjZmcxScdoi257cMlVacjcfvEL5jfaX1PVjAAYQWu+1xVUYACTvB0xpA==
X-Received: by 2002:a17:907:8b16:b0:8b1:2e7c:df49 with SMTP id sz22-20020a1709078b1600b008b12e7cdf49mr23571182ejc.7.1678356425261;
        Thu, 09 Mar 2023 02:07:05 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:7ee2:e73e:802e:45c1? ([2a02:810d:15c0:828:7ee2:e73e:802e:45c1])
        by smtp.gmail.com with ESMTPSA id t25-20020a50c259000000b004efd65452a5sm3335676edf.70.2023.03.09.02.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 02:07:04 -0800 (PST)
Message-ID: <8124eed7-b9ab-046d-4eb2-9b853ce2bcdd@linaro.org>
Date: Thu, 9 Mar 2023 11:07:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add StarFive JH7110 USB
 dt-binding
Content-Language: en-US
To: Minda Chen <minda.chen@starfivetech.com>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Pawel Laszczak <pawell@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Chen <peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20230308082800.3008-1-minda.chen@starfivetech.com>
 <20230308082800.3008-2-minda.chen@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308082800.3008-2-minda.chen@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_020706_984808_AE43BC45 
X-CRM114-Status: GOOD (  18.32  )
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

On 08/03/2023 09:27, Minda Chen wrote:
> Add StarFive JH7110 SoC USB 3.0 phy dt-binding.
> USB controller is cadence USB 3.0 IP.

Subject: drop second/last, redundant "binding". The "dt-bindings" prefix
is already stating that these are bindings.

> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> new file mode 100644
> index 000000000000..daa88d065deb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> @@ -0,0 +1,158 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive USB 2.0 and 3.0 PHY
> +
> +maintainers:
> +  - Minda Chen<minda.chen@starfivetech.com>

Missing space

> +
> +properties:
> +  compatible:
> +    items:

Drop items, it's just one item.


> +      - const: starfive,jh7110-usb
> +
> +  reg:
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: usb3
> +      - const: usb2
> +
> +  clocks:
> +    items:
> +      - description: usb 125m clock
> +      - description: app 125m clock
> +      - description: lpm clock
> +      - description: stb clock
> +      - description: apb clock
> +      - description: axi clock
> +      - description: utmi apb clock
> +
> +  clock-names:
> +    items:
> +      - const: usb_125m
> +      - const: usb0_app_125
> +      - const: usb0_lpm
> +      - const: usb0_stb
> +      - const: usb0_apb
> +      - const: usb0_axi
> +      - const: usb0_utmi_apb
> +
> +  resets:
> +    items:
> +      - description: USB0_PWRUP reset
> +      - description: USB0_APB reset
> +      - description: USB0_AXI reset
> +      - description: USB0_UTMI_APB reset
> +
> +  starfive,sys-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle to System Register Controller sys_syscon node.
> +        - description: offset of SYS_SYSCONSAIF__SYSCFG register for USB.
> +    description:
> +      The phandle to System Register Controller syscon node and the offset
> +      of SYS_SYSCONSAIF__SYSCFG register for USB.
> +
> +  starfive,stg-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle to System Register Controller stg_syscon node.
> +        - description: register0 offset of STG_SYSCONSAIF__SYSCFG register for USB.
> +        - description: register1 offset of STG_SYSCONSAIF__SYSCFG register for USB.
> +        - description: register2 offset of STG_SYSCONSAIF__SYSCFG register for USB.
> +        - description: register3 offset of STG_SYSCONSAIF__SYSCFG register for USB.
> +    description:
> +      The phandle to System Register Controller syscon node and the offset
> +      of STG_SYSCONSAIF__SYSCFG register for USB. Total 4 regsisters offset
> +      for USB.
> +
> +  dr_mode:
> +    description: PHY mode.
> +    enum:
> +      - host
> +      - peripheral
> +      - otg
> +
> +  "#address-cells":
> +    maximum: 2
> +
> +  "#size-cells":
> +    maximum: 2
> +
> +  ranges: true
> +
> +  starfive,usb2-only:
> +    type: boolean
> +    description: Set USB using usb 2.0 phy. Supprt USB 2.0 only
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - resets
> +  - starfive,sys-syscon
> +  - starfive,stg-syscon
> +  - dr_mode
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +patternProperties:

This goes before required block

> +  "^usb@[0-9a-f]+$":
> +    type: object
> +    description: |
> +      usbphy node should have '1' usb controller subnode.
> +      It could be Cadence USB3 DRD controller.
> +      Cadence USB3 should follow the bindings specified in
> +      Documentation/devicetree/bindings/usb/cdns,usb3.yaml

$ref instead of free form text


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
