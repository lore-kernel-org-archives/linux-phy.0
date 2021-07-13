Return-Path: <SRS0=EtwH=MF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4719DC07E95
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jul 2021 19:47:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF6BC611AC
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jul 2021 19:47:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF6BC611AC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yabW67ho8Qt7cr1zSlziVWK7ZkzfzCWIpSCUHCKEw4I=; b=lIgCR7PYM9tdsh
	ytxEHm9RJ3nKeTI0naUYde13VWAH/POnMcKXzGjB6tbYSMoesrWdsrKjvwV+uXOhG0ibmpGQVl9hA
	hQNFNRSinXjizN2ZWmfAQ3EwYNDqc6wYXXyvokMBolxggwIRatyUeJJGbWIQbZG1gmMO4KMFGhNKc
	VobTfCFppY3LPZ+6pwp/fOlbJuaU0BCRdPhz6XS4syIpyl9kUIjy0gC4i5HQ5sWKhbEW5OW2Ngz0d
	BdicmkOV4V+oh6gfAZtwihp26IM9Zv8oypom7nfNZqd5Hx574NA1xpRjMmT1vAEGyvGQXbQxuov+k
	bRRWtNQyCzIxVQ7hcPWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3ONS-00BGJL-Gr; Tue, 13 Jul 2021 19:47:34 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3ONQ-00BGIv-4n
 for linux-phy@lists.infradead.org; Tue, 13 Jul 2021 19:47:34 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id
 j4-20020a4ac5440000b029025992521cf0so5699982ooq.7
 for <linux-phy@lists.infradead.org>; Tue, 13 Jul 2021 12:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gFfhK+dHl3bp85B3Vs5e1G4mkaJcqFiMp7hidA4VQrc=;
 b=BJmVlR1nnMOFCY+tUM1CE6tc2PG13DjPOxDGJMy1r8fqHaZq82NV6qcdvRnCKucF8J
 7GgazHIovzhsAxB3T8iNpmHulOK5K4yKN0HnR81eklObsjZcMno2w4pOUt/v6tUjl+aS
 hrojfdWrIOMXGSCpTdI3XwDEe0XJITFFXcOYpE/67rOOikqGZK5zSACVPUZ24VhW1dzb
 xy7dkF9xy925O4Oec/kYN/JjMV6qCUki3ZE2oNuhLEYt2wMvLOopF/qYRXrVtx6Pt7ps
 gFADR3MpwUdU9Q/4LJFbSC/L7D8owh0MfMFnOdn6t6OiiSBR5g7nSUafY9BllSEFAjt4
 NtZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=gFfhK+dHl3bp85B3Vs5e1G4mkaJcqFiMp7hidA4VQrc=;
 b=ZyFNdgmLv9kz5xEraq1aWyAhKoiDplYsMI/RLVstKs/0KGs9WxI8M2Zd9wI8xlQxLp
 49/w6jGgiZ0CZLuAxqdVXVzVp6LPq+MysQTI8THP3sG3VrRBFNp5Whc2Wqnz2JstY8tY
 Hw6trS4qLtMjcTnwa1LjJqCTB7thrwAQ0M4aG3DIJwqDE6/dzyhSqrNs1zkPd/k8o6K3
 WuM64kQZEeTclZuuAgV3slwnScvL27p4/u1n62Vh0r9OgR+NPoZXuEST5YO2NZpJvxp9
 vtu81cfVgPQ9Bzr9rMysrycdjPDk9jevAHey7YD7D5BbDdUCXjrSFoy9zx6HEXa8jKbc
 F82Q==
X-Gm-Message-State: AOAM531zz0aC1s1NOzRUvcGWBZ6rURmO5kgboU87D8fxXpZPPVHtRn84
 +S11Gh1+VBXBDifU9ty2R6w=
X-Google-Smtp-Source: ABdhPJwkEc7sB0iELYLZ2JAZlpTbL1bO3oOf9KlA2BmVUOlsJn3J/w0ElwyTXh+7Bj4/wyIfXrSMsw==
X-Received: by 2002:a4a:ce8f:: with SMTP id f15mr1553204oos.68.1626205650505; 
 Tue, 13 Jul 2021 12:47:30 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 2sm3983500ota.58.2021.07.13.12.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 12:47:30 -0700 (PDT)
Date: Tue, 13 Jul 2021 12:47:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Saravanan Sekar <sravanhome@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 linux-hwmon@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Move fixed string 'patternProperties' to
 'properties'
Message-ID: <20210713194728.GA3229000@roeck-us.net>
References: <20210713193514.690894-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713193514.690894-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_124732_244760_7EDB337B 
X-CRM114-Status: GOOD (  23.10  )
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

On Tue, Jul 13, 2021 at 01:35:14PM -0600, Rob Herring wrote:
> There's no need for fixed strings to be under 'patternProperties', so move
> them under 'properties' instead.
> 
> Cc: Jean Delvare <jdelvare@suse.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Saravanan Sekar <sravanhome@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Troy Kisky <troy.kisky@boundarydevices.com>
> Cc: linux-hwmon@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/hwmon/adt7475.yaml    | 22 ++++----

Acked-by: Guenter Roeck <linux@roeck-us.net>

