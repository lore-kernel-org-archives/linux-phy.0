Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7735C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uxqRgexN/dAqyy7R1yxg6F6xbWv3a652ITQ035xqk6A=; b=E0Mzo+Xdta1ZapLPrNcl5OfvM7
	Yrx/b4Bcyhr3lUWxM2HFs3oXTL2W+fPPLJCtQIYdPveP4vFoJpqL4GvbX7PDFihiBiQEcU0K/2uYL
	6PBCz4w4TWQOaFd480CX+93+WqFIzyWJN2D4vG0BcrSqGCEfwfTmLDHIWNHlDz0eLPkxgEl0HILud
	MtCsddvaZMhbBKpn429E0Irk8T8Da/4M2gLSXmFA25ZQS84lvW9wV8//2mL3ohJUjQGhQ25j9MeAF
	ZrbJbDWJdSukzczHVC/ToQsEJgxCsnYp1eaWwLeBONGMQSma7UpidHU9plp9gVveMjeKSqeBcU8q+
	H9oO2HlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXbS-007jLT-B6; Fri, 11 Feb 2022 15:12:54 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXbC-007jGJ-V1; Fri, 11 Feb 2022 15:12:42 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 2B19E1BF209;
 Fri, 11 Feb 2022 15:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644592353;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UtWBObtE4IkrC6h1yUcZW77RKDqVsXLhy4QmmGFNKO4=;
 b=ccsc7k/xzRCiUCIwcH++UiryHmcKwovXKWAbQ0BzGb8gXA7/c8bPP7QQpRxDTUfei/rYsO
 d2zRJkIzW4z/xEJVPa3feg2jB8zwr9sqda3PLMZgq3VJLgdEk06z3RUHSwBXd/OXAxJ2eM
 KlEVy+4ibDVuU1T0dMtE01z5jZ/TCudeLgPpcdB9swBmayu6bLsxSAGhcAxSZys48c74xl
 nL/iFCoeQaOpaTEgxvEpNM3GZbRmrgM9Q8jFSds66zhUkcvuEyHjQFOFZO68n6Y7H9e+Gi
 IAJig+PEZNDNOaCGhfhGel6U1f02I9kEIVUyRv9Rr7uxZ+Jw6iwN7Lvp1nKJ9A==
Date: Fri, 11 Feb 2022 16:12:29 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 05/66] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Message-ID: <YgZ83To26Dgy+JD4@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-6-paul.kocialkowski@bootlin.com>
 <YgZ6qsdO+SfTemPZ@robh.at.kernel.org>
MIME-Version: 1.0
In-Reply-To: <YgZ6qsdO+SfTemPZ@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_071239_326646_78D5C12B 
X-CRM114-Status: GOOD (  27.29  )
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
Content-Type: multipart/mixed; boundary="===============7881064556667311827=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7881064556667311827==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="C0Hx0xaxCNYFUf5H"
Content-Disposition: inline


--C0Hx0xaxCNYFUf5H
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri 11 Feb 22, 09:03, Rob Herring wrote:
> On Sat, Feb 05, 2022 at 07:53:28PM +0100, Paul Kocialkowski wrote:
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
> > index d0b541a461f3..22636c9fdab8 100644
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
> > +    enum:
> > +      - tx
> > +      - rx
> > +    default: tx
>=20
> Can you the phy mode to imply the direction?

So there was a first attempt at this which introduced a PHY submode but
it was concluded after discussions that the direction is not really a
mode of operation choice, in the sense that the D-PHY cannot be reconfigured
to behave in Rx or Tx mode: it is instead statically assigned to one role
or the other. This is why it feels more appropriate to describe it in the
device-tree.

See this thread from the previous iteration:
https://patchwork.linuxtv.org/project/linux-media/patch/20210115200141.1397=
785-3-paul.kocialkowski@bootlin.com/#128800

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--C0Hx0xaxCNYFUf5H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGfN0ACgkQ3cLmz3+f
v9E7MwgAgb6y0f+35BKNQMY0ApR9vBuccUbtMvfY5MRxfwFygHy+dHC03V+oFXWR
oh9Mb6Wc3RKnI6nyWPgoFzbz7KDXpHf9rubsuw9dZYtytY7cAVla5GHfJxLSZVzj
g7Em8TMkWD86KmX7jl2LtkUyjpuWZ2YWnZnS+s2fOHBMLbUAuc2I+lelXgKxLCTL
gluqLgtLSxn/T6tGheE5exmUTWV5Wq17QWtx+ganNYMEQoG9d0Q2sf1kE1eOocHF
8sSTdFPAzC/f6nhMYoXBiCIpTKtAMZ+1kTuBJDEEhPLTCQ/YKvxu4UfbV2W5EvLa
zi3iRUd2SKPMnAblAuD9zINCfUPEMQ==
=h8WY
-----END PGP SIGNATURE-----

--C0Hx0xaxCNYFUf5H--


--===============7881064556667311827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7881064556667311827==--

