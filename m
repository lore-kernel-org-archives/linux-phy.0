Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F494C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 08:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAe9ccLUk6ZjhkI1M7K9Qtg4Hb5qdxD3PecZrsGsHrA=; b=nymP9Vs9X+DDnX
	V3Gnsg+D01FEGvmK9wAeFTalAyprk4TwNmtE7aLrwNw+lDogq/Zp0+j6Nq6eyOppkJJJFcD3XkmnN
	YRL7fJLKnRXDH+fl7lQiikq1REAFWQIettY0JZ8Wimw77exYb2mbQlyfmaZWSAiYoSdUNuA/ya58N
	SlPGiy2fbZJfFGcBVELFX/KdJTDy35iWyhur21ArKkNxIOtX3t9yCS6biG5mDyfH5UYj3AVTfseEd
	SRGQ+tPMxelh3wpwg5I5HfUuUPfDRXZnZvKnTw6INOX0OLFMhdbpTQkK7E650IecsTQOMjnEd00/X
	dX1jHh6eg14Zg2uZ1cXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xbh-00000008vnO-3zFx;
	Mon, 31 Aug 2026 08:43:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xbg-00000008vmu-3haP
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 08:43:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5652E60120;
	Mon, 31 Aug 2026 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D5781F000E9;
	Mon, 31 Aug 2026 08:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788165788;
	bh=1w90RamCq8kQA6nW338QTgFUlpWXufn6MR62nUVpPe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z+G+2623x10QPEB0jnES28VWBD5um4aMqQGeSMNchFO09smrqtLvWeFo61Np/x/aO
	 RBtXA4rdRm+Frn9cyAe/fnUETUixVAlYA5Lqo7q1vFOjEc/stF0Zw4X8yhgsmnZMJm
	 InNnRV1iYB68CXueGcSzfw9fK/fdrkj1xtXIuNQfP1tXFv4PvPdeDG5MnskUZZoTKN
	 zFloaNL0meq9/UHSNDoHNjOA2f7o5EZP0ObS5u0MzFPUZxdZ+GPTaJzt9YgGEH4wAT
	 Rz3Zi0o+CAGL0VLi1g8ATW9QFNTIFmdQoouTzxbis1AbthCBIqGmRsKvG/43DQJOqC
	 lxg6d0WfTw2yw==
Date: Mon, 31 Aug 2026 10:43:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
Message-ID: <20260831-bizarre-invincible-badger-e4a7cc@quoll>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
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

On Fri, Aug 28, 2026 at 02:13:35PM +0530, Krishna Chaitanya Chundru wrote:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> new file mode 100644
> index 000000000000..37198f82c611
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> @@ -0,0 +1,276 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Nord QMP Bifurcated PCIe PHY
> +
> +maintainers:
> +  - Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> +
> +description: |
> +  The Qualcomm Nord PCIe PHY is a Gen5-capable QMP PCIe PHY composed
> +  of four PHY ports (A/B/C/D). The ports can be combined to support
> +  multiple lane topologies, including x16, x8+x8, x8+x4+x4 and
> +  x8+x4+x2+x2 configurations.
> +
> +  The selected topology is determined by the PCIe link configuration mode
> +  programmed in TCSR registers. Depending on the selected mode, PHY ports
> +  may operate independently or be grouped together to form wider PCIe links.
> +
> +  Each port provides dedicated register space, clocks, resets and power
> +  resources required for PHY operation.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,nord-qmp-gen5x16-pcie-phy
> +
> +  reg:
> +    minItems: 4

Drop minItems, not needed.

> +    maxItems: 4
> +
> +  reg-names:
> +    items:
> +      - const: port_a
> +      - const: port_b
> +      - const: port_c
> +      - const: port_d
> +
> +  clocks:
> +    minItems: 17

Similarly, you can look at other examples.

> +    maxItems: 17
> +
> +  clock-names:
> +    items:
> +      - const: aux_a
> +      - const: cfg_ahb_a
> +      - const: rchng_a
> +      - const: pipe_a
> +      - const: aux_b
> +      - const: cfg_ahb_b
> +      - const: rchng_b
> +      - const: pipe_b
> +      - const: aux_c
> +      - const: cfg_ahb_c
> +      - const: rchng_c
> +      - const: pipe_c
> +      - const: aux_d
> +      - const: cfg_ahb_d
> +      - const: rchng_d
> +      - const: pipe_d
> +      - const: ref

To match other variants, ref should be the third clock.

> +
> +  power-domains:
> +    minItems: 4

Dop

> +    maxItems: 4
> +
> +  power-domain-names:
> +    items:
> +      - const: port_a
> +      - const: port_b
> +      - const: port_c
> +      - const: port_d
> +
> +  resets:
> +    minItems: 8

Drop

> +    maxItems: 8

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
