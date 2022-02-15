Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74144C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Akdirll0D7QfUYe9zs4bid8QY/rmOtP4BV4iJxGEO38=; b=E4CXVNIxzSIx6YWjv6x0BWamCZ
	rszm+CqJURXOLSxDbDR9A/CxlUx5Eu46FJM2bg11BIQxFPOEkSKzD8aiMKIT2+qpGNQsCC/H2oMdq
	0x/YVZdkyyFUR+y4p6+fvOZYcYc1UeS9fPymCdVjRZMXeO+N/oS8aeAFOTV9QHs3ZEP5HQsrRFQ5m
	FDFQy3yGrS7bhBmYvNIpKSr/5+lmizks2v6e5wlNNGM3sm2/MAEM/jA8bJAjRNwpoJzeWFK3d7Doq
	yOPtTvg91H2lB4Jg+JAV233SnXkcE6W9CH4OJDUUIIFG8IZ+MgN00os39R8LP6kJwI8YTV+WIhdSD
	2s+vGnIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJunu-002Frv-P0; Tue, 15 Feb 2022 10:11:26 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJunR-002Fhc-HZ; Tue, 15 Feb 2022 10:11:04 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id D0DD31BF214;
 Tue, 15 Feb 2022 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644919855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gFSUgnMPM4RIULavl5LQNMn3BXMoJoSSok2BuLvqbxI=;
 b=f9e5T1eT9Sf20+5ubeUYInS9hRyyBcQ9k/EUA0vFe1tMUFPUuUH2kLPtEXrY1jRXt/ZKQi
 gKTDAsm6GMOdkmDuC7JCOqwsVXBT8+ciuqGc5tWJD4aYgSEdzMbGrK9YQCjto+hoILiWTe
 TxMbnz/nAbcsaXcfDRhpk60zu+nldhcPTql01RJqzVKtc4Id7dTmqFrK+2JC1Ee2XClYp2
 3AUfkxcNdaRHfMHKdo/NrGhNIgyqeWWbKV0FH+jjcSWosC9GzFXQUlBk9+hJ9PGLYxixkS
 BHKj5HL8a2/okirgTSubL2TXmuHkqyG3MNdl4zd6rDr3wnb1cQtiVO4X07wg/g==
Date: Tue, 15 Feb 2022 11:10:52 +0100
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
Message-ID: <Ygt8LF8qx3rnxlgp@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
 <YgqAv2vLimYgRwDS@aptenodytes>
 <YgqM3ZdMfEz+ZKo/@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YgqM3ZdMfEz+ZKo/@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_021057_908216_5655EA18 
X-CRM114-Status: GOOD (  41.01  )
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
Content-Type: multipart/mixed; boundary="===============4881052005915710249=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4881052005915710249==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZfQyJZmLCE9mH4eu"
Content-Disposition: inline


