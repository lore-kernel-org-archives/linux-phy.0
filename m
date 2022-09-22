Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D807C6FA91
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVfi+fJ5RwSMufONto3mldHXCSqNtKz8vxw63tXsg80=; b=fjEulFnaQhbJlX
	8tWOVoPgmxgCK0aEq/C8PZTl+Yt7SjsV58R9w55GyEdTTb/69vJ7mfdfwMzCaKmGVsCge1X1FY8fY
	aMdIplU59i4ev8JKV2HBHeuBBZFBmXcqQd6hHNprLGEASSUaTKXjoZKWELRbD3/WY8rFIb0kXnl6k
	QcJ/VFrdiRFbf6eW7Zrz2RUMMvoXMHQTRw5HxSHysQz0AuWjuOu46aLUzBjXeDzhpqyzY0uj/pEEs
	MXssB5XZRXpNKVSUO5vQ9PfBA8iNurU2sFii9C67Io6DdKNXq5fjoY3axzkzE7/sHjgAof8JckMF4
	HvCYObdZW4lPhKXSMdxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGU4-00DlrN-2I; Thu, 22 Sep 2022 07:18:56 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGU0-00DloV-5U
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:18:54 +0000
Received: by mail-lf1-x12e.google.com with SMTP id u18so13164299lfo.8
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ln6ZeHzfzIh7ZyAvFY4CPd7Whze3jXvv2P2xFSPlMGQ=;
        b=ErecUnfehksu48GfFXY1dB5cjHTxnXqpVDD2eczsRIHNXp0+fJGKID0aaV7oXQ+xM1
         7UzGFYZkEODN1QvfiSBIgr2dlG1gSVGBXkfNyZhTWIky0TloopA9PS41gknISZvJWgdo
         QOK/0CIOeWjFvLaLoww1LRicmQ3cwIddX6Gocz2h7pRmKyxD+qR0Q5uvuys1dFSs+hJk
         XfdKZr+7mkvgKE75usGv6nSPF1edW0PsXbToJ70O5MZXvT51FnFdZcXi9LzwtjvjJlgY
         C8aNoEY+6FTSxr0nEmsUcvgeMg0XhqVHnZF0/zZ3ESBQqElajl9A8qvfwjQvbTWOnYbF
         Hqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ln6ZeHzfzIh7ZyAvFY4CPd7Whze3jXvv2P2xFSPlMGQ=;
        b=kWZEWvsKOEBM2SMj7Qo3KAwEWPmJpqax3eN3GoIk4dRxuMW3vTbAAZG3gkzsl6WVc8
         QPUOqiJOKRMzYbu4bwrmzo+alvqKt8Ui8v8tu+X0UIM6iBMP/vrA1ErpzVVCETB4rWBn
         XEn07G4hio6zWleFqx9xP/f2GmLaZ8ttZ0OQmSa5RuDcvAJ+k17rdZLGN11o4XOSS968
         DcxJEGFHJY9YjkvIlZ8BKvqh4UyJ/tmTxltBkAvWdmtBKLw460uxRgjIjr9xkHwP8rhG
         sq8cQncE2xtUpfgemVZrwQntZfrjn27odKQVIEU7VkUseYlemOVxWpnwQBUVBMrpVLUI
         t34w==
X-Gm-Message-State: ACrzQf0yOysWJ+9evEKnedDzcXWUE8UPqNPNR5BnYy4vif5wdjW8Czof
	f15AR01av76WYbcSK9JTo4TtXg==
X-Google-Smtp-Source: AMsMyM47YFDCy8AwIT5M8sGMUa+EUaCIIo1zk4WZ+rlWlbFfVtDdWjoBH6LrVg/wiXrtgWAh0UwMAA==
X-Received: by 2002:a05:6512:11e9:b0:49f:d530:9f25 with SMTP id p9-20020a05651211e900b0049fd5309f25mr749322lfs.533.1663831130309;
        Thu, 22 Sep 2022 00:18:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a7-20020a19f807000000b0048b256bb005sm804039lff.49.2022.09.22.00.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:18:49 -0700 (PDT)
