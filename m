Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28B0C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 17:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUpMEnlxBbSEyIYctmxm/5nzcdVhg/9mxl+ATVMwOg8=; b=GKVBhgKhf8vv+a
	YuU2WMnHhjKQ7wVin/1I//x4ISLI8C7nCzTrADvRw4SqNGC3zen4lnEjLVKwpT9LKV4pHp8fT7Ok5
	EPcPWaejifAhsyT9ttmOv0HJ0dKXBQNNbv4hGwclAVrxh3hjnLQYWOIWX952IJngTiTmt68xUq+Ms
	i9OY89x6q0U+3LcjepqdISIfx6n3d6E1dMNhZ5BYh08760PBcevrIfmJan8bXKB8V/UW9sZp2Fv63
	bFEH3cHxr6/5Nt7+vpKuZ/w3Zf4eF4eCvKwjZ1DRgc7NrwfgMJHd7fRwByPVEZuuaq9SzoaknZ/qJ
	XAqnrhHsRtBdgTQHY7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZcJD-00H10G-2U; Wed, 30 Mar 2022 17:40:39 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZcJA-00H0z0-N2
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 17:40:38 +0000
Received: by mail-ed1-x533.google.com with SMTP id h1so25340229edj.1
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 10:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=YGgEuO2+JFPK80wetBysVATEfSSmmFQ7dKqnJvZ/yF0=;
 b=C7EjKku7df+a8GqKhOPDfYj3kb3TEpo3DG3jdawgzS//JNHlN1EDttotGPuPwtZJqM
 13D87HXLQB1i5Zu593BdRvAHvXU2KZCBghKr5ZLWbUc7+SnOCwc7yxNTP8xQIkWECbwj
 x3r/HJ2H/u+PriS72aSR3Sf0AHoqNESldgoSj3jfUU6xdgfLQNatOWx4Dk2HIwMKZG/t
 ru4+bBvbX1eqRI6dJS/5SpPN7MQ78ioWLTa1Nz4k4fHbBJb5Gby0TFttUbzYcSaLKJ94
 GF23IZVQM50w9cL6RAnZA1kWRyAhc9QLJWfy1QFRG4lo6DIv/M5nk7ILGeU+nNs2QPjm
 9qZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YGgEuO2+JFPK80wetBysVATEfSSmmFQ7dKqnJvZ/yF0=;
 b=opNBKiS+VYwkDiTYSgV8FMiMMMa2AXAOUwIqMqwkgahQQg8L6a1HKEPpoIvxKk8c/P
 tbr3pge4DFUKWOrORPmq9mIqddtuq1cerBnAKhosYxVKY5n0DepnMRSE9DLgyUR5nrTo
 w47RAHnkWU+exIBqmI6IbBh4j7aT0+2s4z4wq4KmRdVEKineNa3ddJd2LVRti8+avjZU
 kCDR4ZCWRUj4tty6PAzu9wvh7m4yPb7zInl3EObv5EsI0WL3ARZ+mnYC3J+93afajVKy
 30HZR9weZXdP+Q43BsWr+BZIC3p8pb7Q6VZMpXLjMzBZFEI3ebj166Tp+/jDZMc92LNc
 7w/Q==
X-Gm-Message-State: AOAM533161V924I6xL3Bst7OvzruTpNxxEcQOfvmeRG6O3Xv/oFtSkRu
 0+xObe5SFTzOUemApYVvTKHO1w==
X-Google-Smtp-Source: ABdhPJxFwTarbPZKAhjXkXZlx0EdUDAVJlJ4obq31ATerLLtSuoVnaN+CJoSs2qJYnnkd0lo+8HTEg==
X-Received: by 2002:a50:fd04:0:b0:419:9c4a:7d79 with SMTP id
 i4-20020a50fd04000000b004199c4a7d79mr12268837eds.99.1648662035149; 
 Wed, 30 Mar 2022 10:40:35 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 dk21-20020a0564021d9500b0041b501eab8csm2718953edb.57.2022.03.30.10.40.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:40:34 -0700 (PDT)
Message-ID: <a784ed61-965a-5c68-c2dd-3340cf18c7b5@linaro.org>
Date: Wed, 30 Mar 2022 19:40:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 5/5] dt-bindings: phy: uniphier: Clean up clocks,
 resets, and their names using compatible string
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648637715-19262-6-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648637715-19262-6-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_104036_798059_8D24EDA0 
X-CRM114-Status: GOOD (  17.86  )
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

