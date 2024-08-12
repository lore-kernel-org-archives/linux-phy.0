Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57238C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 15:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWkM2rSmER/8V5TH56Nzu8Fgsacjnyej6/j8LdTEiVo=; b=CIG/V1VhrGEDSy
	aZopzh5MhuPqRCK+7YHah/+6jV50elm2uo5Rf+XE8rRgMYoX5otw7+IwVvNJAI9SDOproqmxvQyah
	WTFEU5SFZpafsYjEKukHFU5Sl3eXRTuQNJwdBNkCwLX4bSfiNIqcQrbau7HOTeOFXpWmFi962hpvc
	Pfwk6zfmd8aZ4V5+0VCIEhU2arEiYp2z0voO6By2SGOMQbw+D6MBNkbMK/uVa4NlcL5oe2+0u5v3Y
	OVs1hHwjkJml74bbbJFtc7SvcEQSEYpxzwiAmlDi+U/tvHFxW5n0e924pvdSxEsKnY/HqCXyEiInm
	F6cfDMjRlD6gR3g1Umiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXGS-00000000nI8-05Kt;
	Mon, 12 Aug 2024 15:47:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXFp-00000000nBj-02PA;
	Mon, 12 Aug 2024 15:46:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F8B1CE0F8F;
	Mon, 12 Aug 2024 15:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4695C32782;
	Mon, 12 Aug 2024 15:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723477598;
	bh=LVd9TGyp4d0U2ismMK0yyPmFgRWGEjHc5jVuSmjiEm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DoD2mQntD+Qh4IZ33zQCH33TBS1+jhJwVOkFTC88ccqNz+vbk4a1qjR8tpAs/JNM1
	 7+HVG6jxEkR5wxBW+sQnje5OJaZH7+k9smfyYW+MvJgsT8c17jVx9ASl3xvjqbS6VC
	 Lb70vfVA5PTDiul77Pntd8ZBwnRLESZMLsPN8RthDnz74nCCG77hl9CcTybBrPPOU2
	 yWeB0y7ZEaf+IZ3KAcQgNsL55sv6zenhpaMqbgjhn3mkmnsELCDR9vw8ZNG4SbSMbe
	 9dANZQy2FTlXAgEW5aKzumFK4bLZ9P1pXq40FkMqmcsAdBRy/cdBuaQ5nD8LMBHcxi
	 2aF3RXB2gTDpw==
Date: Mon, 12 Aug 2024 09:46:33 -0600
From: Rob Herring <robh@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <20240812154633.GB593866-robh@kernel.org>
References: <20240812120529.3564390-1-christian.bruel@foss.st.com>
 <20240812120529.3564390-3-christian.bruel@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812120529.3564390-3-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_084641_421754_6013804E 
X-CRM114-Status: GOOD (  25.46  )
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

On Mon, Aug 12, 2024 at 02:05:26PM +0200, Christian Bruel wrote:
> Document the bindings for STM32 COMBOPHY interface, used to support
> the PCIe and USB3 stm32mp25 drivers.
> Following entries can be used to tune caracterisation parameters
>  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> to tune the impedance and voltage swing using discrete simulation results
>  - st, phy_rx0_eq register to set the internal rx equalizer filter value.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/phy/st,stm32-combophy.yaml       | 178 ++++++++++++++++++
>  1 file changed, 178 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> new file mode 100644
> index 0000000000000..6a53ab834b2a7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> @@ -0,0 +1,178 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/st,stm32-combophy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32MP25 USB3/PCIe COMBOPHY
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description: |

Don't need '|' if no formatting to preserve.

> +  Single lane PHY shared (exclusive) between the USB3 and PCIe controllers.
> +  Supports 5Gbit/s for USB3 and PCIe gen2 or 2.5Gbit/s for PCIe gen1.
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-combophy
> +
> +  reg:
> +    maxItems: 1
> +
> +  st,syscfg:

Order is standard properties first, vendor properties second. 

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: Phandle to the SYSCON entry required for configuring PCIe
> +      or USB3.

You need constraints on the size of the phandle-array or perhaps this 
should be just 'phandle'.

> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      The cells contain the following arguments.
> +
> +      - description: The PHY type
> +          enum:
> +            - PHY_TYPE_USB3
> +            - PHY_TYPE_PCIE
> +
> +  clocks:
> +    anyOf:

Should be 'items'

> +      - description: apb-clk Bus clock mandatory to access registers.
> +      - description: ker-clk Internal RCC reference clock for USB3 or PCIe
> +      - description: pad-clk Optional on board clock input for PCIe only. Typically an
> +                     external 100Mhz oscillator wired on dedicated CLKIN pad. Used as reference
> +                     clock input instead of the ker-clk
> +
> +  clock-names:
> +    oneOf:
> +      - items:
> +          - const: apb-clk
> +          - const: ker-clk
> +
> +      - items:
> +          - const: apb-clk
> +          - const: ker-clk
> +          - const: pad-clk

Don't need oneOf here. Just add 'minItems: 2' on the 2nd entry.

'-clk' is also redundant. Drop.

> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: phy-rst
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  st,ssc-on:
> +    type: boolean
> +    description:
> +      A boolean property whose presence indicates that the SSC for common clock
> +      needs to be set.
> +
> +  st,rx_equalizer:

s/_/-/

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0

That's already the minimum. Drop.

> +    maximum: 7
> +    default: 2
> +    description:
> +      A 3 bit value describing internal filter settings for the RX equalizer.

How does one decide what value to use?

> +
> +  st,output-micro-ohms:
> +    minimum: 3999000
> +    maximum: 6090000
> +    default: 4968000
> +    description:
> +      A value property to tune the Single Ended Output Impedance, simulations results
> +      at 25C for a VDDP=0.8V. The hardware accepts discrete values in this range.
> +
> +  st,output-vswing-microvolt:
> +    minimum: 442000
> +    maximum: 803000
> +    default: 803000
> +    description:
> +      A value property in microvolt to tune the Single Ended Output Voltage Swing to change the
> +      Vlo, Vhi for a VDDP = 0.8V. The hardware accepts discrete values in this range.
> +
> +  wakeup-source: true
> +
> +  interrupts:
> +    maxItems: 1
> +    description: interrupt used for wakeup
> +
> +  access-controllers:
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - st,syscfg
> +  - '#phy-cells'
> +  - resets
> +  - reset-names
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +  - if:
> +      required:
> +        - wakeup-source
> +    then:
> +      anyOf:
> +        - required: [interrupts]
> +        - required: [interrupts-extended]
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    // Example 1: COMBOPHY configured to use internal reference clock
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    combophy_internal: phy@480c0000 {
> +        compatible = "st,stm32mp25-combophy";
> +        reg = <0x480c0000 0x1000>;
> +        #phy-cells = <1>;
> +        clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>;
> +        clock-names = "apb-clk", "ker-clk";
> +        resets = <&rcc USB3PCIEPHY_R>;
> +        reset-names = "phy-rst";
> +        st,syscfg = <&syscfg>;
> +        access-controllers = <&rifsc 67>;
> +        power-domains = <&CLUSTER_PD>;
> +        wakeup-source;
> +        interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
> +    };
> +
> +  - |
> +    // Example 2: COMBOPHY configured to use extrenal 100MHz reference clock
> +    // on CLKIN pad for PCIe
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    clocks {
> +        pad_clk: pad-clk {
> +            #clock-cells = <0>;
> +            compatible = "fixed-clock";
> +            clock-frequency = <100000000>;
> +        };
> +    };

Drop. Providers aren't relevant to this binding.

Though just 1 optional clock doesn't justify a whole other example. So 
drop one of the examples.

> +
> +    combophy_pad: phy@480c0000 {
> +        compatible = "st,stm32mp25-combophy";
> +        reg = <0x480c0000 0x1000>;
> +        #phy-cells = <1>;
> +        clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>, <&pad_clk>;
> +        clock-names = "apb-clk", "ker-clk", "pad-clk";
> +        resets = <&rcc USB3PCIEPHY_R>;
> +        reset-names = "phy-rst";
> +        st,syscfg = <&syscfg>;
> +        access-controllers = <&rifsc 67>;
> +        power-domains = <&CLUSTER_PD>;
> +        wakeup-source;
> +        interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
> +    };
> +...
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
