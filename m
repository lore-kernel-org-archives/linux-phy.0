Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA0CC43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 10:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PB8FRGhLXIjxfNwtEj+faQGUQiNSY62NGQHzQlEXx1c=; b=fK3TZzv9GZk+Jh
	fZ4X3CIirMBzDVr3Kloud4Rk3jW+Tg734TPmZvWfBxQhlX/eFiuXJc64DNOVKfQFxgw9OIRwN31dr
	Iz9y55h8nF5/VSlTE5Lj4mozaZ0c0Ugo9kWcdzcSwKYCfO9iUIuhq9hCMiF5zau5JtKCTVNS5v5/A
	7BtoFVfpgL3ddw2hrauT0qNRcqfpE/hAgvHKdthT5UpC+JsNFMjqjaysMhT8qduweDb9uq+gWzsl1
	ixb165J5HHbYkrO1ekFmqBDs4wiD2KSmdyGCk2S1kMyN2ATtQ024UxZOtyaCtjrq6bPLeQFPj/9ZV
	7/AruRdCaEAvU1ie+TRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny9nO-000gof-Ud; Mon, 06 Jun 2022 10:17:14 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny9in-000ekk-A6
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 10:12:31 +0000
Received: by mail-ej1-x629.google.com with SMTP id bg6so8111080ejb.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 03:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/rP72ndeb3XJeLv7/6nfR2MkmciPGoTOZHeBxkMPBWk=;
        b=zE1cu8vksSD/kISbvDwjuFoyt4y05QoS7lK1CwWbsaBABs5APNVz0OwXzQsjPuD3NQ
         RbBc9OLILFKbE4vokDxEHTjfnFqyUJ6tB9ZQh8heIa5/OMQMp3AwfPOHzuxwx40FMxqr
         d46Hoc/uwMbnQ6ZJhTRg3WkG3enjJjDigkFM/ggGP+/NqJJ25v3YI2VcFBmpb5GAcHou
         f0vsDQbe8BVBoWu1E8IQkgvyVlpjTZflWFm8n8fAQylFs4pOUAu0Bc69g7RVWqJ4mB9o
         7F2pOm6hoFjr1VyJ6Sn2raZt74+jKjWY06XxncvXHIsGEA3aTyIfySA4u2fHms6kifGs
         HS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/rP72ndeb3XJeLv7/6nfR2MkmciPGoTOZHeBxkMPBWk=;
        b=f2FijII+GjMwaHZ4WSgSGb9mRANW5qdJUbjfUQ1c46ninsmBAjkHiK2JguqXbne3Cw
         e58G4oQH6EtHTq/lt6PpY8r8A9mR+/UiJdv2wH+Oo/50QPTHI57ntNxUdmqfitYVfKHQ
         Q6XT7d0YlgiSQTXUIc59ADvVONtPNzHkf+9diaw6z5ZQ8q2z2xhQy7c1/xcfYFh2t/9J
         n5FhDmgIpngDkR+gtbkWo4rpBwsa8qwn6JsQ+aWO0Tp09AEYlddUW6TtVyMg4j3jmCzJ
         QkA8A96z0ElMXqn1nS6CRVHnZLoqeXa7AsfdX5ZOhL3VPr4RaFrlBkcFPvgmw3fCukS+
         8BxQ==
X-Gm-Message-State: AOAM530S4rCov5IrQxLcwbAJ1RHQnFe1ocFOmW98TOWkqy2jE3fBjw9a
	Doa+N552iRGUpxauX9sj+kTzQQ==
X-Google-Smtp-Source: ABdhPJxXt/7tuXk3SxarbpGplKqYeyMFywIvToUVUK8DmlFthjRz4FJubCNB3SBK/NTWS9T3IFg+Gg==
X-Received: by 2002:a17:907:8a11:b0:6ff:d8c:eff with SMTP id sc17-20020a1709078a1100b006ff0d8c0effmr21340067ejc.659.1654510344640;
        Mon, 06 Jun 2022 03:12:24 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f24-20020a05640214d800b0042617ba63basm8290577edx.68.2022.06.06.03.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 03:12:24 -0700 (PDT)
Message-ID: <0ad94a8f-eec7-ab76-3b2d-99d4d3fbf21b@linaro.org>
Date: Mon, 6 Jun 2022 12:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
References: <20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
 <CGME20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p5>
 <20220603022353epcms2p5d83a4a7d95584ce6a65a63356cd46e76@epcms2p5>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603022353epcms2p5d83a4a7d95584ce6a65a63356cd46e76@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_031229_411585_58E587D8 
X-CRM114-Status: GOOD (  21.63  )
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

On 03/06/2022 04:23, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC.
> ARTPEC-8 is the SoC platform of Axis Communications
> and PCIe controller is designed based on Design-Ware PCIe controller.
> 
> changes since v1 :

Changelog goes after --- .

> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
>  .../bindings/pci/axis,artpec8-pcie-ep.yaml         | 108 ++++++++++++++++++
>  .../devicetree/bindings/pci/axis,artpec8-pcie.yaml | 123 +++++++++++++++++++++
>  2 files changed, 231 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
> new file mode 100644
> index 0000000..3512e38
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
> @@ -0,0 +1,108 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/axis,artpec8-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARTPEC-8 SoC PCIe Controller Device Tree Bindings

