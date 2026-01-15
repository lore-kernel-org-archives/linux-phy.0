Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3CF9D44C5A
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 14:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6eRjcWnqVSwZ5eIewGVl3MPqgF5zSpaiVXiC575v90=; b=axskUCeh7y5ziG
	+duJBXbxVn41VDkiKSQTPJmgU5U6DS7CSLW1L1KgX6bPcJOaYjd+i8LkJDnKwDckT1jWCNP/v6dLU
	CFu1XfpC1LYuZhF4t8X9wS9Dq2ulIT0wCO0wwQZ8xNG3Jd1/3o8AX7oEqR44dIdpWipgNhRWgXyQH
	CkTjbB+K08V3VNGY02uV5VPy1XxByt+vQy6e3KXq2sX7V7KAzjtdW4MxMYtx57mcN5FHCvjjsUPMu
	zksp7yajIlN/JzW43eAIM066ygY8zGbGvxHAHNptFPhJawHBUCmASRF1PmGOLScRLXG3vOM5cbBF3
	OXtuyTLiThkzCYdEXz4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOba-0000000CWJi-0xxY;
	Thu, 15 Jan 2026 14:45:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgObX-0000000CWJ7-39Lf
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 14:45:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 100D243D03;
	Thu, 15 Jan 2026 14:45:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7AD2C116D0;
	Thu, 15 Jan 2026 14:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768488342;
	bh=bX7wmqvyGYUmOEMhTluVx8dgsDRcrHRxzrlHZPO2fCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HVjNUCX8O+ZGnwH0jsxQugK+Z1NHvtES2Q1fqipC9F5G/Bx4OiWD252xr/yBexFM5
	 kiu++zFBd6Esl5zi5uHElkaRpFsABUsVmen6BZBBT9V8MmZcphlu9DjL/ijiXH7fu7
	 B4trwxw65Tz1L7INGPRBnpHSPPmK34Fn+wYWMkuCveM7C4hNhubqX0hoOBoIMu+5bc
	 rQCT0Mlr0PteqpphOZkZ5LSs2jOHcL5ymB6KdN9V/dbdk0hFBk1+sOdUt7Et3F+vis
	 tdTsbvWIVXcoY9D1lCPR+FijQdC8NPMsLWMfRyW0fI9VXiO4QrK9GjFfiBCzr3PovK
	 yxGMsv1OEDbZA==
Date: Thu, 15 Jan 2026 08:45:41 -0600
From: Rob Herring <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <20260115144541.GA3319937-robh@kernel.org>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_064543_853737_E492C764 
X-CRM114-Status: GOOD (  23.15  )
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

On Wed, Jan 07, 2026 at 04:11:15PM +0000, Charan Pedumuru wrote:
> Convert TI PIPE3 PHY binding to DT schema.
> Changes during conversion:
> - Define a new pattern 'pciephy' to match nodes defined in DT.
> - Drop obsolete "id" property from the schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
>  1 file changed, 127 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> new file mode 100644
> index 000000000000..41b3828723ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI PIPE3 PHY Module
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +description:
> +  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
> +  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
> +  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
> +  interface standard, which defines a common physical layer for
> +  high-speed serial interfaces.
> +
> +properties:
> +  $nodename:
> +    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"

Again, don't define your own patterns. Either update the .dts files to 
use the established patterns (pcie-phy, usb3-phy, phy) or leave it 
undefined here.

Plus the unit-address is not optional as 'reg' is not optional...

> +
> +  compatible:
> +    enum:
> +      - ti,phy-usb3
> +      - ti,phy-pipe3-sata
> +      - ti,phy-pipe3-pcie
> +      - ti,omap-usb3

Alphabetical order please.

> +
> +  reg:
> +    minItems: 2
> +    maxItems: 3
> +
> +  reg-names:
> +    minItems: 2
> +    maxItems: 3
> +    items:
> +      enum:
> +        - phy_rx
> +        - phy_tx
> +        - pll_ctrl

Do this really need to be any order? Looks to me like this works for all 
users in tree:

minItems: 2
items:
  - const: phy_rx
  - const: phy_tx
  - const: pll_ctrl

> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 7
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 7
> +    items:
> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
> +             dpll_ref_m2, phy-div, div-clk]
> +
> +  syscon-phy-power:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module register for PHY
> +      power on/off.

Needs constrants on the size:

items:
  - items:
      - description: phandle to ...
      - description: offset of ...

> +
> +  syscon-pllreset:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).

Same here.

> +
> +  syscon-pcs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module for writing PCS delay value.

Same here.

> +
> +  ctrl-module:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle of control module for PHY power on.
> +    deprecated: true
> +
> +dependencies:
> +  syscon-pllreset:
> +    properties:
> +      compatible:
> +        contains:
> +          const: ti,phy-pipe3-sata

Usually we express this the other way around:

if:
  properties:
    compatible:
      contains:
        const: ti,phy-pipe3-sata
then:
  required:
    - syscon-pllreset
else:
  properties:
    syscon-pllreset: false

But that's slightly different as syscon-pllreset is optional for 
ti,phy-pipe3-sata in your case. Seems like it should be required if 
ti,phy-pipe3-sata?


> +
> +required:
> +  - reg
> +  - compatible
> +  - reg-names
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    /* TI PIPE3 USB3 PHY */
> +    usb3phy@4a084400 {
> +        compatible = "ti,phy-usb3";
> +        reg = <0x4a084400 0x80>,
> +              <0x4a084800 0x64>,
> +              <0x4a084c00 0x40>;
> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> +        #phy-cells = <0>;
> +        clocks = <&usb_phy_cm_clk32k>,
> +                 <&sys_clkin>,
> +                 <&usb_otg_ss_refclk960m>;
> +        clock-names = "wkupclk", "sysclk", "refclk";
> +        ctrl-module = <&omap_control_usb>;
> +    };
> +
> +  - |
> +    /* TI PIPE3 SATA PHY */
> +    phy@4a096000 {
> +        compatible = "ti,phy-pipe3-sata";
> +        reg = <0x4A096000 0x80>,  /* phy_rx */
> +              <0x4A096400 0x64>,  /* phy_tx */
> +              <0x4A096800 0x40>;  /* pll_ctrl */
> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> +        clocks = <&sys_clkin1>, <&sata_ref_clk>;
> +        clock-names = "sysclk", "refclk";
> +        syscon-pllreset = <&scm_conf 0x3fc>;
> +        #phy-cells = <0>;
> +    };
> +...
> 
> -- 
> 2.52.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
