Return-Path: <SRS0=TOd0=OE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7058DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 07:40:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2087A60238
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 07:40:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2087A60238
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xv5lQW8MvI7vqFIa2fa3KQqNcUqVk4c0i+cEjLkDFNM=; b=bbO43270hZLw8khAecNtkuKe9R
	brgrhdLMmItR8Qt7E4J7Tt4aXpvSDJ00vg+ySLaRk2xX2E/RPdIEmwDeHO7OmmSB7tf8zUP4eiilY
	JS6Rg2uIxhcZACG3dMBrxudrQGDqKlT8Dvg/b7uyrcimbNql8nXMR34EbIQXFmlk/tq14+WKZCDXa
	f6R3dbeJlQAmaGEd1TweRZ763Gi6T9jsGUL1J4JgzpxT4WsgpgXIj4+5VpSeXahGad3A5nZdrqwNf
	pteSY+l0/wuc6k+TAtcUzWpTm80vGVE+wj9lv61yPVxQ3yV3vEk0ldIeeqAE+AboirCc/qUNrpazF
	3yCqyH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ330-004Wr8-Mb; Tue, 14 Sep 2021 07:40:06 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ32m-004Wkj-B7; Tue, 14 Sep 2021 07:39:54 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A31FD100009;
 Tue, 14 Sep 2021 07:39:44 +0000 (UTC)
Date: Tue, 14 Sep 2021 09:39:44 +0200
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 03/22] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Message-ID: <YUBRwNxIuU0+/CyS@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-4-paul.kocialkowski@bootlin.com>
 <20210913080008.2rxa22ifisuu3dwn@gilmour>
MIME-Version: 1.0
In-Reply-To: <20210913080008.2rxa22ifisuu3dwn@gilmour>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_003952_697180_441B8232 
X-CRM114-Status: GOOD (  25.61  )
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
Content-Type: multipart/mixed; boundary="===============2516363892628573356=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2516363892628573356==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3sJ9a4xR7kppdInQ"
Content-Disposition: inline


--3sJ9a4xR7kppdInQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 13 Sep 21, 10:00, Maxime Ripard wrote:
> On Fri, Sep 10, 2021 at 08:41:28PM +0200, Paul Kocialkowski wrote:
> > The Allwinner A31 MIPI D-PHY block supports both tx and rx directions,
> > although each instance of the block is meant to be used in one
> > direction only. There will typically be one instance for MIPI DSI and
> > one for MIPI CSI-2 (it seems unlikely to ever see a shared instance).
> >=20
> > Describe the direction with a new allwinner,direction property.
> > For backwards compatibility, the property is optional and tx mode
> > should be assumed by default.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-=
mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-=
mipi-dphy.yaml
> > index d0b541a461f3..303bbaf3b915 100644
> > --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dp=
hy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dp=
hy.yaml
> > @@ -37,6 +37,18 @@ properties:
> >    resets:
> >      maxItems: 1
> > =20
> > +  allwinner,direction:
> > +    $ref: '/schemas/types.yaml#/definitions/string'
> > +    description: |
> > +      Direction of the D-PHY:
> > +      - "rx" for receiving (e.g. when used with MIPI CSI-2);
> > +      - "tx" for transmitting (e.g. when used with MIPI DSI).
> > +
> > +      When the property is missing, "tx" direction is assumed.
>=20
> You can provide this using default

Understood.

> > +    oneOf:
> > +      - const: tx
> > +      - const: rx
> > +
>=20
> enum?

Ah yes, enum feels like a better fit!

Thanks,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--3sJ9a4xR7kppdInQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmFAUb8ACgkQ3cLmz3+f
v9G6MQf+LFXtO+lLmczqO2FeIZ57ZBvDX1arKZiS0kXZP+nN3Y+7FjpJoF5qxpPd
M7yIhPccBdpJshGqMhFh4swhZeM2tgml5hQfLhXYWKObKp1UZXcfCQ9uQ0b6jX7l
pE94RTNuf7KUOalTc7SIIKEHGcCtelN2QP5QkN9dCVIQx/QR2LQPweh1Pyrejgnc
k8rktdvc9Fta19KFbvjC8ni1WFQfsZs0h3jo6xoMrC8w1cVEVvQ8dTkljzRJ+k4W
DFDBlmrHneE+pgmpDsHM9L2kKcYm/7EsKPc3KWkwQwTZ7QS220qH42+rDnpXtH8l
Z5HvmxYSzkOVIahP4X1VEmzWLeQ7rg==
=+9YF
-----END PGP SIGNATURE-----

--3sJ9a4xR7kppdInQ--


--===============2516363892628573356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2516363892628573356==--