s/Device Tree Bindings//

> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +description: |+
> +  This PCIe end-point controller is based on the Synopsys DesignWare PCIe IP
> +  and thus inherits all the common properties defined in snps,dw-pcie-ep.yaml.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie-ep
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers.
> +      - description: Data Bus Interface (DBI2) registers.
> +      - description: PCIe address space region.
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: dbi2
> +      - const: addr_space
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupts-names:
> +    items:
> +      - const: intr

Remove the interrupts-names entirely, no need for single item with
generic name.


> +
> +  clocks:
> +    items:
> +      - description: PIPE clock, used by the controller to clock the PIPE
> +      - description: PCIe dbi clock, ungated version
> +      - description: PCIe master clock, ungated version
> +      - description: PCIe slave clock, ungated version
> +
> +  clock-names:
> +    items:
> +      - const: pipe_clk
> +      - const: dbi_clk
> +      - const: mstr_clk
> +      - const: slv_clk

Remove "_clk" suffix from all entries.

> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    items:
> +      - const: pcie_phy

Remove the phy-names entirely, no need for single item with generic name.

> +
> +  num-lanes:
> +    const: 2
> +
> +required:

My comment was not applied here, so please fix it.


> +  - reg
> +  - reg-names
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - phys
> +  - num-lanes
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    artpec8 {

Generic nodes please. Did you see "artpec8" or something like this in
any DTS?

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        pcie_ep: pcie-ep@17200000 {
> +            compatible = "axis,artpec8-pcie-ep";
> +            reg = <0x0 0x17200000 0x0 0x1000>,
> +                  <0x0 0x17201000 0x0 0x1000>,
> +                  <0x2 0x00000000 0x6 0x00000000>;
> +            reg-names = "dbi", "dbi2", "addr_space";
> +            #interrupt-cells = <1>;
> +            interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "intr";
> +            clocks = <&clock_cmu_fsys 39>,
> +                     <&clock_cmu_fsys 38>,
> +                     <&clock_cmu_fsys 37>,
> +                     <&clock_cmu_fsys 36>;
> +            clock-names = "pipe_clk", "dbi_clk", "mstr_clk", "slv_clk";
> +            phys = <&pcie_phy>;
> +            phy-names = "pcie_phy";
> +            num-lanes = <2>;
> +            bus-range = <0x00 0xff>;
> +            num-ib-windows = <16>;
> +            num-ob-windows = <16>;
> +        };
> +    };


> +...
> diff --git a/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
> new file mode 100644
> index 0000000..945a061
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/axis,artpec8-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Artpec-8 SoC PCIe Controller Device Tree Bindings

Ditto

> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +description: |+
> +  This PCIe host controller is based on the Synopsys DesignWare PCIe IP
> +  and thus inherits all the common properties defined in snps,dw-pcie.yaml.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers.
> +      - description: External Local Bus interface (ELBI) registers.
> +      - description: PCIe configuration space region.
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: elbi
> +      - const: config
> +
> +  device_type:
> +    items:

It's not a list, but just a string. No need for items.

> +      - const: pci
> +
> +  ranges:
> +    maxItems: 2
> +
> +  num-lanes:
> +    const: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupts-names:
> +    items:
> +      - const: intr

Remove entire property.

> +
> +  clocks:
> +    items:
> +      - description: PIPE clock, used by the controller to clock the PIPE
> +      - description: PCIe dbi clock, ungated version
> +      - description: PCIe master clock,  ungated version
> +      - description: PCIe slave clock, ungated version
> +
> +  clock-names:
> +    items:
> +      - const: pipe_clk
> +      - const: dbi_clk
> +      - const: mstr_clk
> +      - const: slv_clk

Remove suffix.

> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    items:
> +      - const: pcie_phy

Remove entire property.

> +
> +required:

Previous comment not applied.

> +  - reg
> +  - reg-names
> +  - device_type
> +  - ranges
> +  - num-lanes
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - phys
> +  - phy-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    artpec8 {

Same as previous patch.

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        pcie: pcie@17200000 {
> +            compatible = "axis,artpec8-pcie";
> +            reg = <0x0 0x17200000 0x0 0x1000>,
> +                  <0x0 0x16ca0000 0x0 0x2000>,
> +                  <0x7 0x0001e000 0x0 0x2000>;
> +            reg-names = "dbi", "elbi", "config";
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +            device_type = "pci";
> +            ranges = </* non-prefetchable memory */
> +                      0x83000000 0x0 0x0000000 0x2 0x00000000 0x5 0x00000000
> +                      /* downstream I/O */
> +                      0x81000000 0x0 0x0000000 0x7 0x00000000 0x0 0x00010000>;
> +            num-lanes = <2>;
> +            bus-range = <0x00 0xff>;
> +            interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "intr";
> +            #interrupt-cells = <1>;
> +            clocks = <&cmu_fsys 39>,
> +                     <&cmu_fsys 38>,
> +                     <&cmu_fsys 37>,
> +                     <&cmu_fsys 36>;
> +            clock-names = "pipe_clk", "dbi_clk", "mstr_clk", "slv_clk";
> +            phys = <&pcie_phy>;
> +            phy-names = "pcie_phy";
> +        };
> +    };
> +...


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
