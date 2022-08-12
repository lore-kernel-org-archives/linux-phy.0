Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1ABC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 12:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RPZwHCH62K94x9Nyv1h5zzyMNreDCZNkpkCRoCU16RU=; b=Kc41IqgzaO+p81S6eOoynuXKxz
	pGSvyQ/cr++YIe1DAy+9mtHw93z8OmvQ3Ji7swoEqkhV1fkXcM7vv3G109/DomX19MmUNNDVIf/t3
	fKilRXdW034/pOeLv87sEJCnT8dJd3wIu+gSPCUPA2aMKUaj10ufba0rPT0GDgk7V9kMSsuQBChYE
	ZXODvckFxbi0KyH08zI+E0z++d+dVq9XvrDcwcAwZlhJ2PUVuzxt822+CJDFp+KlFG8Whl2ecMKE0
	BysWPDhliZFRJFRVKi8FEgA9u8AmhymXYXmseOk28EvQQfAM6KjsPXy8e5BqohPcrBUduHcP61cwI
	PXpCOcOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTOZ-006xKQ-Bb; Fri, 12 Aug 2022 12:04:07 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTOK-006x5X-By; Fri, 12 Aug 2022 12:03:54 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id E503BFF80A;
	Fri, 12 Aug 2022 12:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1660305821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xJDSkuzgeV8CqTp6TkfD/obtXLV+oEiR4ZcU8k4v+ek=;
	b=NPJ7eC0zKp7U4oyJ4vf8ZxTJ0Je4iWxUBdKluIPWfjmqXkLsTFUv2FUqvOhOH8XVp8Onf6
	OGGltD1A9dvIegtAfnTODq70SwsvzOx/X15+IU76jR5+59z8+9kUXLMPCV2BFylPVPpzd7
	L0I+b5LEibDiTHpT44wEnE/IMvRbkN8YW8ZbbpvS8UsgD+zVHLV0P7wqmA0h+JLmfTEixd
	JoSFfrxBh1Ybi4jL0J7S1DctX7N8DKlGS4NaxOLECRqAYbar5NBp7Sdj9nN6hRUj8bFfhd
	9JgZDpuyT1/YMwpiun5Nk2ZQN1nV7f7gei2qeR8JBIKx2Sc2iWnrw4/FUK7xZQ==
Date: Fri, 12 Aug 2022 14:03:37 +0200
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
Message-ID: <YvZBmZ+SfrJuAzAs@aptenodytes>
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-7-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20220812075603.59375-7-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_050352_892778_5144D448 
X-CRM114-Status: GOOD (  18.14  )
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
Content-Type: multipart/mixed; boundary="===============1112754142573915862=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1112754142573915862==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cZWc4gSUKHi2eZD5"
Content-Disposition: inline


--cZWc4gSUKHi2eZD5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 12 Aug 22, 02:56, Samuel Holland wrote:
> The A100 variant of the DPHY requires configuring the analog registers
> before setting the global enable bit. Since this order also works on the
> other variants, always use it, to minimize the differences between them.

Did you get a chance to actually test this with either DSI/CSI-2 hardware?
I vaguely remember that the order mattered. Do you have an idea of what the
Allwinner BSP does too?

Otherwise I could give it a try, at least with my MIPI CSI-2 setup
that uses the driver.

Cheers,

Pau

> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>=20
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/al=
lwinner/phy-sun6i-mipi-dphy.c
> index 625c6e1e9990..9698d68d0db7 100644
> --- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> +++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> @@ -183,10 +183,6 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dphy =
*dphy)
>  		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(3) |
>  		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(3));
> =20
> -	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> -		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> -		     SUN6I_DPHY_GCTL_EN);
> -
>  	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
>  		     SUN6I_DPHY_ANA0_REG_PWS |
>  		     SUN6I_DPHY_ANA0_REG_DMPC |
> @@ -244,6 +240,10 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dphy =
*dphy)
>  			   SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK,
>  			   SUN6I_DPHY_ANA2_EN_P2S_CPU(lanes_mask));
> =20
> +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> +		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> +		     SUN6I_DPHY_GCTL_EN);
> +
>  	return 0;
>  }
> =20
> --=20
> 2.35.1
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--cZWc4gSUKHi2eZD5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmL2QZkACgkQ3cLmz3+f
v9FGyQf+P9y9cIf8pj9y0dDk8rWiTtCyuoScQ7U+K4YYW1ai+/FUC1qkgnDnOcjw
MLMI6hSgtI73b0JVFagBpmR2RuEhUnYLZzlmfKeA6+85XNe/7y873RpiDz+qonjj
MhPjOgfUgriStjzBdtL/uLVZZ7nIEmz7aRA4XstW6LbSjcY38zqEKGxdDq5Phfbt
dPK1i7nqSj8inGOrwr0Xky8movDO2Vp1+x+42RwX7YcgEX6haJLPUHLBkd5ccMFX
//EI0XVoSnw01M2G8iUaR4Zn1FAUrDaBTDkMPhurRdLb8iIxf4RCfWvV96G/kZv1
DpFCAGrSKoEKO9XZROsSggMoOSjC1g==
=EDd0
-----END PGP SIGNATURE-----

--cZWc4gSUKHi2eZD5--


--===============1112754142573915862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1112754142573915862==--

