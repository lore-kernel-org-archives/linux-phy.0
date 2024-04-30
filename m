Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FC8C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 17:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7fTV7fWAgim0aROfm9c+RbDESjgzp6/FQ83LKnqi+o0=; b=IO7DDKnpPsbFaSW9In+Il089sO
	bFsumoL3+qkSdjZRR2Zbxg+85TPSwEzib5930K7RLLsd55bvXTS6A2qJqU+EmYIGnbNCbqU1sGRai
	JY5YYjz/S4xLxRQJ3Q73espjoOA2rRe70JLpsBWO0Rk+9HREQaOVuQbUAsNFojgwq6YpLthdhloqD
	JrIqdb4vu3PAGv2mt+wleXR9bZ4CznjJZIuHDU5/7GtyZP34SO6DTn8XMNM1NOv2PGqbSVOvQ22aQ
	3BYisnHEChCDSzNNZu+2P4AYk3czeU0grixCJW22D0owU5y6d6GR19EJEwdk9q+yy4akZg6ynyG8N
	i7xaJFUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qyv-00000007NFr-440e;
	Tue, 30 Apr 2024 17:09:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qyt-00000007NED-0Lg7
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 17:09:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 607ED614A9;
	Tue, 30 Apr 2024 17:09:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8D03C2BBFC;
	Tue, 30 Apr 2024 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714496966;
	bh=vja6Gc4p2Q66vSyZ6Xt49ZUAyf09TFCpHOb3xnXdX6c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NMPWirFZsEMJVL/LFnFVOkPCZAR7LC431C35R5CzyBoU7dRboQibAol0Ir/PhVDA/
	 2NLQs+e44EoBoxUplvZq8Zg/+6alscnUsGZlT0cIxFQk3Z7NBnf1n8fjgCDc/TS8XB
	 UKEZ7z5enHFKyJ+bN+2Bu6OXPIEefa1B1cf/pg/CLohkohsDPX/UNTGgx97OXhJB1p
	 eDSv19pu8XQ/NDvdxXt88RO0GsZ/vk6c7gxjHBmBINZpmAijd7uvbnrNp8u1bL9UKT
	 ySBZ10ptsaB34uYdI3ByA94rLlJ3VoEQweQlumsYP6RCCILhHfZiROk5dHcHxmx26P
	 d9gZiP6qDHXkQ==
Date: Tue, 30 Apr 2024 18:09:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Liu Gui <kenneth.liu@sophgo.com>,
	Jingbao Qiu <qiujingbao.dlmu@gmail.com>, dlan@gentoo.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add Sophgo CV1800 USB phy
Message-ID: <20240430-crummiest-overnight-0f46dba32bb8@spud>
References: <IA1PR20MB4953182B8EDB465430289400BB1B2@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB495355A4186420B78BD78F49BB1B2@IA1PR20MB4953.namprd20.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <IA1PR20MB495355A4186420B78BD78F49BB1B2@IA1PR20MB4953.namprd20.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_100927_239093_F41C08AD 
X-CRM114-Status: GOOD (  22.00  )
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
Content-Type: multipart/mixed; boundary="===============1360760008382080129=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1360760008382080129==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y6Qu6OsLbTAKgDXe"
Content-Disposition: inline


--y6Qu6OsLbTAKgDXe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 29, 2024 at 08:31:11AM +0800, Inochi Amaoto wrote:
> The USB phy of Sophgo CV18XX series SoC needs to sense a pin called
> "VBUS_DET" to get the right operation mode. If this pin is not
> connected, it only supports setting the mode manually.
>=20
> Add USB phy bindings for Sophgo CV18XX/SG200X series SoC.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> ---
>  .../bindings/phy/sophgo,cv1800-usb-phy.yaml   | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/sophgo,cv1800-u=
sb-phy.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.=
yaml b/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml
> new file mode 100644
> index 000000000000..7e3382c18d44
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/sophgo,cv1800-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo CV18XX/SG200X USB 2.0 PHY
> +
> +maintainers:
> +  - Inochi Amaoto <inochiama@outlook.com>
> +
> +properties:
> +  compatible:
> +    const: sophgo,cv1800-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: PHY clock
> +      - description: PHY app clock
> +      - description: PHY stb clock
> +      - description: PHY lpm clock
> +
> +  clock-names:
> +    items:
> +      - const: phy
> +      - const: app
> +      - const: stb
> +      - const: lpm
> +
> +  vbus_det-gpios:

"vbus_det-gpios" isn't a common property AFAICT, why does it not get a
vendor prefix when the other gpios property does?

> +    description: GPIO to the USB OTG VBUS detect pin. This should not be
> +      defined if vbus_det pin and switch pin are connected, which may
> +      break the VBUS detection.
> +    maxItems: 1
> +
> +  sophgo,switch-gpios:
> +    description: GPIO array for the phy to control connected switch. For
> +      host mode, the driver will set these GPIOs to low one by one. For
> +      device mode, the driver will set these GPIOs to high in reverse
> +      order.
> +    maxItems: 2

You're still missing the itemised description of what each of the gpios
here are - how would I know which order to put the GPIOs in?

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    phy@48 {
> +      compatible =3D "sophgo,cv1800-usb-phy";
> +      reg =3D <0x48 0x4>;
> +      #phy-cells =3D <0>;
> +      clocks =3D <&clk 92>, <&clk 93>,
> +               <&clk 94>, <&clk 95>;
> +      clock-names =3D "phy", "app", "stb", "lpm";
> +    };
> +
> +...
> --
> 2.44.0
>=20

--y6Qu6OsLbTAKgDXe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjElwAAKCRB4tDGHoIJi
0myGAQCytikGFFNzOVuNwunmCX/BWh68iH4wQrpO1HAqqix/SwD/aZeymHuy/7OY
NHDvTPVtayts2V8zWgNHjDhse4C2fwo=
=phY5
-----END PGP SIGNATURE-----

--y6Qu6OsLbTAKgDXe--


--===============1360760008382080129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1360760008382080129==--

