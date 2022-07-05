Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCA20CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huYUwgZjrp7G40RJU3DH9KR4ONX/pY7QinRwLMamAts=; b=doNfo5JcsaZmmb
	nn9YSBFrRokyjyYSsc5CAl+COfMr46KMnKTs57HAmEa3ThiTjwup+aC0y+MpbRu1lbFsx3Bf5luti
	C7sL/ianYI43a1f89YHrqYMFEgXEReV0aPZWjxV461UoyI9jvSmVP9J1BwzlmwAigPImDuAJT9GB1
	p3kE0rzF6aCBR6v69Mbm4Ej3LGA5JdwgFqEajdstSJrzRIXBZ+uEU2HssodJHruy0+xAVGSJ8Kpc2
	mqopkf1GfliYLBkQXstY46WvOb3OQt9C2GMn+JZORqcPCkiEhtLoPGixXDYARoTUl1F4aXrYdgwQY
	7rDBtgbAW/8PMn8iJvcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fU5-00H4ms-8W; Tue, 05 Jul 2022 10:08:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fU1-00H4m8-Hq
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:08:43 +0000
Received: by mail-lf1-x130.google.com with SMTP id t19so19062683lfl.5
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2RMdNnVhmAig0n7CGXZwiZm5h665r/1QoJMm/NVYot0=;
        b=OqiLE5Zn6WCkXM4xkFUC6fyOaa+RBb5K7k6Af3nP1tqcmlqBKvpq/bhMuyyEa2EnAP
         zEH9OacpQ3qCISmeT8f6m/cCmRq4YRKCaxxh85cMFcZ7/SroF7Q7ctWPj6XbJlYa4Hp+
         k9K0HBJNprRdUYJsiI5uqsFET22WP5C0YTq9SD+0pxZKkkP9on7Yq5BCHRWtgG2uo1KG
         yqDVDFA+eIM7AKaWdqHzPzWv75rXGlwLzOn9JyFW+hIBrHBd8ehQ1Bf1HvRgzvdkgDSl
         icxRsOqRiQWBCB+uZpXK7quyKExWnsFFLbySK9yVh2J2hzs4UjjTmmKPTTOkaqLHX73n
         adlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2RMdNnVhmAig0n7CGXZwiZm5h665r/1QoJMm/NVYot0=;
        b=iLVEZcBu1zoQURaCHEhbUWqtg+/WjkpQtunT8CB7wjZ2vBYQKobbCn5wCRGjcjL7eY
         FOUFt2TX5Cj0HyHTOgxWnKKsoxbJTfOcuLSEH70xIQk5BV0O3RLtr0Fz8DMdt4O+mvoh
         7qx2B4xpEHJcs765dydORjcKeSSPjgk7piLrM1i/51JvIQSYkPrsh42kVZ/i07lvuSbZ
         fJKRKuLAFII3aVvSk3gTWlxRv4svqUinjyyz7lTxmb8XDwU/OfL5AjQp8S9X00c5I0Lv
         8hm6EMrMVPemglOejbRjuh0TIlKZ8LHQqmUtBjOiPlSkz6LtGqJ9BMk7SNJBgJejnIVX
         XrLQ==
X-Gm-Message-State: AJIora+kIbn1S0gtB9zxxQMlkhm/0kCUUnvjSoZMz9dO8BDQpJuZqHB+
	n25gznSgv6dEXJUUkvTHW6OmJg==
X-Google-Smtp-Source: AGRyM1vVjkpJqRvWsAHuK0+v/9PE/cEyzGY4WQX7GHa9pKdllYnAodTXMiSdl2SF4cRkv3/JhZ/WkA==
X-Received: by 2002:a05:6512:b0d:b0:481:5cb4:cf1e with SMTP id w13-20020a0565120b0d00b004815cb4cf1emr14283070lfu.442.1657015718985;
        Tue, 05 Jul 2022 03:08:38 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id p10-20020ac24eca000000b0048160c5e625sm2258261lfr.12.2022.07.05.03.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:08:37 -0700 (PDT)
Message-ID: <46b0cdab-aa94-7f55-5d9f-f79a644f0fec@linaro.org>
Date: Tue, 5 Jul 2022 12:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/43] dt-bindings: phy: qcom,qmp: split out
 msm8996-qmp-pcie-phy
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-7-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030841_660408_D62BE0A4 
X-CRM114-Status: GOOD (  17.03  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
> msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
> "per-lane" nodes.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 114 ++++++++++++++++++
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  32 -----
>  2 files changed, 114 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> new file mode 100644
> index 000000000000..14fd86fd91ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> @@ -0,0 +1,114 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

No line break

> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,msm8996-qmp-pcie-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop the quotes from two above.

> +
> +title: Qualcomm QMP PHY controller (MSM8996 PCIe)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> +
> +properties:
> +  compatible:
> +    const: qcom,msm8996-qmp-pcie-phy
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: Address and length of PHY's common serdes block.
> +      - description: Address and length of PHY's DP_COM control block.

Are two reg items applicable here?

> +
> +  "#address-cells":
> +    enum: [ 1, 2 ]
> +
> +  "#size-cells":
> +    enum: [ 1, 2 ]
> +
> +  ranges: true
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 4

Define clocks here, not in allOf:if:then.

> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 4

Ditto

> +
> +  resets:
> +    minItems: 1
> +    maxItems: 3

Ditto

> +
> +  reset-names:
> +    minItems: 1
> +    maxItems: 3

Ditto

> +
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a regulator supply to PHY core block.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
> +  vddp-ref-clk-supply:
> +    description:
> +      Phandle to a regulator supply to any specific refclk pll block.
> +
> +patternProperties:
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Each device node of QMP PHY is required to have as many child nodes as
> +      the number of lanes the PHY has.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,msm8996-qmp-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: PHY aux clock.
> +            - description: PHY config clock.
> +            - description: 19.2 MHz ref clock.
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: ref
> +        resets:
> +          items:
> +            - description: Reset of PHY block.
> +            - description: PHY common block reset.
> +            - description: PHY's ahb cfg block reset.
> +        reset-names:
> +          items:
> +            - const: phy
> +            - const: common
> +            - const: cfg
> +      required:
> +        - vdda-phy-supply
> +        - vdda-pll-supply

How about an example?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
