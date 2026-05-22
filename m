Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D703FCD5BAF
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXvVWGVEZLjnDh8HgsSuSIF3SYoj6Khg07Kf6TQAVac=; b=IPDhbK7Ov5AqdW
	I6iOjR6uGkkRdjLarw0RCAwVWzoTdcOwh5eeNVgM+MCdLfd9rsfoEkNzgQD0ip5ywJiQTGLjWO7r6
	4uwdEIOeF/Rg48whZeM/p9p2Bs9x3AQblBAO8k/tCe5bLCPBugzxUXBeyMaCFAiMbUBYbUXHqeHQB
	S5Dgqb/NmdZYUcG3OfeCHyYVu1TI9k6DomOZQNUFK5dYesIhn03ryIPfdxrC+nB6BGqRCwJXpSLWn
	2wWIHlyPEwwRwPJyvkDl3b4crsrwbxL4ZZRqVtPgcw1Tyz3Zru8vp91SqAD+26GLTvfTPglk/KAhI
	I/XFhKtJ6QRwWpgjWROQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJhu-0000000A0Ys-3rMb;
	Fri, 22 May 2026 06:50:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJht-0000000A0YO-0zvr
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 06:50:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 99F6C601D9;
	Fri, 22 May 2026 06:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F2B1F000E9;
	Fri, 22 May 2026 06:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779432604;
	bh=YfScx9EoFO8nSle2v2AarnRZDMn7LIOkpHcFtOUg/jw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Nbwp13Za+JUrIo8e2IXiYsYERqJA6PyfS7u0AvSgnM+gulokorkyvtvs6IwfWgpgQ
	 zFIfjwSonKt/K249h2ACceFdomeuFWbOfjxLz3hdFtOxN6iX+6g1tNBcYDZ40xERnS
	 NLjlOBsu+88EWXkYG4nXpty6j4mB063fcijZC4aBhev3U5opnczsAWnaqVfLSAaqeb
	 YTD0V1/yImHkHHWAXcdQvipG4vGkKY2AnH0u5ysDTEtQmW3Y6YiC5uFeghXJ1Dec4D
	 SvPw/AuFeKkBGC1cQ69zn8kzAwFvY2uDrjLPSkB1XDXA8xYk+fcAthRry9m1lcKAeG
	 +av6BcbjEQDvw==
Date: Fri, 22 May 2026 08:50:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Eliza PCIe
 Controller
Message-ID: <20260522-calm-bug-of-kindness-2dfae2@quoll>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-2-97cdbe88389d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-eliza-v1-2-97cdbe88389d@oss.qualcomm.com>
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

On Thu, May 21, 2026 at 07:35:30PM +0530, Krishna Chaitanya Chundru wrote:
> +description:
> +  Qualcomm ELIZA SoC (and compatible) PCIe root complex controller is based on
> +  the Synopsis DesignWare PCIe IP.
> +
> +properties:
> +  compatible:
> +    const: qcom,pcie-eliza

All new pcie compatibles moved to correct format.

> +
> +  reg:
> +    minItems: 5
> +    maxItems: 6
> +
> +  reg-names:
> +    minItems: 5
> +    items:
> +      - const: parf # Qualcomm specific registers
> +      - const: dbi # DesignWare PCIe registers
> +      - const: elbi # External local bus interface registers
> +      - const: atu # ATU address space
> +      - const: config # PCIe configuration space
> +      - const: mhi # MHI registers
> +
> +  clocks:
> +    maxItems: 7
> +
> +  clock-names:
> +    items:
> +      - const: aux # Auxiliary clock
> +      - const: cfg # Configuration clock
> +      - const: bus_master # Master AXI clock
> +      - const: bus_slave # Slave AXI clock
> +      - const: slave_q2a # Slave Q2A clock
> +      - const: ddrss_sf_tbu # PCIe SF TBU clock
> +      - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
> +
> +  interrupts:
> +    minItems: 8

This should not be flexible. Neither 'reg'.

> +    maxItems: 9
> +
> +  interrupt-names:
> +    minItems: 8
> +    items:
> +      - const: msi0
> +      - const: msi1
> +      - const: msi2
> +      - const: msi3
> +      - const: msi4
> +      - const: msi5
> +      - const: msi6
> +      - const: msi7
> +      - const: global
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: pci # PCIe core reset
> +      - const: link_down # PCIe link down reset
> +
> +required:
> +  - power-domains
> +  - resets
> +  - reset-names
> +
> +allOf:
> +  - $ref: qcom,pcie-common.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,eliza-gcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interconnect/qcom,eliza-rpmh.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        pcie@1c00000 {
> +            compatible = "qcom,pcie-eliza";
> +            reg = <0 0x01c00000 0 0x3000>,
> +                  <0 0x40000000 0 0xf1d>,
> +                  <0 0x40000f20 0 0xa8>,
> +                  <0 0x40001000 0 0x1000>,
> +                  <0 0x40100000 0 0x100000>;
> +            reg-names = "parf", "dbi", "elbi", "atu", "config";
> +            ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +                     <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x3d00000>;
> +
> +            bus-range = <0x00 0xff>;
> +            device_type = "pci";
> +            linux,pci-domain = <0>;
> +            num-lanes = <1>;
> +
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +
> +            clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +                     <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +                     <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +                     <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +                     <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
> +                     <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
> +            clock-names = "aux",
> +                          "cfg",
> +                          "bus_master",
> +                          "bus_slave",
> +                          "slave_q2a",
> +                          "ddrss_sf_tbu",
> +                          "cnoc_sf_axi";
> +
> +            dma-coherent;
> +
> +            interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 535 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 536 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 537 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 540 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 653 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "msi0", "msi1", "msi2", "msi3",
> +                              "msi4", "msi5", "msi6", "msi7", "global";
> +            #interrupt-cells = <1>;
> +            interrupt-map-mask = <0 0 0 0x7>;
> +            interrupt-map = <0 0 0 1 &intc 0 0 0 564 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +                            <0 0 0 2 &intc 0 0 0 565 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +                            <0 0 0 3 &intc 0 0 0 566 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +                            <0 0 0 4 &intc 0 0 0 567 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +            interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
> +                            <&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
> +            interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +            iommu-map = <0x0 &apps_smmu 0x1480 0x1>,
> +                        <0x100 &apps_smmu 0x1481 0x1>;
> +
> +            pinctrl-0 = <&pcie0_default_state>;
> +            pinctrl-names = "default";
> +
> +            power-domains = <&gcc GCC_PCIE_0_GDSC>;
> +
> +            resets = <&gcc GCC_PCIE_0_BCR>,
> +                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
> +            reset-names = "pci",
> +                          "link_down";
> +

Drop stray blank line.

> +        };
> +    };
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
