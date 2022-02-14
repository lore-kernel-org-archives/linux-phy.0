Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C52EC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 17:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCuPZXRv+wwGZgrG4Kfg359o54iEcVJOwIOJg6wfMy0=; b=u6NeKPJ0YE8nub
	XL0OOHBuuhaRybdTqAhdOlFy4TqIQ4T5xJHZJBNcJyDHHoHsTyjrGOBboQCOy90zAuZh6e/tlQMpC
	1O4uln18G3UQUJfkYaCuxhPbMFFGRUI0wTOF7RH7696SndOnUefwrPkkFYw+o0xItWyLSkCe9BGxu
	jormMlXlL9p7AmVVq7W0gtQfJlqQI47SX5Jjv8UcKDZlM4DoHdYtWo15PwhZhRQflOWF5dULVvz8Q
	TRMX9fNO5r+VB6rYWAJxwJOL9lDrmqoc+YB9lQOqa8yE6mJp6vq4miecpwhIw0JNaVQDvqa2qTube
	jnzNfE8DIK/hv4uhB6Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJero-00GJ4G-Cz; Mon, 14 Feb 2022 17:10:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJerR-00GItd-1C; Mon, 14 Feb 2022 17:10:03 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6E51647F;
 Mon, 14 Feb 2022 18:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644858595;
 bh=/YNaz0DsrRJeG+wyZcvue35MIts+tATZZO5yOnTvmJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OVPWru2lo/OxxUAbhYZ7ZzYSoNrelS85Ct9gfpER9HgH31TXus3Fzmf+xQSt5qK5R
 NewjRiTNY2yFNUE7wzMFfp8UYOUVC4BDVu8DH+4mANw+gPv6Gpos3ms0zXx3i0g5R/
 O67nQc/C419gxtXJDKShdgG4Fl1wNCzpmyr+GgSc=
Date: Mon, 14 Feb 2022 19:09:49 +0200
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 61/66] dt-bindings: media: Add Allwinner A31 ISP
 bindings documentation
Message-ID: <YgqM3ZdMfEz+ZKo/@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
 <YgqAv2vLimYgRwDS@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YgqAv2vLimYgRwDS@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_091001_239582_B942D43A 
X-CRM114-Status: GOOD (  32.89  )
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

On Mon, Feb 14, 2022 at 05:18:07PM +0100, Paul Kocialkowski wrote:
> On Mon 07 Feb 22, 17:51, Laurent Pinchart wrote:
> > On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > > This introduces YAML bindings documentation for the Allwinner A31 Image
> > > Signal Processor (ISP).
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++++++++++
> > >  1 file changed, 117 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > new file mode 100644
> > > index 000000000000..2d87022c43ce
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > @@ -0,0 +1,117 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - allwinner,sun6i-a31-isp
> > > +      - allwinner,sun8i-v3s-isp
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: Bus Clock
> > > +      - description: Module Clock
> > > +      - description: DRAM Clock
> > 
> > That's interesting, does the ISP have a dedicated DRAM ?
> 
> It doesn't, it actually uses the main DRAM with the "mbus" interconnect.
> The clock is probably for the DMA engine.
> 
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: bus
> > > +      - const: mod
> > > +      - const: ram
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  ports:
> > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > +
> > > +    properties:
> > > +      port@0:
> > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > +        description: CSI0 input port
> > > +
> > > +        properties:
> > > +          reg:
> > > +            const: 0
> > > +
> > > +          endpoint:
> > > +            $ref: video-interfaces.yaml#
> > > +            unevaluatedProperties: false
> > 
> > If no other property than remote-endpoint are allowed, I'd write
> > 
> >           endpoint:
> >             $ref: video-interfaces.yaml#
> > 	    remote-endpoint: true
> >             additionalProperties: false
> > 
> > Same below.
> > 
> > > +
> > > +        additionalProperties: false
> > > +
> > > +      port@1:
> > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > +        description: CSI1 input port
> > > +
> > > +        properties:
> > > +          reg:
> > > +            const: 0
> > 
> > This should be 1.
> 
> Correct, thanks!
> 
> > > +
> > > +          endpoint:
> > > +            $ref: video-interfaces.yaml#
> > > +            unevaluatedProperties: false
> > > +
> > > +        additionalProperties: false
> > > +
> > > +    anyOf:
> > > +      - required:
> > > +        - port@0
> > > +      - required:
> > > +        - port@1
> > 
> > As ports are an intrinsic property of the ISP, both should be required,
> > but they don't have to be connected.
> 
> Well the ISP does have the ability to source from either CSI0 and CSI1
> but I don't really get the point of declaring both ports when only one
> of the two controllers is present.

If it's within an SoC I don't mind too much. What I usually insist on is
declaring all ports even when no external devices are connected on the
board. It may however be easier to implement things on the driver side
when all the ports are declared, even for internal devices. I won't
insist either way here.

> > By the way, how do you select at runtime which CSI-2 RX the ISP gets its
> > image stream from ? Is it configured through registers of the ISP ?
> 
> Actually what the ISP gets is fully dependent on what is received by the
> CSI controller it is connected to (which can be the mipi csi-2 controller
> or its direct parallel pins), so the configuration happens on the CSI side.

OK, then how do you select at runtime which CSI the ISP gets its image
stream from ? :-)

> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +  - resets
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> > > +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> > > +
> > > +    isp: isp@1cb8000 {
> > > +        compatible = "allwinner,sun8i-v3s-isp";
> > > +        reg = <0x01cb8000 0x1000>;
> > > +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > > +        clocks = <&ccu CLK_BUS_CSI>,
> > > +             <&ccu CLK_CSI1_SCLK>,
> > > +             <&ccu CLK_DRAM_CSI>;
> > > +        clock-names = "bus", "mod", "ram";
> > > +        resets = <&ccu RST_BUS_CSI>;
> > > +
> > > +        ports {
> > > +            #address-cells = <1>;
> > > +            #size-cells = <0>;
> > > +
> > > +            port@0 {
> > > +                reg = <0>;
> > > +
> > > +                isp_in_csi0: endpoint {
> > > +                    remote-endpoint = <&csi0_out_isp>;
> > > +                };
> > > +            };
> > > +        };
> > > +    };
> > > +
> > > +...

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
