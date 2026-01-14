Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6796AD37E33
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBFvKfqT5GUrc0oXDEtdW5kdIoqjSeTw9sWSw7oajVk=; b=tMCQFwncFz9jHH
	6YIEvWPY49GBcN/yf390XJf/mD5GWlgUvxsiE4dKfDMQWBko8JdC8hzouFswTVonHsWwQsyMF+PEr
	PpDrYRkLBb74C8JU3g3Mg7AWai8IsW5WUMbDpmd68+cp+oU/0px3mOIICNFYh58MimdQOH6mqaxoW
	4T76ngAXO0irru90iLMOj9CgpUGsLzLDAPQsCXfe3Tt+/iiQE8/+koueZ2WTJJtZSiW4SQaZaydu2
	cJg6+PJYzlbTGAmeTu3S908walV6/TEOVxX7ZIgxi5W3ZCqJnpcbqyVX2nxBqe/zL/z6ts9oDr2SZ
	jAiV/7mLKJPpbS9MsPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1fv-00000009UAk-029J;
	Wed, 14 Jan 2026 14:16:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1fr-00000009U8u-3iox
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:16:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 48E3B429E6;
	Wed, 14 Jan 2026 14:16:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B35EC4CEF7;
	Wed, 14 Jan 2026 14:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768400199;
	bh=pdFX83VmlNrXto/FtySPpyRMozy2CEnS0+zsgnBiyis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PxQawwh0TpmFRe8Y87Ig1EKq8r4S2M2tWO5h5iPXByTKraTm8hYPL9o3+iJuEiYhO
	 vUv+rMOhPtRkUkHuNT+F4TgONkO1Gp6d8J0RuNIQP5H5EpRd/iX8AxN1/x6LnBICjP
	 xisSo+cnFk25f8/jiXfYgxbAPc8ch+XVO+oh2aehUePFwAWbcZTAnSG0HRQGxlWNmk
	 9COnE81Bf49m+u4dHo0I1q4zk5SHLD/PR0ybQoKKzcoBezwSQZyM5NR4LiGUIiiuvD
	 uwYrheNcyJmkyqtZOKwFstQKplPfV2lju5J+iTudX3VY2j+qTGeWi7mRLrqeI1/C5S
	 1hfNFQOcVOKRQ==
Date: Wed, 14 Jan 2026 19:46:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <aWelQ7P1kjKrQMG9@vaman>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_061639_981254_608867FE 
X-CRM114-Status: GOOD (  18.39  )
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

On 07-01-26, 16:11, Charan Pedumuru wrote:
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

That is not correct, please check the current people on TI for this.

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
> +
> +  compatible:
> +    enum:
> +      - ti,phy-usb3
> +      - ti,phy-pipe3-sata
> +      - ti,phy-pipe3-pcie
> +      - ti,omap-usb3
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
> +
> +  syscon-pllreset:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
> +
> +  syscon-pcs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module for writing PCS delay value.
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

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