>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 56 +++++++++----------
>  .../bindings/regulator/mps,mpq7920.yaml       |  6 +-
>  .../regulator/nxp,pf8x00-regulator.yaml       |  3 +-
>  .../bindings/spi/spi-controller.yaml          | 32 +++++------
>  5 files changed, 60 insertions(+), 59 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/adt7475.yaml b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
> index ad0ec9f35bd8..7d9c083632b9 100644
> --- a/Documentation/devicetree/bindings/hwmon/adt7475.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
> @@ -39,17 +39,7 @@ properties:
>    reg:
>      maxItems: 1
>  
> -patternProperties:
> -  "^adi,bypass-attenuator-in[0-4]$":
> -    description: |
> -      Configures bypassing the individual voltage input attenuator. If
> -      set to 1 the attenuator is bypassed if set to 0 the attenuator is
> -      not bypassed. If the property is absent then the attenuator
> -      retains it's configuration from the bios/bootloader.
> -    $ref: /schemas/types.yaml#/definitions/uint32
> -    enum: [0, 1]
> -
> -  "^adi,pwm-active-state$":
> +  adi,pwm-active-state:
>      description: |
>        Integer array, represents the active state of the pwm outputs If set to 0
>        the pwm uses a logic low output for 100% duty cycle. If set to 1 the pwm
> @@ -61,6 +51,16 @@ patternProperties:
>        enum: [0, 1]
>        default: 1
>  
> +patternProperties:
> +  "^adi,bypass-attenuator-in[0-4]$":
> +    description: |
> +      Configures bypassing the individual voltage input attenuator. If
> +      set to 1 the attenuator is bypassed if set to 0 the attenuator is
> +      not bypassed. If the property is absent then the attenuator
> +      retains it's configuration from the bios/bootloader.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> index 5272b6f284ba..dcd63908aeae 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -77,6 +77,34 @@ properties:
>        Type-C spec states minimum CC pin debounce of 100 ms and maximum
>        of 200 ms. However, some solutions might need more than 200 ms.
>  
> +  refclk-dig:
> +    type: object
> +    description: |
> +      WIZ node should have subnode for refclk_dig to select the reference
> +      clock source for the reference clock used in the PHY and PMA digital
> +      logic.
> +    properties:
> +      clocks:
> +        minItems: 2
> +        maxItems: 4
> +        description: Phandle to two (Torrent) or four (Sierra) clock nodes representing
> +          the inputs to refclk_dig
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      assigned-clocks:
> +        maxItems: 1
> +
> +      assigned-clock-parents:
> +        maxItems: 1
> +
> +    required:
> +      - clocks
> +      - "#clock-cells"
> +      - assigned-clocks
> +      - assigned-clock-parents
> +
>  patternProperties:
>    "^pll[0|1]-refclk$":
>      type: object
> @@ -121,34 +149,6 @@ patternProperties:
>        - clocks
>        - "#clock-cells"
>  
> -  "^refclk-dig$":
> -    type: object
> -    description: |
> -      WIZ node should have subnode for refclk_dig to select the reference
> -      clock source for the reference clock used in the PHY and PMA digital
> -      logic.
> -    properties:
> -      clocks:
> -        minItems: 2
> -        maxItems: 4
> -        description: Phandle to two (Torrent) or four (Sierra) clock nodes representing
> -          the inputs to refclk_dig
> -
> -      "#clock-cells":
> -        const: 0
> -
> -      assigned-clocks:
> -        maxItems: 1
> -
> -      assigned-clock-parents:
> -        maxItems: 1
> -
> -    required:
> -      - clocks
> -      - "#clock-cells"
> -      - assigned-clocks
> -      - assigned-clock-parents
> -
>    "^serdes@[0-9a-f]+$":
>      type: object
>      description: |
> diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
> index 12b8963615c3..c2e8c54e5311 100644
> --- a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
> +++ b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
> @@ -36,12 +36,12 @@ properties:
>            switching frequency must be one of following corresponding value
>            1.1MHz, 1.65MHz, 2.2MHz, 2.75MHz
>  
> -    patternProperties:
> -      "^ldo[1-4]$":
> +      ldortc:
>          type: object
>          $ref: regulator.yaml#
>  
> -      "^ldortc$":
> +    patternProperties:
> +      "^ldo[1-4]$":
>          type: object
>          $ref: regulator.yaml#
>  
> diff --git a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> index 8761437ed8ad..aabf50f5b39e 100644
> --- a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> @@ -83,7 +83,8 @@ properties:
>  
>          unevaluatedProperties: false
>  
> -      "^vsnvs$":
> +    properties:
> +      vsnvs:
>          type: object
>          $ref: regulator.yaml#
>          description:
> diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> index faef4f6f55b8..8246891602e7 100644
> --- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> @@ -79,22 +79,7 @@ properties:
>      description:
>        The SPI controller acts as a slave, instead of a master.
>  
> -allOf:
> -  - if:
> -      not:
> -        required:
> -          - spi-slave
> -    then:
> -      properties:
> -        "#address-cells":
> -          const: 1
> -    else:
> -      properties:
> -        "#address-cells":
> -          const: 0
> -
> -patternProperties:
> -  "^slave$":
> +  slave:
>      type: object
>  
>      properties:
> @@ -105,6 +90,7 @@ patternProperties:
>      required:
>        - compatible
>  
> +patternProperties:
>    "^.*@[0-9a-f]+$":
>      type: object
>  
> @@ -180,6 +166,20 @@ patternProperties:
>        - compatible
>        - reg
>  
> +allOf:
> +  - if:
> +      not:
> +        required:
> +          - spi-slave
> +    then:
> +      properties:
> +        "#address-cells":
> +          const: 1
> +    else:
> +      properties:
> +        "#address-cells":
> +          const: 0
> +
>  additionalProperties: true
>  
>  examples:
> -- 
> 2.27.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
