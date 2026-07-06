Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 047CEC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 17:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X7bouWh1uoTlRcu7PiB1JdmzCahgMuD/wA8lCC/bU3k=; b=KPUAKRn/NYPlSJ4nAWN1PQ5xwY
	vYZHlcqQYXpBDwEclTtCO3/bWhOrWgT3xAwAWYGK63TYDQyUOs84rcJHOhuBh4GEn0C+4qWxrOp7D
	f3kXWK6+ucn5DHzBIic5tDtkJ6Qad9UX8JtuemDIUxC1m0SrMes2agATORSXjyJsvfdYC+Wj+iAnM
	+znDEwaPVbSUvRvNl93Dstd3AuNgqC23QTt0Evp2N7G66b0bIN3jrFn6KjHKqYvUW8PWiLkD8cVYJ
	0ee/7RPB6ZQaKKSkzfShlwTQaUML7haj95SvugrS8Orz5tc9TxgrDUUj4HtOLssF/THotY5oSRccU
	lqQCQjIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmuM-0000000DAuU-3Enx;
	Mon, 06 Jul 2026 17:15:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmuM-0000000DAuH-1O4e
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 17:15:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CED5141676;
	Mon,  6 Jul 2026 17:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69C1D1F000E9;
	Mon,  6 Jul 2026 17:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783358101;
	bh=FLCkRFY/xZawZM4IfpyQEQBqFJQifdjTe2UFwHN+pbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VJFrGpJJi0WdJNBZtw4v4b+k6Zqo9dKSW5u3hd7vNaqe7DRoSA3roX+lo8tzwWPFZ
	 K1TViY4xZvQQiOF8+PF4HjiGkJfplG5LjYwmIzsFKVRG+XxlGYomGz5Vkwq95amvdx
	 4zKPi5OQvVVaTlisaZtCHrIUvXLxnkqOzbxAnmv8h9TVZgfseJbA5cDFYpTDEV+ySc
	 5VBBboakFE94TO9Hs6IKFdMnD6xRpVR7ac94ZnKkZ1pzArVTbiuCwyb/j5aliMrWeY
	 b7Zsl7te9dxAspf/EMLA7iwGhksS8dopDR+/KyNe1c+kH8K7eK3tQ/NojTG/Iq6BMT
	 7oMlJvppDzAnQ==
Date: Mon, 6 Jul 2026 18:14:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
Message-ID: <20260706-visitor-calorie-b805ac5af970@spud>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8318274826853670204=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8318274826853670204==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EHPotJN9Y/7sp6ZZ"
Content-Disposition: inline

--EHPotJN9Y/7sp6ZZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 05, 2026 at 01:11:02PM +0300, Ivaylo Dimitrov wrote:
> The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
> for DCP detection.

This is not currently true, the driver does not look for this interrupt
at the time of this patch.

> Update the binding and example DTS to use the corresponding
> "chrg_det" interrupt name.

Sounds to me like this new interrupt is optional, since until now it has
not been needed? The patch however makes it mandatory. I think your
driver patch also makes it mandatory, which will break older
devicetrees.

What makes this ABI break okay?

Thanks,
Conor.

>=20
> Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> ---
>  .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml     | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy=
=2Eyaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> index 0febd04a61f4..523a8f8480d0 100644
> --- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> @@ -30,6 +30,7 @@ properties:
>        - description: se1 interrupt
>        - description: dm interrupt
>        - description: dp interrupt
> +      - description: charger detection interrupt
> =20
>    interrupt-names:
>      description: Interrupt names
> @@ -43,6 +44,7 @@ properties:
>        - const: se1
>        - const: dm
>        - const: dp
> +      - const: chrg_det
> =20
>    io-channels:
>      description: IIO ADC channels used by the USB PHY
> @@ -91,10 +93,10 @@ examples:
>          interrupts-extended =3D <
>              &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
>              &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
> -            &cpcap 48 1
> +            &cpcap 48 1 &cpcap 13 0
>          >;
>          interrupt-names =3D "id_ground", "id_float", "se0conn", "vbusvld=
",
> -                          "sessvld", "sessend", "se1", "dm", "dp";
> +                          "sessvld", "sessend", "se1", "dm", "dp", "chrg=
_det";
>          io-channels =3D <&cpcap_adc 2>, <&cpcap_adc 7>;
>          io-channel-names =3D "vbus", "id";
>          vusb-supply =3D <&vusb>;
> --=20
> 2.39.5
>=20

--EHPotJN9Y/7sp6ZZ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakvikAAKCRB4tDGHoIJi
0v+aAP9LtdSSmr/h68scZGIFlgV6ysH5j3UmXqH1E2gDLiQUNwEA3nVaHeU2gU7A
6DvEFs8Okg6Y6JMPXLUM2uDUSeiDOwY=
=kZwB
-----END PGP SIGNATURE-----

--EHPotJN9Y/7sp6ZZ--


--===============8318274826853670204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8318274826853670204==--

