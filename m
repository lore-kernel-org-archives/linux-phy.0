Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D55EAC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MCBoUKo0hHZ3lEtoevP9yebC4xMf2I15Xg9OcpK/Vt0=; b=yIY/RX2JLB/x1y4xp+VKMnl4Wt
	m9QjLaSNnXMLAd4uL3RiOyTmAF2FLCU7TeLGRXf1GohhAQIrBljuDHSxLwOohwZ7MrdrPhn/JUoNP
	mSbLS/noPmyfoSqILR0MpbJfswQjuASkGWDz44/8ZxeefyZNMvWtjnrRxtvuwUW16ASNPs50amfD/
	fkJT1DHaL6XP26JqP72i0JUXTURXiZWlVyXZkUFbiKzRKyqxpOCv3KmMWxxKXHK8/rVSsOTvxhNT/
	g25L8Di7gwvGz+Rqch53+f4l5lELWqkmfelZXTkRWo2ex4/vQCjlOPVNyHgaayiAhp32Eci6TRxj/
	MAA8gwtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXgz-007lqs-4z; Fri, 11 Feb 2022 15:18:37 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXft-007lD6-Gv; Fri, 11 Feb 2022 15:17:31 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id E31931C0010;
 Fri, 11 Feb 2022 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644592646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VXF0Q98TnY0VF6LJAgT1z6iuK0gMwIZwwneiqBq9XCk=;
 b=G8KjfCt1YjfMmLzINgPygwXjdiDJuTBXGcWdih6FT3BH8KxHmLHoIySqIwrDwRTnJqFzrH
 CI8LuS6bc5QZYy6LUti6DoVkMDbGujFz2h5EusKBgKQ8fdsJQd/CesNJIXQMkXP0sOSsMc
 Gqk0pXSP1BufwkzJbeQlNiQSB9QGEjEd6i3c7x151zt8HSGGhlotI0wxsr2ZlCWArCjgRu
 VcldH6O2ZkPYE47GF7YdHqeLsoQownp3RBGOPZkpCX/Yidwzj3adVOOiVhqBY+/xPGeW3s
 rbK9hv/QMEfMZwR0u+MwX0ZefOVSbjnSmfKE/CgcmmvB8Y6JcGFBcvpw1S72lw==
Date: Fri, 11 Feb 2022 16:17:22 +0100
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
Subject: Re: [PATCH v2 33/66] media: sun6i-csi: Rework register definitions,
 invert misleading fields
Message-ID: <YgZ+AgGD4n1ELpcA@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-34-paul.kocialkowski@bootlin.com>
 <20220209093945.uertj7wut72tximz@houat>
MIME-Version: 1.0
In-Reply-To: <20220209093945.uertj7wut72tximz@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_071729_882450_078FC58B 
X-CRM114-Status: GOOD (  18.23  )
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
Content-Type: multipart/mixed; boundary="===============4304933665613697624=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4304933665613697624==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nAZiK7IJGde0Oma+"
Content-Disposition: inline


--nAZiK7IJGde0Oma+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 09 Feb 22, 10:39, Maxime Ripard wrote:
> On Sat, Feb 05, 2022 at 07:53:56PM +0100, Paul Kocialkowski wrote:
> > This cleans up the register definitions a bit, adds a prefix, remove ma=
sks.
> > Registers are now fully defined, some additional fields were added when
> > needed. New format definitions are added for future use.
> >=20
> > Some fields are wrongly defined (inverted) in Allwinner litterature
> > (e.g. field vs frame prefixes), which is quite misleading. They are
> > now corrected to reflect their actual behavior.
>=20
> How was it tested?
>=20
> In particular, see
> https://lore.kernel.org/all/20180305093535.11801-7-maxime.ripard@bootlin.=
com/

No oscilloscope testing on my side to investigate the matter in depth,
so the polarities inversion is based on what you changed in the driver.

The idea is to change the register definitions to match what the hardware
appears to be doing (based on your good look at the oscilloscope) to avoid
the confusion of setting register fields that look contradictory.
It's just a rename and the behavior remains the same.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--nAZiK7IJGde0Oma+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGfgIACgkQ3cLmz3+f
v9EnTAgAhApdzmVhN+9E++U4/kVhkozTecPPIQB7VC2eBNFFzHUCTDxUeNLba3bZ
xSc4Hhkj5k1i34BXCJQr7fn4EJ65pEiT4cwzC66oPzS+xsEtguAiOPAWfRKPACdv
PXhdORHKu5tYfhCHuUcT4OOe+Bq5ug0sERvnkpeMvxmVOHmheguf1USya8NKz0DS
xKGn4Y8//yY1h3Ho2We4t9aTCG6W1MnpW5N45tb8vAK2y0+cOsObQvSRfEDkPvyA
BfE7zj7LWmdXO3KPEqycnULT0NtLKYzH7Qqj4bMxZYnNxSCq8k8rXbNUd0d+A3AF
NIXeKTJBhwrrsnAvBfNFkLSFfGS6tQ==
=dcHQ
-----END PGP SIGNATURE-----

--nAZiK7IJGde0Oma+--


--===============4304933665613697624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4304933665613697624==--

