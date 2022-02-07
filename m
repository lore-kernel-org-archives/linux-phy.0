Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4352BC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 08:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=646dk6BQfjsmZR8UufwlrrfFu2YkfpI7uJfKTBogT5o=; b=S0kObUv3LkX/32I00a22LsEh8e
	egV7TOqODMQGjg8lB9QvNCL5d9siJUt5SoJOW+sm/fzn36Vnhl3yDkDaHdXoXBAi7DBL1LKgq/tR1
	0Eld1evfRaNYJVrppoGAqhX8bPXEZ5KVNFACpT6YCWtX89KRghX9/tZhR7L79kxKu6lr9viDZdN8U
	KmRmmhx8Fa628oe95i/C/HfUL+WE7Y0EUYdf8h0xni6WLxnREo3rmCmP7blPlIyCaWLvyp0Ebx8uA
	n/WfNjUbF+8jrtB//N4R8+nXHB0M2BP9fvLoraBBMekuz8spQrenxopHd1WyW4IAYfvCQpmJaQ42J
	4QJ1SBfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzd3-009OWP-Nk; Mon, 07 Feb 2022 08:44:09 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzcr-009OV8-ER; Mon, 07 Feb 2022 08:43:59 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7BAC8E000C;
 Mon,  7 Feb 2022 08:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644223426;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aqtEkkE4CxAPCqiyjvQlRqA4fyM6M/H+WbMg+4em3bk=;
 b=b/8uLavJfT0Pt7E5NoIji6JTEqyrnFW8AjRy2crSYjYa2+QxdwCGQc+rmkX8TpLU5/QH2B
 uXn/ZDuogrQ6mrqVH7TXf8npZfUUAvpaAkd7mavWrTl8CLvuYVYlLmJiQLtaw8z3KSzzHh
 0dClE6y7UCGqM1NJDXiyE8WDFc/dV6WZNEG7TJBNCL4fJmBdtmMsgNJEB/BHqTf5ryGxfR
 3y7pKlclTbaRTjTWl94cEd38+jWj3JUtyi6B+JFfjXc/S9vXarXeekHfSn1K95ltQdwScI
 KtNMhUPRgqM/sKC1j20xCDvOlzNXAmuXMF4bCE3bSsX+SdJGU3T7pWgvuBjZfA==
Date: Mon, 7 Feb 2022 09:43:43 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 02/66] dt-bindings: interconnect: sunxi: Add V3s mbus
 compatible
Message-ID: <YgDbv8aQEOOjwTb0@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-3-paul.kocialkowski@bootlin.com>
 <5386b1f5-9e75-4ce3-6641-bd7667c85d42@sholland.org>
MIME-Version: 1.0
In-Reply-To: <5386b1f5-9e75-4ce3-6641-bd7667c85d42@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_004357_805492_7D95795E 
X-CRM114-Status: GOOD (  18.36  )
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
Content-Type: multipart/mixed; boundary="===============8329482534267758737=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8329482534267758737==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="siWsic/QuhUMqNlN"
Content-Disposition: inline


--siWsic/QuhUMqNlN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat 05 Feb 22, 14:14, Samuel Holland wrote:
> On 2/5/22 12:53 PM, Paul Kocialkowski wrote:
> > Since the V3s uses the internal mbus, document its compatible.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4=
i-a10-mbus.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun=
4i-a10-mbus.yaml
> > index 29c9961ee2d8..b67bf9261a6a 100644
> > --- a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.yaml
> > +++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.yaml
> > @@ -31,6 +31,7 @@ properties:
> >        - allwinner,sun5i-a13-mbus
> >        - allwinner,sun8i-h3-mbus
> >        - allwinner,sun8i-r40-mbus
> > +      - allwinner,sun8i-v3s-mbus
>=20
> Please enable the expanded binding added in commit 245578ba9f03 ("dt-bind=
ings:
> arm: sunxi: Expand MBUS binding")[1] by adding the new compatible to the =
"if"
> block lower in the file. That way we can add V3S devfreq support in the f=
uture
> without changing that binding.

I had missed that new driver but surely I will expand the updated binding.

By the way do you have an explanation about the cell index given to the
interconnects (after &mbus)?

Paul

> Regards,
> Samuel
>=20
> [1]: https://git.kernel.org/torvalds/c/245578ba9f03
>=20
> >        - allwinner,sun50i-a64-mbus
> > =20
> >    reg:
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--siWsic/QuhUMqNlN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIA274ACgkQ3cLmz3+f
v9Hedwf/dd7O5weguOH+OM1fWPM+D01os8bCMg2BVi/eJAzHIsTRwpzNVnuC5GkL
jEPrckhWzLYI9QVdh9sxYGDe3WtMpG5L0mXxvfM0AruEZ8OA9Up1eZ/4a/pXtjmp
ge2AkXEcmDd2BbtlMHe8obvpO9se0uDYHjA1MgApK8F5fVwRNn2dmu1zE5dAhufc
GF3GDEPpS7MLe7ReDnGd9wAt109SEIxDgJ9XeiC1XdumNE5BAnT49+7Qq2Wy4zjf
HDyDxIoHke+4+66Gf03JpeGikvOIW/8C/rwwh8AWLopLrcNVzyh1AM4BVI83Yaf2
DMLRURk+Ae/bMrUUReDsYsgpsKZ42w==
=B81B
-----END PGP SIGNATURE-----

--siWsic/QuhUMqNlN--


--===============8329482534267758737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8329482534267758737==--

