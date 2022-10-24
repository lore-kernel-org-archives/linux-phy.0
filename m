Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9020FA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urzy+MoUvkugZ7VxA4Pqh1Qb7TU7QRMCSD/qJRal+KE=; b=GCD9u8UfMTFuxQ
	DsUiUMbEUQh76RR9X325igU7HS0WjQkzgaDGhZoUbQYPB2nu3TYZ+XyqpYI5fqHG9JGqUIHi9cMzQ
	BwdM91cD0jYwHP9gGUnCOWdNdROa6X/48KJJtl0wJgzLNYvMsd9Ow2wyRL3ksouRChUAIyaDKwYwm
	e89PU1tlXKi0/WusD4uXx4nmAbEhHlyFMqGPPLscEBz1GUvIE/zAcOmijhUcRD1/dLkYEMgUgrMvm
	Byto8/u/ewYASd85MAICpXxwmRaUf0HrBnxmKc6WHA4e4UW1Ui6bGaE3cRpGNxLlSaq3TCyEgQKrd
	kHtE2xPrjAavSWAiSuFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyqt-002041-9A; Mon, 24 Oct 2022 14:54:55 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyqm-00202c-0D
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 14:54:49 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-13b103a3e5dso12151335fac.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 07:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gezVBAneqrs7XaH/fdMxwAK/2YWaqmP9HW9vTh1Ptis=;
        b=gaBqydOckuibG9qiqTk9Q9ysXuApQZ8v4ArMtsTJKvscYyhsoofY+Pi3tJCMOcP22K
         o4CuHZ6EykZvpg+Ir7IO59DfwRQo7LEgtfuMVF4LcOhIeZjlUHmgyQWMIxBW1cIpmRXQ
         6X04eN7oFLWOW9WZiWlDayuor3lTDK8kh5F9kYaU3UxkXbACONpftIRWeeaBJMCyb3Ro
         EBkwHg71mSy/NPbGxCVor1jxi/ZLVPkJe/l/ZS7QWK/FMlbiIFzfi228F5p7tcHzUFxF
         aVkRdVpwa3YveJCypyK2KJL0PcuO5iD9KhdJikMHXLox7hKc8Q5VECF1EOj5tiPxVc2c
         SgPQ==
X-Gm-Message-State: ACrzQf1rZ8jSp4cAAt35uYhwv0oj/rLYVGYzATb8W0+q5mSH8ikxQtj3
	9ZO+c03tNXK71ZB0bvbR7w==
X-Google-Smtp-Source: AMsMyM42Jg3r8Ewtmh0Qc3jpN13ZbUDnPdjYyras8m0IwxfR0o9ZvqlFWkFA5v9EIKywV/cIiznewg==
X-Received: by 2002:a05:6870:d389:b0:13b:a0cd:5fcd with SMTP id k9-20020a056870d38900b0013ba0cd5fcdmr3731915oag.260.1666623286325;
        Mon, 24 Oct 2022 07:54:46 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t19-20020a056871055300b0013b1301ce42sm5474921oal.47.2022.10.24.07.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 07:54:45 -0700 (PDT)
Received: (nullmailer pid 1774935 invoked by uid 1000);
	Mon, 24 Oct 2022 14:54:46 -0000
Date: Mon, 24 Oct 2022 09:54:46 -0500
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 02/11] dt-bindings: usb: Add NVIDIA Tegra XUSB host
 controller binding
Message-ID: <20221024145446.GA1763588-robh@kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-3-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024074128.1113554-3-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_075448_080066_68967591 
X-CRM114-Status: GOOD (  21.07  )
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

On Mon, Oct 24, 2022 at 03:41:19PM +0800, Wayne Chang wrote:
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra194 and Tegra234 SoC. This controller supports the USB 3.1
> specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  .../bindings/usb/nvidia,tegra-xhci.yaml       | 213 ++++++++++++++++++
>  1 file changed, 213 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.yaml
> new file mode 100644
> index 000000000000..d261a419a04f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.yaml
> @@ -0,0 +1,213 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/usb/nvidia,tegra-xhci.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Device tree binding for NVIDIA Tegra XUSB host controller

Drop 'Device tree binding for '

> +
> +description:
> +  The Tegra XHCI controller supports both USB 2.0 HighSpeed/FullSpeed and
> +  USB 3.1 SuperSpeed protocols.
> +
> +maintainers:
> +  - Wayne Chang <waynec@nvidia.com>
> +

Ref to usb-xhci.yaml? Or usb-hcd.yaml.

> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - nvidia,tegra194-xusb # For Tegra194
> +          - nvidia,tegra234-xusb # For Tegra234

The comment is kind of redundant.

> +
> +  reg:
> +    minItems: 2
> +    items:
> +      - description: XUSB host controller registers
> +      - description: XUSB host PCI Config registers
> +      - description: XUSB host bar2 registers

Drop 'XUSB host '

> +
> +  reg-names:
> +    minItems: 2
> +    items:
> +      - const: hcd
> +      - const: fpci
> +      - const: bar2
> +
> +  interrupts:
> +    items:
> +      - description: Must contain the XUSB host interrupt.
> +      - description: Must contain the XUSB mbox interrupt.

