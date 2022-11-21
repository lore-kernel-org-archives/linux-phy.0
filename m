Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8319EC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 12:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fLFVs6m2RpPx2RrbtaHWYiGtZfMjJX1v8p7SbMr3ng=; b=t4No8oyZ/p0HKY
	IH0dx6KAGKK/sdLFxloy9tZjsc4gNlg9uBUa7y36cL1+Skf805fR3HOGbQlbEzxofZfy6ewod8oWZ
	batb+jjw64+ertr3U0ptdr3Tcf5Z9xA96wdgRUV/RGX/37Xfc73yxvtw9XtkGWP4a4QzADeg6wKzm
	QN7ovf5x+Qj7v9zXhOHiKRPPqzyt/yVll3Bo12GY9iMXCVHSvVrkK15HAhc5O59BVuMbv5y3XXVTD
	wM0U0odruwStt5O1FXZQUWlxpGHQrWwc5Dh1ymkXWUT3ztdIXe5gq9hWWLR7R5V0/UfF1cqM130gq
	0FL/UeBGF2gzzgnmhtSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5Yf-00DDFR-VH; Mon, 21 Nov 2022 12:05:53 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5Yd-00DD9k-0u
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 12:05:53 +0000
Received: by mail-lf1-x12d.google.com with SMTP id j4so18563634lfk.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 04:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U8lk1yGk+k1jHpBFenfM0E1QDY7dO/CdbSlBNPwvv7M=;
        b=LL2WCbIR4i1mBwmicLqdPhaaBHpYS/pB5qx+cDvQyMuNImKhaeHSKN4omMeoJ5yVs0
         Bc0qnjoCinSjOLLI+Xz69fG8Y9IZywlwyuMXExxYZJKUIOZgUU3ga/ksFGy97ZdaSqGs
         uyimQZEaLtBUPrQKUpf3phHBqqo5DFqD+PppswTgSXfomx3jmkzvzkq3yA3/WKi4Q0TU
         sDuS0pkMc0jZpteQBU2Oere/jW1quENeLtv1tXGyFB1wNMkht39QMzrUditBGZLQDfyS
         cZY02SjnAiKrfdlRVHWVXkrFybqik6oM1Dm0+3G8Oh5xRtUP7ri0zrxYeqCGvtoUxpot
         QQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U8lk1yGk+k1jHpBFenfM0E1QDY7dO/CdbSlBNPwvv7M=;
        b=LUhNpQxe/eiegBnaZ6d3N7zUhO2VoQsEB5J6Mr2dcENp5JL2WvmYFLT9avbgqRdUtx
         w9bZ7avRSBOcljmHtlsSs25bM3gnVHKJxxzfBYx7kfDI49HT18OJsDXJpW6w6vfUwY6F
         ow17hrFkDgXrc8CWtnf8Jjc1lGbJbDvmleBqzNpkQjUSiM+YqHFhg4UUjn0KzJ46nYlV
         EiH6Fsh1yWwPLvC/ZdRZrY/+tZkxCxLx4khTb3E7BoEqgSzXj5uWy4wjO1bhNNiZwqiE
         4o+kCjq35+kldcT841pw/DZb6dHjZo89CEwy4jj5hERe5HbPuN/nImIw/gyncbrMPjhz
         T3WA==
X-Gm-Message-State: ANoB5pkT+gtuEDOAA35lapHwjw1gRydppIcMwueu9eA5LGHJVIrPF3/F
	avXyUUVQWmAwxskrS6kBrHyOSg==
X-Google-Smtp-Source: AA0mqf4A51rPoijgjuQKSdOsv/cU3hGnDdJXXaLypfldqje/5jUfbTIYx0C/yihusXwzzxxaT054kw==
X-Received: by 2002:ac2:5dea:0:b0:4b2:2cff:8446 with SMTP id z10-20020ac25dea000000b004b22cff8446mr5881122lfq.572.1669032348998;
        Mon, 21 Nov 2022 04:05:48 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y3-20020a197503000000b004b4b5bd8d02sm1981733lfe.78.2022.11.21.04.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:05:48 -0800 (PST)
Message-ID: <d728bb46-558c-67e8-c93b-96f2a6ab77a3@linaro.org>
Date: Mon, 21 Nov 2022 13:05:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/6] dt-bindings: PCI: Add PCIe controller bindings for
 FSD
