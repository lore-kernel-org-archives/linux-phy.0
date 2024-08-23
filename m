Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98033C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 16:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OdTBU2gq5Wgc1IVRcYO/6t6y4qcFU49+YQY3Xz1aLBk=; b=MW8ZSqE27TKQ3+UFvUbb3Y/47L
	7npKEe3u/Kzz+9DSqoMoBFCQ1xTVHI8OodnLeiXlNbCuPgtv2hvX0xYXLRucSJqkAvJQ//ChAIj09
	fGlYGxC9Mp0K3o3876W0w773UtUas2rgkhQeLl7dmkkfZ+a7OVo/i8HC3F9hVNgfB3CHyEExc/+0P
	VbCiurs2rztJWh4lKcqLJBoxyXQ+PY+bzANzsCgQ91smotMuKyXulgQR9tYLnjmLZjreQd7HhBKex
	k07LR0pfwge36GfFnstoPnYwkTLs60/7y3/ihhlUJjO+ZKo1c1ebnnZBmTX3wWBVIpdRVTmsIsLDI
	XkCU52Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX26-0000000HWzg-1HEg;
	Fri, 23 Aug 2024 16:21:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWzM-0000000HWGV-2Ike;
	Fri, 23 Aug 2024 16:18:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9FA2760B6B;
	Fri, 23 Aug 2024 16:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD95EC32786;
	Fri, 23 Aug 2024 16:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724429891;
	bh=PgdByvdiAfbXaDotznDJ0dcWaZ63H3JEqmGBNQTkNik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZC90Fm8Oaw+MQx+uDsJmmODI2/hX9icvDed7tm4bS+eYRSFHflJN7lzWx7rLqnZVc
	 /EeRQapRZtyrKflOGlW921S5f2NsO84csxAlObYlSnAoSpArgtGMI1fyIeP9JFeMd+
	 wxx6FxANYeXN8kJP5XsIVDrOFWBOYyRpjxLF9MXQEWWoYz/NUKfioM1Mo5XKWcUVb2
	 Xrli84Wyw2O4//SzdGKFRgz5B8WyBrbhzXS4McahzOIuBxJGTEl95FGQdPqujyGtbz
	 LFS9h83DMHMURzMQNRTkjhJuj8I+FBR4OPZ7ykSCmj8rKCnV6Ksfnx4Ww39PmTXW/w
	 TNlBbNLVZYIWg==
Date: Fri, 23 Aug 2024 17:18:04 +0100
From: Conor Dooley <conor@kernel.org>
To: claudiu beznea <claudiu.beznea@tuxon.dev>
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
Message-ID: <20240823-plywood-unfixed-d8d8a2d93f14@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
 <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
MIME-Version: 1.0
In-Reply-To: <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_091812_758790_FE34F3E3 
X-CRM114-Status: GOOD (  22.24  )
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
Content-Type: multipart/mixed; boundary="===============7352455867022341957=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7352455867022341957==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GSCRsUY2DblipIOX"
Content-Disposition: inline


--GSCRsUY2DblipIOX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 10:54:06AM +0300, claudiu beznea wrote:
> Hi, Conor,
>=20
> On 22.08.2024 19:42, Conor Dooley wrote:
> > On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> The RZ/G3S System controller has registers to control signals that need
> >> to be de-asserted/asserted before/after different SoC areas are power
> >> on/off. This signals are implemented as reset signals. For this docume=
nt
> >> the #reset-cells property.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >> ---
> >>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
> >>  1 file changed, 16 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg=
2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-=
sysc.yaml
> >> index 4386b2c3fa4d..6b0bb34485d9 100644
> >> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc=
=2Eyaml
> >> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc=
=2Eyaml
> >> @@ -42,12 +42,28 @@ properties:
> >>        - const: cm33stbyr_int
> >>        - const: ca55_deny
> >> =20
> >> +  "#reset-cells":
> >> +    const: 1
> >> +
> >>  required:
> >>    - compatible
> >>    - reg
> >> =20
> >>  additionalProperties: false
> >> =20
> >> +allOf:
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: renesas,r9a08g045-sysc
> >> +    then:
> >> +      required:
> >> +        - "#reset-cells"
> >=20
> > Given this is new required property on an existing platform, I'd expect
> > some mention of why it used to be okay to not have this but is now
> > required. Did firmware or a bootloader stage take things out of reset?
>=20
> On previous SoCs the SYS controller has no support for controlling the
> signals going to different peripherals (USB, PCIE in case of RZ/G3S).
> I'll add a note about this on next version.

My initial thought here wasn't about previous SoCs though, it was
because you didn't add the compatible in this series for /this/ SoC.
What's worth noting isn't about the prior SoCs, it is about what makes
it okay for this one.

--GSCRsUY2DblipIOX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsi2PAAKCRB4tDGHoIJi
0g2cAQDP31P2uZ2yJsxRp9QIUYTgXjcHmhTZPcFjJt8BD980TgD8DlBwXJ0T9MnS
uL/Znkm4rQCaBJlq8vpNa0dgniF1pAQ=
=Yj0N
-----END PGP SIGNATURE-----

--GSCRsUY2DblipIOX--


--===============7352455867022341957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7352455867022341957==--

