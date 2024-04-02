Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACC7CD1284
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mIQ2T1WyHyr3BSpmdvrpa/IiGnA6UbNptqSxaE9JabY=; b=pXoDodPa5bFICYXIDEWMYn9SVh
	guEpB4i5cDD9Dr5OTJjXrBj6Osc8j8Ysfw9m9NHut450oxfHLYG0wmsY0NS8488ZlmzRnB7W7fINO
	f1KIBPCe2AT6tc46ttITqeb0T4AYz6K3KIbvKV9+u3bi3lxqsbGoOmY6QKmnnWK/nRHN2adiXwXey
	HvRu9+7D7qTLPl57fMKu4mqImk5oqn86ywUrqUSysogM0dU0vlKDLDqhdj5Ih/9zoo9d9ZhzKmg68
	QB54PD7Ez5WbUk0KIiK5wsxcKBuFGbSQlhV4TAvPJiYWnVPS/We95I5jlpnfEF039foV6pzgVzO4T
	MbdxxlEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrigl-0000000CKhP-3Nnl;
	Tue, 02 Apr 2024 18:16:51 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrigh-0000000CKg9-2f8y;
	Tue, 02 Apr 2024 18:16:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 993C5CE0B72;
	Tue,  2 Apr 2024 18:16:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35C1CC433F1;
	Tue,  2 Apr 2024 18:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712081804;
	bh=8BiCVmFy63V+eTl/AVpgSOVQf6tyNbleMPcurdNocRY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SPQ+yVrhybRzaIex8t/Hk+wwzspXlSqzA3gd0X34712H/2JZzhn15PzeqYsvGC7q9
	 XYJtskpCf6TBGD4zdCMhhZ80osvFEa5KkqhNqnc4cXh9/lfyxN2o9Vm/ifkPQDDdkb
	 ygjWtSFH+QNheytGnh+8DO1jEtUnut1d8IBi5NOhd9UHu1Ud+AdwnNDAeut/jx0pAK
	 Q/WG8A3IfIMjC8oFEpYZQk8IggcPvwhliTlvEBw4Ada/K0cqsp0ufYfYDfOsZqIbjO
	 U7hEkR3btoXiXN3mdMOscNyNN8pBv0BOXEQjOLvRT6sTYotMkMvIEWsL3uI/jzB4aL
	 Xt9YBatK9DXTg==
Date: Tue, 2 Apr 2024 19:16:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240402-anemic-aerospace-bc428fff280c@spud>
References: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
 <1712036704-21064-3-git-send-email-hongxing.zhu@nxp.com>
 <ZgwU8edE3VFYngWR@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
In-Reply-To: <ZgwU8edE3VFYngWR@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_111647_867003_79D71B97 
X-CRM114-Status: GOOD (  17.13  )
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
Content-Type: multipart/mixed; boundary="===============3084446339681525788=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3084446339681525788==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uXgaz3Nbx29M47AI"
Content-Disposition: inline


--uXgaz3Nbx29M47AI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 02, 2024 at 10:23:45AM -0400, Frank Li wrote:
> On Tue, Apr 02, 2024 at 01:45:03PM +0800, Richard Zhu wrote:
> > Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> > - Use the controller ID to specify which controller is binded to the
> > PHY.
> > - Introduce one HSIO configuration, mandatory required to set
> > "PCIE_AB_SELECT" and "PHY_X1_EPCS_SEL" during the initialization.
> >=20
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
>=20
> You missed all conor's comments.=20
> Please double check v1's comments.

> > +  fsl,refclk-pad-mode:
> > +    description: |
> > +      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
> > +      refclock is derived from SoC internal source), INPUT(PHY refclock
> > +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> > +      is derived from SoC internal source and provided on the refclk p=
ad).
> > +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> > +      to be used.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [ 0, 1, 2 ]
>=20
> I remember needn't enum because there are header file.

Yah, specifically my comments about this property were missed and were
probably the most meaningful comments I left.

Thanks for the reminder Frank.

--uXgaz3Nbx29M47AI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgxLhwAKCRB4tDGHoIJi
0pZcAQCTI+cY1udLcUNjtBNe7Lo4O6o7chZeO/Kb4VgRbXUqoQD+ML1p+97bAlvQ
s82SO4faNQLQqwutH9R/sp+ZuAP4PQQ=
=KOqW
-----END PGP SIGNATURE-----

--uXgaz3Nbx29M47AI--


--===============3084446339681525788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3084446339681525788==--

