Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 063B0D44C5C
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 14:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jH/PwpiW63JOYZfQB2EtbQ7j7oeQz0FpiuND8/Rb+E=; b=fuJGxTk3nUpNqp
	IC6h/yRti+ptjmoE7wTgY829oaOz+iPbD4fYowdrZ2vhgBpc512kHTfSIW7svY6UE/sqk01ReyCDN
	AFAbjwDlxYK7f2uKSvsLPatnfBDiS9Re77Tfim9LqkUF1V49FKfnSr+eSWOGQ4qevF3RlGI2xlRCs
	6KeTWbBhSW2E8wkwfpKj3WdzwEkGL80uhmarz74xaQKjYYaszkV5YoZ9fj+/9655hQ++pGbYVpiZ3
	jGSGJu7AVlNCJWiAAlzKmmFQymQA2Hv678pS6l+0hIw5kISxsxZWH7wA9TbNmbBrTU4nooXTLrQGE
	yaAYfq9M2t5y0RfzTwug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOhI-0000000CXGW-35Xm;
	Thu, 15 Jan 2026 14:51:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOhH-0000000CXGG-2MJn
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 14:51:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 53ACB60195;
	Thu, 15 Jan 2026 14:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4559C116D0;
	Thu, 15 Jan 2026 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768488698;
	bh=TWF81yy1xgtmRFWocZ1eiYr0ym2w1ajgLPheFFGHTeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HGft4Q6OGiARgXQn7TPJrqI8Lt/ixWBKU8hcxsXkJkb6f1NxrUWug+5r5Ch9aYll+
	 BrR0fglPrvU8GMI3aGjD209ZLxFvrOOAhNGFu/AiSrd98oixFMVO9ZbcBpGpfE8iRK
	 xPKvfnZdx94Jqk3INsJhNOLEUnEfNj+dQ2iDhXJwsbw8w9c/3REPSmuRpAJt8KaS1r
	 k1vquYea3uhZeZre+iZiNEfkJSMp5g9Ni+U/19RWWLNUGzrKiqCqm1hNiVHHmpA4aZ
	 ZbHjYlbksMFhhZWbqW6SF6I2Yj7Mfo1fHulwCPu3m2fK0PIMzQN+XGHQhXWYQhpY6K
	 0xGO6Pu/GU6Bg==
Date: Thu, 15 Jan 2026 08:51:37 -0600
From: Rob Herring <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: ti,control-phy-otghs: convert
 to DT schema
Message-ID: <20260115145137.GB3319937-robh@kernel.org>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
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

On Wed, Jan 07, 2026 at 04:11:16PM +0000, Charan Pedumuru wrote:
> Convert TI OMAP Control PHY binding to DT schema.
> Changes during conversion:
> - Define a new pattern 'control-phy' to match nodes defined in DT.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/phy/ti,control-phy-otghs.yaml         | 94 +++++++++++++++++++++
>  Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ----------------------
>  2 files changed, 94 insertions(+), 98 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> new file mode 100644
> index 000000000000..2c91609cac35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> @@ -0,0 +1,94 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI OMAP Control PHY Module
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +description:
> +  The TI OMAP Control PHY module is a hardware block within the system
> +  control module (SCM) of Texas Instruments OMAP SoCs. It provides
> +  centralized control over power, configuration, and auxiliary features
> +  for multiple on-chip PHYs. This module is essential for proper PHY
> +  operation in power-constrained embedded systems.
> +
> +properties:
> +  $nodename:
> +    pattern: "^control-phy(@[0-9a-f]+)?$"

Drop. Non-standard.

> +
> +  compatible:
> +    enum:
> +      - ti,control-phy-otghs
> +      - ti,control-phy-usb2
> +      - ti,control-phy-pipe3
> +      - ti,control-phy-pcie
> +      - ti,control-phy-usb2-dra7
> +      - ti,control-phy-usb2-am437

Alphabetical order

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 4

With the constraints below, there is no case that allows 4 entries.

> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      enum: [otghs_control, power, pcie_pcs, control_sma]
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,control-phy-otghs
> +    then:
> +      properties:
> +        reg-names:
> +          const: otghs_control
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,control-phy-pcie

There's no .dts with this compatible. Do you really need this 
compatible or can drop it?

> +    then:
> +      properties:
> +        reg-names:
> +          items:
> +            - enum: [power, pcie_pcs, control_sma]

