Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174CAC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 15:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=muiEL8UJu4Zd5QYiCQAaWmED2+Bdj1ohmfdNSg+/rsI=; b=WUhJ7mlBsnhd+nSEQMGGs2TshK
	L6CjOxGquBPn2dvNhSp3gEFYjrVJO0i3RdMuoeWQKjxFHEFA2+IadyGwR2NZMCmeuX1cUWWTz3J/4
	1/3IsoGkQcqABTWFG79xl9C3XkfSx+RF+7yVj62LtRucm7Y6vDwIytaS9SFYe9rfvC0dsMQQqolSx
	g1G6aq1rlMYE/Hlfxmt5T/IvMQ39XNZFPJXBrajDhuUEo5Ke6nfhZE1CPPRAtkNlbBRZ54X1VjnXD
	a2L3dvbFCEcw9rDXZWq5se68pKG39mddnozM74yU0O863FAy/ZGc6VfjH9RNBZX5Dxo9q8794pQOc
	vT4ZN7Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4bj-00HOes-E1; Tue, 01 Mar 2022 15:40:11 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4bV-00HOWn-4A; Tue, 01 Mar 2022 15:39:59 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id EED5AE0004;
 Tue,  1 Mar 2022 15:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646149194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CJF9kAqLBTCdNu/B3TIrFaAsnuyFBGYGgqC92Y3NAM0=;
 b=Y05qjqbzZSgUzSFtyXv108CqpvaVY1qm/a531dKA6A0FhzHSqxjBh5DbS86a6x9vC2Y2/x
 Aq+0wKYGdpdWgjgajh60qb2icanAjKm3qxzsDzDlIYvdJL4tqa9VwW4/Ok++BQzRdZWtxt
 sfzzvxOfHYX6cI59Eg1YzfxwuXLoIyZL455fKdibhspODeOczs30oxUrqHRpeHqa5eAHGe
 MtxQsPeTUBbH2xQfOl8WwGt4rNnXf08yeJkexzw4aTswiCfPp10RFz8fCt9KMPMM5BYQkG
 e/xTvUR889osw0kQ42PhukS0IY8c7iEVxx0Pdjh3bT2qpN1t0gCz9Hm3eskFhQ==
Date: Tue, 1 Mar 2022 16:39:51 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 21/66] media: sun6i-csi: Always set exclusive module
 clock rate
Message-ID: <Yh4+R+a2cFSKw/M5@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-22-paul.kocialkowski@bootlin.com>
 <YgqDxWwUeVQu+05O@paasikivi.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YgqDxWwUeVQu+05O@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_073957_467343_B3F6853A 
X-CRM114-Status: GOOD (  24.81  )
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
Content-Type: multipart/mixed; boundary="===============2436860694460133006=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2436860694460133006==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dPa+vTgjzzFmrD6g"
Content-Disposition: inline


--dPa+vTgjzzFmrD6g
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sakari,

On Mon 14 Feb 22, 18:31, Sakari Ailus wrote:
> Hi Paul,
>=20
> Thanks for the patchbomb.

I'll split it in the next revision.
=20
> On Sat, Feb 05, 2022 at 07:53:44PM +0100, Paul Kocialkowski wrote:
> > In some situations the default rate of the module clock is not the
> > required one for operation (for example when reconfiguring the clock
> > tree to use a different parent). As a result, always set the correct
> > rate for the clock (and take care of cleanup).
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 54 ++++++++++++++-----
> >  1 file changed, 41 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drive=
rs/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index 8155e9560164..2355088fdc37 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -856,28 +849,53 @@ static int sun6i_csi_resources_setup(struct sun6i=
_csi_device *csi_dev,
> >  		return PTR_ERR(csi_dev->clk_ram);
> >  	}
> > =20
> > +	if (of_device_is_compatible(dev->of_node, "allwinner,sun50i-a64-csi"))
> > +		clk_mod_rate =3D 300000000;
> > +	else
> > +		clk_mod_rate =3D 297000000;
>=20
> This would be nice to put in OF match data.
>=20
> Of course the driver did this already before the patch. The approach still
> scales badly.

Agreed, that could be another follow-up patch in the sun6i-csi rework serie=
s.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--dPa+vTgjzzFmrD6g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIePkcACgkQ3cLmz3+f
v9FlRQgAk+JPQei0UznXbFdxf9qgDlmo3OhqPLByuYqEJBTZxk6eozFrNB7Z96WV
XxR9/+oKrTXORQ9M4M/p1Taz95Bi/+yKrAHmNKXVFxN8YpZ+7ESTGPEXIqa7qqmb
L48LCTlrsqmJYG+FxZZBXlQ3hFyOttRd5mIeM6Ch3ZefGXQmPncLih6RT28jI9+a
qEhe64aNwMmsFyFltOLjDozCovN6THI6KCrejtL7+82OgquuQQEWh6nyxEDBmD67
UwGx82FwXVsjh+Krg1rYVcUKeWLcUcZIIBvF9io1fO/dlITJRUYbQeXGJNRAURbd
pByuB20nu4MZjDqILDfwnExEaV0Ncw==
=NP6t
-----END PGP SIGNATURE-----

--dPa+vTgjzzFmrD6g--


--===============2436860694460133006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2436860694460133006==--

