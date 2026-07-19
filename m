Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3670C44512
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/JkWZBJ9eS2lw0DecSMtaHd2d/f2QdLGdHnzn1QfHc=; b=28mTxsRz19MdVu
	HynWs2aro3qZJYHm95IAjr9YDdqsPs7IhaAj96M9jyd0aAHMXJqemIfdEko8UOYpXthY4Y8Dv/P+1
	PRR9fmSlfRva/8yF1r0ucim9L+KeVLCw4keiB5Wb9/z2Q/Grbzq1CaMtevT8SeMxiTJFNuJVas1Lv
	8rNRBET83hu5mUhPI9BsEdC23v+xCqpxPINrg+bg+ohzXUzUwUfwkjMFGDS4Ifsb7HU7ihWqv3NTQ
	oeEBggorRGUh7pz6ckY2HJI46M4ir7BFTKcRaIVBu96KLqpo12PvvtrD3qCOwbP0lr+PKDlidRmaw
	VOIYPNSdE5QO3GVoUHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLLj-00000004nhE-1yN1;
	Sun, 19 Jul 2026 06:50:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLLh-00000004nh3-2KQB
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 06:50:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AB72A40C26;
	Sun, 19 Jul 2026 06:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E971F000E9;
	Sun, 19 Jul 2026 06:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784443804;
	bh=9PZVOUhVF1f1WpYMsMO5E6vmoYmxZuuCE38ucE6Txw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I+F4dZkvi4Q4teI5yrCpJinHTKO+N/VCV3GVTJFlF5MRKZgS3/qwSzcjQGeRMrlj+
	 rwR9QfZn9aQnT29ShDOeWTCg7RPt3Sz5ywQaPuSO2xtefNgNWBN1cUxvbM4XABkqSH
	 vnR0p5FSdypgASNaPqb4dCmmEAaZ3Vqfk9mi+/JvliGnOmKnuDBfZjbsA4MDF7fLnr
	 rjoFeyUFUCf+G28K+evNy60nQU59wS03W5sbQzy3NECWIbCcX5PlI+OKNN9kpnamro
	 VkbnYMm4vL13u5Rf0u6i48kM2VR7iquY2UeCWdwAw5PmkSCoEWNEaFaj8lJp2J5uR+
	 dgusrF3yJzBEg==
Date: Sun, 19 Jul 2026 08:50:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
Message-ID: <20260719-sloppy-cornflower-hippo-8212e2@quoll>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-1-4f9e87a61463@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717-glymur_linkmode_0717-v5-1-4f9e87a61463@oss.qualcomm.com>
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

On Fri, Jul 17, 2026 at 02:58:33AM -0700, Qiang Yu wrote:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml
> new file mode 100644
> index 000000000000..73550f77e9b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml

Filename: qcom,glymur-qmp-gen5x8-pcie-phy.yaml

> @@ -0,0 +1,176 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,glymur-qmp-pcie-multiphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP PCIe multiple link-mode PHY controller (PCIe, Glymur)
> +
> +maintainers:
> +  - Qiang Yu <qiang.yu@oss.qualcomm.com>
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> +
> +description: |
> +  The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
> +  PCIe3a/PCIe3b controllers. This block supports two link modes, selected
> +  at runtime via a TCSR syscon register:
> +
> +  1. x8 - a single 8-lane PHY instance is exposed (PCIe3a only)
> +  2. x4+x4 - two independent 4-lane PHY instances are exposed (PCIe3a and
> +     PCIe3b)
> +
> +  The node always describes both PHY instances ("port a" and "port b"),
> +  regardless of which link mode is active on the board.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,glymur-qmp-gen5x8-pcie-phy
> +
> +  reg:
> +    minItems: 2

Dop

> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: port_a
> +      - const: port_b
> +
> +  clocks:
> +    minItems: 10

Drop

> +    maxItems: 10
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg_ahb
> +      - const: ref
> +      - const: rchng
> +      - const: pipe
> +      - const: phy_b_aux
> +      - const: cfg_ahb_b
> +      - const: rchng_b
> +      - const: pipe_b
> +      - const: pipediv2_b
> +
> +  power-domains:
> +    minItems: 2

Drop

> +    maxItems: 2
> +
> +  power-domain-names:
> +    items:
> +      - const: phy_a_gdsc

port_a

> +      - const: phy_b_gdsc

port_b

> +
> +  resets:
> +    minItems: 4

Drop

> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: phy_a

port_a

> +      - const: phy_a_nocsr

port_a_nocsr

etc.

> +      - const: phy_b
> +      - const: phy_b_nocsr
> +
> +  vdda-phy-supply: true
> +
> +  vdda-pll-supply: true
> +
> +  vdda-refgen0p9-supply: true
> +
> +  vdda-refgen1p2-supply: true
> +
> +  qcom,link-mode:
> +    description:
> +      Reference to a register in the TCSR syscon that reports the link
> +      mode the PCIe PHY is currently configured for, either a single x8
> +      link or two independent x4 links. The link mode is programmed by
> +      firmware before Linux boots; this property is only used to read
> +      the active link mode, specified as a phandle to the syscon and
> +      the register offset.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle of TCSR syscon
> +          - description: offset of link mode register
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clock-output-names:
> +    items:
> +      - description: Name of the PHY A pipe clock output.
> +      - description: Name of the PHY B pipe clock output.
> +
> +  "#phy-cells":
> +    const: 1

You should explain in description the meaning of cell value. Or provide
filename of header with constants.

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - power-domain-names
> +  - resets
> +  - reset-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +  - vdda-refgen0p9-supply
> +  - vdda-refgen1p2-supply
> +  - qcom,link-mode
> +  - "#clock-cells"
> +  - clock-output-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,glymur-gcc.h>
> +    #include <dt-bindings/clock/qcom,glymur-tcsr.h>
> +
> +    pcie3_phy: phy@f00000 {

Drop unused label.

The old 5x4 glymur compatible could be deprecated as well, but fine for
me without doing so.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
