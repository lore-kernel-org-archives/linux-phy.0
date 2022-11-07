Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED6BC4321E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 10:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahvjlpwH6Uqr5RTHfMd84JR/fXPbHuPYUSDMF4YRI4w=; b=qblHtSzeuOTcU6
	9CU8U60OTyTupLmoKdeb1DIR72KniR0mWvj1NIdPmhp4fNTvtAg2EhzWVdopGPuNnDmRj52xCw0UB
	c9ykFs6qNkXrxQ/r28GzZfwZf17D0InFdHfvB38AUSTZkC0ivFSe7Nps0Nw/dfpggSyTOobtHlblu
	FFldfZVc6LdzKAl+d6ZwGTYNu/ArbssMDHNGrq8hEMkWGeboMHDd0/6/UBDS9ow7ottrYBQXNnDDp
	dcT/P3rb6wA1VwbJ+eFrDD05uF45hS6MUpMFoXHHKChTdvBfq9ClTQl0km1nNJypR2GV9rlxJfSgX
	VHsjt+MIC+0MoKeRVlTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oryy9-00DabT-TF; Mon, 07 Nov 2022 10:03:05 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oryy7-00DaTL-DP
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 10:03:05 +0000
Received: by mail-lj1-x229.google.com with SMTP id h12so15377242ljg.9
        for <linux-phy@lists.infradead.org>; Mon, 07 Nov 2022 02:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RM9kb3J3wnBPlGqqjFbWWIP1RllNoZN+0SAF5Yq6Zr4=;
        b=zMGUtZu0IWNgDwJWBtEWy+3qUj/xZTiJLH3eT3yNKcOiC0kvdCoCfBnbH1cJLBnnjl
         78/SC5P1u0YdAdrVaJTsU1Ycn8In4GnViWJn/G/x7qA2x2GhGO7S3pfdg3MuxGB+ttQG
         EsZ9Ry4krL/6ZuqYd9u2jpHP+gADgE1CWK7uzdTM2MNs0Hp7hSAYGx55rldPnMl39vOo
         AZsoNaHN2Ualx8AYYKKHE7XOeTVDZLlI3jSLcVavcUL/QW1AavkAELbHnGQKEz5gFIZ2
         IKC0P8DkF9tWPQx7i6uRDGNa9bMHsEMOYpi8pYcU0/ZfmGGAhd6Mm5tGhAr37xRagpdj
         r/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RM9kb3J3wnBPlGqqjFbWWIP1RllNoZN+0SAF5Yq6Zr4=;
        b=AkI/8q6wnb4TLlke5+mQb6FlSH4/3fIUwtunjGgNnpGQ157oYSecOVKEQiIKDXSj5j
         Pek8SKioSlWukl5ao3TpolWmoRunrmf2JJ0r3BCKCFmSAJQ64Ah/1PH5/I4L2aUwLOgR
         /9/acqVPWssBQaPoNZXnxC25OlQNJcqQ8QksHA5rTpex4KdIZERMaol6t0xOYKqfh+lV
         HSAkVEjwyUIRqHhVhY/lB70DAtmHXuSWxUDCS7LmizCfCBru9v6Hsb4Kh0YJfd1cGLjv
         pCha+XMXV57kC97TwmJTqglLxv5Nw3Vl71FaL1Y2ze6EIiWUa/FPNgtkeePU+VLvNeZB
         APqQ==
X-Gm-Message-State: ACrzQf3+j2drIgBR6l3+DQCcfN+DrGWEntc9jIHyRDk9sWTd7sqajYAZ
	uplM/KYgXZW0cV7DVDX5d3MYTQ==
X-Google-Smtp-Source: AMsMyM45Nd4u9vh1fgVyjMywXV/syU6IzBqqpec13oIq/b2S10en3aGDNpC5XgVj+PXwKcO/NWFW4A==
X-Received: by 2002:a2e:80c4:0:b0:277:fa0:d500 with SMTP id r4-20020a2e80c4000000b002770fa0d500mr5209054ljg.51.1667815381318;
        Mon, 07 Nov 2022 02:03:01 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id t3-20020a19ad03000000b004a459799bc3sm1150870lfc.283.2022.11.07.02.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 02:03:00 -0800 (PST)
Message-ID: <ab8528cc-fa5d-35da-0c6e-cdebc694f646@linaro.org>
Date: Mon, 7 Nov 2022 11:02:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Jitao shi
 <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 mac.shen@mediatek.com, linux-phy@lists.infradead.org
References: <20220919-v3-0-a803f2660127@baylibre.com>
 <20220919-v3-2-a803f2660127@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v3-2-a803f2660127@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_020303_493482_9B76C0D2 
X-CRM114-Status: GOOD (  18.00  )
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

On 04/11/2022 15:09, Guillaume Ranquet wrote:
> Add mt8195 SoC bindings for hdmi and hdmi-ddc
> 
> On mt8195 the ddc i2c controller is part of the hdmi IP block and thus has no
> specific register range, power domain or interrupt, making it simpler
> than its the legacy "mediatek,hdmi-ddc" binding.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>  .../bindings/display/mediatek/mediatek,hdmi.yaml   | 61 ++++++++++++++++++----
>  .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml | 51 ++++++++++++++++++
>  2 files changed, 101 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> index bdaf0b51e68c..9710b7b6e9bf 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> @@ -21,6 +21,7 @@ properties:
>        - mediatek,mt7623-hdmi
>        - mediatek,mt8167-hdmi
>        - mediatek,mt8173-hdmi
> +      - mediatek,mt8195-hdmi
>  
>    reg:
>      maxItems: 1
> @@ -29,18 +30,12 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    items:
> -      - description: Pixel Clock
> -      - description: HDMI PLL
> -      - description: Bit Clock
> -      - description: S/PDIF Clock
> +    minItems: 4

Drop minItems, it's not needed when equal to maxItems.

> +    maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: pixel
> -      - const: pll
> -      - const: bclk
> -      - const: spdif
> +    minItems: 4

Drop minItems, it's not needed when equal to maxItems.


> +    maxItems: 4
>  
>    phys:
>      maxItems: 1
> @@ -58,6 +53,9 @@ properties:
>      description: |
>        phandle link and register offset to the system configuration registers.
>  
> +  power-domains:
> +    maxItems: 1
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -86,9 +84,50 @@ required:
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
> +
> +      required:
> +        - power-domains
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
> +      required:
> +        - mediatek,syscon-hdmi
> +
>  additionalProperties: false
>  
>  examples:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
> new file mode 100644
> index 000000000000..2dc273689584
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek HDMI DDC for mt8195
> +
> +maintainers:
> +  - CK Hu <ck.hu@mediatek.com>
> +  - Jitao shi <jitao.shi@mediatek.com>
> +
> +description: |
> +  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.
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
> +      - const: ddc

Unless you expect it to grow, I propose to drop clock-names. It's not
useful when the name is the same as name of hardware.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
