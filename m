Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10A40C25B78
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 17:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=te34fbhOK7kbZzP2QzvCFjCwYOUwmLXp83pO/7Gka3s=; b=wlZZYshVZqtDOfdkgodrzp4r8e
	vHBeIwbFGt49ULzznNQX0PACTpcksroNMcn5J7LH6InitWrjEu+n8d2vLKzpwVshQIXCBtT/q9lrh
	XuMpVli9t8Ife7hTZ3fzMUx3CEAY2EdYiF/PJj4KVdjibdLRTJeupWZXKHi++GjoMbMAbIM1eFJsb
	5XK01ySgK4EP9D4xoeWnsWAeGmYuqxoxzHxgGDzYJMz/w16nJCmhwBLaqEToOE7ls40iG7HSNJ1On
	8NxLQ9gmeFgUtJFzLhPyzbQ8YkIG/qFw0JTSImfOAeZUS8OAbSBKRZHx0j2c2jLpYpqqSm486Li7F
	PKkR8mMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEYBa-00000003Ls3-1thq;
	Tue, 04 Jun 2024 17:43:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEYBT-00000003LnL-0Xrh;
	Tue, 04 Jun 2024 17:42:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4BA6CCE1261;
	Tue,  4 Jun 2024 17:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F19CC2BBFC;
	Tue,  4 Jun 2024 17:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717522972;
	bh=9ZDdQxZgE5rT+xnz9EaVUQSZwdka7kPTuTY6LYAVhWQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BeLdwi8cSohO3ByZuLm4Tu2/0iY9vfBprVnraZqhGr11xhqvCXRjYBkCm3z1DyTrY
	 oSRSpgwxYB3P8azugzt3uSf8A1qp5OaFR7YGitqxJrKD1TiM/j/C0iJ+nrajN/PT8V
	 Qv0Foels3jbevo27oZZ+F82xxBeaYr+12JeLaUz59Ksuz3Di97XpattErpddgzfI9F
	 ENfe1Sl78gDeE+IKf96cx4vY/QEk9usypn4spj1VEdQvfSjWGwZGGgU56xthgW/T1J
	 pZWULplv/Kz7CCnbfHFY13x+qWTTbDKBjjiSlXgrfTA6ADrxPYieLMT6xFyPJposIn
	 tMqo0FLuhpxpQ==
Date: Tue, 4 Jun 2024 18:42:46 +0100
From: Conor Dooley <conor@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konstantin Porotchkin <kostap@marvell.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH v6 3/7] dt-bindings: iio: adc: ti,ads1015: add compatible
 for tla2021
Message-ID: <20240604-suspend-schnapps-191d2c1ad53e@spud>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
 <20240602-cn9130-som-v6-3-89393e86d4c7@solid-run.com>
MIME-Version: 1.0
In-Reply-To: <20240602-cn9130-som-v6-3-89393e86d4c7@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_104255_455904_D13D8052 
X-CRM114-Status: GOOD (  16.21  )
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
Content-Type: multipart/mixed; boundary="===============3753527692725740248=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3753527692725740248==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TVLzrn2EdXz7R3Sf"
Content-Disposition: inline


--TVLzrn2EdXz7R3Sf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 02, 2024 at 05:49:38PM +0200, Josua Mayer wrote:
> TI tla2021 is a limited single-channel variant of tla2024 which is
> similar enough to be easily supportable through the same driver.
>=20
> Add compatible string for tla2021 so boards may describe it in
> device-tree.
>=20
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml b/=
Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> index d605999ffe28..718f633c6e04 100644
> --- a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - ti,ads1015
>        - ti,ads1115
> +      - ti,tla2021
>        - ti,tla2024
> =20
>    reg:
>=20
> --=20
> 2.35.3
>=20

--TVLzrn2EdXz7R3Sf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZl9SFgAKCRB4tDGHoIJi
0qTZAP9VTInHBzPieEsZwrjfLF/njMhzTn87Oa3SIf0ORwC1fwEAmfEN49Q5o2D4
T+05ZNpG/57fQf2cyIrNTl7y3WGByAE=
=Vlni
-----END PGP SIGNATURE-----

--TVLzrn2EdXz7R3Sf--


--===============3753527692725740248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3753527692725740248==--