Content-Language: en-US
To: Shradha Todi <shradha.t@samsung.com>, bhelgaas@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, lpieralisi@kernel.org, kw@linux.com, mani@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, alim.akhtar@samsung.com,
 ajaykumar.rs@samsung.com, rcsekar@samsung.com, sriranjani.p@samsung.com,
 bharat.uppal@samsung.com, s.prashar@samsung.com, aswani.reddy@samsung.com,
 pankaj.dubey@samsung.com, p.rajanbabu@samsung.com, niyas.ahmed@samsung.com,
 chanho61.park@samsung.com
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20221121105210.68596-1-shradha.t@samsung.com>
 <CGME20221121104725epcas5p3af00b0c717f2132f5c1ba7fd4e903e26@epcas5p3.samsung.com>
 <20221121105210.68596-3-shradha.t@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121105210.68596-3-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_040551_106195_BFA3866B 
X-CRM114-Status: GOOD (  19.24  )
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

On 21/11/2022 11:52, Shradha Todi wrote:
> Document the PCIe controller device tree bindings for

Subject: drop second, redundant "bindings".

> Tesla FSD SoC for both RC and EP

Full stop.

> 
> Signed-off-by: Shradha Todi  <shradha.t@samsung.com>
> ---
>  .../bindings/pci/tesla,pcie-fsd-ep.yaml       | 107 ++++++++++++++++
>  .../bindings/pci/tesla,pcie-fsd.yaml          | 117 ++++++++++++++++++
>  2 files changed, 224 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/tesla,pcie-fsd-ep.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/tesla,pcie-fsd.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/tesla,pcie-fsd-ep.yaml b/Documentation/devicetree/bindings/pci/tesla,pcie-fsd-ep.yaml
> new file mode 100644
> index 000000000000..07308cb9a35c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/tesla,pcie-fsd-ep.yaml

Filename based on compatible.

> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/tesla,pcie-fsd-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare based PCIe EP controller on FSD SoCs
> +
> +maintainers:
> +  - Shradha Todi <shradha.t@samsung.com>
> +
> +description: |
> +  FSD PCIe EP controller is based on Synopsys DesignWare PCIe IP
> +  and thus inherits all the common properties defined in
> +  snps,dw-pcie-ep.yaml. The controller instance is dual mode and
> +  can work in Root port mode or Endpoint mode at a time.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - tesla,fsd-pcie-ep
> +
> +  reg:
> +    items:
> +      - description: controller's application logic registers
> +      - description: controller's own configuration registers
> +                     are available.
> +      - description: controller's own configuration shadow registers
> +                     are available.
> +      - description: Map the remote Root Complex slave address space
> +
> +  reg-names:
> +    items:
> +      - const: appl
> +      - const: dbi
> +      - const: dbi2
> +      - const: addr_space
> +
> +  clocks:
> +    items:
> +      - description: Auxiliary clock for PCIe
> +      - description: AHB clock for PCIe dbi
> +      - description: AHB clock for PCIe master
> +      - description: AHB clock for PCIe slave
> +
> +  clock-names:
> +    items:
> +      - const: aux_clk
> +      - const: dbi_clk
> +      - const: mstr_clk
> +      - const: slv_clk

Drop "_clk" everywhere.

> +
> +  interrupts:
> +    items:
> +      - description: Controller interrupt
> +
> +  interrupt-names:
> +    items:
> +      - const: sub_ctrl_intr

Drop entire property.

> +
> +  tesla,pcie-sysreg:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'

Drop quotes.

In the PHY patch you said it is one phandle. Here it is an array. If it
is an array, then define it  properly:
https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42

> +    description: phandle for system control registers, used to
> +                 control signals at system level
> +
> +required:
> +

Drop blank line.

> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - ranges
> +  - num-lanes
> +  - tesla,pcie-sysreg
> +
> +additionalProperties: true

