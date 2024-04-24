Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17592C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 12:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9kaaTzcsMDb3K5pnQYVEqNK/3b4cPV1Zi45rAukbDI0=; b=cSrK8oi48daP4Yfp7cIaKG5LqB
	vgZkc1tnY6+yNeebhmbWw8cU8qJUNPH06VccksJu1VCbgdYR45imcuk0R+WUXpf1OPj6500mTEr4R
	p9c72+VAIQCFN0leg6iJkHh+Vl2Bg7ELnX9myiMTVydadEenAMNyrwWmvDLFEcc/AAs+HqTU1yTFQ
	twJmnRWjM1zfuv0PiRzW2JWbyUvjp1Y4nwRpb8w7WBxkF1wa5stvKythK9QG0heH9ixZNPx0DChDs
	VgdE7Hq+w4RqsV/a0nfEVG78hq1QLOgdsGuaAHb4u6wM15QGP/eguLzk/v1mZ1Qsm1kz1+KmUM9lG
	DN5GDtWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbMe-00000003zVL-315d;
	Wed, 24 Apr 2024 12:04:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbMX-00000003zUC-1qjd;
	Wed, 24 Apr 2024 12:04:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 383B761A2F;
	Wed, 24 Apr 2024 12:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BE34C113CE;
	Wed, 24 Apr 2024 12:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713960271;
	bh=pYYOLqQqvUPgIBFX7QGymQlQHxbe30l4/QeB1EAN03A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fNKbxxd8hXnmn5DUGCaxpL6+4VAhvQIszoAWYHbgTsYPLSivwzvqolBSi99q+rY+T
	 2cxBhivMbfFEhz8JK8evCD52NpidHF24ZNzdtzB1gGkUGVSXWYu3O7XDv5dGAZTffp
	 d7yp+prjgdUwnq2GGbkFm/LL2Z1xSt4v2w4ELUnP+6O6UcNBA0iYgjl0u6gcmLkE4p
	 2ZCrLikzHQ3TEaQErrELp2cORASIWSRpmoDhWmBdNQ9hiNwrjt/nLTsFKTA5kNqOnV
	 n+/5HIZboWw/Fx1gqv6qDXel1GN7UOYss230u1QDPWk7sdKkIUl48aENrBxaksyixn
	 dy9L9CaJbnijw==
Date: Wed, 24 Apr 2024 13:04:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240424-lustfully-region-826b9570bc38@spud>
References: <1713939683-15328-1-git-send-email-hongxing.zhu@nxp.com>
 <1713939683-15328-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1713939683-15328-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_050433_608556_41029903 
X-CRM114-Status: GOOD (  20.35  )
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
Content-Type: multipart/mixed; boundary="===============3565860531473479007=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3565860531473479007==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FnrRZ8qNOS4RlZZi"
Content-Disposition: inline


--FnrRZ8qNOS4RlZZi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 02:21:22PM +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> Introduce one HSIO configuration 'fsl,hsio-cfg', which need be set at
> initialization according to board design.
>=20
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8qm-hsio.yaml         | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio=
=2Eyaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml b=
/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> new file mode 100644
> index 000000000000..3e2824d1616c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8qm-hsio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8QM SoC series HSIO SERDES PHY
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qm-hsio
> +      - fsl,imx8qxp-hsio
> +  reg:
> +    minItems: 4
> +    maxItems: 4
> +
> +  "#phy-cells":
> +    const: 3
> +    description:
> +      The first defines the type of the PHY refer to the include phy.h.
> +      The second defines controller index.
> +      The third defines the lane mask of the lane ID, indicated which
> +      lane is used by the PHY. They are defined as HSIO_LAN* in
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
> +  fsl,hsio-cfg:
> +    description: Refer macro HSIO_CFG* include/dt-bindings/phy/phy-imx8-=
pcie.h.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  fsl,refclk-pad-mode:
> +    description:
> +      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
> +      refclock is derived from SoC internal source), INPUT(PHY refclock
> +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> +      is derived from SoC internal source and provided on the refclk pad=
).
> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> +      to be used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: IMX8_PCIE_REFCLK_PAD_OUTPUT

My comments on this are still not addressed. Please go back and read my
comments about this property on v1.

--FnrRZ8qNOS4RlZZi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZij1SwAKCRB4tDGHoIJi
0sB9AQCUlEN4Y+iM2h4RLoTcf+CyW85JNz9s592IJ1e0LbfxeAD/daenH3uvdPSY
R6e+lzBzHxm/BsOJDs7cEViLd9gIzQA=
=wBaM
-----END PGP SIGNATURE-----

--FnrRZ8qNOS4RlZZi--


--===============3565860531473479007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3565860531473479007==--

