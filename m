Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1972C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Mar 2022 16:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QXiO18J3VqS3DuZ01ekfTUD2Q6XcHa+AtpPaMRMG0xA=; b=N8dRULnCWsP1Yg614DLHHxOfPv
	G1X3qwukgY0E9H9hsIojMclLbNlSj7T4uf1mfj84v3UFTHGM7tGKGjcJ5LZIFrkiaZEDqnopkbXNZ
	QJGOyqUuyeAl9CHrChXArdRrCPAwYT+Hc2THsJSbbsib2cB+7agzG/r/+iUfb7tcHajKff5BII6vb
	SYz//9Wiu1xOrPVaSK63u1zexTuBFAqerZFv1qA7fgvWvqXJl8R+Hj6PNWnudGDr1whBT/0ejEtjJ
	voTEte+BTPcPRcu1eg25CM3F7cYEUteKvJF2vc4WP76I3OJ8a8AWDuem8SOJphx5ynWuq2O5Hl9ni
	DcAIK5vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUssV-00GjuP-8w; Thu, 17 Mar 2022 16:21:31 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUssH-00Gjro-UL; Thu, 17 Mar 2022 16:21:20 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 01AC0E000E;
 Thu, 17 Mar 2022 16:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1647534070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p+cYBkfFFvELqWc9QhQrIx+yztmy6I4JHGArTu/5pHI=;
 b=DTjpkPO+Rd8PPKRBmDgIFf8CocPlPj+9wu7TQwKkH/W0cTGtcxwD+qkLdZ4vVrrK5894tJ
 qjWmm6zNPvtp7WuOoZYPoAABdrfPmfdjfZP5alH9VGaORL5zNcW1tO/qyUMSX6N9AfWvHb
 9FtpA38vZpWNVGuIAL8VAY/jdqsLRy9GRiOiezU+eavHdCHz2CqFaHFQfKAU0Qa3D5f8Xl
 ef2mEmAUL09Sfh6bPrDXj7UogiwjaJWP1CmTH1wXKu32D4wRi1/kLzHE7rWzx9Dm32lTYK
 W0DPmtj0k73bDzoXYiEafY2Qh/JG7P24sh+DGhwDqUxrQlAK6mlG4BGScugF8A==
Date: Thu, 17 Mar 2022 17:21:07 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 7/9] dt-bindings: media: Add Allwinner A83T MIPI CSI-2
 bindings documentation
Message-ID: <YjNf827KuySLowK1@aptenodytes>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-8-paul.kocialkowski@bootlin.com>
 <YjHlisNfdobeAta7@paasikivi.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YjHlisNfdobeAta7@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_092118_637007_BA9303AE 
X-CRM114-Status: GOOD (  25.32  )
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
Content-Type: multipart/mixed; boundary="===============4716634582914912415=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4716634582914912415==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iiX+RlDO9qayM+ej"
Content-Disposition: inline


--iiX+RlDO9qayM+ej
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sakari,

On Wed 16 Mar 22, 15:26, Sakari Ailus wrote:
> Hi Paul,
>=20
> Thanks for the patch.

And thanks for the review!

> On Wed, Mar 02, 2022 at 11:07:37PM +0100, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the Allwinner A83T
> > MIPI CSI-2 controller.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 138 ++++++++++++++++++
> >  1 file changed, 138 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,s=
un8i-a83t-mipi-csi2.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a8=
3t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i=
-a83t-mipi-csi2.yaml
> > new file mode 100644
> > index 000000000000..75121b402435
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi=
-csi2.yaml
> > @@ -0,0 +1,138 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi=
2.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: allwinner,sun8i-a83t-mipi-csi2
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
> > +      - description: MIPI-specific Clock
> > +      - description: Misc CSI Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +      - const: mipi
> > +      - const: misc
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
> > +              clock-lanes:
> > +                maxItems: 1
>=20
> Does the hardware support lane reordering? If not, the property should be
> omitted here.

I'm not sure what this relates to. Is it about inverting the clock lane with
a data lane? I'm a bit confused about logical vs physical lane in the conte=
xt
of MIPI CSI-2.

The controller has dedicated pins for the clock and data lanes and supports
filtering packets based on virtual channel or data type.

Are the clock-lanes and data-lanes only relevant for reordering?
IIRC they are also necessary to get the lanes count in the driver.

> I can also remove the three lines here while applying the patches.

I think this series will need another iteration anyway, so let's wait.

Paul

> > +
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
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
> > +    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
> > +
> > +    mipi_csi2: csi@1cb1000 {
> > +        compatible =3D "allwinner,sun8i-a83t-mipi-csi2";
> > +        reg =3D <0x01cb1000 0x1000>;
> > +        interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks =3D <&ccu CLK_BUS_CSI>,
> > +                 <&ccu CLK_CSI_SCLK>,
> > +                 <&ccu CLK_MIPI_CSI>,
> > +                 <&ccu CLK_CSI_MISC>;
> > +        clock-names =3D "bus", "mod", "mipi", "misc";
> > +        resets =3D <&ccu RST_BUS_CSI>;
> > +
> > +        ports {
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            mipi_csi2_in: port@0 {
> > +                reg =3D <0>;
> > +
> > +                mipi_csi2_in_ov8865: endpoint {
> > +                    data-lanes =3D <1 2 3 4>;
> > +
> > +                    remote-endpoint =3D <&ov8865_out_mipi_csi2>;
> > +                };
> > +            };
> > +
> > +            mipi_csi2_out: port@1 {
> > +                reg =3D <1>;
> > +
> > +                mipi_csi2_out_csi: endpoint {
> > +                    remote-endpoint =3D <&csi_in_mipi_csi2>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
>=20
> --=20
> Kind regards,
>=20
> Sakari Ailus

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--iiX+RlDO9qayM+ej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIzX/MACgkQ3cLmz3+f
v9E+pQf+IeGzh1lXPZrMZDTECUlOPK5l/zgJtpRtE5Gd7qzKbZm59v2L4YYnaBzC
uT+MIgMHxJtyX90UobiXOilMW/yxilQFh/i00T4HMXEZ+VFxY6wVVUZt0/yZM33n
U3EqJqMWT/cb14jgNFBi9jEX7Y08cRih1u8JZxnDBDnq/1KZL/csvquJ2Ljwczw0
cMOQ+1L8liSsQiq7AlorcZLuFSLttMlbIZg+E2u9FNSBKcoF1iUpsDhSggXEVvs9
rVxpT+YhxM6hNls7XR3LyeE7KdAfdcub5JFhUiq7oTJxQK+K6/0IWv8qBrq35k3u
qcCt2yH9UO9dmAyhBky+qbS06yaJjA==
=IJLv
-----END PGP SIGNATURE-----

--iiX+RlDO9qayM+ej--


--===============4716634582914912415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4716634582914912415==--

