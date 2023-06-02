Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ABB2C7EE24
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jun 2023 13:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPFFpenvJwDkgS7+/h+wpf2VF7PG9RYwu3+y6rPzvjk=; b=Yqj3CKQLqLktES
	tt+MnUfFqm6Z8iGWXkRrXd/TToL9Mzu/um7hJjV7cbc5ZwYnLSckjagSuafjVLtnVR23/zVPVwIDr
	KR+WUSiz7bIWxFsWpRp+BWa9KSL9VEw84dSLsTUKgaQ5DL3D1kseN8b4J/WrDBuUKs6B0yiNlfxrv
	Kvu79VXFfZPipF7iTz0Bj8TnjiradOs1fAOB176/xT0AlXPKP5SWEvnaV8rteMfcxhQGjdaH6en/W
	Yu5+PL6DlxR6CPKSBazBRyrH4tUA0dhzGR9qk8HdkoAx/1NZhI5u8lserJ9YSv/CnHHJ7Udhs0i/c
	f+jL8FKcI6QsPQL9gVcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q54cr-006yW8-2I;
	Fri, 02 Jun 2023 13:15:29 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q54co-006yUL-1J
	for linux-phy@lists.infradead.org;
	Fri, 02 Jun 2023 13:15:28 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-514953b3aa6so2810578a12.1
        for <linux-phy@lists.infradead.org>; Fri, 02 Jun 2023 06:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685711720; x=1688303720;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DoxSQc1MYJxdASn/j5T3GqnNf7NdGSBlZSYtkdHFO6w=;
        b=Bt13asXhpMupK2gnrz9Ad4xWSJmCylXAZBfJrKSm2ZseGZeiEi7XmT36b4LpdFkkJh
         iD3dcQG+FRSCbT/9Gu8L7EoFmjWu7cqnL1NkxEQoYaQ4vU4c2alz9teIsWevkytmOw+Z
         rFVtNFTPhG27EpYOx9DLfqC656dicazUWWETY08AerzgaGGNRmSmOlSIxCRLgZ2N3BM6
         xElYJe5u54hPeSd4YtPx0PXEbcntopMroJVmpvLLzB/nLEcbO3hvq4Nfo62K26IJ8sZN
         YXvNb3E8v+Iw4J6bBQaPI0G5vbMeiTpXE+3+ghBcpPYNBVBZWVV43RKViVXapYnkynXi
         AdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685711720; x=1688303720;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoxSQc1MYJxdASn/j5T3GqnNf7NdGSBlZSYtkdHFO6w=;
        b=TxTtkztI5f6I49PSAuM/oAEZhug+gYLq3/msP4N2PGvpvhagTQPspVTIab4O8GHgD9
         aAnogcS6IV8m8++HdK6nVLcFaM7EerYREm5rhuJ/H2ZHuu/VeFVB36auWATTcdk5Cspr
         qQXo+eoHL9+NxfzpMcUOBgGwSmiSy/0CUyoMshnui4ycrBjIMnETzy/wMxP6oErp2NNK
         EgM8UB6mTvOTqovCOcGeSxVJxuqGl+416CO91c/ThlSDevwHKLljJpM1DMZ122wdwOjz
         ZcA7Eiiymp0oDttgQECbMWiGKZQF02TJa+MYLZ+y7ySGqILjTXUqm0cfEWSZeJZgd2Aa
         hEFw==
X-Gm-Message-State: AC+VfDyCeB0+pufTWNcKMXCh1esrXh5n2L8FEbwjUYH+dxyxlY3dOSpc
	9Ve+OpGiqZbmK+eO65zZxspVxQ==
X-Google-Smtp-Source: ACHHUZ5/PuNFNjq7JBB3HS5a933num/hOxjo3wal9RwgdiUS55cNFnhg/+vZM+ylE0qTXJkQ9P6MpA==
X-Received: by 2002:aa7:da42:0:b0:510:e80f:fa4e with SMTP id w2-20020aa7da42000000b00510e80ffa4emr2141577eds.1.1685711720149;
        Fri, 02 Jun 2023 06:15:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id g16-20020a056402181000b005149cb5ee2dsm662133edy.82.2023.06.02.06.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:15:19 -0700 (PDT)
Message-ID: <a1c109c9-9cf7-be76-df8f-74259559acb7@linaro.org>
Date: Fri, 2 Jun 2023 15:15:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema
 format
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230601080723.1556461-1-xu.yang_2@nxp.com>
Content-Language: en-US
In-Reply-To: <20230601080723.1556461-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_061526_449570_B00C57C7 
X-CRM114-Status: GOOD (  15.36  )
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

Resending as my previous email probably got lost. If you got it twice,
apologies.

On 01/06/2023 10:07, Xu Yang wrote:
> Convert the binding to DT schema format.
> 


Thank you for your patch. There is something to discuss/improve.


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