--ZfQyJZmLCE9mH4eu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Mon 14 Feb 22, 19:09, Laurent Pinchart wrote:
> Hi Paul,
>=20
> On Mon, Feb 14, 2022 at 05:18:07PM +0100, Paul Kocialkowski wrote:
> > On Mon 07 Feb 22, 17:51, Laurent Pinchart wrote:
> > > On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > > > This introduces YAML bindings documentation for the Allwinner A31 I=
mage
> > > > Signal Processor (ISP).
> > > >=20
> > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > ---
> > > >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++++++=
++++
> > > >  1 file changed, 117 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/allwinn=
er,sun6i-a31-isp.yaml
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6=
i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-isp.yaml
> > > > new file mode 100644
> > > > index 000000000000..2d87022c43ce
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-i=
sp.yaml
> > > > @@ -0,0 +1,117 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.y=
aml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tr=
ee Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - allwinner,sun6i-a31-isp
> > > > +      - allwinner,sun8i-v3s-isp
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: Bus Clock
> > > > +      - description: Module Clock
> > > > +      - description: DRAM Clock
> > >=20
> > > That's interesting, does the ISP have a dedicated DRAM ?
> >=20
> > It doesn't, it actually uses the main DRAM with the "mbus" interconnect.
> > The clock is probably for the DMA engine.
> >=20
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: bus
> > > > +      - const: mod
> > > > +      - const: ram
> > > > +
> > > > +  resets:
> > > > +    maxItems: 1
> > > > +
> > > > +  ports:
> > > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > > +
> > > > +    properties:
> > > > +      port@0:
> > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > +        description: CSI0 input port
> > > > +
> > > > +        properties:
> > > > +          reg:
> > > > +            const: 0
> > > > +
> > > > +          endpoint:
> > > > +            $ref: video-interfaces.yaml#
> > > > +            unevaluatedProperties: false
> > >=20
> > > If no other property than remote-endpoint are allowed, I'd write
> > >=20
> > >           endpoint:
> > >             $ref: video-interfaces.yaml#
> > > 	    remote-endpoint: true
> > >             additionalProperties: false
> > >=20
> > > Same below.
> > >=20
> > > > +
> > > > +        additionalProperties: false
> > > > +
> > > > +      port@1:
> > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > +        description: CSI1 input port
> > > > +
> > > > +        properties:
> > > > +          reg:
> > > > +            const: 0
> > >=20
> > > This should be 1.
> >=20
> > Correct, thanks!
> >=20
> > > > +
> > > > +          endpoint:
> > > > +            $ref: video-interfaces.yaml#
> > > > +            unevaluatedProperties: false
> > > > +
> > > > +        additionalProperties: false
> > > > +
> > > > +    anyOf:
> > > > +      - required:
> > > > +        - port@0
> > > > +      - required:
> > > > +        - port@1
> > >=20
> > > As ports are an intrinsic property of the ISP, both should be require=
d,
> > > but they don't have to be connected.
> >=20
> > Well the ISP does have the ability to source from either CSI0 and CSI1
> > but I don't really get the point of declaring both ports when only one
> > of the two controllers is present.
>=20
> If it's within an SoC I don't mind too much. What I usually insist on is
> declaring all ports even when no external devices are connected on the
> board. It may however be easier to implement things on the driver side
> when all the ports are declared, even for internal devices. I won't
> insist either way here.
>=20
> > > By the way, how do you select at runtime which CSI-2 RX the ISP gets =
its
> > > image stream from ? Is it configured through registers of the ISP ?
> >=20
> > Actually what the ISP gets is fully dependent on what is received by the
> > CSI controller it is connected to (which can be the mipi csi-2 controll=
er
> > or its direct parallel pins), so the configuration happens on the CSI s=
ide.
>=20
> OK, then how do you select at runtime which CSI the ISP gets its image
> stream from ? :-)

What is done in the driver is that all available csi(s) entities pads are l=
inked
to a single csi sink media pad, which allows userspace to enable one or the
other. If there's only one, it's enabled by default.

The actual stream source (isp_dev->proc.source) is selected at link_validate
time and the source bit is set in sun6i_isp_proc_enable.

I hope this answers your question!

Thanks,

Paul

> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - interrupts
> > > > +  - clocks
> > > > +  - clock-names
> > > > +  - resets
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > > +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> > > > +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> > > > +
> > > > +    isp: isp@1cb8000 {
> > > > +        compatible =3D "allwinner,sun8i-v3s-isp";
> > > > +        reg =3D <0x01cb8000 0x1000>;
> > > > +        interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > > > +        clocks =3D <&ccu CLK_BUS_CSI>,
> > > > +             <&ccu CLK_CSI1_SCLK>,
> > > > +             <&ccu CLK_DRAM_CSI>;
> > > > +        clock-names =3D "bus", "mod", "ram";
> > > > +        resets =3D <&ccu RST_BUS_CSI>;
> > > > +
> > > > +        ports {
> > > > +            #address-cells =3D <1>;
> > > > +            #size-cells =3D <0>;
> > > > +
> > > > +            port@0 {
> > > > +                reg =3D <0>;
> > > > +
> > > > +                isp_in_csi0: endpoint {
> > > > +                    remote-endpoint =3D <&csi0_out_isp>;
> > > > +                };
> > > > +            };
> > > > +        };
> > > > +    };
> > > > +
> > > > +...
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--ZfQyJZmLCE9mH4eu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmILfCwACgkQ3cLmz3+f
v9EwQwgAk/o403dFH/O+AgvwfNTZjkSOYhLmE9/4on9gCn/kX5el2y/KJ7C4m+K2
Cqp0BfXfUVqmv8k1Qpw4V6BJlDcJQQcrMS2RIoJts5lTnSNEN3D1aGGOrGZg4P9Z
zDY5FjhkWSBVKfbKtDQ1TIwtchj7R+N7sK+t8smxXtUwei80ZrvoMaCmFd8uNIow
v9tYf9pQtWJpB/uYEVu1MEikGizoVK3aZ7ZaAYBdwOuX9kfL4Q7trcIoSBVaEBre
Glk2JTBXXIL5qAYW9T0iM6L00JdqBTcM5dZYeXn3gxu4qlpmORCzbFAW09ec9utj
gFyqQy4XnnZ9VLpRpnClpgVP9T+I6A==
=dzzP
-----END PGP SIGNATURE-----

--ZfQyJZmLCE9mH4eu--


--===============4881052005915710249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4881052005915710249==--

