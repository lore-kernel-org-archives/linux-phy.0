Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2A4C25B74
	for <linux-phy@archiver.kernel.org>; Fri, 10 May 2024 15:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j96SCVNsNtkTPdnYrar3G57eCSnZj6MXgI73J4u0JtE=; b=z8+MJZcstYGNomDZivrSx0p2dS
	enQseOdwkPn9mPSFgGe+mVlb/NXngTs3CVOGde90IoVDbgs80J9g+yFFIai/t3q/z/IFfXlk9iOCx
	bB+Ghen/Dei0sqWbAnAs1NaiT8ZPb9NMJ4t5MYPmvyzrNucMj72lXtV90R4/gsNxIryVB3JVJwaAv
	t30H5Q0nN8tohuzVsFRUDqgwiKALhkg1/U7O71fkOouMZXylhSQ9gATn4xa0KSWHskqn11RG4rwuD
	WkJ87JPtLeW+TWvGliWNrAhLMlKNOXezew8Hi1KlR9kCGjDgjrBxxQoNYRGtv2b3O1jfhfpV7l04p
	7PU+Riog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5SXy-00000005m4q-1Cua;
	Fri, 10 May 2024 15:52:34 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5SXt-00000005m3C-3FYq;
	Fri, 10 May 2024 15:52:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C2F3ACE1E32;
	Fri, 10 May 2024 15:52:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E0A1C32781;
	Fri, 10 May 2024 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715356347;
	bh=h5nTT0Du2UCghXIKEWt0yFqx/MaUNSrO06p/4aGpyvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpGT41MTOaFu1jCl8Uwvjdbh7Qn5oQcrzA5iFcUPMJ79nJcka2C6bP6oax3zjb/FP
	 yUxMdrhS620X8kneqIwlE5uIoc48ULno1WIuo72+dre55FfN+be/Gj4Y0Wcbpsblnz
	 Bb8a4ZjijACzy+sJ1iJZ+/VF0EJVb3U7+b8UrEbkp6VJhM2wEfyVAJzah+RrvSzg7B
	 ePyM8KzPDyvlmXd9zfBlRpurUE1oM8dC8sIUh4QqYR4lTbAQF407kWs3m3OpH5zAab
	 ovaRCs0gstD861+gqxwTbl/R/gfXuf2inGSiBee3JL/4OjnLKb6fL9G52CAoCuBLPG
	 +bMbd3oyrzLjA==
Date: Fri, 10 May 2024 16:52:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240510-daisy-overkill-99c4bee476c0@spud>
References: <1715234181-672-1-git-send-email-hongxing.zhu@nxp.com>
 <1715234181-672-3-git-send-email-hongxing.zhu@nxp.com>
 <20240510153849.GA308062-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240510153849.GA308062-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_085230_043474_7D4BC449 
X-CRM114-Status: GOOD (  13.22  )
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
Content-Type: multipart/mixed; boundary="===============4483946034744503274=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4483946034744503274==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Wr3y6L4YTPWbkVH7"
Content-Disposition: inline


--Wr3y6L4YTPWbkVH7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 10:38:49AM -0500, Rob Herring wrote:
> On Thu, May 09, 2024 at 01:56:20PM +0800, Richard Zhu wrote:
> > +  fsl,refclk-pad-mode:
> > +    description:
> > +      Specifies the mode of the refclk pad used. INPUT(PHY refclock is
> > +      provided externally via the refclk pad) or OUTPUT(PHY refclock is
> > +      derived from SoC internal source and provided on the refclk pad).
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [ "input", "output" ]
>=20
> default?
>=20
> Really, this could just be a boolean for the non-default mode.

There's actually a third option, or at least there was in v1, unused.
The description in v1 was:

      It can be UNUSED(PHY
      refclock is derived from SoC internal source), INPUT(PHY refclock
      is provided externally via the refclk pad) or OUTPUT(PHY refclock
      is derived from SoC internal source and provided on the refclk pad).

I suggested that there should be 3 strings and not having the property
would mean unused. But all mention of unused seems to have vanished :/

--Wr3y6L4YTPWbkVH7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZj5CowAKCRB4tDGHoIJi
0jCbAP4o1fystkUik1QzniCgEWNmiXcfwOndTsN+6kqytNqrpQD+Lxdi0pmPgkTY
MDMSv9vyFHydgHukhatYEY2utuVzXAo=
=mJ4j
-----END PGP SIGNATURE-----

--Wr3y6L4YTPWbkVH7--


--===============4483946034744503274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4483946034744503274==--

