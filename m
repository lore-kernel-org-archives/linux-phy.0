Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE7CC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 16:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEXFC5yd9STuMCYsbRF51e9PdMjXNtbsYudC7AdQdL4=; b=S8wY7X5KofIURZ
	AHomQBznHl7rAtKKQWgH42VByiJVnNDPDDk+aNZM1ud3LJaaEw9j2332cDh2pPQn3D6x72yWBOFX7
	uBaMmv7unNX7xMsh/FkhfOhDcujP8cljvIHAj14JuGk9TS8PfYZvVrSq3Dlj87JqjxfsBfuoPr9rs
	ye4aH0Pjm15YV6av1LdPQWfPbNEeRIkkvEtFEY582pPhWQz5mMSlTQbrsaquJeFkONqjKa8nm5/x6
	w8z+dO/zCusxaFXZVFzENstsPiQafdZrQAjx+lBtH1aeBMuGfzxRRJVn5NL9lpKGV2thGK9FY7EQH
	JGuUzD/aogvcwcJeW2ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH6pB-00B4Af-36; Mon, 07 Feb 2022 16:25:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH6Zt-00AzJQ-DO; Mon, 07 Feb 2022 16:09:23 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 95CCC340;
 Mon,  7 Feb 2022 17:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644250159;
 bh=4a6oyH40Csn50dUhVk1KKkhWqQ+bT0AQuD8nF5SL40Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BjnDuSwJb7zSiLkq8jUPy87i86c/x8YPcQgITE7qtB6aMKmQkRGRJBy/mXUrT5wiS
 UFKmU9sVo1jhp1siSPFBNdhP5/+HTcmDw/ZJG72onGz6ggZMRoSmaOzYuUutBa/+5+
 TQPkXjgQ4skbl4oTC1mFEoZ3pUrC0BOs7fpCsuW8=
Date: Mon, 7 Feb 2022 18:09:17 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 08/66] dt-bindings: media: Add Allwinner A31 MIPI
 CSI-2 bindings documentation
Message-ID: <YgFELcVluEqr9LAH@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-9-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_080921_647563_C229FF06 
X-CRM114-Status: GOOD (  18.03  )
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

Hi Paul,

Thank you for the patch.

On Sat, Feb 05, 2022 at 07:53:31PM +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the Allwinner A31 MIPI
> CSI-2 controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 142 ++++++++++++++++++
>  1 file changed, 142 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..09207904b6db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> @@ -0,0 +1,142 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun6i-a31-mipi-csi2
> +      - items:
> +          - const: allwinner,sun8i-v3s-mipi-csi2
> +          - const: allwinner,sun6i-a31-mipi-csi2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  resets:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Input port, connect to a MIPI CSI-2 sensor
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Output port, connect to a CSI controller
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        additionalProperties: false

The two ports should be required.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - phys
> +  - phy-names

And ports should be required here.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> +
> +    mipi_csi2: csi@1cb1000 {
> +        compatible = "allwinner,sun8i-v3s-mipi-csi2",
> +                     "allwinner,sun6i-a31-mipi-csi2";
> +        reg = <0x01cb1000 0x1000>;
> +        interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&ccu CLK_BUS_CSI>,
> +                 <&ccu CLK_CSI1_SCLK>;
> +        clock-names = "bus", "mod";
> +        resets = <&ccu RST_BUS_CSI>;
> +
> +        phys = <&dphy>;
> +        phy-names = "dphy";
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            mipi_csi2_in: port@0 {
> +                reg = <0>;
> +
> +                mipi_csi2_in_ov5648: endpoint {
> +                    data-lanes = <1 2 3 4>;
> +
> +                    remote-endpoint = <&ov5648_out_mipi_csi2>;
> +                };
> +            };
> +
> +            mipi_csi2_out: port@1 {
> +                reg = <1>;
> +
> +                mipi_csi2_out_csi0: endpoint {
> +                    remote-endpoint = <&csi0_in_mipi_csi2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
