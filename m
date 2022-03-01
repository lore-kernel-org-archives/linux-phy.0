Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65253C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 15:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bMPw+mp1XJ2PvWW+ZMMlrHUexGrHJWvgpx/fASq14iM=; b=V8n2ujSDUMpYcPRMFbAqWvgkGh
	18EeAQbVquZTnG6IQddOKYvVp2nCH20daT/BXSuLPJjyMYD32USapnisJdJQjblyoZqEaOue2JZXt
	j8VgypoAHPdZe40nF3dLNbh+I6kvzqP2Alm+xlu7HeK72sH4xv8YirNc+53h4OfltGjhxRoclcDLB
	Ne1EVj8K+JnSqaAdvWSD6heuwouVE4efo5pLSFkHdLLf+GKNAfTvYmWB1njsQA9YhxlO8E2Wg9nu1
	uo3mxLhslibCV7pAWmpvavJHBvF/+IFBHHU6TSz7LkNmi4eR8BW7T9ujo9m/IF26AvdFBx3VoArb7
	Ssf5tkLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4ay-00HON8-Ri; Tue, 01 Mar 2022 15:39:24 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4al-00HOFu-Fa; Tue, 01 Mar 2022 15:39:14 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 6C20920000F;
 Tue,  1 Mar 2022 15:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646149143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gZwW+QUl9JqH7P5EOlb5s2sEQ5b/N8R2bfw+OnxsFyU=;
 b=BNMRN3Qpo5zcIE9QBdb+7PBRlRqgZYzbGacWpJLyELN10PkQb7+c4iXMTIE+aCJX5ktAez
 SsFfHpsuMI3vTIfm2cDezkcRh0OljJL6qBWqi57Ch4LqYi/1WrVSIaxBAtvtm3ElegU1Pz
 mBN7jA3BbvXTEAvIJj0Dshv/DK6u/EmRrWwK5vELHwIwUjB8MCCh2uTfdqVQXOfpmxk9qB
 KYJKd9lCOJx0sosmbGH9EHy0wEo113bMO/cDQKrCvo4u7RcIGrD0JGmcTuPzv5bxSfk/dg
 y1vLBucIUXn77lNHYgl01o68BCXRpYoRDoEnw4DkUDTj6ArYpTcVZx6vqgxtcw==
Date: Tue, 1 Mar 2022 16:38:59 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
Message-ID: <Yh4+E9el5NdQ7qJq@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
 <YgqAv2vLimYgRwDS@aptenodytes>
 <YgqM3ZdMfEz+ZKo/@pendragon.ideasonboard.com>
 <Ygt8LF8qx3rnxlgp@aptenodytes>
 <Ygt9j+rwEC+2aUjH@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <Ygt9j+rwEC+2aUjH@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_073911_928722_972FAD86 
X-CRM114-Status: GOOD (  54.82  )
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
Content-Type: multipart/mixed; boundary="===============5309823586312636168=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5309823586312636168==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nHoejL1ruAig0FXy"
Content-Disposition: inline


--nHoejL1ruAig0FXy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

Looks like I didn't follow-up here.