Message-ID: <260bb17f-efc8-1287-3e03-f9b8e79a6e31@linaro.org>
Date: Thu, 22 Sep 2022 09:18:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 04/17] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-4-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-4-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_001852_289263_571DCBB0 
X-CRM114-Status: GOOD (  17.83  )
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

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add mt8195 SoC bindings for hdmi and hdmi-ddc
> 
> Make port1 optional for mt8195 as it only supports HDMI tx for now.
> Requires a ddc-i2c-bus phandle.
> Requires a power-domains phandle.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> index bdaf0b51e68c..abb231a0694b 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> @@ -21,6 +21,10 @@ properties:
>        - mediatek,mt7623-hdmi
>        - mediatek,mt8167-hdmi
>        - mediatek,mt8173-hdmi
> +      - mediatek,mt8195-hdmi
> +
> +  clocks: true
> +  clock-names: true

????
Why is this moved?

>  
>    reg:
>      maxItems: 1
> @@ -28,20 +32,6 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> -  clocks:
> -    items:
> -      - description: Pixel Clock
> -      - description: HDMI PLL
> -      - description: Bit Clock
> -      - description: S/PDIF Clock
> -
> -  clock-names:
> -    items:
> -      - const: pixel
> -      - const: pll
> -      - const: bclk
> -      - const: spdif

Clock definition with constraints should stay here. You just customize
it per variant.

> -
>    phys:
>      maxItems: 1
>  
> @@ -58,6 +48,16 @@ properties:
>      description: |
>        phandle link and register offset to the system configuration registers.
>  
> +  ddc-i2c-bus:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Drop quotes

> +    description: Phandle to the ddc-i2c device

Isn't this property of panel?

> +
> +  power-domains:
> +    description:
> +      A phandle and PM domain specifier as defined by bindings
> +      of the power controller specified by phandle. See
> +      Documentation/devicetree/bindings/power/power-domain.yaml for details.

No need for this text. This is standard property. You miss maxItems.


> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -76,7 +76,6 @@ properties:
>  
>      required:
>        - port@0
> -      - port@1
>  
>  required:
>    - compatible
> @@ -86,9 +85,55 @@ required:
>    - clock-names
>    - phys
>    - phy-names
> -  - mediatek,syscon-hdmi
>    - ports
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8195-hdmi
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: APB
> +            - description: HDCP
> +            - description: HDCP 24M
> +            - description: Split HDMI
> +        clock-names:
> +          items:
> +            - const: hdmi_apb_sel
> +            - const: hdcp_sel
> +            - const: hdcp24_sel
> +            - const: split_hdmi

Clocks are entirely different. I am not sure there is benefit in keeping
these devices in one bindings.

> +
> +      required:
> +        - power-domains
> +        - ddc-i2c-bus

Blank line,

> +    else:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Pixel Clock
> +            - description: HDMI PLL
> +            - description: Bit Clock
> +            - description: S/PDIF Clock
> +
> +        clock-names:
> +          items:
> +            - const: pixel
> +            - const: pll
> +            - const: bclk
> +            - const: spdif
> +
> +        ports:
> +          required:
> +            - port@1
> +
> +      required:
> +        - mediatek,syscon-hdmi
> +
>  additionalProperties: false
>  
>  examples:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
> new file mode 100644
> index 000000000000..3c80bcebe6d3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek HDMI DDC Device Tree Bindings for mt8195

Drop Device Tree Bindings

> +
> +maintainers:
> +  - CK Hu <ck.hu@mediatek.com>
> +  - Jitao shi <jitao.shi@mediatek.com>
> +
> +description: |
> +  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.

Why is this different than existing ddc bindings?

> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8195-hdmi-ddc
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: ddc-i2c
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    hdmiddc0: ddc_i2c {

No underscores in node names. Generic node names.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
