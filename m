Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 431DACCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 18:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xtynW1YrGi34kLfO8YP8EB3ZG6OyBf7dvPBbV9mMu1o=; b=yXBbqWb+hjEsub6kGvaVq4Rem+
	xHghrUAWDS4YiAWrJFDqLdIcwdnuzC3bQHFdMxw2BtRWjDKjq8/Cf3gpgpIjyMVL61lO6KVtRuVoh
	kL6m7V22NgvlUdNwECUbg8g2r+TnHZ4Yk4zoA6O/av9Do3XcoqcMgx/QBymnMkIWvG19GO5yoV9ab
	qDGf/ZTxTHt9hDTChi+Bypta+u5M/AiSBHxUwIOq5LITunGXgRJQm1fSWITMlPF/1KVxxMDjOUFEd
	e+l+WM6DhW5Pwv/q8bhYoAZlNxPw7Y6RSKhrgaA0SkVaIy0qllmBcMcJsS0ot78Imq4YauOui4SFo
	V+3WzY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIX4B-000000060Bk-40Wt;
	Mon, 10 Nov 2025 18:56:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIX4A-000000060Bc-2lh3
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 18:56:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D34716019D;
	Mon, 10 Nov 2025 18:56:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4C0C4CEF5;
	Mon, 10 Nov 2025 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762800997;
	bh=1wKoNGk3+neT78CBoHzPYh7DcF4v4Epl4oWHaKMfgHQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W42E23mfndLfNxrsskmb6cNcDZyzYu/9d95uKO6GoGaHAnxrZ5x3HYCrGdmHJV250
	 jIc+m/nOaJNdBjqwC4kRG3KwxePN1VafeP7sbXTOfc9dfNwZHlm8sJaMNAEjAAs1Y+
	 NQv4EZSmbxBn3jMnXP1sMtn9PUjcO/Iq3IDYHjmQEVwstNiy3Iu3udpqijiUSWFxRX
	 ouV/81ee0k5gOl+gTA705TQd9UxRCxSD4Zq0lFih7bFSmZ/p3zztbCW7pc0gtXOTRh
	 O5s0++HcMMruK3B7OFMcc/Qcw6Rn4hNVBJLjJt/PduzTtiWP4Ct7Cq9Rq8uDM8C/iB
	 aoRrBVzN7hDbA==
Date: Mon, 10 Nov 2025 18:56:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/21] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Document VBUS_SEL mux
Message-ID: <20251110-resonate-strict-c3d6c42f3e0d@spud>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
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
Content-Type: multipart/mixed; boundary="===============8317015767190194593=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8317015767190194593==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GT7BDuKQnZgPdsmF"
Content-Disposition: inline


--GT7BDuKQnZgPdsmF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 10, 2025 at 01:08:04PM +0100, Tommaso Merciai wrote:
> Document the 'mux-controller' child node in the Renesas RZ/V2H(P)
> USB2PHY reset binding to support describing the USB VBUS_SEL
> multiplexer as a mux-controller.
>=20
> This is required to properly configure the USB PHY VBUS source on
> RZ/V2H(P), RZ/G3E SoCs.
>=20
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v2->v3:
>  - Manipulate mux-controller as an internal node.

Why is it a child node, rather than just putting the cell in the parent
reset node?

>  - Improved commit body.
>=20
> v1->v2:
>  - New patch
>=20
>  .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2ph=
y-reset.yaml b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2ph=
y-reset.yaml
> index c1b800a10b53..03da74ff2d08 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset=
=2Eyaml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset=
=2Eyaml
> @@ -37,6 +37,12 @@ properties:
>    '#reset-cells':
>      const: 0
> =20
> +  mux-controller:
> +    $ref: /schemas/mux/mux-controller.yaml#
> +    description: Mux controller for USB VBUS source selection.
> +    type: object
> +    unevaluatedProperties: false
> +
>  required:
>    - compatible
>    - reg
> @@ -44,6 +50,7 @@ required:
>    - resets
>    - power-domains
>    - '#reset-cells'
> +  - mux-controller
> =20
>  additionalProperties: false
> =20
> @@ -58,4 +65,8 @@ examples:
>          resets =3D <&cpg 0xaf>;
>          power-domains =3D <&cpg>;
>          #reset-cells =3D <0>;
> +
> +        mux-controller {
> +          #mux-state-cells =3D <1>;
> +        };
>      };
> --=20
> 2.43.0
>=20

--GT7BDuKQnZgPdsmF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRI1XwAKCRB4tDGHoIJi
0jXmAP4n8RG7YkgvdZEpvYgVEeHXPR/DEvUBIKbVbRYcDr7U2QEAjMx9z7JhWZxr
9bdX7GIsYG0o5CLLuMge8tFJCnC2HQE=
=x5t9
-----END PGP SIGNATURE-----

--GT7BDuKQnZgPdsmF--


--===============8317015767190194593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8317015767190194593==--

