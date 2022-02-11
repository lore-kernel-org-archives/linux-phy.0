Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA8FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 14:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OxOOW31EF8+6Q7vectqP7qiTzXasY0AZWQh99SgwUo=; b=AofkG0c6bjzF0k
	lW9ZxSrVHUF2r5FBfrWdNb1CSPjO4jr94358tVmO2jbDFtQWq60wWi/AWE63yVBQwrDG9hJn4S3FL
	aa3XUsNAnr+CBnJHJ14i1hqXzNxvwPr8nmHphreYs06CY/mUeyFLxcEXEpfsgztdfhTSp8WHQoO9V
	ae+IDVjLOsOsKX9Y2teTWOHwR/B22thtUubn6d5eU1iR4hZYtK3cH1JH3yM08LGxtabut/W0VxGcG
	XHqujfxbywUTaPMscBP1StPvhL/wj6d+Ooxp1e37OO6n/b0KhpUjhqxJ56evLYA9RUCov7Jl956ZV
	nte4skPRd79k+i6SdGKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXN6-007gno-0Q; Fri, 11 Feb 2022 14:58:04 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXN3-007gn7-3M
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 14:58:02 +0000
Received: by mail-oi1-f172.google.com with SMTP id u3so9746369oiv.12
 for <linux-phy@lists.infradead.org>; Fri, 11 Feb 2022 06:58:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iG+7fS1uMe40CVYNw6ngGKInvC1zZ2wj5/Rae796Anc=;
 b=U5g6MdKBg1fiHA6wPEdb/B0g0lw1qhfRGtUsHqdIkkG1s1u2Uf/3sr7q+6FCZbpXbc
 qE7+56+6Lv0gVdPbe1cFLT7hAkC+iqiz5PyGaz1Vvp4uYg3/CNDWHg15ZB3T0ckj+IVm
 b+4QshaI5CbgzDmYgeSEeLoFFnubVbc8ic1yYTZvAbyJocqU7h3WfpxmrFSP5Du1u7G+
 uWqKmPypnlblPTZMo5Jr53Ut7zzQWByVh1/aVPf9Gc2Hil7p7ayE/byredq6PLdd1Kol
 RSxflTxmkEp+kGfsXL//rsCFyw3LJK7hSBjPx0/z1GULFCS1P7N4Z6sbNLAv0WqUiJ6l
 eUcg==
X-Gm-Message-State: AOAM531i/D+GSsJKANcWS5/IOliOnI5+HCisfKueltYrbtNPSCaahd8L
 yYPtVbVqMMaB9xASNljb8g==
X-Google-Smtp-Source: ABdhPJx2yCVEn8of9ouJmR0UgSwmLuKTz6rgVp1igocn/AOFCko8B7UhxExu4E53QnxElLHx0l4lOQ==
X-Received: by 2002:a05:6808:e82:: with SMTP id k2mr361490oil.10.1644591479652; 
 Fri, 11 Feb 2022 06:57:59 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 k13sm9591041ots.48.2022.02.11.06.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 06:57:58 -0800 (PST)
Received: (nullmailer pid 355904 invoked by uid 1000);
 Fri, 11 Feb 2022 14:57:56 -0000
Date: Fri, 11 Feb 2022 08:57:56 -0600
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 krzysztof.kozlowski@canonical.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com, mmaddireddy@nvidia.com,
 sagar.tv@gmail.com
Subject: Re: [PATCH V1 05/10] dt-bindings: PCI: tegra: Add device tree
 support for Tegra234
Message-ID: <YgZ5dLlER9xtFaxn@robh.at.kernel.org>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-6-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-6-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_065801_173115_7D34E08E 
X-CRM114-Status: GOOD (  27.68  )
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

On Sat, Feb 05, 2022 at 09:51:39PM +0530, Vidya Sagar wrote:
> Add support for Tegra234 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 106 +++++++++++++++++-
>  1 file changed, 103 insertions(+), 3 deletions(-)