It's really 1 entry of 3 possible names?

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,control-phy-usb2
> +              - ti,control-phy-usb2-dra7
> +              - ti,control-phy-usb2-am437
> +              - ti,control-phy-pipe3
> +    then:
> +      properties:
> +        reg-names:
> +          const: power
> +
> +required:
> +  - reg
> +  - compatible
> +  - reg-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    control-phy@4a00233c {

phy@...

> +        compatible = "ti,control-phy-otghs";
> +        reg = <0x4a00233c 0x4>;
> +        reg-names = "otghs_control";
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
> deleted file mode 100644
> index 7c7936b89f2c..000000000000
> --- a/Documentation/devicetree/bindings/phy/ti-phy.txt
> +++ /dev/null
> @@ -1,98 +0,0 @@
> -TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
> -
> -OMAP CONTROL PHY
> -
> -Required properties:
> - - compatible: Should be one of
> - "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
> - "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
> -                        e.g. USB2_PHY on OMAP5.
> - "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
> -                        e.g. USB3 PHY and SATA PHY on OMAP5.
> - "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
> -			set PCS delay value.
> -			e.g. PCIE PHY in DRA7x
> - "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
> -                        DRA7 platform.
> - "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
> -                        AM437 platform.
> - - reg : register ranges as listed in the reg-names property
> - - reg-names: "otghs_control" for control-phy-otghs
> -	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
> -	      "power" for all other types
> -
> -omap_control_usb: omap-control-usb@4a002300 {
> -        compatible = "ti,control-phy-otghs";
> -        reg = <0x4a00233c 0x4>;
> -        reg-names = "otghs_control";
> -};
> -
> -TI PIPE3 PHY
> -
> -Required properties:
> - - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
> -   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
> - - reg : Address and length of the register set for the device.
> - - reg-names: The names of the register addresses corresponding to the registers
> -   filled in "reg".
> - - #phy-cells: determine the number of cells that should be given in the
> -   phandle while referencing this phy.
> - - clocks: a list of phandles and clock-specifier pairs, one for each entry in
> -   clock-names.
> - - clock-names: should include:
> -   * "wkupclk" - wakeup clock.
> -   * "sysclk" - system clock.
> -   * "refclk" - reference clock.
> -   * "dpll_ref" - external dpll ref clk
> -   * "dpll_ref_m2" - external dpll ref clk
> -   * "phy-div" - divider for apll
> -   * "div-clk" - apll clock
> -
> -Optional properties:
> - - id: If there are multiple instance of the same type, in order to
> -   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
> -   PHY). If "id" is not provided, it is set to default value of '1'.
> - - syscon-pllreset: Handle to system control region that contains the
> -   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
> -   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
> - - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
> -   register offset to write the PCS delay value.
> -
> -Deprecated properties:
> - - ctrl-module : phandle of the control module used by PHY driver to power on
> -   the PHY.
> -
> -Recommended properties:
> - - syscon-phy-power : phandle/offset pair. Phandle to the system control
> -   module and the register offset to power on/off the PHY.
> -
> -This is usually a subnode of ocp2scp to which it is connected.
> -
> -usb3phy@4a084400 {
> -	compatible = "ti,phy-usb3";
> -	reg = <0x4a084400 0x80>,
> -	      <0x4a084800 0x64>,
> -	      <0x4a084c00 0x40>;
> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> -	ctrl-module = <&omap_control_usb>;
> -	#phy-cells = <0>;
> -	clocks = <&usb_phy_cm_clk32k>,
> -		 <&sys_clkin>,
> -		 <&usb_otg_ss_refclk960m>;
> -	clock-names =	"wkupclk",
> -			"sysclk",
> -			"refclk";
> -};
> -
> -sata_phy: phy@4a096000 {
> -	compatible = "ti,phy-pipe3-sata";
> -	reg = <0x4A096000 0x80>, /* phy_rx */
> -	      <0x4A096400 0x64>, /* phy_tx */
> -	      <0x4A096800 0x40>; /* pll_ctrl */
> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> -	ctrl-module = <&omap_control_sata>;
> -	clocks = <&sys_clkin1>, <&sata_ref_clk>;
> -	clock-names = "sysclk", "refclk";
> -	syscon-pllreset = <&scm_conf 0x3fc>;
> -	#phy-cells = <0>;
> -};
> 
> -- 
> 2.52.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
