Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC72CD6E57
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 15:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xP0Xs/xa/uUOjpJvtEbE14yI9sv9CduGI56N4Pcu7EA=; b=UoilB72jzxlvW1EV5WKU18CLiB
	LR1oNsFfZW4uJe7476FKUwhQbBh0QDgA1Ut7GlYcx3nn52z60y8ksbF05Bc5/ccR2vg8WVdWTr4wy
	I4QD1Iimk0tjtsHRDzNlpRu6wdER6D3gEpFG6uZcJwHz0OmwN4hxOrda6Mz4VVLRoAMXxFXWTfPjP
	LjX12cfqIq9URmpJCm05gd9U5OUKIpXcfFx7IKu2OV5ZLXqNtexeT6wF5Xc3nROXR+S5hx6gp60Mh
	k5jww3BulhwUiIGupdU++i18SGX+oo121wrhY5fSwUDvKPk7+x8hPYuN8ws8om6536dpPk2Fd4+WP
	y8bpo2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnri-0000000FT3D-01pR;
	Wed, 03 Jun 2026 15:50:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnrg-0000000FT37-2rha
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 15:50:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 65FD660126;
	Wed,  3 Jun 2026 15:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54BA71F00898;
	Wed,  3 Jun 2026 15:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780501843;
	bh=vCs9UAIkiodhsbZ/odVVdbmcYh4cByi63umqI9snLoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nhLlZQBHzf12m7nTEXBM2ed1IJWgFkuHT6XsTb2EEF94DiMUraBF0RSjS3ZRFYGgg
	 DBLOBnqpwD8g/FEHx8gUU/EmZt5VzMU/nbBRK0EXknBFzJkDKsV1hfb/dtCXs565Xa
	 5cXNJt6LTFfvtsOw6jSiwWYV67aM0W8TmseM2qV1YfFAOwb6rGMzHmwwmufiezLYyQ
	 rVNPrwkPcJVBhPSv+khVbCXkrUP+UyroIEVQK/bUCmaXMQmdx6om5zwT23WM/9cGau
	 ZTAFvqecZxFX+yTGIP+wbKnMvE4T26OZqD65V+anK22Kt17sctqriFtNv+Tn/+tshX
	 MKcT+iVc002/g==
Date: Wed, 3 Jun 2026 16:50:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: sashiko-reviews@lists.linux.dev, robh@kernel.org, vkoul@kernel.org,
	neil.armstrong@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	olteanv@gmail.com
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260603-numerate-unbundle-ef259832006d@spud>
References: <20260603132059.503527-1-vladimir.oltean@nxp.com>
 <20260603133350.9FA271F00893@smtp.kernel.org>
 <20260603133825.l544tnmtn2pqfrzh@skbuf>
MIME-Version: 1.0
In-Reply-To: <20260603133825.l544tnmtn2pqfrzh@skbuf>
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
Content-Type: multipart/mixed; boundary="===============8768222549758253812=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8768222549758253812==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="29efmMoE7cLoxf6X"
Content-Disposition: inline


--29efmMoE7cLoxf6X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 04:38:25PM +0300, Vladimir Oltean wrote:
> On Wed, Jun 03, 2026 at 01:33:50PM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential is=
sue(s) to consider:
> > - [Medium] The `if` condition for enforcing the `big-endian` property i=
ncorrectly matches the `compatible` string array directly against an `enum`=
, which will always evaluate to false and cause the requirement to silently=
 fail.
> > --
> >=20
> > commit 8bd3982a89722b20a3686e42d4ab3b9f0711ae11
> > Author: Vladimir Oltean <vladimir.oltean@nxp.com>
> >=20
> > dt-bindings: phy: lynx-10g: initial document
> >=20
> > This commit adds the schema for the 10G Lynx SerDes used on most QorIQ =
and
> > Layerscape SoCs. It defines the valid compatible strings, PHY cell requ=
irements,
> > and enforces SoC-specific constraints such as lane counts and endiannes=
s.
> >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml =
b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > new file mode 100644
> > > index 0000000000000..8cf6027a75b91
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          enum:
> > > +            - fsl,ls1046a-serdes1
> > > +            - fsl,ls1046a-serdes2
> >=20
> > [Severity: Medium]
> > Does this conditional correctly enforce the big-endian property?=20
> >=20
> > Since the compatible property is a string array in device trees, evalua=
ting it
> > directly against an enum always returns false. Should this use "contain=
s:"=20
> > with the enum, similar to the preceding if block, so dt_binding_check=
=20
> > correctly enforces the requirement?
>=20
> The tests I did suggest that it does enforce the requirement.

Yeah, sashiko just doesn't understand how this works without "contains".
"contains" is only actually required for validation purposes if there's
fallback compatibles and you're trying to get a partial match.

>=20
> - "make dt_binding_check" passes with the submitted example
>=20
> - If I replace "fsl,ls1028a-serdes" from the example with
>   "fsl,ls1046a-serdes1" but leave everything else as is (implying:
>   little endian), I get:
>=20
> $ make -j 8 DT_CHECKER_FLAGS=3D-m dt_binding_check DT_SCHEMA_FILES=3Dphy/=
fsl,lynx-10g.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ../Documentation/devicetree/bindings
>   LINT    ../Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dts
>   DTC [C] Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dtb
> Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dtb: serdes@1e=
a0000 (fsl,ls1046a-serdes1): 'big-endian' is a required property
>         from schema $id: http://devicetree.org/schemas/phy/fsl,lynx-10g.y=
aml

--29efmMoE7cLoxf6X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBNTwAKCRB4tDGHoIJi
0qEpAP9xJIQD67kq3rH/iSn47fcaj5H2Gm4eWSUDKokdZ9vTHgEAg/Se6W+36U7P
aL+sw1M/xaTL+1SnXFHozFNqtmazbgE=
=gCxu
-----END PGP SIGNATURE-----

--29efmMoE7cLoxf6X--


--===============8768222549758253812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8768222549758253812==--

