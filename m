Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58EEBC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PCRC9W/6/295Qxn6JPEpYknvfHejFQMbyYqSl/svIXs=; b=O5+ss9jw45YbHDy+Qdun93gxCH
	6NRheb4NvTCDPhZGWXVzYFPAh4qoyW1Uqw4Wecm5e2UrrIKeLi6mUsz9BrmunTK4AenOA01/Bsqxq
	VTspWwN9oMFDlN5ec3j0MrRsFGaXuQZUFDGSPuecUSYBaiW5eV3rGdeS1HwrpPJGtIbTDo4OgS7m7
	fm/XceaiDk1+hxAoa8d14rKnqnDEJTTrWfH40r3MFF65u0D1YxEVtdijepOYWCaNsM5ogLZXmGe/k
	Ze1tKmcYhoYLQfKI6D46/1X4WXAT3Qxxyi2+xWt+BPnS4dqvhBkQCNnJsOcV9SDz3PkoHvbrl2oA/
	RIXGnRvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIYOS-007uJF-NC; Fri, 11 Feb 2022 16:03:32 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIYOB-007u8w-4Y; Fri, 11 Feb 2022 16:03:22 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 1762F240004;
 Fri, 11 Feb 2022 16:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644595393;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9lDiPi/tEXd7VcxvvHOcpDWNMks+EpS4Jkm01UCTlRc=;
 b=Njwo0Z/T4I/lpemsH+MzNZOgM7d0zCmXm0S2Vs0CNNuRP7kW/I/FZocPzywZz1XRPLYjDN
 7PL2/kBWbq17PyLzNTbgScLkTgHGh8cSrGC5mFhbH1pEg37umjkj5OMUXhoKVE+X7aPlZe
 5qp4auB3tAAhRZdDkXVUA4WzSlkN2ZjeYJUUjV/ZHc9ybLhBITyrFvVwL3WgNiajsBsp0l
 pgalpyzLFd8TmzjtVL9/NXt3cTvBoWLodSUOx8GxYTIUhKmlgOHPB6zQC5Yu51eU9NSha3
 ZeKb/cbWBzWm1HS7Wegljp9nFB6hRCG4Vu4QwQo52Rz6tLQjmIvOt8uB2w3bDw==
Date: Fri, 11 Feb 2022 17:03:09 +0100
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 08/66] dt-bindings: media: Add Allwinner A31 MIPI
 CSI-2 bindings documentation
Message-ID: <YgaIvXr2GfmJUNLD@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-9-paul.kocialkowski@bootlin.com>
 <YgFELcVluEqr9LAH@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YgFELcVluEqr9LAH@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_080315_596970_76103083 
X-CRM114-Status: GOOD (  23.22  )
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
Content-Type: multipart/mixed; boundary="===============0583673276109362285=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0583673276109362285==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DLL0Q03AcECBpu52"
Content-Disposition: inline


--DLL0Q03AcECBpu52
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

Thanks for the review!

On Mon 07 Feb 22, 18:09, Laurent Pinchart wrote:
> Hi Paul,
>=20
> Thank you for the patch.
>=20
> On Sat, Feb 05, 2022 at 07:53:31PM +0100, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the Allwinner A31 MIPI
> > CSI-2 controller.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 142 ++++++++++++++++++
> >  1 file changed, 142 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,s=
un6i-a31-mipi-csi2.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-=
a31-mipi-csi2.yaml
> > new file mode 100644
> > index 000000000000..09207904b6db
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-=
csi2.yaml
> > @@ -0,0 +1,142 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2=
=2Eyaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-mipi-csi2
> > +      - items:
> > +          - const: allwinner,sun8i-v3s-mipi-csi2
> > +          - const: allwinner,sun6i-a31-mipi-csi2
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: MIPI D-PHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: Input port, connect to a MIPI CSI-2 sensor
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +            required:
> > +              - data-lanes
> > +
> > +        additionalProperties: false
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: Output port, connect to a CSI controller
> > +
> > +        properties:
> > +          reg:
> > +            const: 1
> > +
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +        additionalProperties: false
>=20
> The two ports should be required.

Agreed.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - phys
> > +  - phy-names
>=20
> And ports should be required here.

Sure!

Thanks,

Paul

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> > +  - resets
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> > +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> > +
> > +    mipi_csi2: csi@1cb1000 {
> > +        compatible =3D "allwinner,sun8i-v3s-mipi-csi2",
> > +                     "allwinner,sun6i-a31-mipi-csi2";
> > +        reg =3D <0x01cb1000 0x1000>;
> > +        interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks =3D <&ccu CLK_BUS_CSI>,
> > +                 <&ccu CLK_CSI1_SCLK>;
> > +        clock-names =3D "bus", "mod";
> > +        resets =3D <&ccu RST_BUS_CSI>;
> > +
> > +        phys =3D <&dphy>;
> > +        phy-names =3D "dphy";
> > +
> > +        ports {
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            mipi_csi2_in: port@0 {
> > +                reg =3D <0>;
> > +
> > +                mipi_csi2_in_ov5648: endpoint {
> > +                    data-lanes =3D <1 2 3 4>;
> > +
> > +                    remote-endpoint =3D <&ov5648_out_mipi_csi2>;
> > +                };
> > +            };
> > +
> > +            mipi_csi2_out: port@1 {
> > +                reg =3D <1>;
> > +
> > +                mipi_csi2_out_csi0: endpoint {
> > +                    remote-endpoint =3D <&csi0_in_mipi_csi2>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--DLL0Q03AcECBpu52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGiL0ACgkQ3cLmz3+f
v9H2kgf/YOpO7HNyL/f7yp3Rt82ZrAhqT1u/hMvsisSPYXG+gdT6t0QV9P8AKXJ6
jVbnmUXI9XnnLjSt1LyskT3j9xBA+2RwdbM/HwvHJy765Z3Dt5R/TBeY2hPltQgG
PBDHT4ZYnQdgd7DB4znvO58QNq8vXZaiD37l/aTLQQdjl5NSnc51GoHDlWNR2eEl
XjWyP7EH4Dwoq68Mx+iRmgJge3sI1Yod6dZ/0++pTMSgW3bqtXLBJLvhD9qBXYry
vfPD14/6JpNS1c2yImYIe266jNLd/+M5tPJhwVdHfnt1gdZLcASuf3I3P4KjXnqB
YueHalxGWSqPrxlcWc4RSW2KTpdl1w==
=8Pob
-----END PGP SIGNATURE-----

--DLL0Q03AcECBpu52--


--===============0583673276109362285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0583673276109362285==--

