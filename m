Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61F3C83F17
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 01:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvPt2FGe5BpQjPQonHq9cZPoqcOvZ13N2A0pf86NL/k=; b=06H8fc+PBD8qmM
	gSVAjhHtcX1UYWKGEyzEEMAPIV3SJtjTBVYWQYQv7gI7f0PaMX82d2jTButQw4Vi9plDyhlKk1W9c
	gIL3cH1cRs3x8czJH4lYRf06qyzHEeoW0gC1bb14qsGg66WUk89i7L98E4Op4ilJRl99/qhZNfhLs
	CYTuIBuUACiLMBDtkkfjypOsX+XD+fsigqaBfVs/w5SSokFAy5fX4w2QXUeMsLnBg1a035zVWmwa7
	ykzjrt9angea5Fv3KCZyQo2eZnQer1p4DhLGdMkpmCPj6ndTopvQhJ/fc3o9mjSefHsaliDR30/nx
	y2EU3NTYnjVwX1hi9Xeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua2RC-0000000DRVx-2dRb;
	Fri, 11 Jul 2025 01:20:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua0Nk-0000000DEUx-2lpQ
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 23:08:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C0C986143B;
	Thu, 10 Jul 2025 23:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E65FC4CEE3;
	Thu, 10 Jul 2025 23:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752188927;
	bh=v5cEblJiF+k/jXiSINmQRV8w5aE0inYcqN0Zq9PgItk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H8Yh71qMkAt17Nzl11tn+JVsq12nLOiVrKKoHXmP0+l8qxkG0vLvYLcV1FHAe8fCD
	 1n1DxSSleOBA4NiD0ecfGQjyAqHSGBImgqoiwGnAiW3Qwi7HDEUKU5nXo4g8moXRAI
	 eM8sbqD8NClIg+KmphRf3NVCMQjxpaIjG6HRKLC4ftHmTXQ1yVC8uTjozUd38CcOCo
	 3ycPlS0vBEeqs9XntyFI2PDHjqQbvxP+cG09R8n4NeEfGzGRPsRl7y0Rmhg6s9IEUC
	 DHh8zCEOUHChoY20Xg/4N7+f6fg7+1A/hwTqFXSLhv64/Xh/OYewn1fuuh2zcVBXQI
	 lvkAmuzx3A6iA==
Date: Thu, 10 Jul 2025 18:08:46 -0500
From: Rob Herring <robh@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
Message-ID: <20250710230846.GA44483-robh@kernel.org>
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
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

On Thu, Jul 10, 2025 at 05:16:47PM +0100, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     | 95 ++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..e0976f012516452ae3632ff4732620b5c5402d3b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm MIPI CSI2 Combo PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-mipi-csi2-combo-phy

Kind of long. CSI2 implies MIPI and is there a non-combo phy for the 
SoC? Could drop either or both mipi and combo...

> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi
> +      - const: cpas_ahb

These look like the source is included in the name. Is there more than 1 
AXI and AHB bus for this device?

> +      - const: csiphy
> +      - const: csiphy_timer

Module clocks should probably come first.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +  phy-type:
> +    description: D-PHY or C-PHY mode
> +    enum: [ 10, 11 ]
> +    $ref: /schemas/types.yaml#/definitions/uint32

Perhaps putting this in phy cells would be better because the consumer 
decides on the mode.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +  - phy-type
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    csiphy0: csiphy@ace4000 {

Drop unused labels.

> +        compatible = "qcom,x1e80100-mipi-csi2-combo-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <0>;
> +
> +        clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                 <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +        clock-names = "camnoc_axi",
> +                      "cpas_ahb",
> +                      "csiphy",
> +                      "csiphy_timer";
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        phy-type = <PHY_TYPE_DPHY>;
> +    };
> 
> -- 
> 2.49.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
