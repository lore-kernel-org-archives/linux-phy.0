Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C69ECAAD3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Sep 2022 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egXT8KQWQToLkBrakX7ytj1wY4xKy3LdOk89DcINauM=; b=ASq2ONUSwWShqo
	j6jBcf1xaOXee3hy4vpb8nTOAnzP8yFPd+ZyhlKxNf6Mtje/vB2GYREn6QRKXyFF3XT5YS8JmxtSH
	EgHNFU5GIarxiQrIPUm0Vy33hA85ICt+kiXamMWCLYx3Da1k1fgksVkkJq/7somsVWW0RlIeUY3Lg
	ZXVOwlo9oVH1lnRUKqcfzXg3jiIJuoQ6I/hQuvZiSjr1bRYLtEuDx9E+XsYYHsdmPJR7FvH+PbZ0n
	bWh7VdaQYVLqeMwJvCaIpmvsJiDe/2SEzXHcKQBVmeKgEICK2ox0uFlZAGmynJ/XEjhrgL8V72DvS
	tbwEn/Oy3EJ+pDs3jgcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTm0n-00CoWj-RP; Thu, 01 Sep 2022 15:21:45 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTm0i-00CoRn-42
	for linux-phy@lists.infradead.org; Thu, 01 Sep 2022 15:21:41 +0000
Received: by mail-lf1-x131.google.com with SMTP id p7so13782088lfu.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Sep 2022 08:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ufzezn2FS2/AnewWg9FUJ5Ryg8+cSOWbtjRpSOhaf5g=;
        b=s/wlxrWDeyaHEMxeJ2xCWJeBhtex8WtxZTV6TMp6zyCWC5aK0I3ZDothFncgFcEaBF
         npYgCx9MlVGoKhvrEgslds/F/qtcQ3PuWoSfs4M2N6RcznYwdt/X8QJVddbCYumLqJsp
         MzqJPNGTgnc5oZjOg6B0EpC5xo3d4rBRKpnZFZFhNRTjgwo/Rc5E/N7PV60TuWhvUmX1
         kxMqKibUgJPO8cHA93b8X23g/mLJ+fI12exrehrX631jobVcgLhXb7GLTU1VnnssH9lD
         AA3glhPxiABBPYjy8hntsz6WZhkblwGD9FQe6BwJWdmoCeEA5Sfv02f/xfpzCp+MbMOs
         msoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ufzezn2FS2/AnewWg9FUJ5Ryg8+cSOWbtjRpSOhaf5g=;
        b=SNgVkxW6gCO1Hn5PkPKceELbR+rwlcECQHpMFDLUKZYJgTjDFFRQp8Xkg1J3R0+Iyf
         v2lejqwQvdQuySm3cRRl2Hr8KknVWIw7nM8yNRZTIuAViKMupVcGfow6U/AY8frZOtJL
         GLjn2Ca5AhKjvM+H5fbhObNg2zWZdnDaj/FnyLqcNvvvGzrfKEU3Xme5qOI/4/bSMBNV
         28pw4OU/Yto/EJb+trdi1fJrjzGICIt8qyP/ugteinNIerpQxNb6M3dZmhmbwSY5HiJ2
         9M7cws6EDmFuk/P2qbZrWxRnfi2QjgpVTCc5ylNnXFj+thXJHieak3gI9OhhAxgQO83J
         CPug==
X-Gm-Message-State: ACgBeo2md2fuTO8ohxIZZcFv/6Pi0t3xw5czv/kSQ5QwGA2z7pDfA26I
	UR98HhXVmgv78R8s6naTXxwaFg==
X-Google-Smtp-Source: AA6agR48dxWMskFdDWOlPNEkMp4j8Y0fJXT9BaTWhHIlGEOetE8aJiu5Jbr5fiiB3zchqSmkQEF+Nw==
X-Received: by 2002:a05:6512:146:b0:494:6704:885a with SMTP id m6-20020a056512014600b004946704885amr6551636lfo.447.1662045694718;
        Thu, 01 Sep 2022 08:21:34 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id x5-20020ac259c5000000b0048af3154456sm1305906lfn.146.2022.09.01.08.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 08:21:34 -0700 (PDT)
Message-ID: <4b681c03-7f5a-0234-2276-316e0bad1de5@linaro.org>
Date: Thu, 1 Sep 2022 18:21:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220901085506.138633-1-s-vadapalli@ti.com>
 <20220901085506.138633-2-s-vadapalli@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901085506.138633-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_082140_214559_6ACC723C 
X-CRM114-Status: GOOD (  22.85  )
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

On 01/09/2022 11:55, Siddharth Vadapalli wrote:
> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../mfd/ti,j721e-system-controller.yaml       |  6 ++++
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 30 ++++++++++++++++++-
>  2 files changed, 35 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> index 1aeac43cad92..802374e7645f 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> @@ -54,6 +54,12 @@ patternProperties:
>      description:
>        Clock provider for TI EHRPWM nodes.
>  
> +  "phy@[0-9a-f]+$":
> +    type: object
> +    $ref: /schemas/phy/phy-provider.yaml

You need instead ref to specific device bindings/schema. Probably to
/schemas/phy/ti,phy-gmii-sel.yaml#

This was entirely different in v3, so your change is very confusing.

> +    description:
> +      This is the register to set phy mode through phy-gmii-sel driver.

I don't understand the description. Please focus on the hardware not
some drivers - what is here? Phy for something?

> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index ff8a6d9eb153..0ffb97f1a77c 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -53,12 +53,24 @@ properties:
>        - ti,am43xx-phy-gmii-sel
>        - ti,dm814-phy-gmii-sel
>        - ti,am654-phy-gmii-sel
> +      - ti,j7200-cpsw5g-phy-gmii-sel
>  
>    reg:
>      maxItems: 1
>  
>    '#phy-cells': true
>  
> +  ti,qsgmii-main-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: |
> +      Required only for QSGMII mode. Array to select the port for
> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
> +      main port with the rest of them being the QSGMII_SUB ports.
> +    items:
> +      minimum: 1
> +      maximum: 4
> +
>  allOf:
>    - if:
>        properties:
> @@ -73,6 +85,22 @@ allOf:
>          '#phy-cells':
>            const: 1
>            description: CPSW port number (starting from 1)

Blank line


> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,j7200-cpsw5g-phy-gmii-sel
> +    then:
> +      properties:
> +        '#phy-cells':
> +          const: 1
> +          description: CPSW port number (starting from 1)
> +        ti,qsgmii-main-ports:
> +          maxItems: 1

It does not really make sense to limit items here, in the context of
this patch. You got a comment for it already. Your patch should make
sense on its own.

> +    else:
> +      properties:
> +        ti,qsgmii-main-ports: false

Blank line

>    - if:
>        properties:
>          compatible:
> @@ -97,7 +125,7 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    phy_gmii_sel: phy-gmii-sel@650 {
> +    phy_gmii_sel: phy@650 {

Split cleanup into separate patch.

>          compatible = "ti,am3352-phy-gmii-sel";
>          reg = <0x650 0x4>;
>          #phy-cells = <2>;


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
