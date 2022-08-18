Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3E8C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 14:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUu42rGXQGhonM70urWSuLtiGVncsHhiTuL3S8hfAyg=; b=VBkIDdf80kX50a
	EiyKg4jT6ZDGmwLOeCdNL/yiGv5PierNjwEpLOYpkwK7MhbiI8RZYcac6stxpNMpmYjeZwNeMsdoR
	yv3BUQpHesztej8KEZEcCWsZDezdhYVJrqx6GEcje4sfQMDjecm4MESYMbPfCVc8/hE/Z6R0JHGua
	fyad2+p3mXieFs9SOZrM2GQ6ENe6VgzB9aGOYV2CHUejthTc6uuZNhJYF4iaQ5hA1T9U8X99x9EQA
	DL68bBv670ORbW/XxOPUiM6fmM4Ld+uZQI3YZZjJVBX39GxxsNMOazFPTbnwkJ7p5o1rDLk+n/oSn
	ou9RSwT4roOpEpRFWZiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOgoM-006FEp-E5; Thu, 18 Aug 2022 14:47:54 +0000
Received: from mail-pl1-f169.google.com ([209.85.214.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOgkB-006CGN-Ox
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 14:43:37 +0000
Received: by mail-pl1-f169.google.com with SMTP id u22so1669880plq.12
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 07:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=7IrASqplrkVpiIiYhE5AJVZ21/g9GJs8NehtB1NbKQo=;
        b=r5oQWyBdgyFafp9+OORrIu4YxuZ5c9lAHUhGcSkifLPPbvHCZ1AfhaLq1Ptv1SVsrj
         OXvrLvrjIhmhrmPm0ugVUpXFzILzKddcgHY9awgOwlUjquTI4AlH5Cm7mNIoeerE5i9O
         jBuXFe5a0O8COnLK8g3EVESrmqB9Re341Hb6n+wIRksFiNEzUpMunKgHzJU9cqIm3pM4
         K4lNM+m/wVKwlvrPs8sjFzjYUusa8UfPurCgXgUucXN0043wQnkIa+kx/cU24FRPkvql
         EgvKV8YvNqLQwWYk7Pg1fg2RgASWUcsXbcB5ttXdK1K0B7QYdqhj2eMoQNJm+1+aX0TH
         ZMoQ==
X-Gm-Message-State: ACgBeo2qzN2cp/tmPQEjmZU9v1EHzNIO+9/rhPDjnu07YPmApItzio+1
	gqoXaSvgWLgM/UuyyZnMCA==
X-Google-Smtp-Source: AA6agR4Ukpo8yvJAoeBSb8oFuIf6y3f7mzBWJQVcAch9qQg64UnhWee8W2i84xMGO7MLrU5vbciCvg==
X-Received: by 2002:a17:902:ecce:b0:16e:e6e9:69ba with SMTP id a14-20020a170902ecce00b0016ee6e969bamr3177308plh.97.1660833812118;
        Thu, 18 Aug 2022 07:43:32 -0700 (PDT)
Received: from robh.at.kernel.org ([2607:fb90:80c2:7290:7acd:8d54:3db6:21d4])
        by smtp.gmail.com with ESMTPSA id y8-20020a170902864800b0016f8e8032c4sm762868plt.129.2022.08.18.07.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 07:43:31 -0700 (PDT)
Received: (nullmailer pid 1837696 invoked by uid 1000);
	Thu, 18 Aug 2022 14:43:26 -0000
Date: Thu, 18 Aug 2022 08:43:26 -0600
From: Rob Herring <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com, rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Message-ID: <20220818144326.GA1829017-robh@kernel.org>
References: <20220816055848.111482-1-s-vadapalli@ti.com>
 <20220816055848.111482-2-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220816055848.111482-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_074335_864504_176F9166 
X-CRM114-Status: GOOD (  20.75  )
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

On Tue, Aug 16, 2022 at 11:28:47AM +0530, Siddharth Vadapalli wrote:
> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 27 ++++++++++++++++++-
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> index 73cffc45e056..527fd47b648b 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> @@ -54,6 +54,11 @@ patternProperties:
>      description:
>        Clock provider for TI EHRPWM nodes.
>  
> +  "phy@[0-9a-f]+$":
> +    type: object
> +    description:
> +      This is the register to set phy mode through phy-gmii-sel driver.

No properties for this node? A whole node for 1 register?

Or this node is ti,phy-gmii-sel.yaml? If so, add a $ref to it.

> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index ff8a6d9eb153..54da408d0360 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -53,12 +53,21 @@ properties:
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

Constraints? 

> +
>  allOf:
>    - if:
>        properties:
> @@ -73,6 +82,22 @@ allOf:
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

An array, but only 1 entry allowed?

> +          items:
> +            minimum: 1
> +            maximum: 4

Can't this be up above?

>    - if:
>        properties:
>          compatible:
> @@ -97,7 +122,7 @@ additionalProperties: false
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

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
