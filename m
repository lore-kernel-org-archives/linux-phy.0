Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A621BEB64D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 14:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvJaXBx1qi3A0uDMcBQtJWM4s8XbYrtnTLi3vBrOp2Y=; b=r7b9seBr+/fmM/
	MDC4fpzd10KAbCXkmVGv7enZcbnt/DyiRsoa9faEXK+Mwd1LhWbUFHNgthwkk/xwoX6DPrPw/TODf
	5ESZGntKy+uXCqN5Iv7IAXcZQ4va7DETvvBhPcnNZ8GiPze++8Wcz4gpVPNWko0iFcaSicWArRwjC
	IJZNm7pQVL3YYmuj+Xx8oOywgQwPFd6aL5iiPmWwdGn7wjgTQTcVuEko4eVPDFp+SLKtngGvZRLgR
	Tt+nyCCO8vKY633PYBGtqiosAy2VVifgng1nQUpKw4N5UjqWKcNL0Med1WAizOgiJWS//j5LavoEL
	ytZ7YVJQCsaL0qyOl6TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHQKH-001upg-11;
	Thu, 06 Jul 2023 14:51:21 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHQKE-001un3-1f;
	Thu, 06 Jul 2023 14:51:19 +0000
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-345f4a3ff76so2672285ab.2;
        Thu, 06 Jul 2023 07:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688655073; x=1691247073;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cgnDkKPeeJQpJAr8Igz1bUHZ3qFXqLqwtv/vw0h6laQ=;
        b=VagU0/idwQLt6qhKscxeq54PfB4ofgpEFfanPa2XC7R8Ulkfj4SHxoHiSRRg1mIV1V
         6wSVcndxwWH4AIwDjej3SmFHo1VHj/7ZfYI6UThlYjLDWIVASnhkRNkjBlXYZcaoi1gl
         t8j1qZspJFpUhesdvzsSK6kaU3OJ9kh16u5AIaNHLzaWEJuwphV4nBKH14ra00Cnk/AR
         tlegWG/cqev0egBmCXJezVV1hEffYMOU70T4fIAGyHFJMWEPUWTrQ6DPNrT/n7me6YAs
         GJA/rOnRB5YqBBAkTr4yJrrsIOzaLQXjR7smwBaJmehNYOqoUMN49YKce6Ug7Hg0rnUq
         RWVQ==
X-Gm-Message-State: ABy/qLa/g5fYCqCb82prRo2mrTZ0Zzc0ol6sDZzYSDqcBg/MUf6qJwVG
	/RwaGe48IpIial9o+vYg7w==
X-Google-Smtp-Source: APBJJlF67lR6D5NqnrBz/z/xaj4p5WF0VZl589v9nUuz7XC/TU588WYs6w03reMlD4UBeRhzLPXgQw==
X-Received: by 2002:a92:c52c:0:b0:345:d458:d227 with SMTP id m12-20020a92c52c000000b00345d458d227mr2368778ili.7.1688655072884;
        Thu, 06 Jul 2023 07:51:12 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id g17-20020a0566380bd100b0042b3e2e5ca1sm569170jad.122.2023.07.06.07.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 07:51:12 -0700 (PDT)
Received: (nullmailer pid 3861827 invoked by uid 1000);
	Thu, 06 Jul 2023 14:51:08 -0000
Date: Thu, 6 Jul 2023 08:51:08 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, 
	olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, 
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, ulf.hansson@linaro.org, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	hugues.fruchet@foss.st.com, lee@kernel.org, will@kernel.org, 
	catalin.marinas@arm.com, arnd@kernel.org, richardcochran@gmail.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 04/10] dt-bindings: treewide: add feature-domains
 description in binding files
Message-ID: <20230706145108.GA3858320-robh@kernel.org>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-5-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230705172759.1610753-5-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_075118_556957_EC979434 
X-CRM114-Status: GOOD (  16.47  )
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

On Wed, Jul 05, 2023 at 07:27:53PM +0200, Gatien Chevallier wrote:
> feature-domains is an optional property that allows a peripheral to
> refer to one or more feature domain controller(s).
> 
> Description of this property is added to all peripheral binding files of
> the peripheral under the STM32 firewall controllers. It allows an accurate
> representation of the hardware, where various peripherals are connected
> to this firewall bus. The firewall can then check the peripheral accesses
> before allowing it to probe.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Disclaimer: Some error with dtbs_check will be observed as I've
> considered the property to be generic, as Rob asked
> 
>  Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml  | 4 ++++
>  Documentation/devicetree/bindings/dma/st,stm32-dma.yaml      | 4 ++++
>  Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml   | 4 ++++
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml      | 4 ++++
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 4 ++++
>  .../devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml      | 4 ++++
>  Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 4 ++++
>  .../devicetree/bindings/media/cec/st,stm32-cec.yaml          | 4 ++++
>  Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml   | 4 ++++
>  .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml       | 4 ++++
>  Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml  | 4 ++++
>  Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml   | 5 +++++
>  Documentation/devicetree/bindings/mmc/arm,pl18x.yaml         | 4 ++++
>  Documentation/devicetree/bindings/net/stm32-dwmac.yaml       | 4 ++++
>  Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 4 ++++
>  .../devicetree/bindings/regulator/st,stm32-vrefbuf.yaml      | 4 ++++
>  Documentation/devicetree/bindings/rng/st,stm32-rng.yaml      | 4 ++++
>  Documentation/devicetree/bindings/serial/st,stm32-uart.yaml  | 4 ++++
>  Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml    | 4 ++++
>  Documentation/devicetree/bindings/sound/st,stm32-sai.yaml    | 4 ++++
>  .../devicetree/bindings/sound/st,stm32-spdifrx.yaml          | 4 ++++
>  Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml     | 4 ++++
>  Documentation/devicetree/bindings/spi/st,stm32-spi.yaml      | 4 ++++
>  Documentation/devicetree/bindings/usb/dwc2.yaml              | 4 ++++
>  24 files changed, 97 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> index b767ec72a999..daf8dcaef627 100644
> --- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> +++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> @@ -50,6 +50,10 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  feature-domains:
> +    minItems: 1
> +    maxItems: 3

What are the 3 entries?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
