Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3541AC43334
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+8jTr2rudqCUaoDLr1ZgnxGT/CTVogEb4hray+zPew=; b=uY+dH9W+iOOXqp
	6GhSaK3cHJ2y7hPsvyKu/RsFdzTOOegqc4KwoKhlE/IjB7rehNpXZzZ6apN7Xv0EdYc7Oe2hwhOp+
	WaZ9U/jnJLEPYTXNNef2aVymnnUe1xRhfjppKwDckAj7esgQAoqPLulavQB4+xG7AqzCKYdkg0JPl
	PvIr9lz9c4LMh0yrZ5BMJ6NhQWEgT5/r6FzuD1+4I9aLR12nl4Xx2og18xVYwkoq3VLrwsqMBkBao
	6UQN2qI/ucr5xqhJSAcS3PNzGQ0+A4XuCTkpcJLDsagAK7O4dxGz8wUguexpFRgK0LazrwuroKMs7
	rpNROECP2n9WxuZnU6Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RFg-009nZF-FM; Wed, 29 Jun 2022 06:32:40 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RFd-009nQk-7w
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:32:39 +0000
Received: by mail-ej1-x632.google.com with SMTP id fi2so30443023ejb.9
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 23:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zS77KaVQIZjDtcQtlQ4PMGjH8fLTAFXlNerKkkUUDRE=;
        b=L6KqQoQigrDtQLYm9a9rDV5XCTOmGJdU+i+sLSBAwuuKkYMtVycFv9vnHoZr6oJCve
         2Q0UFt1o1ZyYwGMuz4NkYXc+Oo+fCO1U/v8BCpdOu+h4Wkq+lXIOGO1GxAhipuBJ3zqo
         VJtY5B2FSRDIx8MLnt4xSZzsP6pVzAEEksJRraiJMeTuXyDr0Ci06Axe13zvokvoK6UL
         /xqvwIM8FkB9X45QtAc5Vbe5oFwI2nCZI52uEhWTylW37jwqKeADtN8bCOYwyPB/kvYJ
         uSsorotIURg8Uh10tIfw3K70gKecHWJi5d05//xwNHh6cOaJxAchKdSuCK7dMmalRUp/
         7cCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zS77KaVQIZjDtcQtlQ4PMGjH8fLTAFXlNerKkkUUDRE=;
        b=40o0Xd1OW4T6xB4a1IRaSNeczCL6s9t/m16LEL9q+vblkyQIkbrJcJOBP+KC7R9QVC
         7xtT723NbLgH+956nfjtoyEjNv+kINqXD9QIGy2RT6yjF2jKpwkwf3Y5O7wUdVfNVLjv
         DH4tnmmK1DIMGDypUpaiA2Pe6shbGbqVYATfUVomoiMnTKN6B8GDjgFqaiVSzwEJmfSs
         PyUNvYIBW+uNjA+8P4Y++/p6048XXFnA2tmupd9lw+sBAcLTx9P6Eo4lMQScLlIkkZU5
         kA69E+0Q2dTp2c+RxigSIRECpN/mfz5hSfj0/20q8xwdhlRW2xp8H+tflQkQ+E3axXLs
         zAzw==
X-Gm-Message-State: AJIora9gDrxRz0bOJuincWEPMUS/g/CG11KUZfzyes+0ElNMdnnFdsgK
	qwYCtN0+NzW0qnPr+0rgvkVl8w==
X-Google-Smtp-Source: AGRyM1ujoPALE1gsZbOIqyN3wkUg+o/zzUIS8sbVUm6YipH4Ynb6EP2Yiji4sZbXIpzsWECboDd0qg==
X-Received: by 2002:a17:906:7482:b0:722:ea8f:3a12 with SMTP id e2-20020a170906748200b00722ea8f3a12mr1797580ejl.220.1656484344347;
        Tue, 28 Jun 2022 23:32:24 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r21-20020a1709067fd500b007025015599bsm7224211ejs.214.2022.06.28.23.32.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 23:32:23 -0700 (PDT)
