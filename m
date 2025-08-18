Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1208CA0EE9
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 17:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cX1Ub9qoSraNvk2Z7Y/r2kdv61ELYAQIIpjN3TqoMeM=; b=vpHBQGKmXqmRet
	xrnMmVTwCqoA/YBSdSH4gSMvWVOatBhDO4QdLWsGoPZCQqQ3U4W1Ea8V9cS8RPHJUQ8ppf5BSRJic
	nbah/uzUNd1ObNdqo3SP/FjoidkT4pZeAvTsb9TrQS4hXqcvmRvxBvobl/RSsE4MI8Em5GomVTKb0
	WdG8A2pL4Y7/201YdapeIbL9cJdMTB5Hisj1QMK0hGxCiTTy4/0isWcmkqp+Ghvs7uoyFw05OMO1Q
	/AYDIqtPFDVGzet39qvjvK8He1x9+YvtXeAhOGdHqo0B5jBPEA6yXYYNSXV1bqQNJ1HvyqFE3KAn9
	aphPOIZNJOlWHzEZEavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3hI-000000088d3-0u48;
	Mon, 18 Aug 2025 17:31:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo11E-00000007mPB-06Fd;
	Mon, 18 Aug 2025 14:39:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 69CB15C560C;
	Mon, 18 Aug 2025 14:39:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8C3CC4CEEB;
	Mon, 18 Aug 2025 14:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755527967;
	bh=NNGx1BhKiXpo8fP1NrAIVQqjVfRV0yTMXi9fh1F4zrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IohbkpI8Oqjzlt/YDjYYRVYKn0OTs7UpZ3CYOJTtRM0KKfLEG1mXf7DnloIT8p/of
	 9U1LnNJ7jRGeYBndKXNgPCjeF69GvqZgWjAqN+9NvvpuGcKr8WaXJqW4aqKRulGOzW
	 sevKtR2n4c8VtLo/4jDooMKRi9n8SJtSduy/gbGw5ewRPEgrNX3zWsKXcYQkAca5LO
	 8BuUy5rdvuU99dw3mwlKHIP7zlWPI2eQP/QHENnpk+mkF247WOX6v32+l0Om8XZFmU
	 G33Nre2FH6SHIJw0k6l8TehFUFvf4uaz0WnBw4OZm26HEvRbw+F7V/CUyVUDwjRth3
	 n5Il0Pkuozg5Q==
Date: Mon, 18 Aug 2025 09:39:26 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Alice Yuan <alice.yuan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-staging@lists.linux.dev, Luis Oliveira <lolivei@synopsys.com>
Subject: Re: [PATCH v2 01/32] dt-bindings: media: add DW MIPI CSI-2 Host
 support
Message-ID: <20250818143926.GA1025181-robh@kernel.org>
References: <20250808-95_cam-v2-0-4b29fa6919a7@nxp.com>
 <20250808-95_cam-v2-1-4b29fa6919a7@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250808-95_cam-v2-1-4b29fa6919a7@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_073928_140052_F15634C4 
X-CRM114-Status: GOOD (  18.24  )
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

On Fri, Aug 08, 2025 at 06:39:04PM -0400, Frank Li wrote:
> From: Eugen Hristev <eugen.hristev@linaro.org>
> 
> Add bindings for Synopsys DesignWare MIPI CSI-2 host, which used at i.MX93
> and i.MX95 platform.
> 
> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change in v2
> - remove Eugen Hristev <eugen.hristev@microchip.com> from mantainer.
> - update ugen Hristev's s-o-b tag to align original author's email address
> - remove single snps,dw-mipi-csi2-v150 compatible string
> - move additionalProperties after required
> ---
>  .../bindings/media/snps,dw-mipi-csi2-v150.yaml     | 158 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 159 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..fc1b167d6d3b142a01e2ea7f04230934260a05e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
> @@ -0,0 +1,158 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/snps,dw-mipi-csi2-v150.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +description:
> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
> +  camera. It will convert the incoming CSI-2 stream into a dedicated
> +  interface called the Synopsys IDI (Image Data Interface).
> +  This interface is a 32-bit SoC internal only, and can be assimilated
> +  with a CSI-2 interface.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,imx93-mipi-csi2
> +      - const: snps,dw-mipi-csi2-v150
> +
> +  reg:
> +    items:
> +      - description: MIPI CSI-2 core register
> +
> +  reg-names:
> +    items:
> +      - const: core
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: per
> +      - const: pixel
> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: rx
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port node, single endpoint describing the input port.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            description: Endpoint connected to input device
> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  maximum: 4
> +
> +              clock-lanes:
> +                maxItems: 1

Drop. clock-lanes is always 1 entry.

> +
> +              remote-endpoint: true

Drop.

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Output port node, single endpoint describing the output port.
> +
> +        properties:
> +          endpoint:
> +            unevaluatedProperties: false
> +            $ref: video-interfaces.yaml#
> +            description: Endpoint connected to output device
> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              remote-endpoint: true

Drop.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
