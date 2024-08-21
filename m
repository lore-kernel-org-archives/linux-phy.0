Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5CF8C52D7C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 10:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vs2j8PGKW3rlWOMnIS7iur5WK82w9BqCMEbQWwwtnnA=; b=wpp8wMLbJiB9IS
	yixCMYfT81ta+6boNR0P0IzTYiMCzdm833zIwzGC8YEdDki8jUeRqC4+lUwKLjc4gM834HSxR+ag4
	oswwLuRDqxjDYyGdOGm+sNZbOLaijW8MWyRGtAb8DrIL7Uk6F5FJKQcYdh8J3hfB8vMEWxwt6uML3
	KKVNsl7zoeU7xfj18P6l6qwhA+sc7LGXCEbNszTtj5AD+B7rT3Hmkqj+P4dnaPHCKXmLxkUeTy4nc
	9Ei/VGzBme7As/Zn9BwRWNaDg/ifldAtEfE+c9jQS9zx98WJfZYMqQKapPev+DikyCUMiunmCmLzf
	1E2PKdxlIjVC/5cQTBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgie8-00000008QNa-1uZ5;
	Wed, 21 Aug 2024 10:32:56 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgicj-00000008QDK-31fE;
	Wed, 21 Aug 2024 10:31:32 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 21 Aug 2024 19:31:26 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 4D5F02009079;
	Wed, 21 Aug 2024 19:31:26 +0900 (JST)
Received: from kinkan2.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Wed, 21 Aug 2024 19:31:26 +0900
Received: from [10.212.247.18] (unknown [10.212.247.18])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 671B4AB187;
	Wed, 21 Aug 2024 19:31:25 +0900 (JST)
Message-ID: <fa07f751-06ae-44c0-8994-9634c5aa9824@socionext.com>
Date: Wed, 21 Aug 2024 19:31:24 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: socionext,uniphier: add top-level
 constraints
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
In-Reply-To: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_033129_908468_5C9D0930 
X-CRM114-Status: GOOD (  16.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

I have one comment.

On 2024/08/19 2:28, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clock-names and reset-names.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../bindings/phy/socionext,uniphier-ahci-phy.yaml         | 8 ++++++--
>   .../bindings/phy/socionext,uniphier-pcie-phy.yaml         | 8 ++++++--
>   .../bindings/phy/socionext,uniphier-usb3hs-phy.yaml       | 7 +++++--
>   .../bindings/phy/socionext,uniphier-usb3ss-phy.yaml       | 7 +++++--
>   4 files changed, 22 insertions(+), 8 deletions(-)
> 
> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> index de3cffc850bc..e34b875a1bb8 100644
> ---
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> +++
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> @@ -30,13 +30,17 @@ properties:
>       minItems: 1
>       maxItems: 2
>   
> -  clock-names: true
> +  clock-names:
> +    minItems: 1
> +    maxItems: 6

The maxItems of clocks is 2, so it should be 2.

>   
>     resets:
>       minItems: 2
>       maxItems: 6
>   
> -  reset-names: true
> +  reset-names:
> +    minItems: 2
> +    maxItems: 6
>   
>   allOf:
>     - if:
> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
> index b3ed2f74a414..9fc0e87c508e 100644
> ---
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
> +++
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
> @@ -31,13 +31,17 @@ properties:
>       minItems: 1
>       maxItems: 2
>   
> -  clock-names: true
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
>   
>     resets:
>       minItems: 1
>       maxItems: 2
>   
> -  reset-names: true
> +  reset-names:
> +    minItems: 1
> +    maxItems: 2
>   
>     socionext,syscon:
>       $ref: /schemas/types.yaml#/definitions/phandle
> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> index 2107d98ace15..25c4159f86e4 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.
> yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.
> yaml
> @@ -34,12 +34,15 @@ properties:
>       minItems: 2
>       maxItems: 3
>   
> -  clock-names: true
> +  clock-names:
> +    minItems: 2
> +    maxItems: 3
>   
>     resets:
>       maxItems: 2
>   
> -  reset-names: true
> +  reset-names:
> +    maxItems: 2
>   
>     vbus-supply:
>       description: A phandle to the regulator for USB VBUS
> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> index 8f5aa6238bf3..1f663e9901da 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.
> yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.
> yaml
> @@ -35,12 +35,15 @@ properties:
>       minItems: 2
>       maxItems: 3
>   
> -  clock-names: true
> +  clock-names:
> +    minItems: 2
> +    maxItems: 3
>   
>     resets:
>       maxItems: 2
>   
> -  reset-names: true
> +  reset-names:
> +    maxItems: 2
>   
>     vbus-supply:
>       description: A phandle to the regulator for USB VBUS, only for USB
> host

Other than that:
Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

I'd appreciate if it could be applied in devicetree or phy.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