This falls above my threshold of convert this to schema first.

> 
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> index 8e4f9bfb316d..ae9555a50fb0 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -10,6 +10,8 @@ Required properties:
>  - power-domains: A phandle to the node that controls power to the respective
>    PCIe controller and a specifier name for the PCIe controller. Following are
>    the specifiers for the different PCIe controllers
> +  Tegra194:
> +  ---------
>      TEGRA194_POWER_DOMAIN_PCIEX8B: C0
>      TEGRA194_POWER_DOMAIN_PCIEX1A: C1
>      TEGRA194_POWER_DOMAIN_PCIEX1A: C2
> @@ -18,6 +20,21 @@ Required properties:
>      TEGRA194_POWER_DOMAIN_PCIEX8A: C5
>    these specifiers are defined in
>    "include/dt-bindings/power/tegra194-powergate.h" file.
> +  Tegra234:
> +  ---------
> +    TEGRA234_POWER_DOMAIN_PCIEX4BA: C0
> +    TEGRA234_POWER_DOMAIN_PCIEX1A : C1
> +    TEGRA234_POWER_DOMAIN_PCIEX1A : C2
> +    TEGRA234_POWER_DOMAIN_PCIEX1A : C3
> +    TEGRA234_POWER_DOMAIN_PCIEX4BB: C4
> +    TEGRA234_POWER_DOMAIN_PCIEX8A : C5
> +    TEGRA234_POWER_DOMAIN_PCIEX4A : C6
> +    TEGRA234_POWER_DOMAIN_PCIEX8B : C7
> +    TEGRA234_POWER_DOMAIN_PCIEX4CA: C8
> +    TEGRA234_POWER_DOMAIN_PCIEX4CB: C9
> +    TEGRA234_POWER_DOMAIN_PCIEX4CC: C10
> +  these specifiers are defined in
> +  "include/dt-bindings/power/tegra234-powergate.h" file.
>  - reg: A list of physical base address and length pairs for each set of
>    controller registers. Must contain an entry for each entry in the reg-names
>    property.
> @@ -47,16 +64,33 @@ Required properties:
>    "p2u-N": where N ranges from 0 to one less than the total number of lanes
>  - nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
>    by controller-id. Following are the controller ids for each controller.
> +  Tegra194:
> +  ---------
>      0: C0
>      1: C1
>      2: C2
>      3: C3
>      4: C4
>      5: C5
> +  Tegra194:
> +  ---------
> +    0 : C0
> +    1 : C1
> +    2 : C2
> +    3 : C3
> +    4 : C4
> +    5 : C5
> +    6 : C6
> +    7 : C7
> +    8 : C8
> +    9 : C9
> +    10: C10
>  - vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
>  
>  RC mode:
> -- compatible: Tegra19x must contain  "nvidia,tegra194-pcie"
> +- compatible: Must be
> +  - "nvidia,tegra194-pcie" for Tegra194
> +  - "nvidia,tegra234-pcie" for Tegra234
>  - device_type: Must be "pci" for RC mode
>  - interrupt-names: Must include the following entries:
>    "msi": The Tegra interrupt that is asserted when an MSI is received
> @@ -99,7 +133,8 @@ In Tegra194, Only controllers C0, C4 & C5 support EP mode.
>  
>  Optional properties:
>  - pinctrl-names: A list of pinctrl state names.
> -  It is mandatory for C5 controller and optional for other controllers.
> +  It is mandatory for C5 controller in Tegra194 and optional for other
> +  controllers.
>    - "default": Configures PCIe I/O for proper operation.
>  - pinctrl-0: phandle for the 'default' state of pin configuration.
>    It is mandatory for C5 controller and optional for other controllers.
> @@ -108,7 +143,7 @@ Optional properties:
>      improve performance when a platform is designed in such a way that it
>      satisfies at least one of the following conditions thereby enabling root
>      port to exchange optimum number of FC (Flow Control) credits with
> -    downstream devices
> +    downstream devices. This is applicable for only Tegra194.
>      1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and MPS)
>      2. If C0/C1/C2/C3/C4/C5 operate at their respective max link widths and
>         a) speed is Gen-2 and MPS is 256B
> @@ -119,6 +154,9 @@ Optional properties:
>     specified in microseconds
>  - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
>     specified in microseconds
> +- nvidia,enable-srns: This boolean property needs to be present if the
> +   controller is configured to operate in SRNS (Separate Reference Clocks with
> +   No Spread-Spectrum Clocking). This is applicable only for Tegra234.
>  
>  RC mode:
>  - vpcie3v3-supply: A phandle to the regulator node that supplies 3.3V to the slot
> @@ -127,6 +165,9 @@ RC mode:
>  - vpcie12v-supply: A phandle to the regulator node that supplies 12V to the slot
>    if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
>    in p2972-0000 platform).
> +- nvidia,enable-ext-refclk: This boolean property needs to be present if the
> +  controller is configured to use the reference clocking coming in from an
> +  external clock source instead of using the internal clock source.
>  
>  EP mode:
>  - nvidia,refclk-select-gpios: Must contain a phandle to a GPIO controller
> @@ -243,3 +284,62 @@ Tegra194 EP mode:
>  		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
>  			    "p2u-5", "p2u-6", "p2u-7";
>  	};
> +
> +Tegra234 RP mode:
> +-----------------
> +
> +	pcie@141a0000 {
> +		compatible = "nvidia,tegra234-pcie";
> +		power-domains = <&bpmp TEGRA234_POWER_DOMAIN_PCIEX8A>;
> +		reg = <0x00 0x141a0000 0x0 0x00020000>, /* appl registers (128K)      */
> +		      <0x00 0x3a000000 0x0 0x00040000>, /* configuration space (256K) */
> +		      <0x00 0x3a040000 0x0 0x00040000>, /* iATU_DMA reg space (256K)  */
> +		      <0x00 0x3a080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +		reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +		status = "disabled";

Why is your example disabled?

> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		device_type = "pci";
> +		num-lanes = <8>;
> +		num-viewport = <8>;
> +		linux,pci-domain = <5>;
> +
> +		clocks = <&bpmp TEGRA234_CLK_PEX1_C5_CORE>;
> +		clock-names = "core";
> +
> +		resets = <&bpmp TEGRA234_RESET_PEX1_CORE_5_APB>,
> +			 <&bpmp TEGRA234_RESET_PEX1_CORE_5>;
> +		reset-names = "apb", "core";
> +
> +		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
> +			     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
> +		interrupt-names = "intr", "msi";
> +
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 0>;
> +		interrupt-map = <0 0 0 0 &gic GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		nvidia,bpmp = <&bpmp 5>;
> +
> +		nvidia,aspm-cmrt-us = <60>;
> +		nvidia,aspm-pwr-on-t-us = <20>;
> +		nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +		bus-range = <0x0 0xff>;
> +
> +		ranges = <0x43000000 0x27 0x40000000 0x27 0x40000000 0x3 0xe8000000>, /* prefetchable memory (16000 MB) */
> +			 <0x02000000 0x0  0x40000000 0x2b 0x28000000 0x0 0x08000000>, /* non-prefetchable memory (128 MB) */
> +			 <0x01000000 0x0  0x3a100000 0x00 0x3a100000 0x0 0x00100000>; /* downstream I/O (1 MB) */
> +
> +		interconnects = <&mc TEGRA234_MEMORY_CLIENT_PCIE5R &emc>,
> +				<&mc TEGRA234_MEMORY_CLIENT_PCIE5W &emc>;
> +		interconnect-names = "dma-mem", "write";
> +
> +                phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +                       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +                       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +                phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +                            "p2u-5", "p2u-6", "p2u-7";
> +	};
> -- 
> 2.17.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
