Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49555ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 10:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I23UV5spaxX6Wcs+i93lU9hJClkxDOVl/NHm9mBvLM=; b=M0D2+XK84jVB3+
	owN2IjUkCGbystyEHYRJ0llkSfXfy2jU/KlsCATRDMmWSykjVQd2ne2+MEU/DelMl4J4Ak+IDgXKn
	8BXD+W+RI0j3oZUy+KI2z7gP7f2Ly+VONsTT4qa6CoivuB8T/Oef3cHdmojKbZNmWYG949H/PbHH6
	spw/Twq2UxSb85g7dpxPfMP5yLhQR9AeGCjVGrCIIlI8ZGK9YH7f7ScknNP7lnqtZxLgHSlHT6Buk
	VXpSDzFT0aLMtL/wKMoTZeasnWIylombQh1DSdz2PXIxlBvImc3fDRZz75ZHB9SyVFEIOFondq2IF
	llj+RLTCe65don0JcoIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDwj-00BKLw-Id; Mon, 19 Sep 2022 10:24:13 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDwg-00BKK4-47
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 10:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663583050; x=1695119050;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Q3k5NxbdpA9DLEGbySGsywAVLtIr0421Jxutctvx2NE=;
  b=WeexrhVhqwXjPnAmkWk+ifZ3wNCmI4TOL0/QItP3KL/bQiB5AdEvXo6G
   pFIcyZzbYh+Hn5FOoCG0koTzPgNKUpuxqJU8IrhijYHsb/fAPzopmph7n
   8PfTUk5zGL7egxqxZ8nc5R0sWHcUh93biT+R7Jv+xl+XZ+uJqsAQFbdrA
   KbPad26m2FowcAm2e6PymzpfRLdAK88wcvc6CuaFSdwRbyQOYVJTh93tY
   IFkJaH5/4o2iAGL/009bzKUFSoeIQ3/zBKbH8ONRoP5sQXzC+gcl9IiBh
   n2zylRy09+XZwExifwYQ3XYWPz7u63wkOubSHxAUgzd59kjCG+TjFqCJt
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="325652028"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="325652028"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 03:24:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="618436710"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 03:23:57 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with ESMTP id 94F3B202D2;
	Mon, 19 Sep 2022 13:23:55 +0300 (EEST)
Date: Mon, 19 Sep 2022 10:23:55 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	hverkuil@xs4all.nl, jacopo@jmondi.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Message-ID: <YyhDO4ohv47uIij2@paasikivi.fi.intel.com>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
 <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_032410_260604_E603EB7E 
X-CRM114-Status: GOOD (  32.98  )
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

Hi Marco,

On Mon, Sep 19, 2022 at 12:08:44PM +0200, Marco Felsch wrote:
> Hi Laurent,
> =

> On 22-09-18, Laurent Pinchart wrote:
> > Hi Marco,
> > =

> > Thank you for the patch.
> > =

> > On Fri, Sep 16, 2022 at 03:45:34PM +0200, Marco Felsch wrote:
> > > Add the bindings for the Toshiba TC358746 Parallel <-> MIPI-CSI bridge
> > > driver.
> > > =

> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > ---
> > > Changelog:
> > > =

> > > v2:
> > > - addded Robs r-b
> > > - s/than/then/
> > > - added hsync/vsync/bus-type, make hsync/vsync required
> > > - fix example indent
> > > =

> > >  .../bindings/media/i2c/toshiba,tc358746.yaml  | 179 ++++++++++++++++=
++
> > >  1 file changed, 179 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/toshi=
ba,tc358746.yaml
> > > =

> > > diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,tc35=
8746.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.ya=
ml
> > > new file mode 100644
> > > index 000000000000..1fa574400bc2
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.ya=
ml
> > > @@ -0,0 +1,179 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/i2c/toshiba,tc358746.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Toshiba TC358746 Parallel to MIPI CSI2 Bridge
> > > +
> > > +maintainers:
> > > +  - Marco Felsch <kernel@pengutronix.de>
> > > +
> > > +description: |-
> > > +  The Toshiba TC358746 converts a parallel video stream into a MIPI =
CSI-2
> > > +  stream. The direction can be either parallel-in -> csi-out or csi-=
in ->
> > > +  parallel-out The chip is programmable trough I2C and SPI but the S=
PI
> > > +  interface is only supported in parallel-in -> csi-out mode.
> > > +
> > > +  Note that the current device tree bindings only support the
> > > +  parallel-in -> csi-out path.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: toshiba,tc358746
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    description:
> > > +      The phandle to the reference clock source. This corresponds to=
 the
> > > +      hardware pin REFCLK.
> > > +    maxItems: 1
> > > +
> > > +  clock-names:
> > > +    const: refclk
> > > +
> > > +# The bridge can act as clock provider for the sensor. To enable thi=
s support
> > > +# #clock-cells must be specified. Attention if this feature is used =
then the
> > > +# mclk rate must be at least: (2 * link-frequency) / 8
> > > +#                             `------------------=B4   ^
> > > +#                             internal PLL rate   smallest possible =
mclk-div
> > > +  "#clock-cells":
> > > +    const: 0
> > > +
> > > +  clock-output-names:
> > > +    description:
> > > +      The clock name of the MCLK output, the default name is tc35874=
6-mclk.
> > > +    maxItems: 1
> > > +
> > > +  vddc-supply:
> > > +    description: Digital core voltage supply, 1.2 volts
> > > +
> > > +  vddio-supply:
> > > +    description: Digital I/O voltage supply, 1.8 volts
> > > +
> > > +  vddmipi-supply:
> > > +    description: MIPI CSI phy voltage supply, 1.2 volts
> > > +
> > > +  reset-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls the chip =
reset.
> > > +      This corresponds to the hardware pin RESX which is physically =
active low.
> > > +    maxItems: 1
> > > +
> > > +  ports:
> > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > +    properties:
> > > +      port@0:
> > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > +        description: Input port
> > > +
> > > +        properties:
> > > +          endpoint:
> > > +            $ref: /schemas/media/video-interfaces.yaml#
> > > +            unevaluatedProperties: false
> > > +
> > > +            properties:
> > > +              hsync-active:
> > > +                enum:
> > > +                  - 0 # Hvalid active high
> > > +              vsync-active:
> > > +                enum:
> > > +                  - 0 # Vvalid active high
> > > +              bus-type:
> > > +                enum:
> > > +                  - 5 # Parallel
> > > +
> > > +            required:
> > > +              - hsync-active
> > > +              - vsync-active
> > =

> > Let's make bus-type required too, to prepare for BT.656 support.
> =

> I would have done it when the BT.656 support is added. Since the BT.656
> don't require the sync signals I would have made a descision:
>  - either: hsync/vsync present -> parallel with external syncs, or
>  - bus-type present -> parallel bus with embedded syncs.
> =

> So we don't bother the system-integrator with specifying unnecessary
> properties. Also having v/hsync required in place with the bus-type (set
> to bt.656) can cause confusion about the final used mode.

The V4L2 fwnode framework can guess the type of the bus but it's not
recommended to use the feature.

Why do you have hsync-active and vsync-active if both are always zero? Can
the hardware not support other configuration?

-- =

Sakari Ailus

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
