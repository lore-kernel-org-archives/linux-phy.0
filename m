Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 278ACC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gu+WodcvSkIynubosw0laW1iKQjxn0elPkFFgbF+E8Q=; b=Cr3GkkqHvOmpbQ
	jDDOI0O2dTzMLp13tCOZS4fZ+h5QsUYP+wsA8rzkMCsHFtZKYCWcYWaAG189TwH955feC2kDBAH62
	0QR6/yFleauVp7T1tZig8a1j+tLTJ6V9uwN8k1aQv2amC1LK9d51nwFBCY2KO7KOPv2ZMut75lGMF
	IBQyo71CP0oBEn3YRP4abETD4/6y6QDABZOtQgNk6T/G7E0KjXW8eEigFEGTSh6Sd2ml9KweeMVgd
	D+wSYsFUoJhfBrhf2rW1PCs2X1II0NjvUQ4xmvSHwWiXHTxTvsYl8cUe4zaE0e3RgE94VKOHk5WYX
	0K7My2sBl67Jibb4ddBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2mA-004fb6-8P; Fri, 18 Nov 2022 14:55:30 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2kc-004ehw-12
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:53:56 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c1so8568059lfi.7
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1tEkG622nl9sahUZlEsZMDSytRMxlyYKVto7odTkwcs=;
        b=mvWELOZg6+Dtx2T6DISq6t8ODYmZVcRawE8A56kfYSw0cPQlGvMuVCOJ3cg6NfGkVT
         5V6SgNrBfktRz4VIlTyQLyYeEuOwRvcEKxub+XIbBDo3/BNXdMjL50Y8eUl88MaESAv3
         FsalQj/pSpzzjdfOlRvNr+9Mwcu6V1tUwHonVSvE5ixbWmdfxsGSPRxB+QIUwz2eTPMm
         QxCLWm7EbCukdXkMvG/MwXSurd0S5fykOOeF0v8p6q8vCtqXOs6zx7vC5V9iBx7P4gYC
         ugBEPzTwfm3HsNH1bmefO7W62iRU0hElHiohaaKI8n9eWVhYrTIuco3IXYv3eVoAE+y3
         xQmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1tEkG622nl9sahUZlEsZMDSytRMxlyYKVto7odTkwcs=;
        b=CGz3QUhckXHb6Qe3HNjZcURiyNUDxCZq5Xy5W2m0ixFM/SRe6wCQncs9jXyj3h5lo2
         Yf9fB7U1LARMtW89z+Ioaj5Dnp1SwvEfpZjGhgqLTJ+wGbWNRhz6zWM7dQPsDf1s8dRM
         KxmZXeTqI+blbog2CDOYLdgI7bufBegr27K/cFMgqnjULeippsiFY/CWxblauqmF4d+d
         uP4Uzq9IBFgUN7YMin5bXIMoxTHEFXyVNRvuxSct5ehONgSzYRd941/zcPttPYPEIWpM
         DAGnvez1hhniSYjA4FY0AkdUU7AHw/gwElOoL057zOi95LNod1bqWpwX1c4p9Plvvafu
         Cd9w==
X-Gm-Message-State: ANoB5pkVBFI6/exB9qAiXUEOPP1ueGDcyGGeqhQDvqb176HupeWzppVQ
	vY8Tx0+YWIuRydPOKnbh1uHy7g==
X-Google-Smtp-Source: AA0mqf62tdo4/gtJCMpEvCmDknR2gWTfsM6qNACTGALCUmV2wU+z03KWct99eh09aEGoFcKqZ7HiEA==
X-Received: by 2002:a19:f014:0:b0:4b4:a27e:c491 with SMTP id p20-20020a19f014000000b004b4a27ec491mr2675719lfc.479.1668783224568;
        Fri, 18 Nov 2022 06:53:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e12-20020a05651c110c00b002777a07f48esm684674ljo.12.2022.11.18.06.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:53:43 -0800 (PST)
Message-ID: <3b7fbbb4-f79d-f195-612f-4dfd40a66e34@linaro.org>
Date: Fri, 18 Nov 2022 15:53:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 08/12] dt-bindings: timer: convert
 timer/amlogic,meson7-timer.txt to dt-schema
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kevin Hilman <khilman@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit
 <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v1-8-3f025599b968@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-8-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_065354_118242_ED201B98 
X-CRM114-Status: GOOD (  16.25  )
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

On 18/11/2022 15:33, Neil Armstrong wrote:
> Convert the Amlogic Meson6 SoCs Timer Controller bindings to dt-schema.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/timer/amlogic,meson6-timer.txt        | 22 ---------
>  .../bindings/timer/amlogic,meson6-timer.yaml       | 53 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt
> deleted file mode 100644
> index a9da22bda912..000000000000
> --- a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Amlogic Meson6 SoCs Timer Controller
> -
> -Required properties:
> -
> -- compatible : should be "amlogic,meson6-timer"
> -- reg : Specifies base physical address and size of the registers.
> -- interrupts : The four interrupts, one for each timer event
> -- clocks : phandles to the pclk (system clock) and XTAL clocks
> -- clock-names : must contain "pclk" and "xtal"
> -
> -Example:
> -
> -timer@c1109940 {
> -	compatible = "amlogic,meson6-timer";
> -	reg = <0xc1109940 0x14>;
> -	interrupts = <GIC_SPI 10 IRQ_TYPE_EDGE_RISING>,
> -		     <GIC_SPI 11 IRQ_TYPE_EDGE_RISING>,
> -		     <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>,
> -		     <GIC_SPI 29 IRQ_TYPE_EDGE_RISING>;
> -	clocks = <&xtal>, <&clk81>;
> -	clock-names = "xtal", "pclk";
> -};
> diff --git a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml
> new file mode 100644
> index 000000000000..ffcb137e720e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/amlogic,meson6-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Meson6 SoCs Timer Controller
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +properties:
> +  compatible:
> +    const: amlogic,meson6-timer
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:

I think it is worth to add here description, that these are per-timer
interrupts.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
