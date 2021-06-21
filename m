Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43E61C4743C
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 18:13:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB3D96100B
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 18:13:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB3D96100B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+M8sWpjZvzk4yJtzHT3HTF+qCqA9xZORyyX9dYQOsM=; b=pwh0x/WuANJ03K
	4fQB5/rMxKr022e8zjNfOPvjvWsQZJoyRh0vyFr7O0c5othLXQ/PvctY+qxR36O70MVaRhWkYAYtv
	9nk4LS+MAfiscowQeP2qhUh7IjSjP3LmBYrnXQHj+XkIiTz+0EK+4CpJEQ6mxG+8c8rzMI2aM/Qml
	T5eXZC1LrNGIVijIMU1cNW4W8DD1Kwtw7lQjArWPseTW/MuhYyDV2hYvw0Iy7jjcY1KK2GymG9z0d
	hJq/MNOoB2pSjgNcVKRIt24Iq7Y3KcNmQ7vWf2ZQMGbAMR4ona305wWHCHHOL6SFRT5IEJqE3vxwt
	WMO2av4VDuqoVWFqKHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvOQo-004VDd-7v; Mon, 21 Jun 2021 18:13:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvO9g-004MDk-Pm; Mon, 21 Jun 2021 17:56:18 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 654F75E17;
 Mon, 21 Jun 2021 19:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1624298174;
 bh=xTAY6XehRVOvS40XWKwQ0ZxduxmilFWHgm+B43wpOtk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LfWdClqW2kQ6uB7QoP6STkQ08ylCf9woPfaGaApNrjNI6NChKCGJenjYRIPetky1q
 JKwS5IDWB0LO3DvoiZU03U6xpabHxbwPjne9FRGYCZgyhptOLomgX7XSSO+u9YzUiY
 d6WEo81pq6a8aUgM+XvgzDhTE2t7Dw2Nxe2Gc7R0=
Date: Mon, 21 Jun 2021 20:55:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Tomasz Figa <t.figa@samsung.com>, Fancy Fang <chen.fang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [RFC PATCH 1/9] dt-bindings: display: bridge: Add Samsung SEC
 MIPI DSIM bindings
Message-ID: <YNDSpAJdI3OKugSL@pendragon.ideasonboard.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210621072424.111733-2-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_105617_043246_0F471FDA 
X-CRM114-Status: GOOD (  21.44  )
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

Hi Jagan,

Thank you for the patch.

On Mon, Jun 21, 2021 at 12:54:16PM +0530, Jagan Teki wrote:
> Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
> available in NXP's i.MX8M Mini and Nano Processors.
> 
> Add dt-bingings for it.
> 
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../display/bridge/samsung,sec-dsim.yaml      | 184 ++++++++++++++++++
>  1 file changed, 184 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> new file mode 100644
> index 000000000000..32f67f313dfd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> @@ -0,0 +1,184 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/samsung,sec-dsim.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SEC MIPI DSIM Bridge controller on i.MX8M Mini and Nano SoCs
> +
> +maintainers:
> +  - Jagan Teki <jagan@amarulasolutions.com>
> +
> +description: |
> +  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi bridge for
> +  the SOCs NWL MIPI-DSI host controller.
> +
> +allOf:
> +  - $ref: ../dsi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-sec-dsim
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  assigned-clock-parents: true
> +  assigned-clock-rates: true
> +  assigned-clocks: true
> +
> +  clocks:
> +    items:
> +      - description: DSI bus clock
> +      - description: PHY_REF clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: phy_ref
> +
> +  phys:
> +    maxItems: 1
> +    description: phandle to the phy module representing the DPHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  power-domains:
> +    maxItems: 1
> +    description: phandle to the associated power domain
> +
> +  samsung,burst-clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      DSIM high speed burst mode frequency.
> +
> +  samsung,esc-clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      DSIM escape mode frequency.
> +
> +  samsung,pll-clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      DSIM oscillator clock frequency.

Why do you need those three properties ? They look like configuration
information to me, not system description. If they are needed, their
description needs to explain how to set them. Looking at the three
descriptions above I have no idea what to select for those frequencies.

> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description:
> +          Input port node to receive pixel data from the
> +          display controller. Exactly one endpoint must be
> +          specified.
> +        properties:
> +          endpoint@0:
> +            $ref: /schemas/graph.yaml#/properties/endpoint
> +            description: sub-node describing the input from LCDIF
> +
> +          endpoint@1:
> +            $ref: /schemas/graph.yaml#/properties/endpoint
> +            description: sub-node describing the input from DCSS
> +
> +        oneOf:
> +          - required:
> +              - endpoint@0
> +          - required:
> +              - endpoint@1
> +
> +        unevaluatedProperties: false
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          DSI output port node to the panel or the next bridge
> +          in the chain
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - '#address-cells'
> +  - '#size-cells'
> +  - clock-names
> +  - clocks
> +  - compatible
> +  - interrupts
> +  - phy-names
> +  - phys
> +  - ports
> +  - reg
> +  - samsung,burst-clock-frequency
> +  - samsung,esc-clock-frequency
> +  - samsung,pll-clock-frequency
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    #include <dt-bindings/power/imx8mm-power.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    dsi: dsi@32e10000 {
> +      compatible = "fsl,imx8mm-sec-dsim";
> +      reg = <0x32e10000 0xa0>;
> +      clocks = <&clk IMX8MM_CLK_DSI_CORE>,
> +               <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +      clock-names = "bus", "phy_ref";
> +      assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
> +                        <&clk IMX8MM_VIDEO_PLL1_OUT>,
> +                        <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +      assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
> +                               <&clk IMX8MM_VIDEO_PLL1_BYPASS>,
> +                               <&clk IMX8MM_VIDEO_PLL1_OUT>;
> +      assigned-clock-rates = <266000000>, <594000000>, <27000000>;
> +      interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +      phys = <&dphy>;
> +      phy-names = "dphy";
> +      power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI>;
> +      samsung,burst-clock-frequency = <891000000>;
> +      samsung,esc-clock-frequency = <54000000>;
> +      samsung,pll-clock-frequency = <27000000>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        port@0 {
> +          reg = <0>;
> +          #size-cells = <0>;
> +          #address-cells = <1>;
> +
> +          dsi_in_lcdif: endpoint@0 {
> +            reg = <0>;
> +            remote-endpoint = <&lcdif_out_dsi>;
> +          };
> +        };
> +
> +        port@1 {
> +          reg = <1>;
> +
> +          dsi_out_panel: endpoint {
> +            remote-endpoint = <&panel_in_dsi>;
> +          };
> +        };
> +      };
> +    };

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
