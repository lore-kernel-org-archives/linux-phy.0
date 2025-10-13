Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84997CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 19:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KLh4s1ltF6eX9f7QJG3SnAxBf9E65W8Az8CebmfdAC4=; b=oWjn0p13sKG6QC+pR4l7wHETwL
	Mea2prI6RJ3o2Bnpej9B4RxrTTEoY5jPtiJGN+7LRBDAJmYbw4nZglBAGVTdGykfJ7wx58F2fNoA6
	TBPaIBVhdnqemw06unlbQnSrz+js+sHQ7HygZC5suzruzygJhJl+4iyjGTUFfftN0eET1yrEe95o9
	C1BPTSU0UZKDRbT2O1cHXm8kT2iuRAJbAzV1tgwaqmtQcEpGZggqzewdGcS8HaWnAsdN5lDhZ9GwO
	7koUXjZqrkgc4gVWXkvpA3f4la4cbK5NcJAcd+zMIS3O3TW/opwPDBemnwoYsaPWDr5iL2SOxPC7M
	kO5jP+Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8OQf-0000000EJOB-0Gvh;
	Mon, 13 Oct 2025 19:41:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8OQc-0000000EJNq-10jo
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 19:41:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BA90A41923;
	Mon, 13 Oct 2025 19:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B55AC4CEE7;
	Mon, 13 Oct 2025 19:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760384513;
	bh=TN4iB2CJGrf00fYoivIs8F3mcv13g9G1yoNmREgyI0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GdGJrebmezTWKGSpgumj7LiBG9RZrMcJlphUgq6ShxzzH8Wcdd4IVA+ZISQJkCofy
	 f0lHmzx9WsKVJrSMAX37Bw+O0ZyaDj+zCAJwT5TIqmn0bfI3ef3KSAfmnrlkMlXHK3
	 w5srV80rWymr9pr0Er+zXtUlIu5KWpax8LmkN+GYBxsTvojJudop+mXd0wtq71oT7C
	 tT66J0zzxPRlBln3a2hNMdGLuh9UjcYrt+fGnok7CuTLCQ9vGXKpjuR8lDwi+l7scs
	 4rCL2gFUDSFe1qV2DasKvIhzy3lQQ9Gyx3CFbXPfMKYF8MrcvS7WQscWQHCoBmJY6k
	 fJVQVSdpaXhFg==
Date: Mon, 13 Oct 2025 20:41:49 +0100
From: Conor Dooley <conor@kernel.org>
To: dimitri.fedrau@liebherr.com
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dimitri Fedrau <dima.fedrau@gmail.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Message-ID: <20251013-supplier-edition-0ffc88286b5d@spud>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-1-4a9d245fe067@liebherr.com>
MIME-Version: 1.0
In-Reply-To: <20251013-tja1145-support-v3-1-4a9d245fe067@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_124154_342341_EBE0870F 
X-CRM114-Status: GOOD (  19.74  )
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
Content-Type: multipart/mixed; boundary="===============3715888316882745453=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3715888316882745453==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gDq1zSAoM2zKWAOI"
Content-Disposition: inline


--gDq1zSAoM2zKWAOI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 11:19:18AM +0200, Dimitri Fedrau via B4 Relay wrote:
> From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
>=20
> Adding documentation for NXPs TJA1145 CAN transceiver, which resides like
> the ti,tcan104x-can.yaml in the same directory as other generic PHY
> subsystem bindings. At the moment there is only support for simple PHYs
> by using regulator bindings in combination with can-transceiver.yaml or
> PHYs that implement the generic PHY subsystem like the NXP TJA1145.
>=20
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> ---
>  .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++=
++++++
>  1 file changed, 79 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml b=
/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..3b81a2e1ead8452ed5fcf2021=
f33d628d4e12346
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nxp,tja1145-can.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TJA1145 CAN transceiver
> +
> +maintainers:
> +  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: nxp,tja1145-can

I'd drop the -can here, since I don't think the device can be anything
else?

> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  spi-max-frequency:
> +    maximum: 4000000
> +
> +  spi-cpha: true

Is this optionally cpha or always? I'd mark it required if it is always
needed for the device to function.

> +
> +  spi-cs-setup-delay-ns:
> +    minimum: 50
> +    default: 50
> +
> +  spi-cs-hold-delay-ns:
> +    minimum: 50
> +    default: 50
> +
> +  spi-cs-inactive-delay-ns:
> +    minimum: 250
> +    default: 250
> +
> +  vcc-supply:
> +    description:
> +      CAN transceiver supply voltage
> +
> +  vio-supply:
> +    description:
> +      Supply voltage for I/O level adaptor
> +
> +  vbat-supply:
> +    description:
> +      Battery supply voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +unevaluatedProperties: false

If the properties you've listed above from spi-peripheral-props are the
only ones suitable for the device, I think additionalProperties: false
is sufficient here.

Cheers,
Conor.

pw-bot: changes-requested

> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        can-phy@0 {
> +            compatible =3D "nxp,tja1145-can";
> +            reg =3D <0>;
> +            #phy-cells =3D <0>;
> +            spi-max-frequency =3D <4000000>;
> +            spi-cpha;
> +            spi-cs-setup-delay-ns =3D <50>;
> +            spi-cs-hold-delay-ns =3D <50>;
> +            spi-cs-inactive-delay-ns =3D <250>;
> +            vcc-supply =3D <&reg_5v0>;
> +            vio-supply =3D <&reg_3v3>;
> +            vbat-supply =3D <&reg_24v0>;
> +        };
> +    };
>=20
> --=20
> 2.39.5
>=20
>=20

--gDq1zSAoM2zKWAOI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaO1V/QAKCRB4tDGHoIJi
0h2TAPoCuPTog2pckMDH53JpNnuwMSfjkLpKZLkadls23rdiuwEAjRbEuCE6RjC1
aOal4qmhslM7N0QDXfw58Aq3RHwJ7QA=
=cLzX
-----END PGP SIGNATURE-----

--gDq1zSAoM2zKWAOI--


--===============3715888316882745453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3715888316882745453==--

