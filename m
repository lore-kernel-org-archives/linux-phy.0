Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB46ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 15:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmyJ/oJ35/yzDkDZZj5mseB3+EkpmxdKNhsKYrEMvDU=; b=ldZjSnq6YRkPaU
	+qljix3cKiP3jjh184XBmXaUP1XGh51BshOlir2XLzaJUDwT4LzU0qIdoIUC/R27/Su6dusA7ezVm
	66uniZpchYz/AggYx9F35kBABJxMSp1EjQUqBYt/DPVJPLPcS044cFwUw1sMyF9UVyYkNjIhxN44f
	5RrIOXqrPJI9iFauIoyTSX4HRa0SSrr+pOOEnVdkDmAHPZO8QnJuLSifYSOQFQlr62edIJ39CfFel
	GhlmUZL1uvksVPDgMoKyr15scHNDzwwn1cCk0M5Y1JJJsljPqy1dnlglfeUbzIDNS1m7cpGJXrhfz
	HNroy8KcFYjuYGFvTBMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaf9N-004rii-6a; Tue, 20 Sep 2022 15:27:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaf9C-004rdA-Cn
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 15:26:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaf8q-0004iC-W9; Tue, 20 Sep 2022 17:26:33 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaf8q-0007Cc-1J; Tue, 20 Sep 2022 17:26:32 +0200
Date: Tue, 20 Sep 2022 17:26:32 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, mchehab@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, vkoul@kernel.org, hverkuil@xs4all.nl,
	jacopo@jmondi.org, kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Message-ID: <20220920152632.mjpgpmelvx4ya4k7@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
 <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
 <YyhDO4ohv47uIij2@paasikivi.fi.intel.com>
 <YyhKoDxFoobY9vBd@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyhKoDxFoobY9vBd@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_082654_677260_CE4C7A97 
X-CRM114-Status: GOOD (  35.96  )
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

Hi Laurent, Sakari,

On 22-09-19, Laurent Pinchart wrote:
> On Mon, Sep 19, 2022 at 10:23:55AM +0000, Sakari Ailus wrote:
> > On Mon, Sep 19, 2022 at 12:08:44PM +0200, Marco Felsch wrote:
> > > On 22-09-18, Laurent Pinchart wrote:
> > > > On Fri, Sep 16, 2022 at 03:45:34PM +0200, Marco Felsch wrote:
> > > > > Add the bindings for the Toshiba TC358746 Parallel <-> MIPI-CSI b=
ridge
> > > > > driver.
> > > > > =

> > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > > > Changelog:
> > > > > =

> > > > > v2:
> > > > > - addded Robs r-b
> > > > > - s/than/then/
> > > > > - added hsync/vsync/bus-type, make hsync/vsync required
> > > > > - fix example indent
> > > > > =

> > > > >  .../bindings/media/i2c/toshiba,tc358746.yaml  | 179 ++++++++++++=
++++++
> > > > >  1 file changed, 179 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/t=
oshiba,tc358746.yaml
> > > > > =

> > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,=
tc358746.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,tc35874=
6.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..1fa574400bc2
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/media/i2c/toshiba,tc35874=
6.yaml
> > > > > @@ -0,0 +1,179 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/media/i2c/toshiba,tc358746.ya=
ml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Toshiba TC358746 Parallel to MIPI CSI2 Bridge
> > > > > +
> > > > > +maintainers:
> > > > > +  - Marco Felsch <kernel@pengutronix.de>
> > > > > +
> > > > > +description: |-
> > > > > +  The Toshiba TC358746 converts a parallel video stream into a M=
IPI CSI-2
> > > > > +  stream. The direction can be either parallel-in -> csi-out or =
csi-in ->
> > > > > +  parallel-out The chip is programmable trough I2C and SPI but t=
he SPI
> > > > > +  interface is only supported in parallel-in -> csi-out mode.
> > > > > +
> > > > > +  Note that the current device tree bindings only support the
> > > > > +  parallel-in -> csi-out path.
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    const: toshiba,tc358746
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clocks:
> > > > > +    description:
> > > > > +      The phandle to the reference clock source. This correspond=
s to the
> > > > > +      hardware pin REFCLK.
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clock-names:
> > > > > +    const: refclk
> > > > > +
> > > > > +# The bridge can act as clock provider for the sensor. To enable=
 this support
> > > > > +# #clock-cells must be specified. Attention if this feature is u=
sed then the
> > > > > +# mclk rate must be at least: (2 * link-frequency) / 8
> > > > > +#                             `------------------=B4   ^
> > > > > +#                             internal PLL rate   smallest possi=
ble mclk-div
> > > > > +  "#clock-cells":
> > > > > +    const: 0
> > > > > +
> > > > > +  clock-output-names:
> > > > > +    description:
> > > > > +      The clock name of the MCLK output, the default name is tc3=
58746-mclk.
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  vddc-supply:
> > > > > +    description: Digital core voltage supply, 1.2 volts
> > > > > +
> > > > > +  vddio-supply:
> > > > > +    description: Digital I/O voltage supply, 1.8 volts
> > > > > +
> > > > > +  vddmipi-supply:
> > > > > +    description: MIPI CSI phy voltage supply, 1.2 volts
> > > > > +
> > > > > +  reset-gpios:
> > > > > +    description:
> > > > > +      The phandle and specifier for the GPIO that controls the c=
hip reset.
> > > > > +      This corresponds to the hardware pin RESX which is physica=
lly active low.
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  ports:
> > > > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > > > +    properties:
> > > > > +      port@0:
> > > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > > +        description: Input port
> > > > > +
> > > > > +        properties:
> > > > > +          endpoint:
> > > > > +            $ref: /schemas/media/video-interfaces.yaml#
> > > > > +            unevaluatedProperties: false
> > > > > +
> > > > > +            properties:
> > > > > +              hsync-active:
> > > > > +                enum:
> > > > > +                  - 0 # Hvalid active high
> > > > > +              vsync-active:
> > > > > +                enum:
> > > > > +                  - 0 # Vvalid active high
> > > > > +              bus-type:
> > > > > +                enum:
> > > > > +                  - 5 # Parallel
> > > > > +
> > > > > +            required:
> > > > > +              - hsync-active
> > > > > +              - vsync-active
> > > > =

> > > > Let's make bus-type required too, to prepare for BT.656 support.
> > > =

> > > I would have done it when the BT.656 support is added. Since the BT.6=
56
> > > don't require the sync signals I would have made a descision:
> > >  - either: hsync/vsync present -> parallel with external syncs, or
> > >  - bus-type present -> parallel bus with embedded syncs.
> > > =

> > > So we don't bother the system-integrator with specifying unnecessary
> > > properties. Also having v/hsync required in place with the bus-type (=
set
> > > to bt.656) can cause confusion about the final used mode.
> > =

> > The V4L2 fwnode framework can guess the type of the bus but it's not
> > recommended to use the feature.
> =

> Explicit bus types in DT indeed makes it easier for drivers, so if a
> device can support multiple bus types (even if not implemented yet in
> the corresponding drivers), the property should be there.

Okay, I will make it required.

> > Why do you have hsync-active and vsync-active if both are always zero? =
Can
> > the hardware not support other configuration?

Sure the device supports toggling the logic but it is not implemented.
So the bindings needs to enforce it to 0 right now. As soon as it is
implemented & tested, we can say that both is supported :)

Regards,
  Marco

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
