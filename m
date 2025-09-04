Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC759CA1002
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 02:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uhq/2AG2Xt7YVrg94apo4e1RlTeSEcrEHakMV83nhVY=; b=PtAEKrhR3QKo1V7IHuwnxXwcsS
	60o+BycO+47nDxvDTIpmX+gq7PiexJQJKgs6dtrUt/D+gemiD8nA4ykvppsO8jfyREOdxCmkfz/iW
	AnjMEXkolF9d1W7l7DYGu/F+HTC1kV4ND/DEHabVKu7Mc48HgqpLiG+hlTIDQGaOxF8Pr8yMx5AlV
	eGJfw7+QPKiWFDbCBAgWrRMjPX+nCwFea1llpkK5qq0w+u/isaeJIO2Bimk9JS3Xlr2QwRceYttWf
	cO9LQxk4aHRR6QvyU7C0Flv1fB9oNk449b1r9md8uqZglJiRgaEiyRwC5MTEcNUK1DNGdpPGXPXGj
	2iICM9ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM22-0000000G08a-2wf9;
	Fri, 05 Sep 2025 02:18:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuFXK-0000000Dsm7-3OWg
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 19:22:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E893560247;
	Thu,  4 Sep 2025 19:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE0DC4CEF0;
	Thu,  4 Sep 2025 19:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757013741;
	bh=Lq715o4AtQ1M/Ec2GCwC/M7b+u8Q7zWIeKZ45ythTf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i5/eO+uE82zes/6v7IZAQJPKG2GeaZ/MF1Rt05Y9wLk0c19z8DE5XaCYEN4cnKdQs
	 3dDQyK0kGtyMOD3Ku47SRXl96mcD6UM4YLl/+EV4lts9r37S0ykCGM4UEcFNhjZ9ZQ
	 9kVA3oGdsftwap540m5w/ouh/vhn9vgNOe7H8HHEoYIJZ1DpgnR6DZGkojuGcauj+l
	 ZpwWAIkbz2EgC27gO8GDyEVSifAIwxGiVzsn2EStv/3vp+x6i86OCy3YI6vng5kT4w
	 I4GgQik3IutMUowHBejzXAdOEsdzm5GpIVrNENzbLSXQgAs0iB9n3aYaj4K/HhXiOD
	 fViK5ZX07sPyQ==
Date: Thu, 4 Sep 2025 20:22:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250904-molar-prune-4d3420b1bcb4@spud>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20250904154402.300032-14-vladimir.oltean@nxp.com>
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
Content-Type: multipart/mixed; boundary="===============2777902202785918582=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2777902202785918582==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RNJ48Z5sF50vbdIN"
Content-Disposition: inline


--RNJ48Z5sF50vbdIN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 04, 2025 at 06:44:01PM +0300, Vladimir Oltean wrote:
> Going by the generic "fsl,lynx-28g" compatible string and expecting all
> SerDes instantiations on all SoCs to use it was a mistake.
>=20
> They all share the same register map, sure, but the number of protocol
> converters and lanes which are instantiated differs in a way that isn't
> detectable by software. So distinguish them by compatible strings.
> At the same time, keep "fsl,lynx-28g" as backup.

Why keep the backup? Doesn't sound like you can use it for anything,
unless there's some minimum set of capabilities that all devices
support. If that's not the case, should it not just be marked deprecated
or removed entirely?

>=20
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml     | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Do=
cumentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> index ff9f9ca0f19c..55d773c8d0e4 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> @@ -11,8 +11,17 @@ maintainers:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - fsl,lynx-28g
> +    oneOf:
> +      - items:
> +          - const: fsl,lynx-28g
> +      - items:
> +          - enum:
> +              - fsl,lx2160a-serdes1
> +              - fsl,lx2160a-serdes2
> +              - fsl,lx2160a-serdes3
> +              - fsl,lx2162a-serdes1
> +              - fsl,lx2162a-serdes2
> +          - const: fsl,lynx-28g
> =20
>    reg:
>      maxItems: 1
> @@ -33,7 +42,7 @@ examples:
>        #address-cells =3D <2>;
>        #size-cells =3D <2>;
>        serdes_1: phy@1ea0000 {
> -        compatible =3D "fsl,lynx-28g";
> +        compatible =3D "fsl,lx2160a-serdes1", "fsl,lynx-28g";
>          reg =3D <0x0 0x1ea0000 0x0 0x1e30>;
>          #phy-cells =3D <1>;
>        };
> --=20
> 2.34.1
>=20

--RNJ48Z5sF50vbdIN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLnm5wAKCRB4tDGHoIJi
0pErAP9yvf3WBafNeMNSZ2REiiIYTnnAkYySqATqbln4O/ZYAgD/UvrGl28vLgSC
Z1g1U1BnJkUXXdApv5dywfEXMFCl4gA=
=dIYP
-----END PGP SIGNATURE-----

--RNJ48Z5sF50vbdIN--


--===============2777902202785918582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2777902202785918582==--

