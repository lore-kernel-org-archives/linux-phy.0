Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B0EC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FPwktq3J7Q+ru0luUq21obwgtbDhvaMuJq83DmJX0QU=; b=J8GNwyRsy1Of8CUPizFub9b0tE
	sNSEu34rqHCWxqFnfIx+NZSEDIAFO8sqKUrxoTyiyZyk2mWVdd7F1nqb1f+wPTAXE2E6pdCWFhmIZ
	vL1jmXw2oYLoAZCSnBzQMhJnu4dD412/NE9sV4Rq5mXAo41RBF2sbwtpZTMaeapJ0dH9JMT/fYCga
	Qx2mby8bdobdFqd/TpaNAWkBF0Je5EsJjNZoP0CJHiTeoAMRoibSbRcabb63/kuTII919xq9DIiSx
	QSfC4WAf76ehD5Cm0gOg4r+A1KAJ+z71+9GOBuFss1TJ3Fk1MZgR+TEvJMnesuO18nJeFy6SKy3Sl
	oLODwglw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIYVH-007wLv-6Y; Fri, 11 Feb 2022 16:10:35 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIYUy-007wDF-CH; Fri, 11 Feb 2022 16:10:18 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id BDB041BF20E;
 Fri, 11 Feb 2022 16:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644595808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RUSzj3TUbMF7TmKv+bJklm/0kDLCRAw90iHxpF7FAk4=;
 b=oG0Nb1UueRz+/N3muogT9xtwBmkNo0QOCIq29+GWycUIpNnSFeefb4J/MbfnHYuTGx8NNK
 jWvPNJ2WjFEI+sClRGGThmR8P5QGosuLIaQmDikc6BAuoUY32F7klJuNWQnfecNZXaxuop
 8x3A9o9q0baiyhGQx7uxh2TQcR9C9a1i35V25YIjQvv3dHVrxCUjxIRx+KMesaOMmBHpyc
 zxSrQN07BFiopT4jQZCMXyqVl8ulBmNkFWxTp1vpeuAc0CkfPw0Nms7pasztSEwq+TWOtG
 nP+GDVcx5fVQCaw2EwJYMbg/vMEQe6ecyf9EByGBvOM8XVRX4tYJwclzHa7+1g==
Date: Fri, 11 Feb 2022 17:10:06 +0100
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
Subject: Re: [PATCH v2 07/66] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <YgaKXvP3rLOLR9VR@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-8-paul.kocialkowski@bootlin.com>
 <YgFCuaf007wd8sJy@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YgFCuaf007wd8sJy@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_081016_699325_0D7192C5 
X-CRM114-Status: GOOD (  37.43  )
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
Content-Type: multipart/mixed; boundary="===============0419158962769982541=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0419158962769982541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="N1FE44kMl1ZRScRS"
Content-Disposition: inline


--N1FE44kMl1ZRScRS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

Thanks for the review!

On Mon 07 Feb 22, 18:03, Laurent Pinchart wrote:
> Hi Paul,
>=20
> Thank you for the patch.
>=20
> On Sat, Feb 05, 2022 at 07:53:30PM +0100, Paul Kocialkowski wrote:
> > The A31 CSI controller supports two distinct input interfaces:
> > parallel and an external MIPI CSI-2 bridge. The parallel interface
> > is often connected to a set of hardware pins while the MIPI CSI-2
> > bridge is an internal FIFO-ish link. As a result, these two inputs
> > are distinguished as two different ports.
> >=20
> > Note that only one of the two may be present on a controller instance.
> > For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> > dedicated to parallel.
>=20
> Is it that only one of the two is present, or only one of the two is
> connected ? In the latter case I'd make both ports required, but with
> only one of them connected.

There are situations where the actual pins for parallel (port@0) are missing
and the controller is dedicated to its mipi csi-2 bridge (port@1), cases wh=
ere
the two are present and cases where the mipi csi-2 bridge doesn't exist.
So all in all it's really legit that only one port may be defined.

