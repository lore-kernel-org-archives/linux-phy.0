Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A57C54EE9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 10:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2+NDLY1eeKnNqITICsu72cVO2MtmvVL+WjW2kHMzCg=; b=O8nAtwM1FLbO/0
	+7mAVE0qRXlBd9iKEYGnaXTUdZWG+S0Je3rCSGwEpJJ/eNKY1CXVBX0qQExXfu3XfaM6ipTYkXGGZ
	kspzFRFJ3TKv2KGW1YWUq/04uO52OaU62uLkXjnqvmFN34CD975I9pptFMVH9eseptAQP7L9hNLN8
	6JkbBWX3MBsjs+Fc240pUCkVjASP11fD9rn2MvQoUyTBtOjKmOSKZvc95RN4IDT5TS1YB0PYZmESm
	bK+39xFP/NxV3omRya4oxpzUkrOfNVjqWIAnen4TRMSSquPcpGtysUNNgMiIK5+JmmgeyiVcMXhkQ
	lCPBlgWhgcn3Tc/TDRAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDiD-00BBkn-Fu; Mon, 19 Sep 2022 10:09:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDi5-00BBb3-OH
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 10:09:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaDhm-0002Dm-00; Mon, 19 Sep 2022 12:08:46 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaDhk-0003Vb-VP; Mon, 19 Sep 2022 12:08:44 +0200
Date: Mon, 19 Sep 2022 12:08:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, jacopo@jmondi.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Message-ID: <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_030905_988946_4859A3F6 
X-CRM114-Status: GOOD (  29.34  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Laurent,

On 22-09-18, Laurent Pinchart wrote:
> Hi Marco,
> =

> Thank you for the patch.
> =

> On Fri, Sep 16, 2022 at 03:45:34PM +0200, Marco Felsch wrote:
> > Add the bindings for the Toshiba TC358746 Parallel <-> MIPI-CSI bridge
> > driver.
> > =

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > Changelog:
> > =

> > v2:
> > - addded Robs r-b
> > - s/than/then/
> > - added hsync/vsync/bus-type, make hsync/vsync required
> > - fix example indent
> > =

> >  .../bindings/media/i2c/toshiba,tc358746.yaml  | 179 ++++++++++++++++++
> >  1 file changed, 179 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba=
,tc358746.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,tc3587=
46.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
> > new file mode 100644
> > index 000000000000..1fa574400bc2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
> > @@ -0,0 +1,179 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/toshiba,tc358746.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Toshiba TC358746 Parallel to MIPI CSI2 Bridge
> > +
> > +maintainers:
> > +  - Marco Felsch <kernel@pengutronix.de>
> > +
> > +description: |-
> > +  The Toshiba TC358746 converts a parallel video stream into a MIPI CS=
I-2
> > +  stream. The direction can be either parallel-in -> csi-out or csi-in=
 ->
> > +  parallel-out The chip is programmable trough I2C and SPI but the SPI
> > +  interface is only supported in parallel-in -> csi-out mode.
> > +
> > +  Note that the current device tree bindings only support the
> > +  parallel-in -> csi-out path.
> > +
> > +properties:
> > +  compatible:
> > +    const: toshiba,tc358746
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    description:
> > +      The phandle to the reference clock source. This corresponds to t=
he
> > +      hardware pin REFCLK.
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: refclk
> > +
> > +# The bridge can act as clock provider for the sensor. To enable this =
support
> > +# #clock-cells must be specified. Attention if this feature is used th=
en the
> > +# mclk rate must be at least: (2 * link-frequency) / 8
> > +#                             `------------------=B4   ^
> > +#                             internal PLL rate   smallest possible mc=
lk-div
> > +  "#clock-cells":
> > +    const: 0
> > +
> > +  clock-output-names:
> > +    description:
> > +      The clock name of the MCLK output, the default name is tc358746-=
mclk.
> > +    maxItems: 1
> > +
> > +  vddc-supply:
> > +    description: Digital core voltage supply, 1.2 volts
> > +
> > +  vddio-supply:
> > +    description: Digital I/O voltage supply, 1.8 volts
> > +
> > +  vddmipi-supply:
> > +    description: MIPI CSI phy voltage supply, 1.2 volts
> > +
> > +  reset-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls the chip re=
set.
> > +      This corresponds to the hardware pin RESX which is physically ac=
tive low.
> > +    maxItems: 1
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: Input port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/media/video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              hsync-active:
> > +                enum:
> > +                  - 0 # Hvalid active high
> > +              vsync-active:
> > +                enum:
> > +                  - 0 # Vvalid active high
> > +              bus-type:
> > +                enum:
> > +                  - 5 # Parallel
> > +
> > +            required:
> > +              - hsync-active
> > +              - vsync-active
> =

> Let's make bus-type required too, to prepare for BT.656 support.

I would have done it when the BT.656 support is added. Since the BT.656
don't require the sync signals I would have made a descision:
 - either: hsync/vsync present -> parallel with external syncs, or
 - bus-type present -> parallel bus with embedded syncs.

So we don't bother the system-integrator with specifying unnecessary
properties. Also having v/hsync required in place with the bus-type (set
to bt.656) can cause confusion about the final used mode.

Regards,
  Marco

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> =

> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: Output port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/media/video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +              clock-noncontinuous: true
> > +              link-frequencies: true
> > +
> > +            required:
> > +              - data-lanes
> > +              - link-frequencies
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - vddc-supply
> > +  - vddio-supply
> > +  - vddmipi-supply
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    i2c {
> > +      #address-cells =3D <1>;
> > +      #size-cells =3D <0>;
> > +
> > +      csi-bridge@e {
> > +        compatible =3D "toshiba,tc358746";
> > +        reg =3D <0xe>;
> > +
> > +        clocks =3D <&refclk>;
> > +        clock-names =3D "refclk";
> > +
> > +        reset-gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> > +
> > +        vddc-supply =3D <&v1_2d>;
> > +        vddio-supply =3D <&v1_8d>;
> > +        vddmipi-supply =3D <&v1_2d>;
> > +
> > +        /* sensor mclk provider */
> > +        #clock-cells =3D <0>;
> > +
> > +        ports {
> > +          #address-cells =3D <1>;
> > +          #size-cells =3D <0>;
> > +
> > +          /* Input */
> > +          port@0 {
> > +            reg =3D <0>;
> > +            tc358746_in: endpoint {
> > +              remote-endpoint =3D <&sensor_out>;
> > +              hsync-active =3D <0>;
> > +              vsync-active =3D <0>;
> > +            };
> > +          };
> > +
> > +          /* Output */
> > +          port@1 {
> > +            reg =3D <1>;
> > +            tc358746_out: endpoint {
> > +              remote-endpoint =3D <&mipi_csi2_in>;
> > +              data-lanes =3D <1 2>;
> > +              clock-noncontinuous;
> > +              link-frequencies =3D /bits/ 64 <216000000>;
> > +            };
> > +          };
> > +        };
> > +      };
> > +    };
> =

> -- =

> Regards,
> =

> Laurent Pinchart
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
