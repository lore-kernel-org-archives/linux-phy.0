Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E95D7C05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 20:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4N9Xg2OyakoD+vb502/d5scLPfpckW2VGDfOMjc3pY=; b=O3QTLoSNcrp/qv
	xlCDacWbGg9kls7CXXwm8ysaYUqC7I4C/zL29GT/UwWBSBG9HbXyRsQ6LEKNQxrUoBnP2IpuHwHmm
	uwABCswxootTfGnQLwRnMnfH7YirHFbNzMblosaZdP/33/x60xyw6jSzmLkCDfpIu/EzshOCaCrSz
	Nwph5ymdUr4NRv5nhA6oiLJRuRj4g731E+tirzV8U501Ea92XKxpnvoDvTNHeTKquYmUpJ3jj4Ot8
	So8ZGtgx9za8Qj6WC6bq3kCBIISQaIRIB6qn5h4vJBRGVLbQvFXL8yG7sTJqoyzwYPhZmhqGsgdXK
	uF/4qEeS2r+79gHQqSNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO38K-003ZOg-05; Fri, 03 Feb 2023 20:58:08 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO383-003ZKK-J2; Fri, 03 Feb 2023 20:57:56 +0000
Received: by mail-ot1-f52.google.com with SMTP id e12-20020a0568301e4c00b0068bc93e7e34so1745903otj.4;
        Fri, 03 Feb 2023 12:57:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DTUpcYkNxPIlJHACYCYR7pDb1Buy+e4lFP4bk5Zgp34=;
        b=DZDjnoi9XT9ajcLaMCbM/fzZ8y/GakfMdy65VvRRHYvZ5kK2Y6nxmIs1Op13dkf23F
         DjVuH8GR0Tlg2ewqIlnNLKwWGBj9jEPKaghCjPIv0QDtBTljJp8A06k7uLSwcmQ7Ap+Z
         OeKasFPWGXvSZDCCZH7tXMIzy3dOJVQoXvb+yHL+Ga0iNhyntZf7amcCmcTOeizPoTMA
         +TZ3BvlOcmGKJg8H8esWbjvAXd2Oq2MnVOGa2Ih5erJAlOmQJCgx9fcpRhoSf0HtgRnD
         FwU7QRGT/k7/HfvEZSSHdWsgRNJW2uGpKEotBvHeGYe7kVu6xkY3JSsTjQRhK6UJ7c4E
         M/GA==
X-Gm-Message-State: AO0yUKWoDnipPafcxcENer6h4lDJrewhC8q8TR2CXnGpVL03Bz9VBSWj
	4itc+hx/Ybc/qIHz9SWiYA==
X-Google-Smtp-Source: AK7set/idxy63+ygBDyPnMqtJWkCkCzx9MyU4A+nT1Br4FymPkR4Z0JILK7N/Htqiz/3btTinW8cgQ==
X-Received: by 2002:a05:6830:1e57:b0:68b:b721:8f1c with SMTP id e23-20020a0568301e5700b0068bb7218f1cmr6718583otj.27.1675457869992;
        Fri, 03 Feb 2023 12:57:49 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c22-20020a9d6856000000b0068bd5af9b82sm1611458oto.43.2023.02.03.12.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 12:57:49 -0800 (PST)
Received: (nullmailer pid 873929 invoked by uid 1000);
	Fri, 03 Feb 2023 20:57:48 -0000
Date: Fri, 3 Feb 2023 14:57:48 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, herbert@gondor.apana.org.au, davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org, alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, fabrice.gasnier@foss.st.com, ulf.hansson@linaro.org, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-phy@lists.infradead.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: treewide: add feature-domains
 description in binding files
Message-ID: <20230203205748.GA860175-robh@kernel.org>
References: <20230127164040.1047583-1-gatien.chevallier@foss.st.com>
 <20230127164040.1047583-3-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127164040.1047583-3-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_125752_677362_2F45FEF4 
X-CRM114-Status: GOOD (  19.67  )
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

On Fri, Jan 27, 2023 at 05:40:36PM +0100, Gatien Chevallier wrote:
> feature-domains is an optional property that allows a peripheral to
> refer to one or more feature domain controller(s).
> 
> Description of this property is added to all peripheral binding files of
> the peripheral under the STM32 System Bus. It allows an accurate
> representation of the hardware, where various peripherals are connected
> to this firewall bus. The firewall can then check the peripheral accesses
> before allowing it to probe.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Patch not present in V1 and V2.
> 
>  Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml | 5 +++++
>  Documentation/devicetree/bindings/dma/st,stm32-dma.yaml     | 5 +++++
>  Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml  | 5 +++++
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml     | 5 +++++
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml | 5 +++++
>  .../devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml     | 5 +++++
>  Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml | 5 +++++
>  Documentation/devicetree/bindings/media/st,stm32-cec.yaml   | 5 +++++
>  Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml  | 5 +++++
>  .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml      | 5 +++++
>  Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml | 5 +++++
>  Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml  | 6 ++++++
>  Documentation/devicetree/bindings/mmc/arm,pl18x.yaml        | 5 +++++
>  Documentation/devicetree/bindings/net/stm32-dwmac.yaml      | 5 +++++
>  .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml          | 5 +++++
>  .../devicetree/bindings/regulator/st,stm32-vrefbuf.yaml     | 5 +++++
>  Documentation/devicetree/bindings/rng/st,stm32-rng.yaml     | 5 +++++
>  Documentation/devicetree/bindings/serial/st,stm32-uart.yaml | 5 +++++
>  Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml   | 5 +++++
>  Documentation/devicetree/bindings/sound/st,stm32-sai.yaml   | 5 +++++
>  .../devicetree/bindings/sound/st,stm32-spdifrx.yaml         | 5 +++++
>  Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml    | 5 +++++
>  Documentation/devicetree/bindings/spi/st,stm32-spi.yaml     | 5 +++++
>  Documentation/devicetree/bindings/usb/dwc2.yaml             | 5 +++++
>  24 files changed, 121 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> index 4ccb335e8063..cb2ad7d5fdb5 100644
> --- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> +++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> @@ -41,6 +41,11 @@ properties:
>      maximum: 2
>      default: 0
>  
> +  feature-domains:
> +    $ref: /schemas/feature-controllers/feature-domain-controller.yaml#/properties/feature-domains

Not how common properties work. Consumer properties should be in a 
schema with 'select: true' (the one you are referencing) and here you 
just need to define the entries. Like clocks, power-domains, etc.

> +    minItems: 1
> +    maxItems: 3

Why is this variable and what is each entry?

I still don't like the naming. Everything is a feature and a domain... 

It might be a bit easier to come up with a name with multiple users of 
this binding presented. I'm hesistant to define any new common binding 
with only 1 user as I've said multiple times on this binding.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
