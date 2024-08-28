Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4096BC636E3
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zIt9Wfvj5eXx/X//9YDEa1JdMShBa1FU6dyt/xt5doA=; b=VTVVe5/GlMf5koHRZG9aoZJuX5
	q/XdfKFYm0wM6kUZnmj2sphwo2K/wqQCam71mEYKXtrhw9z+tRNiO8sbInUAgQWd92pL+ov9JH6ca
	3GsN5f5Boo49skdSPd0XRwK9UZLVFoDwWbbtpGnVY4Gy8xZBl4lEQLSBuV8/1RXdpiqsEjIX7ZxaX
	cnjsc4zkc3942AHYmTJVERqVLYqIbSpUMbAIjJxv6d17TE+YIxQhVKuXdgEoFHVRHcT5S6qiiBagg
	URTOHSYC1M7D+DiuHN85vh1WCgq2pskTgbR5CFMji8kQn6Of/cSCOO5vi7dZD6yv/6Hh09R5nRbP1
	xmTV3jXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjLqH-0000000GFO6-3hg4;
	Wed, 28 Aug 2024 16:48:21 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjLpQ-0000000GFGX-2OJJ;
	Wed, 28 Aug 2024 16:47:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 47276A428B6;
	Wed, 28 Aug 2024 16:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BC89C4CABF;
	Wed, 28 Aug 2024 16:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724861477;
	bh=9CtFrh3gKyelJvHQtwXVoL7gTTFZNFMEbrIHkpQX020=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=guNWp2bD47/n92FQffLtDnx3F/38XLD7Q9FpHV2RCXj3jzotPNdPUO5BN+pHTfu69
	 EW4MmLD5CEf3UXMqKMeS6UDdhEH2v6vFNL0fsdGp1Iz+Qgb0+IIa0pfk2D4yuHTXFF
	 6LJhk6iD+rWsuaQ67bNl8uKCVi2ykNQLf9Ibmu5j9HqHq7/2aEvHeRRMphWNlobXkP
	 WkgcHxUTV+M2fC0FlDCqLN4IcEHUU2M5OCSaBiBuyYkx3NRAxMOjdvryiHPNYxtmy6
	 LDID3U86Onq4+mMmfPEqQRnguSDzZYjCBP8ugKTLsAktMs35GZMxKn9Ym3aygxWYij
	 C1I9T80hbocoQ==
Date: Wed, 28 Aug 2024 17:11:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <20240828-handsfree-overarch-cd1af26cb0c5@spud>
References: <20240828143452.1407532-1-christian.bruel@foss.st.com>
 <20240828143452.1407532-2-christian.bruel@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <20240828143452.1407532-2-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_094728_751646_E00B7CD6 
X-CRM114-Status: GOOD (  25.10  )
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
Content-Type: multipart/mixed; boundary="===============5095203310922427685=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5095203310922427685==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZqexDgeCbf5zKW3c"
Content-Disposition: inline


--ZqexDgeCbf5zKW3c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2024 at 04:34:48PM +0200, Christian Bruel wrote:
> Document the bindings for STM32 COMBOPHY interface, used to support
> the PCIe and USB3 stm32mp25 drivers.
> Following entries can be used to tune caracterisation parameters
>  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> to tune the impedance and voltage swing using discrete simulation results
>  - st,rx-equalizer register to set the internal rx equalizer filter value.
>=20
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/phy/st,stm32mp25-combophy.yaml   | 128 ++++++++++++++++++
>  1 file changed, 128 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32mp25-co=
mbophy.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.=
yaml b/Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
> new file mode 100644
> index 000000000000..8d4a40b94507
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/st,stm32mp25-combophy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32MP25 USB3/PCIe COMBOPHY
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description:
> +  Single lane PHY shared (exclusive) between the USB3 and PCIe controlle=
rs.
> +  Supports 5Gbit/s for USB3 and PCIe gen2 or 2.5Gbit/s for PCIe gen1.
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-combophy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: apb Bus clock mandatory to access registers.
> +      - description: ker Internal RCC reference clock for USB3 or PCIe
> +      - description: pad Optional on board clock input for PCIe only. Ty=
pically an
> +                     external 100Mhz oscillator wired on dedicated CLKIN=
 pad. Used as reference
> +                     clock input instead of the ker
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: apb
> +      - const: ker
> +      - const: pad
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: phy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  wakeup-source: true
> +
> +  interrupts:
> +    maxItems: 1
> +    description: interrupt used for wakeup
> +
> +  access-controllers:
> +    minItems: 1
> +    maxItems: 2

Can you please describe the items here?

> +  st,syscfg:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the SYSCON entry required for configuring PC=
Ie
> +      or USB3.

Why is a phandle required for this lookup, rather than doing it by
compatible?

> +
> +  st,ssc-on:
> +    type: boolean

flag, not boolean, for presence based stuff. And in the driver,
s/of_property_read_bool/of_property_present/.

> +    description:
> +      A boolean property whose presence indicates that the SSC for commo=
n clock
> +      needs to be set.

And what, may I ask, does "SSC" mean? "Common clock" is also a bit of a
"linuxism", what does this actually do in the hardware block?

> +
> +  st,rx-equalizer:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    default: 2
> +    description:
> +      A 3 bit value to tune the RX fixed equalizer setting for optimal e=
ye compliance
> +
> +  st,output-micro-ohms:
> +    minimum: 3999000
> +    maximum: 6090000
> +    default: 4968000
> +    description:
> +      A value property to tune the Single Ended Output Impedance, simula=
tions results
> +      at 25C for a VDDP=3D0.8V. The hardware accepts discrete values in =
this range.
> +
> +  st,output-vswing-microvolt:
> +    minimum: 442000
> +    maximum: 803000
> +    default: 803000
> +    description:
> +      A value property in microvolt to tune the Single Ended Output Volt=
age Swing to change the
> +      Vlo, Vhi for a VDDP =3D 0.8V. The hardware accepts discrete values=
 in this range.
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +  - resets
> +  - reset-names
> +  - st,syscfg

The order here should reflect the ordering in a node, so compatible and
reg first, rather than sorted alphanumerically.=20

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    combophy: phy@480c0000 {

You can drop the label here, it ain't used by anything.

Cheers,
Conor.

> +        compatible =3D "st,stm32mp25-combophy";
> +        reg =3D <0x480c0000 0x1000>;
> +        #phy-cells =3D <1>;
> +        clocks =3D <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>;
> +        clock-names =3D "apb", "ker";
> +        resets =3D <&rcc USB3PCIEPHY_R>;
> +        reset-names =3D "phy";
> +        st,syscfg =3D <&syscfg>;
> +        access-controllers =3D <&rifsc 67>;
> +        power-domains =3D <&CLUSTER_PD>;
> +        wakeup-source;
> +        interrupts-extended =3D <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
> +    };
> +...
> --=20
> 2.34.1
>=20

--ZqexDgeCbf5zKW3c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZs9MIAAKCRB4tDGHoIJi
0rh1AQCPLBp07OqC6pb/M6pgsgJC3wD1Sth/EdmLd/aA+HbfbQD/UrdgsGoXy9Qq
CdxZUx/rJtHiFAP20+3XyjwVb1Gy1gU=
=onYf
-----END PGP SIGNATURE-----

--ZqexDgeCbf5zKW3c--


--===============5095203310922427685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5095203310922427685==--

