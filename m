Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B1BC7EE2A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 17:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=986ZI7jH6nz3etGzcM4wjaxLpdDuYGgkZautoe96D2A=; b=bRUfuVKK/REfCM
	2s5DdqCQDWFfJmj0izFvefLeIOEOLsqP3Qw4fhhvO84LallS8iw3/JDWKYSPy3LT8jHa581xANd80
	OMAIWrcAhjGRbBmAtY77Xij4nTUDpeCQaFz8Qft+tZ8HFBSMNhqrutaodqfg0Sm9qvB2i0BqJ2JtF
	djOI97MrQIK7qvYweLRMRR1pGw2UMCruVnrD6EKm3bUBQ0vhPitr7ncWnjVNznOWSAIATxHeprty2
	8CI1mxJDUrNZQFlJZ2GcWYxkgE3Nu6tm8ddVqdyTmn9BUIpJfKJU/X/ZhCRXYV0WKvA5rmwKfBX43
	WV3BlyywqnzrPibo0I9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4m59-004PgQ-1B;
	Thu, 01 Jun 2023 17:27:27 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4m56-004PeP-2L
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 17:27:26 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-96f7bf3cf9eso170337666b.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Jun 2023 10:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685640441; x=1688232441;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ywHAd7umX8c1mvBvuckFfVUydEsgHA+GJNFS0AltCkY=;
        b=BgGNoDLofuERQiTZN/lQ0c7R8WrONxNiD/F9UORGVlGQ/z0mw+rldKvQjq8D/q7V86
         qkWwITW330snlXH76bz7qIY4w/OEW/xj8R25shaX5GcmhgGi75ZvWSdO9icgK/GNu70f
         ccEIkX7g9y80DYcHIWIvpAhoQ3o0besVhoTD4o3D6Zk+JIP0C06YJ/bAe4qqbZslnFtO
         KPO1nbInLw29zJZgTCYQObWX1RPwQBuaVvFtn9Sqm2bkXOg/vM3dtZDSR1JTPNS6qSnl
         rVa6nhocKOHe+Xo4nib4MUyxPaO5PYVOBWxLd7TMb1pEmt/cogsGaPZxO35Ow2lxrALe
         O/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685640441; x=1688232441;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ywHAd7umX8c1mvBvuckFfVUydEsgHA+GJNFS0AltCkY=;
        b=GVI4HsHkmtY0PD8htIF4gbV3BgT3HOPkFiPint1dI/qFqgzRS6GIN3/I/SActeVXDL
         qRdoImD/qWSr9EXQTG5wsgTGPTUOzT+JV/VBXDDVRA8xGdw3zCKQvcHFpPCr2s/XRrMd
         ouPe2DqiUKQq79gJVdoRYiWwIpRF7X9xlzUZND37sX5fTjteBJz0VAz0XkoSeIiIeSi/
         vTOecwDmncQ1zCGisxT4vWvQ/3Qz0P3YKroLb1oa4G6lTN8YcSil2icka5+ua2G4SdUu
         mgxqT4+pqAzugpSNHXgC9aIZmJQRwf0D2Oqu3bk5IR2ls5gW7NfY47pVChf0Cf8S+4vi
         +eFA==
X-Gm-Message-State: AC+VfDw86VO1H2GL1cp+lbC8T+UUT8TV/3Bq3rN10qgXtNci46SMknL5
	s46n/PQCVLVbqorMh23TLL3dvw==
X-Google-Smtp-Source: ACHHUZ6VsFFYuiOtcvmekbYesmy2WkkSPy+SmgogYFK66VXaWe3UBLyCCmqvWDQLlcaV3532Bqv9Kw==
X-Received: by 2002:a17:906:4fc7:b0:96f:c988:941 with SMTP id i7-20020a1709064fc700b0096fc9880941mr8516840ejw.15.1685640441032;
        Thu, 01 Jun 2023 10:27:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id gt5-20020a170906f20500b0094ee700d8e4sm10846983ejb.44.2023.06.01.10.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 10:27:20 -0700 (PDT)
Message-ID: <21819d30-1df4-15a9-f458-32162f2a82b9@linaro.org>
Date: Thu, 1 Jun 2023 19:27:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema
 format
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230601080723.1556461-1-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601080723.1556461-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_102724_765658_1A687DED 
X-CRM114-Status: GOOD (  15.79  )
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

On 01/06/2023 10:07, Xu Yang wrote:
> Convert the binding to DT schema format.
> 


Thank you for your patch. There is something to discuss/improve.


e/bindings/phy/mxs-usb-phy.yaml
b/Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml
> new file mode 100644
> index 000000000000..48b0e654e52c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml

Filename matching compatibles, so for exmaple fsl,mxs-usbphy.yaml.

> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/mxs-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale MXS USB Phy Device
> +
> +maintainers:
> +  - Xu Yang <xu.yang_2@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,imx23-usbphy
> +          - fsl,vf610-usbphy
> +      - items:
> +          - enum:
> +              - fsl,imx28-usbphy
> +              - fsl,imx6ul-usbphy
> +              - fsl,imx6sl-usbphy
> +              - fsl,imx6sx-usbphy
> +              - fsl,imx6q-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - enum:
> +              - fsl,imx7ulp-usbphy
> +              - fsl,imx6sll-usbphy
> +          - const: fsl,imx6ul-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - const: fsl,imx8dxl-usbphy
> +          - const: fsl,imx7ulp-usbphy
> +          - const: fsl,imx6ul-usbphy
> +          - const: fsl,imx23-usbphy

I cannot find these in the old bindings. Please explain changes to
conversion in commit msg. So far you wrote that it is pure conversion.

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +  fsl,anatop:
> +    description:
> +      phandle for anatop register, it is only for imx6 SoC series
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    maxItems: 1
> +
> +  fsl,tx-cal-45-dn-ohms:
> +    description:
> +      Resistance (in ohms) of switchable high-speed trimming resistor
> +      connected in parallel with the 45 ohm resistor that terminates
> +      the DN output signal.
> +    minimum: 35
> +    maximum: 54
> +    default: 45
> +
> +  fsl,tx-cal-45-dp-ohms:
> +    description:
> +      Resistance (in ohms) of switchable high-speed trimming resistor
> +      connected in parallel with the 45 ohm resistor that terminates
> +      the DP output signal.
> +    minimum: 35
> +    maximum: 54
> +    default: 45
> +
> +  fsl,tx-d-cal:
> +    description:
> +      Current trimming value (as a percentage) of the 17.78 mA TX
> +      reference current.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 79
> +    maximum: 119
> +    default: 100
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +

missing allOf narrowing anatop to imx6. Also interrupts and reg should
be narrowed to respective variants.

> +unevaluatedProperties: false

Instead additionalProperties: false.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    usbphy1: usb-phy@20c9000 {
> +        compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
> +        reg = <0x020c9000 0x1000>;
> +        interrupts = <0 44 IRQ_TYPE_LEVEL_HIGH>;

Is 0 known flag? Use defines for it.

> +        fsl,anatop = <&anatop>;
> +    };
> +
> +...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
