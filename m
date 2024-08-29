Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E634CC83F2D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 16:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TaHjr4PoeMVXQIggttzzNkLFzdzteI63QRwADxhq+lU=; b=UkxGePnZmoKQm5X0OMjXOafUeq
	oYldHzd1R34kxF6J5wgqAlHncGX9+Jv4vYaOGfIrY4Q6Q/hVe52EZ2rSYtDyoKP8Eu6Rz6QYsaVG1
	0XPAQ5gYVQz4iDtQlPu9SWMw1hki1Jh0Z/ljDKcqLLDFJVDIJh90x5AJlUW1l42uVbJwWAgPQnlIC
	l40Rpo4bur+Vf7D0gHvAs2mOXjRhezpZHs4m58OQQqXsubTFy4b/EwlhNo/Je0/Y7qGxEcW4kaGAs
	ojGuGgp98HHORSZeiCK9oplBNKKUI5AESXT8iGu+1GieXOBmC06e1NEc7UliBgTXNBaEwGtAE5RHc
	fw7djXnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjhrC-00000002neN-2YSr;
	Thu, 29 Aug 2024 16:18:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjhqr-00000002nWf-0c38
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 16:18:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 48F9BCE1BA4;
	Thu, 29 Aug 2024 16:18:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B1F8C4CEC5;
	Thu, 29 Aug 2024 16:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724948301;
	bh=0DFCIEnpEsAW/SjC51AnwDz3RJhoIFR9GB8cHGV8p5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UAGJi+B9G7+ByyYTIff3xkkjmNTvtXetrK7MraXov7GbqBK4stVR39FvWENtwLR2y
	 DiS6pkiibezMP1HXyHh0jQvBRZcUNV216gv7u55c+LduKII9t7gur38dgEwaaTc0WJ
	 6IMawqXsQvaRLr8ynXiHoRLOSW/X3LJKZmY7kj0jb6uJ2EkN8dCRz8oZ6e8jJaWeo+
	 Me8/i22BFG48bmjL5K9LF6vXvbNzrgUcN3ms38IQPVzEqtTt3HKp9gWZSFOd9nDabb
	 FUQ74IrtCj095vhYzPK6hUgnn1pSQsVeAi+4JER9g0V9hm9A/4/S4V8GaAadxBUhpL
	 MietOEiOgq9rA==
Date: Thu, 29 Aug 2024 17:18:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2
 redriver
Message-ID: <20240829-dandy-jingle-1002fb99b900@spud>
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
 <20240829-nxp-ptn3222-v1-1-46906bc4747a@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240829-nxp-ptn3222-v1-1-46906bc4747a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_091825_719784_72FD5905 
X-CRM114-Status: GOOD (  16.33  )
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
Content-Type: multipart/mixed; boundary="===============0479386008760043318=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0479386008760043318==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lb2JHJxD1qBMGfou"
Content-Disposition: inline


--lb2JHJxD1qBMGfou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 11:21:13AM +0300, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/nxp,ptn3222.yaml       | 55 ++++++++++++++++=
++++++
>  1 file changed, 55 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml b/Doc=
umentation/devicetree/bindings/phy/nxp,ptn3222.yaml
> new file mode 100644
> index 000000000000..acec5bb2391d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nxp,ptn3222.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP PTN3222 1-port eUSB2 to USB2 redriver
> +
> +maintainers:
> +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nxp,ptn3222
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  vdd1v8-supply:
> +    description: power supply (1.8V)

As a nit, these descriptions could just be ": true" like the
reset-gpios, they're equally obvious.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> +
> +  vdd3v3-supply:
> +    description: power supply (3.3V)
> +
> +  reset-gpios: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        redriver@4f {
> +            compatible =3D "nxp,ptn3222";
> +            reg =3D <0x4f>;
> +            #phy-cells =3D <0>;
> +            vdd3v3-supply =3D <&vreg_3p3>;
> +            vdd1v8-supply =3D <&vreg_1p8>;
> +            reset-gpios =3D <&gpio_reset GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +...
>=20
> --=20
> 2.39.2
>=20

--lb2JHJxD1qBMGfou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZtCfSAAKCRB4tDGHoIJi
0g0vAP0ULmArYvwsKhDXcZT3/4k+oqLJV5IRg5A/j6KAIiP0kAEA3keLUf3OdneN
T8XD0nEmiPfqLNo/YVZtsIw/VcqqsQ4=
=tE0b
-----END PGP SIGNATURE-----

--lb2JHJxD1qBMGfou--


--===============0479386008760043318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0479386008760043318==--

