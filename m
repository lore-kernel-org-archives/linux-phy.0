Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A14C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YgzsbyNTVq+z2OsjHI38zr791n9bYXKmvPCAph0H9HY=; b=BK70bCM6cVNnMP2E4IVxxmODof
	VW76BOAcoDbIIxAH2ofTcXBqZkSaZfvHy5xT9QMHM6ZQmVgnoBv497x+THJTGAziK/DxTJ/zsAOlB
	05L/MG1jRnDLqYSMSHb92u7yeQvrE6r8k3ul+wnCirHBsMXTE/FdDYNCMKSSBvfwcfT8AW6ZyJepe
	zyVBt/YMF98F9UruLXJrZKDp/E1TVNOwKIxZ/V+lXvkvfj19r3DO7L+nvkmqXSCtaovSIyvo4g3fo
	U4tpR2dUmz+5QELkoUFXpoieCrFzXmuXWJDi0Z3K29IvNraXMbaikqusCCHOlh3zvBu9WSF52aJu8
	jYfnivoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAuf-0000000Ddg5-0R6v;
	Thu, 22 Aug 2024 16:43:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAtu-0000000DdWi-09jz;
	Thu, 22 Aug 2024 16:43:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 83FBB60FB2;
	Thu, 22 Aug 2024 16:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C278EC32782;
	Thu, 22 Aug 2024 16:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724344984;
	bh=CjdcfSha03gUsdXzKaVNu7Ok/Rz/zO7wQYl59L9ABII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UXoQ8Yfs3CT80lVoiRhul5z9oCS6RuUDcyv8omH1omHh5JsQgAipxUsAHTIY4CpKA
	 QpFuaANfnW70UuyqF3hvLA4mLZ+umOcJOkoVk9l6wl0jddxJT+31Lq0RwThN1wh44+
	 sAX41d3uGWyg1RQP/z4UMH+HlO0D2Mi1cbwx6+9L+QBvuPwc52IqQSh0AAeEabBjrW
	 L07GVExqw6oGub71BTQwDzndDS/vZnEoV4dyTkV9Q3KCAaQP61LHovEQ+hXr2XYeq3
	 JDnOWENKTgeaYif8Jz/GGK45CF3wPZnwK2TTk62zNGI9hJcd1oILbl5wFfGoDMbx5l
	 aYdH8uwKcNRDQ==
Date: Thu, 22 Aug 2024 17:42:57 +0100
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
Message-ID: <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094306_186361_1A3F0AA4 
X-CRM114-Status: GOOD (  15.09  )
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
Content-Type: multipart/mixed; boundary="===============2458183869773859497=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2458183869773859497==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R5kWhI8jYXMnqXnv"
Content-Disposition: inline


--R5kWhI8jYXMnqXnv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The RZ/G3S System controller has registers to control signals that need
> to be de-asserted/asserted before/after different SoC areas are power
> on/off. This signals are implemented as reset signals. For this document
> the #reset-cells property.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-=
sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sys=
c.yaml
> index 4386b2c3fa4d..6b0bb34485d9 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.ya=
ml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.ya=
ml
> @@ -42,12 +42,28 @@ properties:
>        - const: cm33stbyr_int
>        - const: ca55_deny
> =20
> +  "#reset-cells":
> +    const: 1
> +
>  required:
>    - compatible
>    - reg
> =20
>  additionalProperties: false
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a08g045-sysc
> +    then:
> +      required:
> +        - "#reset-cells"

Given this is new required property on an existing platform, I'd expect
some mention of why it used to be okay to not have this but is now
required. Did firmware or a bootloader stage take things out of reset?

> +    else:
> +      properties:
> +        "#reset-cells": false
> +
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
> --=20
> 2.39.2
>=20

--R5kWhI8jYXMnqXnv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdqkQAKCRB4tDGHoIJi
0i+AAPoDjYo2y6uMTzLRLfoCjkrx4XlkdvzoEZtEObZg6r8d8AEAiMY9x4dGGNYn
rLsR+BgKd4cwAM4fW7FwAGCLjJOHbQI=
=N0Us
-----END PGP SIGNATURE-----

--R5kWhI8jYXMnqXnv--


--===============2458183869773859497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2458183869773859497==--

