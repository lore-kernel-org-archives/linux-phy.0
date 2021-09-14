Return-Path: <SRS0=TOd0=OE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58873C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 07:43:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09C0F61166
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 07:43:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 09C0F61166
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xN2I76qsqCRrvU8ofqpYev0YOm13Vaf9jxq7IOzDrNw=; b=r53yqdDigwHVfTuwKMuX6sQWiu
	VRj07/wdFVEoWkF1mY0k4PoC5RbFyolLGoHbtX2SNo5Zi+LDojejT9aCV1JBrjVku1HTm4MYbWVuk
	it/2DwBEp4XV2bjXhXdcaS/6z2CVKKSclyy0K73pJY0h4uPps6DyhZuf/ZxZrzdh/PvEkOPX6vOHO
	bAyPbUAgD/+wU4pGYO4VTrzIFiOUL4f2MTR/EukloK2WYc+5q1Z70dNmTGOLlLia+68VOonKUQjuX
	AFfcKQCA0sRSQPGRMUM5ds8+rfUgJJRuW9zdXPpOFNtkOHLYHDSyEfaNpgeLsKQeSfjziE5nXdtdC
	2S59sxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ36G-004XiW-Ij; Tue, 14 Sep 2021 07:43:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ362-004Xfv-8N; Tue, 14 Sep 2021 07:43:16 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E429820000B;
 Tue, 14 Sep 2021 07:43:08 +0000 (UTC)
Date: Tue, 14 Sep 2021 09:43:08 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 05/22] dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2
 input port
Message-ID: <YUBSjBMUk+nQSzRz@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-6-paul.kocialkowski@bootlin.com>
 <20210913080931.opbtx45sxqu52jxe@gilmour>
MIME-Version: 1.0
In-Reply-To: <20210913080931.opbtx45sxqu52jxe@gilmour>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_004314_612242_AE64DD56 
X-CRM114-Status: GOOD (  34.75  )
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
Content-Type: multipart/mixed; boundary="===============5722861618954892687=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5722861618954892687==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sgIICy+NNUkr1U2H"
Content-Disposition: inline


--sgIICy+NNUkr1U2H
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 13 Sep 21, 10:09, Maxime Ripard wrote:
> On Fri, Sep 10, 2021 at 08:41:30PM +0200, Paul Kocialkowski wrote:
> > The A31 CSI controller supports two distinct input interfaces:
> > parallel and an external MIPI CSI-2 bridge. The parallel interface
> > is often connected to a set of hardware pins while the MIPI CSI-2
> > bridge is an internal FIFO-ish link. As a result, these two inputs
> > are distinguished as two different ports.
> >=20
> > Note that only one of the two may be present on a controller instance.
> > For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> > dedicated to parallel.
> >=20
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
> >  .../media/allwinner,sun6i-a31-csi.yaml        | 75 +++++++++++++++----
> >  1 file changed, 62 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-cs=
i.yaml
> > index 8b568072a069..f4a686b77a38 100644
> > --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > @@ -61,6 +61,49 @@ properties:
> > =20
> >      additionalProperties: false
> > =20
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: Parallel input port, connect to a parallel sensor
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
> > +              bus-width:
> > +                enum: [ 8, 10, 12, 16 ]
> > +
> > +              pclk-sample: true
> > +              hsync-active: true
> > +              vsync-active: true
> > +
> > +            required:
> > +              - bus-width
> > +
> > +        additionalProperties: false
>=20
> You don't have to duplicate the entire definition there, you can just
> reference port:
>=20
> $ref: #/properties/port

And that would reference the local (previous) definition of the port node?
Sounds like a good thing indeed.

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
>=20
> port@0 is required?

It shouldn't be required. Does that call for a change here?

> And at the top-level, either ports or port are required too

Yes I guess that is true. Should that be a required+oneOf type of thing?

> >  required:
> >    - compatible
> >    - reg
> > @@ -89,19 +132,25 @@ examples:
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
> > +                };
> >              };
> >          };
> >      };
>=20
> I'd keep the original example and add one with the CSI bridge

Understood, will do.

Thanks,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--sgIICy+NNUkr1U2H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmFAUowACgkQ3cLmz3+f
v9HVfQf3ceKXmCCS1bAycLVMI86R8GkWo5vt/v5Osg8D3oUZIE/KwelraqzS+rGn
ZbqrtgjJQvxP/0WvM6ARVoMbU6KD37vSJSmVuGgGrbRhn3S4IJo3xOykxctr9/nL
wVwca3ymBipsiLU3adCbz1BhLYYzBTr8OXiJ/0NnZ3Gl8BMUetBSA8nd78E4gca1
PaY5+87njZqG8rfMO/yozuLLxnujfsDcyC97xiE1Fgflqn31q6wBWOZpmnhTkvEM
Y0WCR60gnaXkNKjPsoAXfGUa4gZO0rOR8U+Ppwf2LmyOZUqd+Nf8J6h8rsD6pLIO
b929E1fCp//Ou0qD6zu6MSDjQq5R
=c8hO
-----END PGP SIGNATURE-----

--sgIICy+NNUkr1U2H--


--===============5722861618954892687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5722861618954892687==--

