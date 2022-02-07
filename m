Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0187C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 09:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9uIAwESFI0OJiEK2UTZwMBKq5z7coAT9ZWge18EJ7dA=; b=q+MA410lXQypo2jESKttE0ggoH
	myRbizBHAkAB/jY9xC7BvIPvUxZ5w3MMKSSteY7qOR/hK/TC+594OxxOfwqu4zgcxsjygMcYSN1qb
	CiU3iaAm37kf2RMDkfBoGb/xgH7jtTcoNYKuDAFaBV3ybNlFZoe8fSKCdTyqpeyxInWY6Nd2P4ih4
	GfB1hmEHTCW58hqVaxRRzSe2wgsCQ7i9/vjzmCPbgX/W6bRoB4cCLzJDBdHSfVclhQ7eWMJzDcp+A
	e1VHQV+zqBW7dkc4P4RCdE1iUZAh/UxIlrfHjMz1upCMajEt5CGGqAyS8shtWUG/zH0A/KPtWiz3C
	Xze/W5aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0Zf-009c0z-2L; Mon, 07 Feb 2022 09:44:43 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0ZK-009bue-Mc; Mon, 07 Feb 2022 09:44:32 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7CCA8240008;
 Mon,  7 Feb 2022 09:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644227059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6KUt7aT0vf3HkBvqg1m3IH1dZxNe1djrpK9xW+fnoQw=;
 b=NkrfXNXYCHbTieByp9pVKjdSsJHaXqLnlqhNJGbny2eQ/2CsZrUdW2mSW8BFideJw1mHR7
 15E1pOBLcS9Zp/1a1+f6oN2t/XT5OKikI5lpiYSLG2Zsg02H2FT2KS4iKkG/crYs0wRf/d
 LdAbBUGvjGFfl0ceKgyWRSvFGkoenC8W/DHCeWzBHaqNAWaq5hcmZziIcYMn2MBYgGQERM
 SJJqkl47m6fRQi+eSFynQYJiS+deVZKhB4CRpVfmFn9Iveedvri6/XWxuSJSUDSrowXNWy
 N2qKe3FTk9/WTFe/Qpb4KssN0vY9p4sxkx+Snv5XDpdBc1wcZwbKDvlk4nw8Nw==
Date: Mon, 7 Feb 2022 10:44:16 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-staging@lists.linux.dev, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 02/66] dt-bindings: interconnect: sunxi: Add V3s mbus
 compatible
Message-ID: <YgDp8HzmcS8Nkn0q@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <5386b1f5-9e75-4ce3-6641-bd7667c85d42@sholland.org>
 <YgDbv8aQEOOjwTb0@aptenodytes> <8021451.T7Z3S40VBb@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <8021451.T7Z3S40VBb@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_014423_138633_C0136147 
X-CRM114-Status: GOOD (  24.58  )
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
Content-Type: multipart/mixed; boundary="===============7667231817059558479=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7667231817059558479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="10LvNQVJYUIIwFrj"
Content-Disposition: inline


--10LvNQVJYUIIwFrj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Mon 07 Feb 22, 09:50, Jernej =C5=A0krabec wrote:
> Hi Paul,
>=20
> Dne ponedeljek, 07. februar 2022 ob 09:43:43 CET je Paul Kocialkowski=20
> napisal(a):
> > Hi,
> >=20
> > On Sat 05 Feb 22, 14:14, Samuel Holland wrote:
> > > On 2/5/22 12:53 PM, Paul Kocialkowski wrote:
> > > > Since the V3s uses the internal mbus, document its compatible.
> > > >=20
> > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > ---
> > > >=20
> > > >  .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  |=
 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >=20
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.
> > > > yaml
> > > > b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.
> > > > yaml index 29c9961ee2d8..b67bf9261a6a 100644
> > > > ---
> > > > a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.
> > > > yaml +++
> > > > b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-m=
bus.
> > > > yaml> >=20
> > > > @@ -31,6 +31,7 @@ properties:
> > > >        - allwinner,sun5i-a13-mbus
> > > >        - allwinner,sun8i-h3-mbus
> > > >        - allwinner,sun8i-r40-mbus
> > > >=20
> > > > +      - allwinner,sun8i-v3s-mbus
> > >=20
> > > Please enable the expanded binding added in commit 245578ba9f03
> > > ("dt-bindings: arm: sunxi: Expand MBUS binding")[1] by adding the new
> > > compatible to the "if" block lower in the file. That way we can add V=
3S
> > > devfreq support in the future without changing that binding.
> >=20
> > I had missed that new driver but surely I will expand the updated bindi=
ng.
> >=20
> > By the way do you have an explanation about the cell index given to the
> > interconnects (after &mbus)?
>=20
> This is mbus channel. You can find appropriate one checking DRAM driver i=
n U-
> Boot, where mbus is configured.

Thanks, that's exactly what I was looking for! Looks like in my case
MBUS_PORT_CSI will be used both for CSI and ISP.

For the record it's also defined in the BSP kernel at:
include/linux/sunxi_mbus.h

Thanks,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > Paul
> >=20
> > > Regards,
> > > Samuel
> > >=20
> > > [1]: https://git.kernel.org/torvalds/c/245578ba9f03
> > >=20
> > > >        - allwinner,sun50i-a64-mbus
> > > >   =20
> > > >    reg:
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--10LvNQVJYUIIwFrj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIA6fAACgkQ3cLmz3+f
v9Fywwf/eKwq4XMLDo180gX6Pm1kgA2v/uxUB0R0xsoXaELb6IluwiuPO0jVvNCN
rYT26DH13eSTfZtHD9UlCMb7J1PO4lGT+FeVURUWx7tnX8m5r2H0H66VqyAdlPUT
mOunobehDH81Sl2Pj7FDVa1jyA8Bg/CZwnCxKi7cwLyg4EvFxQCYG3AxKb30UZya
WcQcmj84SGHps/X1XdbS1vnllGv9e9mE9FvaVdi+WZ4iUzcQOwCXpMsYiWoc0YdV
LhUCUeGeAqr9STaTz7ZDCPBMUjNtnONtTiDcyDIMcAIWshytEl2S2sKkpy4o8c8V
caHW8IBvVlyHHv9YjOnNRf5ysP3T7g==
=vjaa
-----END PGP SIGNATURE-----

--10LvNQVJYUIIwFrj--


--===============7667231817059558479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7667231817059558479==--