> > Update the binding with an explicit ports node that holds two distinct
> > port nodes: one for parallel input and one for MIPI CSI-2.
> >=20
> > This is backward-compatible with the single-port approach that was
> > previously taken for representing the parallel interface port, which
> > stays enumerated as fwnode port 0.
> >=20
> > Note that additional ports may be added in the future, especially to
> > support feeding the CSI controller's output to the ISP.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Acked-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  .../media/allwinner,sun6i-a31-csi.yaml        | 60 +++++++++++++++----
> >  1 file changed, 47 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-cs=
i.yaml
> > index 8b568072a069..3cc61866ea89 100644
> > --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > @@ -61,6 +61,34 @@ properties:
> > =20
> >      additionalProperties: false
> > =20
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: "#/properties/port"
> > +        unevaluatedProperties: false
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: MIPI CSI-2 bridge input port
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
> > +    anyOf:
> > +      - required:
> > +        - port@0
> > +      - required:
> > +        - port@1
> > +
> >  required:
> >    - compatible
> >    - reg
>=20
> Shouldn't you specify that either port or ports is required, but not
> both ? I'd also add a comment in the port node to tell it's deprecated,
> and that ports should be used instead.

Yes I agree on both points. I guess that should be a:

oneOf:
  - required:
    - ports
  - required:
    - port

(but feel free to correct me).

> > @@ -89,19 +117,25 @@ examples:
> >                        "ram";
> >          resets =3D <&ccu RST_BUS_CSI>;
> > =20
> > -        port {
> > -            /* Parallel bus endpoint */
> > -            csi1_ep: endpoint {
> > -                remote-endpoint =3D <&adv7611_ep>;
> > -                bus-width =3D <16>;
> > -
> > -                /*
> > -                 * If hsync-active/vsync-active are missing,
> > -                 * embedded BT.656 sync is used.
> > -                 */
> > -                 hsync-active =3D <0>; /* Active low */
> > -                 vsync-active =3D <0>; /* Active low */
> > -                 pclk-sample =3D <1>;  /* Rising */
> > +        ports {
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            port@0 {
> > +                reg =3D <0>;
> > +                /* Parallel bus endpoint */
> > +                csi1_ep: endpoint {
> > +                    remote-endpoint =3D <&adv7611_ep>;
> > +                    bus-width =3D <16>;
> > +
> > +                    /*
> > +                     * If hsync-active/vsync-active are missing,
> > +                     * embedded BT.656 sync is used.
> > +                     */
> > +                     hsync-active =3D <0>; /* Active low */
> > +                     vsync-active =3D <0>; /* Active low */
> > +                     pclk-sample =3D <1>;  /* Rising */
>=20
> Wrong indentation.

The double-space before /* Rising */ or something with the heading indent?

Thanks,

Paul

> > +                };
> >              };
> >          };
> >      };
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--N1FE44kMl1ZRScRS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGil4ACgkQ3cLmz3+f
v9E2OAf+M59HqYo3WH2kb71DPc2RBTe6OgFa2D6dEM/0E8JL5wiYWvOSJADrYUh3
ym1oUzOSoUsA8YlBPzSQ3oXMtRN3Hzc9sVL8RDmHw1+JhEqFo0nasFjA3UvgFCMp
frR0s8rvSu4r5bpPQheC1uMcfA0aSHT4W8w8oYJRdGK6nlkPJbQUbg+3jLDvd7pT
HwJoBd0+0oMuqFg6FdGP/vKt89mqIyl6AmZYnTSeofyX7/x40i1Zdtbvd/pMdYtv
C9kXGkP5WrXGVwKa3Mn9CMnOFPjNXmL2D56NHzwSagDzZLbscRablKBDBglxfuGa
dlRvMsPlp7qvlnv9J8aKV9hj/aVIHw==
=8dSa
-----END PGP SIGNATURE-----

--N1FE44kMl1ZRScRS--


--===============0419158962769982541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0419158962769982541==--

