Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844BBC52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NUYJ79Xe1JmNtJDFszS+OB34+DAC2zyK9a5tT2S2T7s=; b=LChkfJn9hVYsEBP2SfxeQgQumy
	npLAvChVQ4CpXcALSHS8ZplHZ7+dtyCm7wObNtfMOv5Ou+/TqJscJBl4PT37/ixIph0UuSH94A3Hn
	VBM+Bls2z4/NDEmDqIZMbACiSJGrZ1s8L74mEJ9vEvvxgC4HHjE9uK7QMJO+ftfYXLlowktiXReWq
	MhTgOPyIK/FBS4dT06sxNAr+DgKPlPm+3zLMZmkCG1bkNptKG7Q50b02wyUZyZfGkgJXaZMuuivHC
	ewz290go9pi+s2q67B9j3zdciyHBNoyRnSP4SkORDTIrrVKSpmBtZYrKQiK1xFYbIm2ytlUC6FzEw
	ejlr2Q5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAxc-0000000Deml-0zQJ;
	Thu, 22 Aug 2024 16:46:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAvp-0000000De6D-3UMC;
	Thu, 22 Aug 2024 16:45:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 142956125A;
	Thu, 22 Aug 2024 16:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B23FC32782;
	Thu, 22 Aug 2024 16:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345104;
	bh=WrlN+67fyl/9DMCWCvghwD06kAjbzcfn6dDe7h6wxn0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4Mir6Jc65AVcAqoR1k1S8yF13+rBZctf7bvL/1PJOJZH1+tn/cUFuXSSIj3n6OLh
	 h6Ce4waDtOd1SmjSD60mAYoIDQBWkGqUkG+SGPBgIphiOa2WzMRP+MorOfnhPCnRDT
	 hWwdbbVFkcqYf7GTjDz7I66oPm1LHWs/YIXqTphXQ9224UBr2s1o9Fe5csRUA2Vbrd
	 51O3KQGws+QdU31tzIICRFzBZCtcCKgVk9ew5yQdsmUxcRybXXQASNOvoR6W3Y5XDY
	 sNVmKDWoJCXsdP9rXgrsfV4TCKl/7smifMGk+AszUjvCk0gCZGNxnuWGoMp8hfLDuA
	 wlM0bISIJAmqg==
Date: Thu, 22 Aug 2024 17:44:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, mturquette@baylibre.com,
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
Message-ID: <20240822-mountain-hurdle-dd1f08b96f64@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
MIME-Version: 1.0
In-Reply-To: <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094506_291037_495D6B66 
X-CRM114-Status: GOOD (  19.70  )
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
Content-Type: multipart/mixed; boundary="===============1604388832160658096=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1604388832160658096==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZWzRvO3ns8+wP6rp"
Content-Disposition: inline


--ZWzRvO3ns8+wP6rp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 05:42:57PM +0100, Conor Dooley wrote:
> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >=20
> > The RZ/G3S System controller has registers to control signals that need
> > to be de-asserted/asserted before/after different SoC areas are power
> > on/off. This signals are implemented as reset signals. For this document
> > the #reset-cells property.
> >=20
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > ---
> >  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2=
l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-s=
ysc.yaml
> > index 4386b2c3fa4d..6b0bb34485d9 100644
> > --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.=
yaml
> > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.=
yaml
> > @@ -42,12 +42,28 @@ properties:
> >        - const: cm33stbyr_int
> >        - const: ca55_deny
> > =20
> > +  "#reset-cells":
> > +    const: 1
> > +
> >  required:
> >    - compatible
> >    - reg
> > =20
> >  additionalProperties: false
> > =20
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: renesas,r9a08g045-sysc
> > +    then:
> > +      required:
> > +        - "#reset-cells"
>=20
> Given this is new required property on an existing platform, I'd expect
> some mention of why it used to be okay to not have this but is now
> required. Did firmware or a bootloader stage take things out of reset?

Reading a bit more into the series, the peripherals in question were
just never used nor did a driver for the sysc exist, so there's neither
explanation of prior behaviour nor concerns about compatibility?

>=20
> > +    else:
> > +      properties:
> > +        "#reset-cells": false
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/interrupt-controller/arm-gic.h>
> > --=20
> > 2.39.2
> >=20



--ZWzRvO3ns8+wP6rp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdrCgAKCRB4tDGHoIJi
0uG8AP9KErhuqHGo0goHh4p9RoWQWSQLtxDDIaGI6XDc4GYpEAD/af+u+5EQKxfW
u6mEr8fG1pmimijNTGtbSERV+00abgY=
=TCjP
-----END PGP SIGNATURE-----

--ZWzRvO3ns8+wP6rp--


--===============1604388832160658096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1604388832160658096==--