Message-ID: <a4e1765a-8768-8e1d-9556-34644fcce101@linaro.org>
Date: Wed, 29 Jun 2022 08:32:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V3 03/11] dt-bindings: PCI: tegra234: Add schema for
 tegra234 rootport mode
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-4-vidyas@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629060435.25297-4-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233237_374898_60A5FE84 
X-CRM114-Status: GOOD (  25.60  )
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

On 29/06/2022 08:04, Vidya Sagar wrote:
> Add support for PCIe controllers that operate in the rootport mode
> in tegra234 chipset.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * New patch in this series
> 
>  .../bindings/pci/nvidia,tegra194-pcie.yaml    | 151 +++++++++++++++++-
>  1 file changed, 146 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> index 4a49dddf33bb..ede53baa1d71 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> @@ -22,6 +22,7 @@ properties:
>    compatible:
>      enum:
>        - nvidia,tegra194-pcie
> +      - nvidia,tegra234-pcie
>  
>    reg:
>      items:
> @@ -82,6 +83,8 @@ properties:
>        name for the PCIe controller. Following are the specifiers for the different PCIe
>        controllers:
>  
> +      Tegra194
> +
>          - TEGRA194_POWER_DOMAIN_PCIEX8B: C0
>          - TEGRA194_POWER_DOMAIN_PCIEX1A: C1
>          - TEGRA194_POWER_DOMAIN_PCIEX1A: C2
> @@ -91,6 +94,22 @@ properties:
>  
>        these specifiers are defined in "include/dt-bindings/power/tegra194-powergate.h" file.
>  
> +      Tegra234
> +
> +        - TEGRA234_POWER_DOMAIN_PCIEX4BA: C0
> +        - TEGRA234_POWER_DOMAIN_PCIEX1A : C1
> +        - TEGRA234_POWER_DOMAIN_PCIEX1A : C2
> +        - TEGRA234_POWER_DOMAIN_PCIEX1A : C3
> +        - TEGRA234_POWER_DOMAIN_PCIEX4BB: C4
> +        - TEGRA234_POWER_DOMAIN_PCIEX8A : C5
> +        - TEGRA234_POWER_DOMAIN_PCIEX4A : C6
> +        - TEGRA234_POWER_DOMAIN_PCIEX8B : C7
> +        - TEGRA234_POWER_DOMAIN_PCIEX4CA: C8
> +        - TEGRA234_POWER_DOMAIN_PCIEX4CB: C9
> +        - TEGRA234_POWER_DOMAIN_PCIEX4CC: C10

Why duplicating header?

> +
> +      these specifiers are defined in "include/dt-bindings/power/tegra234-powergate.h" file.
> +
>    interconnects:
>      items:
>        - description: memory read client
> @@ -112,17 +131,30 @@ properties:
>        Must contain a pair of phandle to BPMP controller node followed by controller ID. Following
>        are the controller IDs for each controller:
>  
> +      Tegra194
> +
>          0: C0
>          1: C1
>          2: C2
>          3: C3
>          4: C4
>          5: C5
> -    items:
> -      - items:
> -          - minimum: 0
> -            maximum: 0xffffffff
> -          - enum: [ 0, 1, 2, 3, 4, 5 ]
> +
> +      Tegra234
> +
> +        0 : C0
> +        1 : C1
> +        2 : C2
> +        3 : C3
> +        4 : C4
> +        5 : C5
> +        6 : C6
> +        7 : C7
> +        8 : C8
> +        9 : C9
> +        10: C10
> +
> +      Platform constraints are described later
>  
>    nvidia,update-fc-fixup:
>      description: |
> @@ -131,6 +163,8 @@ properties:
>        enabling root port to exchange optimum number of FC (Flow Control) credits with downstream
>        devices:
>  
> +      NOTE:- This is applicable only for Tegra194.
> +

Then make it false in other variants in allOf:if:then

>          1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and MPS)
>          2. If C0/C1/C2/C3/C4/C5 operate at their respective max link widths and
>            a) speed is Gen-2 and MPS is 256B
> @@ -159,10 +193,56 @@ properties:
>      description: A phandle to the regulator node that supplies 12V to the slot if the platform has
>        one such slot. (Ex:- x16 slot owned by C5 controller in p2972-0000 platform).
>  
> +  nvidia,enable-srns:
> +    description: |
> +      This boolean property needs to be present if the controller is configured

