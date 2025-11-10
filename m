Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD35ACCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 18:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LLCVDkykD9pvOPn5buRDkt4QRYmlHg70H/Gr0ho/GxU=; b=v3nuPY+dVRJtk669S0wgpTAkUo
	bZt5Kz3dwW50N8/+lPOVgNQdTG8hdeCZ9wH9AQ4+ZnJgntPD+pbWzE2WwZGTrm9tfZAZR+KTPaQFK
	R7zX7GgZHKvaK3k1MvwBvnjjwjACkkZZ8RFLuGCw9t8crF2OPNZx6KPER2RkWqof0vvB6qhLhvnUN
	dDlN64jv0XR/aSE9DaVAH2wJcm3EY6IfKW8ynAe9VQJSOfloFu7SCne5uQDlWbkFJKGp1g+9VMZAw
	ePJXRcFyCiBchbUXv5uewPWHp3n/N6AgEo4TIo0bWzEmegRxd1LA80vPWhH+lFhwckxDmQl0ShGvb
	Mu4cNUQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIX2K-0000000605a-0coG;
	Mon, 10 Nov 2025 18:54:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIX2I-0000000604z-18rZ
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 18:54:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AB72940925;
	Mon, 10 Nov 2025 18:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2310C4CEFB;
	Mon, 10 Nov 2025 18:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762800881;
	bh=H0v+OwJx0QjNHKVhVp7rC4x7aayHKNL5i+kxcvOuROE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gLoVqT2gdZeJTE5wcBLE6E1+ccfqOXsNvEqBwy+2AyppmwOZV8bnnwaU41/02JcAx
	 lx3opxKuzPXkuIBSHzJsoY2WwiqlgmCUqgAIZNx4FlKgTAtFK1SI8X4WpuvnhCYlqW
	 X1k4eOEVsmXMfKiQN7rynVyLRNscOdJLrjZnSCe17akr/v0kq0pR6kLxrPH50Bxcr9
	 aV9p6PWMKcTHhHE+P9S4PKFzf9T5ZN6LselMadIdrwovRxxpPHyuUYLDhPJqLQYyra
	 n+ruvqeCAEZtmW3BIthhzNleMLi7ArGg1gB/X++bk7A1HAVak3h9EMKd2FXC1IRYKH
	 HNv5BxGzKSdnQ==
Date: Mon, 10 Nov 2025 18:54:35 +0000
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
Subject: Re: [PATCH v3 08/21] dt-bindings: phy: renesas,usb2-phy: Document
 mux-states property
Message-ID: <20251110-outshine-smartly-881d231d644b@spud>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <bec1905bcee1a396f5b004611353af922e6d7b55.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <bec1905bcee1a396f5b004611353af922e6d7b55.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_105442_354402_0E01CE52 
X-CRM114-Status: GOOD (  17.54  )
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
Content-Type: multipart/mixed; boundary="===============2543461153191388464=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2543461153191388464==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+RtN6zclkAwEkiig"
Content-Disposition: inline


--+RtN6zclkAwEkiig
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 10, 2025 at 01:08:08PM +0100, Tommaso Merciai wrote:
> Some Renesas SoCs, such as RZ/G3E, provide a USB2.0 OTG PHY with
> configurable VBUS control through a multiplexed hardware register.
> This register allows selecting the VBUS source via a mux control
> line exposed by the PHY.
>=20
> To represent this hardware configuration, support the standard
> `mux-states` property in the Renesas USB2 PHY binding.
> This allows the DeviceTree to model the VBUS source selection as
> a mux, consistent with generic binding conventions.
>=20
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v2->v3:
>  - Improved commit body.
>  - Improved mux-states description.
>=20
> v1->v2:
>  - New patch
>=20
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml =
b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index 2cd0efa75f81..448da30757f2 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -102,6 +102,11 @@ properties:
> =20
>    dr_mode: true
> =20
> +  mux-states:
> +    description:
> +      phandle to a mux controller node that select the source for USB VB=
US.
> +    maxItems: 1

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> +
>  if:
>    properties:
>      compatible:
> --=20
> 2.43.0
>=20

--+RtN6zclkAwEkiig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRI06wAKCRB4tDGHoIJi
0v7OAP98vVeDC+kQ2uRRRDomYLClLg8a+azG/FWf4ni19mRfNwD+NeIi+aUxvEj0
U9R7D1VMAjlKfmek+xh8OSHDKJcaCAc=
=SmNm
-----END PGP SIGNATURE-----

--+RtN6zclkAwEkiig--


--===============2543461153191388464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2543461153191388464==--

