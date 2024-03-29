Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ABD7C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 15:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4KiOm+LZzNoV5+sJGIoD9ZzUbPYFbZk5rfPelIpchrE=; b=JpVeK7ayCBZU7W6GwnngLIRqUb
	A+XscQKoSNxNzZmcaILQgHUS0SIfUB2fKXFsJyeFpXm0F64CLXsx3APL8FSsXdf0d8hBUCUiAsB8y
	Cn6qCw6IbcGaLq4J60kja6jVdFJop9OB7FLsOgmiTNXcFp1EUqygTdBZu1hKV1kigeq6Xxs60Wb/4
	P8SChkJV9Y5p6dvjyBs4JjDDf/AOMYmFW/L8PoDAVB5oKQThZv4MFkX/VR6Y+YJvTcYFacpX+BjBk
	bRF46wrbpYcNBzWLLRIQVSS1lI7UhUouz5rMj0G6zE0tCX+dqTf5c1wVy/fDlKL+/oXc+rOay7A1D
	wH1l4Mlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqEFt-00000001AsN-3g6p;
	Fri, 29 Mar 2024 15:34:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqEFp-00000001Aq5-2zeW;
	Fri, 29 Mar 2024 15:34:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EEC68CE08C9;
	Fri, 29 Mar 2024 15:34:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 992A3C433C7;
	Fri, 29 Mar 2024 15:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711726491;
	bh=GyTVYnt7AdG3Dd44z6wHTNuYouzZBSyQzP189+huJ7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QjJU9m/mkyOFhkRCA3eJtctpC15kQZZyLV2FpaKA4Od00iBfjRX3Xyhy8dqdHIOmS
	 dVAwt8VDJA029Z4Mpzbr+uJWHUgwdNHL4Yy6glRiUhQa+5D0+TU4HRpPyS4dGM0kd4
	 bdbmMee/ruAWf4KYzi557+z+z8RsyV2yHmtN/dQt27nWiZ1tQ9Lb4TFdFFBvxNmmdn
	 yo0ToNWIjPPtktsbg3G44YDGY5QJJuT2j2UxLTcZiFNMfchRtznSSZi9VgKCl5SFsL
	 /WlSTbKdjAdZxNsCjvtMZPFSbIjVQkntohO7CV5F6nVQrstf3uhhJwt/kRyk41CGsP
	 VSkeCUImnc0zw==
Date: Fri, 29 Mar 2024 15:34:46 +0000
From: Conor Dooley <conor@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	frank.li@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: Re: [PATCH v1 1/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240329-phony-capsule-4e6a07a05771@spud>
References: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
 <1711699790-16494-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1711699790-16494-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_083454_148237_8E7C55E3 
X-CRM114-Status: GOOD (  22.73  )
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
Content-Type: multipart/mixed; boundary="===============8722627214311291956=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8722627214311291956==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cs7IEpTE45To2XyQ"
Content-Disposition: inline


--cs7IEpTE45To2XyQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 29, 2024 at 04:09:48PM +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> - Use the controller ID to specify which controller is binded to the
> PHY.
> - Introduce one HSIO configuration, mandatory required to set
> "PCIE_AB_SELECT" and "PHY_X1_EPCS_SEL" during the initialization.
>=20
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8q-hsio.yaml          | 143 ++++++++++++++++++
>  1 file changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.=
yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml b/=
Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
> new file mode 100644
> index 000000000000..506551d4d94a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
> @@ -0,0 +1,143 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8q-hsio.yaml#

Why doesn't the filename match a compatible?

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8Q SoC series HSIO SERDES PHY
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qxp-serdes
> +      - fsl,imx8qm-serdes
> +  reg:
> +    minItems: 4
> +    maxItems: 4
> +
> +  "#phy-cells":
> +    const: 3
> +    description: |
> +      The first number defines the ID of the PHY contained in the HSIO m=
acro.
> +      The second defines controller ID binded to the PHY. The third defi=
nes the
> +      HSIO configuratons refer to the different use cases. They are defi=
ned in
> +      dt-bindings/phy/phy-imx8-pcie.h
> +
> +  reg-names:
> +    items:
> +      - const: reg
> +      - const: phy
> +      - const: ctrl
> +      - const: misc
> +
> +  clocks:
> +    minItems: 5
> +    maxItems: 14
> +
> +  clock-names:
> +    minItems: 5
> +    maxItems: 14
> +
> +  fsl,refclk-pad-mode:
> +    description: |
> +      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
> +      refclock is derived from SoC internal source), INPUT(PHY refclock
> +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> +      is derived from SoC internal source and provided on the refclk pad=
).
> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> +      to be used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2 ]

Why do we need numbers and a header here at all? The enum should be an
enum of strings input, output & unused. Oh and "unused" can just be
dropped, and not having the property at all would mean "unused".

> +
> +  power-domains:
> +    description: |
> +      i.MX8Q HSIO SerDes power domains. i.MX8QXP has one SerDes power do=
mains.
> +      And i.MX8QM has two.

The text description here can go, your constrains communicate this.

> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - fsl,refclk-pad-mode
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qxp-serdes
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: apb_pclk0
> +            - const: pclk0

Why would you have different ordering for the two devices?

> +            - const: phy0_crr
> +            - const: ctl0_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qm-serdes
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pclk0
> +            - const: pclk1
> +            - const: apb_pclk0
> +            - const: apb_pclk1
> +            - const: pclk2
> +            - const: epcs_tx
> +            - const: epcs_rx
> +            - const: apb_pclk2
> +            - const: phy0_crr
> +            - const: phy1_crr
> +            - const: ctl0_crr
> +            - const: ctl1_crr
> +            - const: ctl2_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 2
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8-clock.h>
> +    #include <dt-bindings/clock/imx8-lpcg.h>
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +    #include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +    serdes: phy@5f1a0000 {

Drop the unused label please.

> +            compatible =3D "fsl,imx8qxp-serdes";
> +            reg =3D <0x5f1a0000 0x10000>,
> +                  <0x5f120000 0x10000>,
> +                  <0x5f140000 0x10000>,
> +                  <0x5f160000 0x10000>;
> +            reg-names =3D "reg", "phy", "ctrl", "misc";
> +            clocks =3D <&phyx1_lpcg IMX_LPCG_CLK_0>,
> +                     <&phyx1_lpcg IMX_LPCG_CLK_4>,
> +                     <&phyx1_crr1_lpcg IMX_LPCG_CLK_4>,
> +                     <&pcieb_crr3_lpcg IMX_LPCG_CLK_4>,
> +                     <&misc_crr5_lpcg IMX_LPCG_CLK_4>;
> +            clock-names =3D "apb_pclk0", "pclk0", "phy0_crr", "ctl0_crr",
> +                          "misc_crr";
> +            power-domains =3D <&pd IMX_SC_R_SERDES_1>;
> +            #phy-cells =3D <3>;

> +            status =3D "disabled";

Drop this status.

Cheers,
Conor.

> +    };
> +...
> --=20
> 2.37.1
>=20

--cs7IEpTE45To2XyQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgbflgAKCRB4tDGHoIJi
0v6bAQDGLQBWxukAIrpMH4pQ8yeDJcd+eREanS8LcXD2Cb58MQD9HSfsSoQREccM
9JP9ZptFGr/5xY9XNxrVwOQBr7oWzQ8=
=7OBA
-----END PGP SIGNATURE-----

--cs7IEpTE45To2XyQ--


--===============8722627214311291956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8722627214311291956==--