On 30/03/2022 12:55, Kunihiko Hayashi wrote:
> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clocks,
> clock-names, resets, and reset-names that can be taken by the compatible
> string.
> 
> The order of clock-names and reset-names doesn't change here.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-ahci-phy.yaml      | 90 +++++++++++++-----
>  .../phy/socionext,uniphier-pcie-phy.yaml      | 47 ++++++---
>  .../phy/socionext,uniphier-usb3hs-phy.yaml    | 93 ++++++++++++++----
>  .../phy/socionext,uniphier-usb3ss-phy.yaml    | 95 +++++++++++++++----
>  4 files changed, 251 insertions(+), 74 deletions(-)
> 

(...)

> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> index 1bbd164f2527..21e4414eea60 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> @@ -34,30 +34,12 @@ properties:
>      minItems: 2
>      maxItems: 3
>  
> -  clock-names:
> -    oneOf:
> -      - items:               # for Pro5
> -          - const: gio
> -          - const: link
> -      - items:               # for PXs3 with phy-ext
> -          - const: link
> -          - const: phy
> -          - const: phy-ext
> -      - items:               # for others
> -          - const: link
> -          - const: phy
> +  clock-names: true
>  
>    resets:
>      maxItems: 2
>  
> -  reset-names:
> -    oneOf:
> -      - items:               # for Pro5
> -          - const: gio
> -          - const: link
> -      - items:               # for others
> -          - const: link
> -          - const: phy
> +  reset-names: true
>  
>    vbus-supply:
>      description: A phandle to the regulator for USB VBUS
> @@ -80,6 +62,77 @@ properties:
>        required for each port, if any one is omitted, the trimming data
>        of the port will not be set at all.
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: socionext,uniphier-pro5-usb3-hsphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: gio
> +            - const: link
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: gio
> +            - const: link
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - socionext,uniphier-pxs2-usb3-hsphy
> +              - socionext,uniphier-ld20-usb3-hsphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: link
> +            - const: phy
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: link
> +            - const: phy
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - socionext,uniphier-pxs3-usb3-hsphy
> +              - socionext,uniphier-nx1-usb3-hsphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2

Why minItems:2? Is the last phy-ext clock optional?

> +          maxItems: 3
> +        clock-names:
> +          minItems: 2
> +          items:
> +            - const: link
> +            - const: phy
> +            - const: phy-ext
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: link
> +            - const: phy
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> index 06c957d52d23..4c26d2d2303d 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> @@ -35,34 +35,89 @@ properties:
>      minItems: 2
>      maxItems: 3
>  
> -  clock-names:
> -    oneOf:
> -      - items:             # for Pro4, Pro5
> -          - const: gio
> -          - const: link
> -      - items:             # for PXs3 with phy-ext
> -          - const: link
> -          - const: phy
> -          - const: phy-ext
> -      - items:             # for others
> -          - const: link
> -          - const: phy
> +  clock-names: true
>  
>    resets:
>      maxItems: 2
>  
> -  reset-names:
> -    oneOf:
> -      - items:              # for Pro4,Pro5
> -          - const: gio
> -          - const: link
> -      - items:              # for others
> -          - const: link
> -          - const: phy
> +  reset-names: true
>  
>    vbus-supply:
>      description: A phandle to the regulator for USB VBUS, only for USB host
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - socionext,uniphier-pro4-usb3-ssphy
> +              - socionext,uniphier-pro5-usb3-ssphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: gio
> +            - const: link
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: gio
> +            - const: link
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - socionext,uniphier-pxs2-usb3-ssphy
> +              - socionext,uniphier-ld20-usb3-ssphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: link
> +            - const: phy
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: link
> +            - const: phy
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - socionext,uniphier-pxs3-usb3-ssphy
> +              - socionext,uniphier-nx1-usb3-ssphy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2

Same question as above.

> +          maxItems: 3
> +        clock-names:
> +          minItems: 2
> +          items:
> +            - const: link
> +            - const: phy
> +            - const: phy-ext
> +        resets:
> +          minItems: 2
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: link
> +            - const: phy
> +
>  required:
>    - compatible
>    - reg


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