On Tue 15 Feb 22, 12:16, Laurent Pinchart wrote:
> Hi Paul,
>=20
> On Tue, Feb 15, 2022 at 11:10:52AM +0100, Paul Kocialkowski wrote:
> > On Mon 14 Feb 22, 19:09, Laurent Pinchart wrote:
> > > On Mon, Feb 14, 2022 at 05:18:07PM +0100, Paul Kocialkowski wrote:
> > > > On Mon 07 Feb 22, 17:51, Laurent Pinchart wrote:
> > > > > On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > > > > > This introduces YAML bindings documentation for the Allwinner A=
31 Image
> > > > > > Signal Processor (ISP).
> > > > > >=20
> > > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > > ---
> > > > > >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++=
++++++++
> > > > > >  1 file changed, 117 insertions(+)
> > > > > >  create mode 100644 Documentation/devicetree/bindings/media/all=
winner,sun6i-a31-isp.yaml
> > > > > >=20
> > > > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,=
sun6i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6=
i-a31-isp.yaml
> > > > > > new file mode 100644
> > > > > > index 000000000000..2d87022c43ce
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a=
31-isp.yaml
> > > > > > @@ -0,0 +1,117 @@
> > > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > > +%YAML 1.2
> > > > > > +---
> > > > > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-i=
sp.yaml#
> > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > +
> > > > > > +title: Allwinner A31 Image Signal Processor Driver (ISP) Devic=
e Tree Bindings
> > > > > > +
> > > > > > +maintainers:
> > > > > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > > +
> > > > > > +properties:
> > > > > > +  compatible:
> > > > > > +    enum:
> > > > > > +      - allwinner,sun6i-a31-isp
> > > > > > +      - allwinner,sun8i-v3s-isp
> > > > > > +
> > > > > > +  reg:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  interrupts:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  clocks:
> > > > > > +    items:
> > > > > > +      - description: Bus Clock
> > > > > > +      - description: Module Clock
> > > > > > +      - description: DRAM Clock
> > > > >=20
> > > > > That's interesting, does the ISP have a dedicated DRAM ?
> > > >=20
> > > > It doesn't, it actually uses the main DRAM with the "mbus" intercon=
nect.
> > > > The clock is probably for the DMA engine.
> > > >=20
> > > > > > +
> > > > > > +  clock-names:
> > > > > > +    items:
> > > > > > +      - const: bus
> > > > > > +      - const: mod
> > > > > > +      - const: ram
> > > > > > +
> > > > > > +  resets:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  ports:
> > > > > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > > > > +
> > > > > > +    properties:
> > > > > > +      port@0:
> > > > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > > > +        description: CSI0 input port
> > > > > > +
> > > > > > +        properties:
> > > > > > +          reg:
> > > > > > +            const: 0
> > > > > > +
> > > > > > +          endpoint:
> > > > > > +            $ref: video-interfaces.yaml#
> > > > > > +            unevaluatedProperties: false
> > > > >=20
> > > > > If no other property than remote-endpoint are allowed, I'd write
> > > > >=20
> > > > >           endpoint:
> > > > >             $ref: video-interfaces.yaml#
> > > > > 	    remote-endpoint: true
> > > > >             additionalProperties: false
> > > > >=20
> > > > > Same below.
> > > > >=20
> > > > > > +
> > > > > > +        additionalProperties: false
> > > > > > +
> > > > > > +      port@1:
> > > > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > > > +        description: CSI1 input port
> > > > > > +
> > > > > > +        properties:
> > > > > > +          reg:
> > > > > > +            const: 0
> > > > >=20
> > > > > This should be 1.
> > > >=20
> > > > Correct, thanks!
> > > >=20
> > > > > > +
> > > > > > +          endpoint:
> > > > > > +            $ref: video-interfaces.yaml#
> > > > > > +            unevaluatedProperties: false
> > > > > > +
> > > > > > +        additionalProperties: false
> > > > > > +
> > > > > > +    anyOf:
> > > > > > +      - required:
> > > > > > +        - port@0
> > > > > > +      - required:
> > > > > > +        - port@1
> > > > >=20
> > > > > As ports are an intrinsic property of the ISP, both should be req=
uired,
> > > > > but they don't have to be connected.
> > > >=20
> > > > Well the ISP does have the ability to source from either CSI0 and C=
SI1
> > > > but I don't really get the point of declaring both ports when only =
one
> > > > of the two controllers is present.
> > >=20
> > > If it's within an SoC I don't mind too much. What I usually insist on=
 is
> > > declaring all ports even when no external devices are connected on the
> > > board. It may however be easier to implement things on the driver side
> > > when all the ports are declared, even for internal devices. I won't
> > > insist either way here.
> > >=20
> > > > > By the way, how do you select at runtime which CSI-2 RX the ISP g=
ets its
> > > > > image stream from ? Is it configured through registers of the ISP=
 ?
> > > >=20
> > > > Actually what the ISP gets is fully dependent on what is received b=
y the
> > > > CSI controller it is connected to (which can be the mipi csi-2 cont=
roller
> > > > or its direct parallel pins), so the configuration happens on the C=
SI side.
> > >=20
> > > OK, then how do you select at runtime which CSI the ISP gets its image
> > > stream from ? :-)
> >=20
> > What is done in the driver is that all available csi(s) entities pads a=
re linked
> > to a single csi sink media pad, which allows userspace to enable one or=
 the