Remove "This boolean property needs to be present" and instead describe
the feature behind, e.g. "Configure the controller to operate in SRNS
......".

There is no need to make descriptions longer than necessary.


> +      to operate in SRNS (Separate Reference Clocks with No Spread-Spectrum Clocking).
> +      NOTE:- This is applicable only for Tegra234.

Make it false on other variants (allOf:if:then)

> +

No need for such blank lines.

> +    $ref: /schemas/types.yaml#/definitions/flag

type: boolean (the same in your patch #2)

> +
> +  nvidia,enable-ext-refclk:
> +    description: |
> +      This boolean property needs to be present if the controller is configured
> +      to use the reference clocking coming in from an external clock source instead of
> +      using the internal clock source.
> +
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
>  allOf:
>    - $ref: "/schemas/pci/pci-bus.yaml#"
>    - $ref: "/schemas/pci/snps,dw-pcie.yaml#"
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra194-pcie
> +    then:
> +      properties:
> +        nvidia,bpmp:
> +          items:
> +            - items:
> +                - minimum: 0
> +                  maximum: 0xffffffff
> +                - enum: [ 0, 1, 2, 3, 4, 5 ]
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra234-pcie
> +    then:
> +      properties:
> +        nvidia,bpmp:
> +          items:
> +            - items:
> +                - minimum: 0
> +                  maximum: 0xffffffff
> +                - enum: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
> +
>  unevaluatedProperties: false
>  
>  required:
> @@ -252,3 +332,64 @@ examples:
>              phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
>          };
>      };
> +
> +  - |
> +    #include <dt-bindings/clock/tegra234-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/tegra234-powergate.h>
> +    #include <dt-bindings/reset/tegra234-reset.h>
> +
> +    bus@0 {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        ranges = <0x0 0x0 0x0 0x8 0x0>;
> +
> +        pcie@14160000 {
> +            compatible = "nvidia,tegra234-pcie";
> +            power-domains = <&bpmp TEGRA234_POWER_DOMAIN_PCIEX4BB>;
> +            reg = <0x00 0x14160000 0x0 0x00020000>, /* appl registers (128K)      */
> +                  <0x00 0x36000000 0x0 0x00040000>, /* configuration space (256K) */
> +                  <0x00 0x36040000 0x0 0x00040000>, /* iATU_DMA reg space (256K)  */
> +                  <0x00 0x36080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +            reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +            device_type = "pci";
> +            num-lanes = <4>;
> +            num-viewport = <8>;
> +            linux,pci-domain = <4>;
> +
> +            clocks = <&bpmp TEGRA234_CLK_PEX0_C4_CORE>;
> +            clock-names = "core";
> +
> +            resets = <&bpmp TEGRA234_RESET_PEX0_CORE_4_APB>,
> +                     <&bpmp TEGRA234_RESET_PEX0_CORE_4>;
> +            reset-names = "apb", "core";
> +
> +            interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
> +                         <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
> +            interrupt-names = "intr", "msi";
> +
> +            #interrupt-cells = <1>;
> +            interrupt-map-mask = <0 0 0 0>;
> +            interrupt-map = <0 0 0 0 &gic GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> +
> +            nvidia,bpmp = <&bpmp 4>;
> +
> +            nvidia,aspm-cmrt-us = <60>;
> +            nvidia,aspm-pwr-on-t-us = <20>;
> +            nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +            bus-range = <0x0 0xff>;
> +            ranges = <0x43000000 0x21 0x40000000 0x21 0x40000000 0x2 0xe8000000>, /* prefetchable */
> +                     <0x02000000 0x0  0x40000000 0x24 0x28000000 0x0 0x08000000>, /* non-prefetchable */
> +                     <0x01000000 0x0  0x36100000 0x00 0x36100000 0x0 0x00100000>; /* downstream I/O */
> +
> +            vddio-pex-ctl-supply = <&p3701_vdd_AO_1v8>;
> +
> +            phys = <&p2u_hsio_4>, <&p2u_hsio_5>, <&p2u_hsio_6>,
> +                   <&p2u_hsio_7>;
> +            phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> +        };
> +    };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
