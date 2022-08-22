Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CE82C28D13
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 21:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeIGM8ijz1STfsNwGYch4t8xcV10LYOT76ZMWGOrTqI=; b=SPb7AItrIa4CcV
	g7dTt6rclUemQB1ujZcrYKR8upwyNaSGmuxo3sZI8VaMi/ngZl1/+gHy06QJCyqwRpMEczd6MdVVS
	xu7B/xBhuT4oKi85QwGKwOVGANeZX12ykJL3CJmKi3wJJgQeb/oSxlNanqM6+wStHFVLWqs4Xysmv
	lqEmDZs29bEJTwAxOhLQCDQ1+iQuS6pg90AFo5CBH1l1VMqIE2ZRCjr3ENZsyec143VUL1Cqd062l
	iClotrwCC/KWrj9mDmLw35qkqDr1wGgonzvpmuGSCGCsdiIOP+NjwoeLojY5JW7hKDxmmWTutRK4I
	TdGcRCZdtq5u3PuCQ6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQFAz-00F6bI-00; Mon, 22 Aug 2022 21:41:41 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQFAo-00F6Xt-1j
	for linux-phy@lists.infradead.org; Mon, 22 Aug 2022 21:41:34 +0000
Received: by mail-oi1-f181.google.com with SMTP id u14so13859504oie.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Aug 2022 14:41:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=a8ZkZv18wdtWSYdgJx+7DhHUTIQUoytjuM08wGVVPds=;
        b=hXOuJzA2xTjSM2vLZToUfyVP4pvXqgPLYWZQEx0iCLTk21PQ3gXdAYPA5VfNiJQXdS
         BdPmc6EEUZCHsr07/Qiv5WNU2VCJW7SVSwrqkYKcIhhcj4Ixh6K85WBB5z1YSAWAJO0k
         ZF1qEuiDnlvEYO/Sj8QGVqbwUYUh1aSauITZirCIVen0l0FLWjSj1ZbCX3HzUjd/2dii
         gnIKNIlcUxKEYEJjeyxoDynUIlMxivlBAHycZt3F8UCRjlDqKFnrryI85CyjQ7kCQ3d5
         BxFmlQElUV34p0Aly3UIIrXYgosPdZsec+X49h03vcpZBK9GrDRr8qf/HDW+mmQxWHfE
         6Leg==
X-Gm-Message-State: ACgBeo0SEBCcpmj0tWCp7eDg8xekRuZyOC0eErRLuBwxaOxd9Ll9aRgX
	Xa7Ld0boosw0rG41ovJBwA==
X-Google-Smtp-Source: AA6agR4rGeZX+4l/wxYxBBIhwpM1DvoUSWsE4kMWF9j8i7roDl78N4XYQvOTxwGkWsfNa0bFiu0jfA==
X-Received: by 2002:a05:6808:30a5:b0:342:feaa:d406 with SMTP id bl37-20020a05680830a500b00342feaad406mr129253oib.256.1661204488678;
        Mon, 22 Aug 2022 14:41:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c7-20020a056870c08700b00118927e0dacsm3212873oad.4.2022.08.22.14.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 14:41:28 -0700 (PDT)
Received: (nullmailer pid 903367 invoked by uid 1000);
	Mon, 22 Aug 2022 21:41:26 -0000
Date: Mon, 22 Aug 2022 16:41:26 -0500
From: Rob Herring <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: lee.jones@linaro.org, krzysztof.kozlowski@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com, rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Message-ID: <20220822214126.GA896562-robh@kernel.org>
References: <20220822065631.27933-1-s-vadapalli@ti.com>
 <20220822065631.27933-2-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220822065631.27933-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_144130_109322_0F62D375 
X-CRM114-Status: GOOD (  21.04  )
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

On Mon, Aug 22, 2022 at 12:26:30PM +0530, Siddharth Vadapalli wrote:
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
> index 73cffc45e056..466724cb4157 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> @@ -54,6 +54,12 @@ patternProperties:
>      description:
>        Clock provider for TI EHRPWM nodes.
>  
> +  "phy@[0-9a-f]+$":
> +    type: object
> +    $ref: ../phy/ti,phy-gmii-sel.yaml

/schemas/phy/...

> +    description:
> +      This is the register to set phy mode through phy-gmii-sel driver.
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

If the array size can only ever be 1, then it's a uint32, not a 
uint32-array.

> +    else:
> +      properties:
> +        ti,qsgmii-main-ports: false
>    - if:
>        properties:
>          compatible:
> @@ -97,7 +125,7 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    phy_gmii_sel: phy-gmii-sel@650 {
> +    phy_gmii_sel: phy@650 {
>          compatible = "ti,am3352-phy-gmii-sel";
>          reg = <0x650 0x4>;
>          #phy-cells = <2>;
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
