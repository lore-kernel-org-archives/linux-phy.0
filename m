Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBDF9C04AA5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d6FWrjbH2voAujuBZ7hFVk5GEo7EY4poZQWQUyaXLX4=; b=UE22bvTOrTkUfXvYa2tnkHraav
	3odHVjqH8qafrUXR4DrY5BaNd1xDulZXLwHeZZNB30V0h8Q9DHs+IUbt9a63h85oiYQsUGrPUMVuc
	W1UsqHj4ut4uuXM4dXCbmeAmUyj7/w74knma4aZ00bLvNTvIbQ78yrvFyb8s8lDAKOzLkxTtvkYfr
	FhMhwThLyTkpEw/7eUt2UXGIx4a6fVKMkPTPhWuvY9WIwjR6pwle4NdIGXp/07kjVOjS47wqgTshT
	pvvnalsq3kP5n7fB/mq8omr8oHMe1G3M1NfrmgoU2+/NAPNmI4SlF7QCgE31sahsmflr9oksDP1mc
	0G57teew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRA6E-00BtC5-05; Thu, 25 Aug 2022 10:28:34 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRA46-00Bs3A-LT; Thu, 25 Aug 2022 10:26:25 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C669D200006;
	Thu, 25 Aug 2022 10:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1661423178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nZkhegChjWaWBJwEW1/N43DiTL0N1XMc1RWqnxCrZsk=;
	b=YOt1JWVSh6Ki9doHJpzHkp8QI3qfB0CD0Yw8z3OZnBSeV9pHJH5bXqq12+5xPfisKbFKjx
	xkqK4rV8cjhXwxS5ErtrHnmmyIJ7QO1P9MjuI807pqx7ST9YhvP/m7mzybTbVJ/NNXGd6F
	bOmwy/kqH04s05mQFdUJTvfacBl6CDe6xMsbPK319NkiE7vTXTw8litr1xld7l8Yrhlmoh
	F0q43cEYW18F7zIqO8qTRLUgbpy35YXscqwpqWuxxC5uvBPSIVaCW9lYCgFS3AfU2U1bJE
	1JDOrYAuWLHL3TD784m5DleTImOLUksX2+uO66TBtWXdl09A/KYoPfVKRZdyhQ==
Date: Thu, 25 Aug 2022 12:26:15 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 6/8] phy: allwinner: phy-sun6i-mipi-dphy: Set enable bit
 last
Message-ID: <YwdORxO4K8mV5Hc9@aptenodytes>
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-7-samuel@sholland.org>
 <YvZBmZ+SfrJuAzAs@aptenodytes>
 <b3a2dc61-7384-17f7-2f4f-4b6bb86bcced@sholland.org>
MIME-Version: 1.0
In-Reply-To: <b3a2dc61-7384-17f7-2f4f-4b6bb86bcced@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_032623_593807_E864DED4 
X-CRM114-Status: GOOD (  29.07  )
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
Content-Type: multipart/mixed; boundary="===============4736325637831351660=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4736325637831351660==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fO1GowFtZadczY0o"
Content-Disposition: inline


--fO1GowFtZadczY0o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 12 Aug 22, 17:31, Samuel Holland wrote:
> Hi Paul,
>=20
> On 8/12/22 7:03 AM, Paul Kocialkowski wrote:
> > On Fri 12 Aug 22, 02:56, Samuel Holland wrote:
> >> The A100 variant of the DPHY requires configuring the analog registers
> >> before setting the global enable bit. Since this order also works on t=
he
> >> other variants, always use it, to minimize the differences between the=
m.
> >=20
> > Did you get a chance to actually test this with either DSI/CSI-2 hardwa=
re?
>=20
> I have tested DSI output with the Clockwork DevTerm (D1 SoC) and Pine64
> PinePhone (A64 SoC). I do not have any MIPI CSI hardware to test with.

Sounds good to me then!

> > I vaguely remember that the order mattered. Do you have an idea of what=
 the
> > Allwinner BSP does too?
>=20
> The Allwinner BSP makes the same change as this commit in its "lowlevel_v=
2x"
> copy of the code, which is used for R40 and T7 (original DPHY) and A100 a=
nd D1
> (updated DPHY). It does not make the change in "lowlevel_sun50iw1" (A64 S=
oC,
> original DPHY), but I tested A64 with this change, and it works fine.

Great, thanks for details.

> > Otherwise I could give it a try, at least with my MIPI CSI-2 setup
> > that uses the driver.
>=20
> This commit only changes sun6i_dphy_tx_power_on(). The code for RX is unc=
hanged
> -- in fact, it already sets SUN6I_DPHY_GCTL_REG last.

Ah yes you're right, actually I remember being tempted to change this too w=
hen
adding the rx path, but didn't have hardware to easily test.

Thanks for the details, this is:

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Regards,
> Samuel
>=20
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>
> >>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 8 ++++----
> >>  1 file changed, 4 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy=
/allwinner/phy-sun6i-mipi-dphy.c
> >> index 625c6e1e9990..9698d68d0db7 100644
> >> --- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> >> +++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> >> @@ -183,10 +183,6 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dp=
hy *dphy)
> >>  		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(3) |
> >>  		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(3));
> >> =20
> >> -	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> >> -		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> >> -		     SUN6I_DPHY_GCTL_EN);
> >> -
> >>  	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
> >>  		     SUN6I_DPHY_ANA0_REG_PWS |
> >>  		     SUN6I_DPHY_ANA0_REG_DMPC |
> >> @@ -244,6 +240,10 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dp=
hy *dphy)
> >>  			   SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK,
> >>  			   SUN6I_DPHY_ANA2_EN_P2S_CPU(lanes_mask));
> >> =20
> >> +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> >> +		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> >> +		     SUN6I_DPHY_GCTL_EN);
> >> +
> >>  	return 0;
> >>  }
> >> =20
> >> --=20
> >> 2.35.1
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--fO1GowFtZadczY0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmMHTkcACgkQ3cLmz3+f
v9ET3gf+Ijb5TZR/JJTlXSoSHvPCNhJtFL0m999ze+30++wX0mEhS3H8StSKy/C1
I2AsGVYGmUzuOru1lsIKl0Z5snU4tf0TxasrHk902JIWQ77vCuNWnKlXVYDwvDdz
7P19vaDeMhTGePAPvoubS4g9pPsmCNwixL5Roe5mCrDK0ZLu/LWTYHydcSLqKu/Q
x/LuE2wRx4RRFwNXuz0NXmwOZdIq41Gi2S0kx6fkbw/uHzKA30koHoy+M0Wb7vVK
H9Ypu69YUgz8twTsvDRbid/ctfIb3wPQegbRO+S80Irf8owgD9qU6MKXIjK30qT7
+KZHOywGvjsZtMZepWV6+VqCGgugaw==
=xe8Q
-----END PGP SIGNATURE-----

--fO1GowFtZadczY0o--


--===============4736325637831351660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4736325637831351660==--

