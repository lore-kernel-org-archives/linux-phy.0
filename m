Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 257BDEB64D9
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jun 2023 08:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7t3a+dOxPhm5P42WbMGm79fxUXUwnEv2loKR23VtXU=; b=mT1sBtvHF7WXz2
	AmAPKxhbC5F239PuSZ1ZcEisstHtk6+OrevIbmHS39MjFP+NdhWsn6mEEwuFLv7CQg5Xh3mwO5eYg
	BbtKUhOuYfY44w/66fTdVaBKcFGg/8jVwOgYaosCPBz4tNBNK31VV7KatahmIk4WYfm09kWld4/QE
	e1SggqoFRfkpoDi4aY+IqNMXns0XNZkBak72P+xIxOqjHTLhNWo3eRJ7PXJmNig8qEFZwRIAYvpJE
	hr1nkgu943elCtD6f8VLQb0WJvrq/nM6rLj5Ak6JIIXNJ2o0imWAUakSst0Yng7Kwx36f+lA/b8ve
	Gfm2/rM9Wfj+5bZJTr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qARQ1-0036DT-2Q;
	Sat, 17 Jun 2023 08:36:25 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qARPz-0036Ct-1K
	for linux-phy@lists.infradead.org;
	Sat, 17 Jun 2023 08:36:25 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-982acf0a4d2so208735666b.3
        for <linux-phy@lists.infradead.org>; Sat, 17 Jun 2023 01:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686990981; x=1689582981;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FHSYSNvoBVsWeKTwLcfed1isjXKsHWPqmDjZM1uywnc=;
        b=ELCUwlv7eHCsjHT2e/KCHBZHeJXgNNz5OUDq7/rGvV4alwVrtL10H6hqhknOVkR8zP
         1RhI5VQlC47kohbjZrAMH2Wu6hAPxpsIeyNBKrQF+paldtTvMWxBeJFJ2xgQL0nGDn6h
         Bh7bpMM9cTOKw2XlWLxT3RJGddNpdbYoIqdeEEhvCKN/Aa5Bo17/88rqvzwKllGvECIi
         JiptROrS31G4y2TY/f7EYREizkJ4X3BXbNa8B0p2WV++Dt56LfmcVacn31xFrjBa4fdi
         ksA8JFMUh+1mcbFJ8rMww5wD5jOM/ZMsCLWygMEqgTmxO8QlT6ZFeQJKvlJ2K580UqQ3
         iV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686990981; x=1689582981;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FHSYSNvoBVsWeKTwLcfed1isjXKsHWPqmDjZM1uywnc=;
        b=b1L1EA/TuTEojm1NLGk9xu0Oz1I1MmFbo8o57kDY4ctXI/XonAQDNP/Q5lzFbe9Su4
         My9pe1pXzCrH+sGBbHaeamFlebgcpYUZNcfnIV//u8quW+D0fIlB/Od3SiyLpaWIFaK5
         bqtwzT6py4ZhwVJUP5C495Q6DHOA93tgIN355c23tCAklsRMbVWR6c6Hc8u59lmPLh+m
         KsiO3g2WqUPj8m/SvPNFiZvfw5KEYVwzPhL3W0wtS6c3JQCdwxlug8JVds6ycFkKfmp3
         p3a/Hbsh8MTerc2jncsuJQElhKQWKsdMqotZnmp3I1B1g6I2pN+fkWdsq9RpjEi69y/d
         5wxw==
X-Gm-Message-State: AC+VfDwuoLIUnTDxbijft/BdLroh6kkmZp8YfLjwxq9DFYCusQv1i3B3
	UbsxLl4RbbbeHi1jYuPL3vKptg==
X-Google-Smtp-Source: ACHHUZ5LBmphkId8rgr4BiqRLQLQW4t4MG9F7heylFznAVSq8CDhg+7sf8XXFBKu+MR1wcEriZnBpA==
X-Received: by 2002:a17:907:36c7:b0:978:ac42:5ef5 with SMTP id bj7-20020a17090736c700b00978ac425ef5mr3807707ejc.65.1686990981162;
        Sat, 17 Jun 2023 01:36:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id gt7-20020a170906f20700b00988168ed20asm33146ejb.185.2023.06.17.01.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:36:20 -0700 (PDT)
Message-ID: <90f802db-79cc-010a-9a83-c7bdbf0d0c00@linaro.org>
Date: Sat, 17 Jun 2023 10:36:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 5/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 3.0 PHY
Content-Language: en-US
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Flavio Suligoi <f.suligoi@asem.it>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230614092850.21460-1-stanley_chang@realtek.com>
 <20230614092850.21460-5-stanley_chang@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614092850.21460-5-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_013623_476480_D915824B 
X-CRM114-Status: GOOD (  24.10  )
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

On 14/06/2023 11:28, Stanley Chang wrote:
> Add the documentation explain the property about Realtek USB PHY driver.
> 
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the  USB 3.0 PHY transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v3 to v4 change:
>     1. Remove the parameter and non hardware properties from dts.
>     2. Using the compatible data included the config and parameter
>        in driver.
> v2 to v3 change:
>     1. Broken down into two patches, one for each of USB 2 & 3.
>     2. Add more description about Realtek RTD SoCs architecture.
>     3. Removed parameter v1 support for simplification.
>     4. Revised the compatible name for fallback compatible.
>     5. Remove some properties that can be set in the driver.
> v1 to v2 change:
>     Add phy-cells for generic phy driver
> ---
>  .../bindings/phy/realtek,usb3phy.yaml         | 105 ++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,usb3phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,usb3phy.yaml b/Documentation/devicetree/bindings/phy/realtek,usb3phy.yaml
> new file mode 100644
> index 000000000000..0f849cf942e8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,usb3phy.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Realtek Semiconductor Corporation
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,usb3phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek DHC SoCs USB 3.0 PHY
> +
> +maintainers:
> +  - Stanley Chang <stanley_chang@realtek.com>
> +
> +description:
> +  Realtek USB 3.0 PHY support the digital home center (DHC) RTD series SoCs.
> +  The USB 3.0 PHY driver is designed to support the XHCI controller. The SoCs
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
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtd1295-usb3phy
> +          - realtek,rtd1319-usb3phy
> +          - realtek,rtd1319d-usb3phy
> +          - realtek,rtd1619-usb3phy
> +          - realtek,rtd1619b-usb3phy
> +      - const: realtek,usb3phy

Drop last compatible, it is not used now. Does not make sense.

> +
> +  reg:
> +    description: PHY data registers

Drop description, it's obvious.

> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  nvmem-cells:
> +    maxItems: 1
> +    description: A phandle to the tx lfps swing trim data provided by
> +      a nvmem device, if unspecified, default values shall be used.
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: usb_u3_tx_lfps_swing_trim
> +
> +  realtek,amplitude-control-coarse-tuning:
> +    description:
> +      This adjusts the signal amplitude for normal operation and beacon LFPS.
> +      This value is a parameter for coarse tuning.
> +      For different boards, if the default value is inappropriate, this
> +      property can be assigned to adjust.

default:

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 255
> +
> +  realtek,amplitude-control-fine-tuning:
> +    description:
> +      This adjusts the signal amplitude for normal operation and beacon LFPS.
> +      This value is used for fine-tuning parameters.
> +    $ref: /schemas/types.yaml#/definitions/uint32

default:

> +    minimum: 0
> +    maximum: 65535
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
