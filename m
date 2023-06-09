Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7C7C7EE2E
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 16:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxlI1xVIsHfUq2My++4aWMTIdysTzNia05eMLHdSzm8=; b=nhsteaWKeGciqN
	KNgelXRomCxohn9+EKwzOtt0ePp+GKQRCdS5qWc5rjTIKAu4HrSoY7+zcysMJ9RdpDc3aqycd6K14
	0fKjzqfGkRBz8yn0JjkvAynx4XeAU+EK20l0qqBKdI+knJ2+7V1Pr2auiW/NS5Jsz8CEw99ncL9pn
	6hFTL5wTojvv8vC1RxvEUi8o1G56LgB7Ov3WXvnwq+JZX0wSWwjmC21UQ54eWOJnN4P5y+M6Skw3N
	0gIGn9WSOiM1/8xI24y40q8VE4asSYS75s9zpqg/eRhIeZUhzHroh3wz8y5FifliUN6mJ5owjaB/x
	zhNv+D3OWOq5geHFqhuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7fDL-00DdW7-2K;
	Fri, 09 Jun 2023 16:43:51 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7fDI-00DdTR-27
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 16:43:50 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-973f78329e3so335371266b.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 09:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686329025; x=1688921025;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CDvwJ9aeIkOA3iXyv0MPp32gXWxaPsXZJPItdpmp4w0=;
        b=xmogwDKhpfrIvfAo3aZ+ZANC+mmK04qhGYoKJuRWdwU1uR0hGSwc2J2In+93mOMrtd
         zZ+Nbc/v+/sPh7QcxiqXiyHYHNG98GlRdbbeZM3Tu+gtmnJ0mj/F6+zx4BZ9fjWikiBg
         WZOQbJL2nHrhLcAP+SPpyyC2LAWhhKokpqe6PIbn0wQHGKnrT+Y4f+nTZKiqTzQ/BAbM
         Vrv+4aQxAWSnQp4VFFtYaVkQ4F6gNFsmr8dYpgRXP+Spexn1EtUvG0ja2KOqV7h/+9/c
         AdscdOwVWDbAawYTuob/OUZ4D2H2BUVYmOKL4amljHDB2O+hIsQv3cn1qB2wTxe5wTx/
         WkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686329025; x=1688921025;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDvwJ9aeIkOA3iXyv0MPp32gXWxaPsXZJPItdpmp4w0=;
        b=IVX9Wv65icd5//LbIFhC4pIIOmXTonWEu8sDfuCN3klKr0ZTdz0TWDC4LZL5fWIp3M
         8LFZpGpqwz8ftSX+oN2351Qfh3mDfOjQZ5yzYg2GHrBK8fdaKmIZ3mMNHonI2ESD6vwO
         8FGT5lgxQJKPRlGtm8iMLjG8gxhnIoR8ZMsRsAiPxOjqZvxwvlQCSGX0GgDWl1VtE8E7
         7ZAc0BAgpS1VrOjdMQKrHOf/12RNvevZo5xUbnbx+U2gXl2S9Wyy7Fb/ARFPO/TOPS5u
         UvtjXDDSP7uQlxagGMn1aNbBhrzgfr0gsfQF+36bRJn+UUMEnIeLeUJamHt/A+bKPTai
         4vtQ==
X-Gm-Message-State: AC+VfDx9UoxnXFBbsWabdo7ZtSxmE0xIFwBDpYYTbQTOrV/bCoLzsuls
	XQVnsOYCaWwO4ZmH52Y1VT6uEg==
X-Google-Smtp-Source: ACHHUZ7gTP+FH0+rX1aclSuynljP+FikYYhxF2C0Ydmc0OQ2iOdaBhUrUhXrrGI3di08c96cueJ7Hw==
X-Received: by 2002:a17:907:9620:b0:978:8790:9103 with SMTP id gb32-20020a170907962000b0097887909103mr2808905ejc.70.1686329024821;
        Fri, 09 Jun 2023 09:43:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id dk17-20020a170906f0d100b0097886843f75sm1502034ejb.177.2023.06.09.09.43.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 09:43:44 -0700 (PDT)
Message-ID: <b8f35a9a-7553-92fa-6fdd-2522dc9bd36d@linaro.org>
Date: Fri, 9 Jun 2023 18:43:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT
 schema format
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608033642.4097956-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_094348_697571_A7EE3A97 
X-CRM114-Status: GOOD (  20.55  )
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

On 08/06/2023 05:36, Xu Yang wrote:
> Convert the binding to DT schema format. Besides, this also add other
> optional properties not contained in txt file.

Why ones do you add?

> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - change filename to fsl,mxs-usbphy.yaml
>  - add other optional properties
>  - narrow fsl,anatop to imx6
>  - use additionalProperties
> ---
>  .../bindings/phy/fsl,mxs-usbphy.yaml          | 128 ++++++++++++++++++
>  .../devicetree/bindings/phy/mxs-usb-phy.txt   |  33 -----
>  2 files changed, 128 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> new file mode 100644
> index 000000000000..1b6b19fdf491
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,mxs-usbphy.yaml#
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
> +          - fsl,imx7ulp-usbphy

Keep the list sorted.

> +      - items:
> +          - enum:
> +              - fsl,imx28-usbphy
> +              - fsl,imx6ul-usbphy
> +              - fsl,imx6sl-usbphy
> +              - fsl,imx6sx-usbphy
> +              - fsl,imx6q-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - const: fsl,imx6sll-usbphy
> +          - const: fsl,imx6ul-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - const: fsl,imx7ulp-usbphy
> +          - const: fsl,imx6ul-usbphy
> +      - items:
> +          - const: fsl,imx8dxl-usbphy
> +          - const: fsl,imx7ulp-usbphy
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2

You should list the items.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2

You should list the items.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  fsl,anatop:
> +    description:
> +      phandle for anatop register, it is only for imx6 SoC series.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  phy-3p0-supply:
> +    description:
> +      One of USB PHY's power supply. Can be used to keep a good signal
> +      quality.
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
> +  - clocks
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          oneOf:
> +            - enum:
> +              - fsl,imx6sl-usbphy

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +              - fsl,imx6sx-usbphy
> +              - fsl,imx6sll-usbphy
> +              - fsl,imx6q-usbphy
> +              - fsl,vf610-usbphy
> +            - items:
> +              - const: fsl,imx6ul-usbphy
> +              - const: fsl,imx23-usbphy
> +    then:
> +      required:
> +        - fsl,anatop
> +
> +additionalProperties: false
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
