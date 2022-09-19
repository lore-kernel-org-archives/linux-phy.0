Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10216ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 10:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+C6AvVNoU7C+QTuHkDHbXwwM41ZqwatAcx9Uvi86uMc=; b=jSHvSB64M8s1PW
	NjmWhHkWNZJy33bp84yl6fgl/TmU7yormtWFSadTSJ4bNPSe1lpL6qq+yIx7/fg7ldxxt7rFyyv7G
	UhzRdgMSN9WXExwzrINkzSGOCyFT4VM/UIjZKHEgIhUKA/IDuebtoKkBalLyl1cImh3U+e08TQI6F
	bQoqCeWBD12D45YiQV3ObzizU1OuLDAWwQ4qzldiaT1640THYonWtPMJValmyw/MnTid/chz44x73
	1foOYM5OdMERzOGyiaV/WVMmgmZCofNv3KA0bBzDgOammCevnemm99Ji1edmBArcOO40TjB5PyMkx
	c91NZ/tmbDtfBOo9cE7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDou-00BFde-9l; Mon, 19 Sep 2022 10:16:08 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDog-00BFUu-Vu
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 10:16:00 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f9so45410494lfr.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 03:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=evzxOvmgH6UbQ3SrmcbZMdvnQKSuNK2KDdafv2/LKdM=;
        b=lEqZB6KB/zKuTfkk/UxqZXNOLkFMMiYQtM8DFTfIaV5bvdqgd5c6JGpq4tvujPhVLq
         oktRPeze/wuBCRi4GzBc40H9XP7DF3GQMcycEeGm+eelszMY+kvoQ1Nk9IsNaI722g5x
         SW2coy5Bitum5Ivz7EuAHTPGWcvP9aifvxSRbrMCPHzKMxDIPOKcVRJ7QWc+Y6BbkuGq
         EfSxQ6GoD/ojAdgoKSFoCD1RC/brn7fZTXz8GbutFbOXZE7a7zn+0WsXEEsuNhALDQPA
         6tesg69PFwolHyyoUTF9SVF/nBVTk+TQA9c2fgQX5wZqWpyr9K4k0G3gCF5g0/3vGzdb
         vWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=evzxOvmgH6UbQ3SrmcbZMdvnQKSuNK2KDdafv2/LKdM=;
        b=xZs55iDXI0d1GUawYILR9dIDi0qUadUDD2W+lAPZxrhg6vgTc4c3DRWYWW9DQKcmqb
         Oj6VsX/E1W0SH6h/jwhRXydM5AFFig5VFock7KdxXszDQLyQDN9DkOHyE8h2syRfSDxc
         SssZ4AOOFCGBqXqNnrVWZ2FocdQjwVPU+asA2mhuE2rFNLd2WOmyW843XeGnBRy/8OXy
         WwkGQg0APLFj95OjUUPrRbyD1ZBn4hHNee03kf0AQCl2NC/LlR2gewJ+ThGq5Gxejp3k
         hP0Z6OTeJoXLc7qdR2Hj9LVKJi05UTxktwKkKKcjsRmNIAlISkT5HOqT/1JnxAs6sOA8
         G75A==
X-Gm-Message-State: ACrzQf3/XRCU22+POTu6VEtVPIGodGOc+3BwbQdZYSwNwlnuR7W05qlO
	XpWciG+UEDEhufa0W+wN43WWJA==
X-Google-Smtp-Source: AMsMyM4a/SLS3T2VCUzOXDtEtxdoEXO8ti8FbVxNxmCgUL58+BE7cyiYw9w2ZdUxhfJYGWZvVabMvw==
X-Received: by 2002:a19:f515:0:b0:49e:da3d:1710 with SMTP id j21-20020a19f515000000b0049eda3d1710mr5787512lfb.600.1663582553286;
        Mon, 19 Sep 2022 03:15:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u15-20020ac258cf000000b00497a3e11608sm5120687lfo.303.2022.09.19.03.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 03:15:52 -0700 (PDT)
Message-ID: <2dfb57cd-d9d4-9a26-dd4c-f116894c9baf@linaro.org>
Date: Mon, 19 Sep 2022 12:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220914093911.187764-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_031556_871784_1EB39A9F 
X-CRM114-Status: GOOD (  21.38  )
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

On 14/09/2022 11:39, Siddharth Vadapalli wrote:
> TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Extend ti,qsgmii-main-ports property to support selection of upto
> two main ports at once across the two QSGMII interfaces.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 52 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index da7cac537e15..1e19efab018b 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -54,6 +54,7 @@ properties:
>        - ti,dm814-phy-gmii-sel
>        - ti,am654-phy-gmii-sel
>        - ti,j7200-cpsw5g-phy-gmii-sel
> +      - ti,j721e-cpsw9g-phy-gmii-sel
>  
>    reg:
>      maxItems: 1
> @@ -65,12 +66,19 @@ properties:
>      description: |
>        Required only for QSGMII mode. Array to select the port for
>        QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
> -      ports automatically. Any one of the 4 CPSW5G ports can act as the
> -      main port with the rest of them being the QSGMII_SUB ports.
> -    maxItems: 1
> -    items:
> -      minimum: 1
> -      maximum: 4

minItems: 1
maxItems: 2
  items:
    minimum: 1
    maximum: 8

> +      ports automatically. For J7200 CPSW5G with the compatible:
> +      ti,j7200-cpsw5g-phy-gmii-sel, ti,qsgmii-main-ports is an
> +      array of only one element, which is the port number ranging from
> +      1 to 4. For J721e CPSW9G with the compatible:
> +      ti,j721e-cpsw9g-phy-gmii-sel, ti,qsgmii-main-ports is an array
> +      of two elements, which corresponds to two potential QSGMII main
> +      ports. The first element and second element of the array can both
> +      range from 1 to 8 each, corresponding to two QSGMII main ports.
> +      For J721e CPSW9G, to configure port 2 as the first QSGMII main
> +      port and port 7 as the second QSGMII main port, we specify:
> +      ti,qsgmii-main-ports = <2>, <7>;
> +      If only one QSGMII main port is desired, mention the same main
> +      port twice.
>  
>  allOf:
>    - if:
> @@ -81,12 +89,43 @@ allOf:
>                - ti,dra7xx-phy-gmii-sel
>                - ti,dm814-phy-gmii-sel
>                - ti,am654-phy-gmii-sel
> +              - ti,j7200-cpsw5g-phy-gmii-sel
> +              - ti,j721e-cpsw9g-phy-gmii-sel
>      then:
>        properties:
>          '#phy-cells':
>            const: 1
>            description: CPSW port number (starting from 1)
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,j7200-cpsw5g-phy-gmii-sel
> +    then:
> +      properties:
> +        ti,qsgmii-main-ports:
> +          maxItems: 1
> +          items:
> +            minimum: 1
> +            maximum: 4
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,j721e-cpsw9g-phy-gmii-sel
> +    then:
> +      properties:
> +        ti,qsgmii-main-ports:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            minimum: 1
> +            maximum: 8
> +
>    - if:
>        not:
>          properties:
> @@ -94,6 +133,7 @@ allOf:
>              contains:
>                enum:
>                  - ti,j7200-cpsw5g-phy-gmii-sel
> +                - ti,j721e-cpsw9g-phy-gmii-sel
>      then:
>        properties:
>          ti,qsgmii-main-ports: false

This is interesting here... Did you test the bindings with your DTS?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