This must be false. Did you see such code anywhere in existing bindings?
Maybe you meant unevaluatedProperties?

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/fsd-clk.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    pcie4_ep: pcie-ep@15400000 {
> +      compatible = "tesla,fsd-pcie-ep";
> +      clocks = <&clock_fsys0 PCIE_SUBCTRL_INST0_AUX_CLK_SOC>,
> +               <&clock_fsys0 PCIE_SUBCTRL_INST0_DBI_ACLK_SOC>,
> +               <&clock_fsys0 PCIE_SUBCTRL_INST0_MSTR_ACLK_SOC>,
> +               <&clock_fsys0 PCIE_SUBCTRL_INST0_SLV_ACLK_SOC>;
> +      clock-names = "aux_clk", "dbi_clk", "mstr_clk", "slv_clk";
> +      interrupts = <GIC_SPI 93 IRQ_TYPE_EDGE_RISING>;
> +      interrupt-names = "sub_ctrl_intr";
> +      reg = <0x15090000 0x1000>,

reg is a second property.

> +            <0x15400000 0x1000>,
> +            <0x15401000 0x80>,
> +            <0x15800000 0xFF0000>;

Lowercase hex.

> +      reg-names = "appl", "dbi", "dbi2", "addr_space";
> +      num-lanes = <4>;
> +      tesla,pcie-sysreg = <&sysreg_fsys0 0x434>;
> +      phys = <&pcie_phy0>;
> +      phy-names = "pcie_phy0";
> +      status = "disabled";

No status.

> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/pci/tesla,pcie-fsd.yaml b/Documentation/devicetree/bindings/pci/tesla,pcie-fsd.yaml
> new file mode 100644
> index 000000000000..85648e5c7d27
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/tesla,pcie-fsd.yaml

All comments apply here as well.

> @@ -0,0 +1,117 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/pci/tesla,pcie-fsd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare based PCIe controller on FSD SoCs
> +
> +maintainers:
> +  - Shradha Todi <shradha.t@samsung.com>
> +
> +description: |
> +  FSD PCIe controller is based on Synopsys DesignWare PCIe IP
> +  and thus inherits all the common properties defined in
> +  designware-pcie.txt.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +properties:
> +  compatible:
> +    const: tesla,fsd-pcie
> +
> +  reg:
> +    items:
> +      - description: controller's application logic registers
> +      - description: controller's own configuration registers
> +                     are available.
> +      - description: configuration registers
> +
> +  reg-names:
> +    items:
> +      - const: appl
> +      - const: dbi
> +      - const: config
> +
> +  clocks:
> +    items:
> +      - description: Auxiliary clock for PCIe
> +      - description: AHB clock for PCIe dbi
> +      - description: AHB clock for PCIe master
> +      - description: AHB clock for PCIe slave
> +
> +  clock-names:
> +    items:
> +      - const: aux_clk
> +      - const: dbi_clk
> +      - const: mstr_clk
> +      - const: slv_clk
> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: MSI interrupt
> +      - description: Controller interrupt
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: msi
> +      - const: sub_ctrl_intr

Drop "_intr"

> +
> +  tesla,pcie-sysreg:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    description: phandle for system control registers, used to
> +                 control signals at system level
> +
> +required:
> +

?

> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - ranges
> +  - num-lanes
> +  - tesla,pcie-sysreg
> +
> +additionalProperties: true

false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/fsd-clk.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      pcie4_rc: pcie@15400000 {
> +        compatible = "tesla,fsd-pcie";
> +        clocks = <&clock_fsys0 PCIE_SUBCTRL_INST0_AUX_CLK_SOC>,
> +                 <&clock_fsys0 PCIE_SUBCTRL_INST0_DBI_ACLK_SOC>,
> +                 <&clock_fsys0 PCIE_SUBCTRL_INST0_MSTR_ACLK_SOC>,
> +                 <&clock_fsys0 PCIE_SUBCTRL_INST0_SLV_ACLK_SOC>;
> +        clock-names = "aux_clk", "dbi_clk", "mstr_clk", "slv_clk";
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +        dma-coherent;
> +        interrupts = <GIC_SPI 93 IRQ_TYPE_EDGE_RISING>;
> +        interrupt-names = "msi";
> +        num-lanes = <4>;
> +        reg = <0x0 0x15090000 0x0 0x1000>,
> +              <0x0 0x15400000 0x0 0x1000>,
> +              <0x0 0x15800000 0x0 0x1000>;

reg is always second. reg-names in such case third. ranges fourth.

> +        reg-names = "appl", "dbi", "config";


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