Drop 'Must contain the '

> +
> +  clocks:
> +    items:
> +      - description: Clock to enable core XUSB host clock.
> +      - description: Clock to enable XUSB falcon clock.
> +      - description: Clock to enable XUSB super speed clock.
> +      - description: Clock to enable XUSB super speed dev clock.
> +      - description: Clock to enable XUSB high speed dev clock.
> +      - description: Clock to enable XUSB full speed dev clock.
> +      - description: Clock to enable XUSB UTMI PLL clock.
> +      - description: Clock to enable core XUSB dev clock.
> +      - description: Clock to enable XUSB PLLE clock.

Drop 'Clock to enable '

> +
> +  clock-names:
> +    items:
> +      - const: xusb_host
> +      - const: xusb_falcon_src
> +      - const: xusb_ss
> +      - const: xusb_ss_src
> +      - const: xusb_hs_src
> +      - const: xusb_fs_src
> +      - const: pll_u_480m
> +      - const: clk_m
> +      - const: pll_e
> +
> +  interconnects:
> +    items:
> +      - description: memory read client
> +      - description: memory write client
> +
> +  interconnect-names:
> +    items:
> +      - const: dma-mem # read
> +      - const: write
> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    items:
> +      - description: XUSBC(host) power-domain
> +      - description: XUSBA(superspeed) power-domain
> +
> +  power-domain-names:
> +    items:
> +      - const: xusb_host
> +      - const: xusb_ss

Drop 'xusb_'.

> +
> +  nvidia,xusb-padctl:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to the XUSB pad controller that is used to configure the USB pads
> +      used by the XUDC controller.
> +
> +  phys:
> +    minItems: 1
> +    maxItems: 8
> +    description:
> +      Must contain an entry for each entry in phy-names.
> +      See ../phy/phy-bindings.txt for details.

Drop description.

> +
> +  phy-names:
> +    minItems: 1
> +    maxItems: 8
> +    items:
> +      anyOf:
> +        - const: usb2-0
> +        - const: usb2-1
> +        - const: usb2-2
> +        - const: usb2-3
> +        - const: usb3-0
> +        - const: usb3-1
> +        - const: usb3-2
> +        - const: usb3-3
> +
> +  dma-coherent:
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - power-domain-names
> +  - nvidia,xusb-padctl
> +  - phys
> +  - phy-names
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra194-xusb
> +    then:
> +      properties:
> +        reg:
> +          minItems: 2
> +        reg-names:
> +          minItems: 2
> +        clocks:
> +          minItems: 9
> +        clock-names:
> +          minItems: 9
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra234-xusb
> +    then:
> +      properties:
> +        reg:
> +          minItems: 3
> +        reg-names:
> +          minItems: 3
> +        clocks:
> +          minItems: 9
> +        clock-names:
> +          minItems: 9

Same number of items, why are clocks in the if/then?

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/tegra234-gpio.h>
> +    #include <dt-bindings/clock/tegra234-clock.h>
> +    #include <dt-bindings/memory/tegra234-mc.h>
> +    #include <dt-bindings/power/tegra234-powergate.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    usb@3610000 {
> +      compatible = "nvidia,tegra234-xusb";
> +      reg = <0x03610000 0x40000>,
> +            <0x03600000 0x10000>,
> +            <0x03650000 0x10000>;
> +      reg-names = "hcd", "fpci", "bar2";
> +
> +      interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
> +             <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
> +
> +      clocks = <&bpmp TEGRA234_CLK_XUSB_CORE_HOST>,
> +         <&bpmp TEGRA234_CLK_XUSB_FALCON>,
> +         <&bpmp TEGRA234_CLK_XUSB_CORE_SS>,
> +         <&bpmp TEGRA234_CLK_XUSB_SS>,
> +         <&bpmp TEGRA234_CLK_CLK_M>,
> +         <&bpmp TEGRA234_CLK_XUSB_FS>,
> +         <&bpmp TEGRA234_CLK_UTMIP_PLL>,
> +         <&bpmp TEGRA234_CLK_CLK_M>,
> +         <&bpmp TEGRA234_CLK_PLLE>;
> +      clock-names = "xusb_host", "xusb_falcon_src",
> +              "xusb_ss", "xusb_ss_src", "xusb_hs_src",
> +              "xusb_fs_src", "pll_u_480m", "clk_m",
> +              "pll_e";
> +      interconnects = <&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTR &emc>,
> +          <&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTW &emc>;
> +      interconnect-names = "dma-mem", "write";
> +      iommus = <&smmu_niso1 TEGRA234_SID_XUSB_HOST>;
> +
> +      power-domains = <&bpmp TEGRA234_POWER_DOMAIN_XUSBC>,
> +          <&bpmp TEGRA234_POWER_DOMAIN_XUSBA>;
> +      power-domain-names = "xusb_host", "xusb_ss";
> +
> +      nvidia,xusb-padctl = <&xusb_padctl>;
> +
> +      phys =  <&pad_lanes_usb2_0>;
> +      phy-names = "usb2-0";
> +
> +    };
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
