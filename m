Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD788CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 18:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdTUIB5VzPW5e09+6be56jpuTf4eDm+qzazR9uB7vaM=; b=YIToiPm0MHtc/XrCqJTAWy1/gt
	Oni1JlWWWr6gYUT/4jY734PcGYC+ZnkxuaxdiK9CtEWySuiVqL2tVD5CoAvbl0/pPPsvy43cC2hu2
	HcU8KBe4s0hyICPk7zzhZ5tZOj1YVNXCwf0Z0WCeW/c4fzQtE5rjUVhiGilNXxrxuwGreDvwKJVI3
	IakKjcFZrCReSEinPXuI/DIcBFc0CjCM1u8RhSQcyPrEh5FrUCYZD4OhrUwZJeFXSj7/ddBe+PA3t
	gUx9NAFNbjiQBvYdRz8UfPQFxw0t69pAp0gcZio4yWbtRpqfcv68f2yeiRPHnN7Dp5ZVddEkC4UHC
	dlrf4EIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIWrg-00000005zIQ-44QV;
	Mon, 10 Nov 2025 18:43:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIWre-00000005zI3-1dhc
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 18:43:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AF9A5445EF;
	Mon, 10 Nov 2025 18:43:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2DBEC16AAE;
	Mon, 10 Nov 2025 18:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762800221;
	bh=DeBRnakymlJYR9KcihKOhaSs1gCeYKGx3st1JOBt6L0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O+1XNQ0gCyIQm7z/Ot/HsJS1Wblv3dMU9feJOgYdjO746WBpTEKhJMnpsWnc4lR9F
	 t16MONTXdyF0V3HUmsOaLQIchNEXVgr013xYDlzA53CUsjwsBZcZk40dJBh4XvkZ3S
	 1bvOXLvzinRyVjWcTbhsNyqqpit00UnGmPE7b98aPvgeHhpHGrdzRoaBd0rJjh7taN
	 iWAwuw70sf4f+DxqMigT9VdVh71BIkPx/jFOGiVe7GzPt/+EIO8gZGNHbFHXSZfG5c
	 9yt/78OLUya7/Rr+wCO5JgYRxLVpJidG5mJeIDgxk/F5B9kYh6oIvAWtLwTrTeTrXn
	 iPA43mwiXAVWA==
Date: Mon, 10 Nov 2025 18:43:37 +0000
From: Conor Dooley <conor@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251110-unwound-award-a11d69b9da4f@spud>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20251110110536.2596490-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_104342_473430_8846EDB3 
X-CRM114-Status: GOOD (  17.44  )
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
Content-Type: multipart/mixed; boundary="===============8272204181574486649=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8272204181574486649==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rzGVrB2TxiTooTzC"
Content-Disposition: inline


--rzGVrB2TxiTooTzC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> This allows to invert the N and P signals of the RX and TX Serdes
> signals. This option allows the board designer to trace their signals
> easier on the boards.

Why can't this just be done in software, debugfs or something like that?
Maybe it's just your description is poor, but sounds like the intention
here is to just switch things around for debug purposes.

>=20
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serd=
es.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.ya=
ml
> index 6e914fbbac567..21b19e06a75aa 100644
> --- a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> +++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> @@ -41,6 +41,30 @@ properties:
>        - The macro to be used. The macros are defined in
>          dt-bindings/phy/phy-lan966x-serdes.
> =20
> +  microchip,s0-tx-inverted:
> +    type: boolean
> +    description: Invert the TX N and P signals for Serdes 0
> +
> +  microchip,s1-tx-inverted:
> +    type: boolean
> +    description: Invert the TX N and P signals for Serdes 1
> +
> +  microchip,s2-tx-inverted:
> +    type: boolean
> +    description: Invert the TX N and P signals for Serdes 2
> +
> +  microchip,s0-rx-inverted:
> +    type: boolean
> +    description: Invert the RX N and P signals for Serdes 0
> +
> +  microchip,s1-rx-inverted:
> +    type: boolean
> +    description: Invert the RX N and P signals for Serdes 1
> +
> +  microchip,s2-rx-inverted:
> +    type: boolean
> +    description: Invert the RX N and P signals for Serdes 2
> +
>  required:
>    - compatible
>    - reg
> --=20
> 2.34.1
>=20

--rzGVrB2TxiTooTzC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRIyWQAKCRB4tDGHoIJi
0ouDAPwJpjpkFjLf661KEAYdqJLgHmRtuR95WHAIW2ybif5l3AEAvATKO3J4SKQD
OIlE+Ps8vHUA9TAlvEeK+8+lNgi0zw4=
=hZdA
-----END PGP SIGNATURE-----

--rzGVrB2TxiTooTzC--


--===============8272204181574486649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8272204181574486649==--