> > other. If there's only one, it's enabled by default.
> >=20
> > The actual stream source (isp_dev->proc.source) is selected at link_val=
idate
> > time and the source bit is set in sun6i_isp_proc_enable.
> >=20
> > I hope this answers your question!
>=20
> Yes it does, thank you.
>=20
> While this works, it makes life a bit more complicated for userspace, as
> switching between the two sources require disabling the link first and
> then enabling the new one. This is something that caused issues in the
> libcamera simple pipeline handler, I ended up having to implement a
> workaround.

That surprises me a bit, I thought this was a typical use-case for links.
So the fact that it's a two-step process causes issues somehow?

> Could you instead have two sink pads for the ISP, and select the sensor
> at stream on time instead of link validation time by checking which link
> is enabled ? If no links or both links are enabled, you can then return
> an error.

Yes that's totally doable.

There's a similar situation with the sun6i-csi bridge where the source pad
has two possible links: one for routing to sun6i-csi capture (video device)
and one for routing to the isp entity.

Would that also be best represented as two pads?

> Ideally I'd say such internal routing should use the new V4L2 subdev
> routing API that is currently being implemented (see [1]), but I don't
> know when it will land, and I don't want to delay your patch series.
>=20
> [1] https://lore.kernel.org/linux-media/20211130141536.891878-28-tomi.val=
keinen@ideasonboard.com

I'm still a bit confused what problem this is trying to solve.
My understanding was that the current pad/link API allows representing comp=
lex
topologies and switching different paths with link enable/disable.

Cheers,

Paul
=20
> > > > > > +
> > > > > > +required:
> > > > > > +  - compatible
> > > > > > +  - reg
> > > > > > +  - interrupts
> > > > > > +  - clocks
> > > > > > +  - clock-names
> > > > > > +  - resets
> > > > > > +
> > > > > > +additionalProperties: false
> > > > > > +
> > > > > > +examples:
> > > > > > +  - |
> > > > > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > > > > +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> > > > > > +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> > > > > > +
> > > > > > +    isp: isp@1cb8000 {
> > > > > > +        compatible =3D "allwinner,sun8i-v3s-isp";
> > > > > > +        reg =3D <0x01cb8000 0x1000>;
> > > > > > +        interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +        clocks =3D <&ccu CLK_BUS_CSI>,
> > > > > > +             <&ccu CLK_CSI1_SCLK>,
> > > > > > +             <&ccu CLK_DRAM_CSI>;
> > > > > > +        clock-names =3D "bus", "mod", "ram";
> > > > > > +        resets =3D <&ccu RST_BUS_CSI>;
> > > > > > +
> > > > > > +        ports {
> > > > > > +            #address-cells =3D <1>;
> > > > > > +            #size-cells =3D <0>;
> > > > > > +
> > > > > > +            port@0 {
> > > > > > +                reg =3D <0>;
> > > > > > +
> > > > > > +                isp_in_csi0: endpoint {
> > > > > > +                    remote-endpoint =3D <&csi0_out_isp>;
> > > > > > +                };
> > > > > > +            };
> > > > > > +        };
> > > > > > +    };
> > > > > > +
> > > > > > +...
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--nHoejL1ruAig0FXy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIePhMACgkQ3cLmz3+f
v9H0gwf9HtEyW3FZKBulFC3rF9aAlSw7xuWFNCVcO7Fv18GQhhxC90OtUX8w9af0
uk6YiGR8+2/PRBwcjWieLCOMBYXxiCMtyWiKI2agrQ/AE4Mf4t+5hxoYBk14mtn1
k3Wp5WGtcyLQc6WpTpCHzHaczulPVMNofP4Llxbd+yRIiLY5se12LSDsylBriqVX
mzhD55G/oxHRaqvko0/LnqVitWExJnBNJB+xfKQf924a+1DPfiKT8l1b08IBXrUE
Uade4L3l8B9sikpoEsO8N69FCwaei5Qa6UkrRtcdEJRqE2FOeY+vvcXVbQsfo+Nt
jmZiyabuNPb1owIsSvozwPmmtT780A==
=jWNV
-----END PGP SIGNATURE-----

--nHoejL1ruAig0FXy--


--===============5309823586312636168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5309823586312636168==--

