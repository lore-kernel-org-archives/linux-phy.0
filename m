Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 658BACD6E60
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 17:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bK1m8VdzTSaWkanRZP/8ugmnHOL9SVIpFgnvDIFXkmY=; b=bpUPDaEyQ6jJKIJXqs6F+k847S
	4yfn5Lcpqq2EjQ8k1TNURsWM5u2FT/H9wlkM2n0PNzPK5Wtu7ftdjFqmmf2yBP2TjgnV7QsB9LYyJ
	S7BotckwvcMAG/5ox5bla9Fq+rXuF0PTSMtutphb8NF3ptJVMkZkiHmb01oDPLa2Whjp0hHyUixjg
	IGf7jPIIzDCHpkPn02eEkY3M4/VIgktlK0/WpnC5mI24HfbXJNwxeAATH9kYvgI3yBArkPC44F4eQ
	LEPOxUKhwABwVPEn4ksQz+HcVavQFWPp0v8IgmGGBV5aNFNQALgqkEIrPXxuRupsc2IHPAYy84Swn
	J/aoeyWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSdQ-0000000DYR5-0l6m;
	Tue, 02 Jun 2026 17:10:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSdP-0000000DYQT-0j2i
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 17:10:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 94AE36001A;
	Tue,  2 Jun 2026 17:10:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FCDD1F00893;
	Tue,  2 Jun 2026 17:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780420234;
	bh=i/en7+8HojSHi0MvEHGr86FSHPB5AGR4O71fxPEOlyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LAd3CSwk9yVv/liyVbi2R3k1568YMkE3t58cyMLeXYOUYU6009lirHYfRR4HSWDyM
	 Yjg+6Fdju5QzBVbvyg3lexS/BqDBzqWqkmzJCvPt9UGWSPCpd2S6iooU4lXt7JH+rI
	 Gjy991apsysCaFo9p0WTzVHkc5GkYqTjtoWRN3e9twwWGg8Jsjn3tZ4z8VDiJYWuDx
	 XuVsyFvle7yACeSRAdPmUk55pfAXZgQH7vEjMODbxB+s8Wg9WBmRNlwaE+z7N1/9VU
	 yf1LM7YvajrGa8Cw+RjBz0AR69lY6eZuQ4FbAbFpkhXzuY8HRCCE6CB2jovJwEGX7x
	 9+Ra5c+7gUW1Q==
Date: Tue, 2 Jun 2026 18:10:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 phy-next 13/15] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260602-reviving-aging-a7d066d2448b@spud>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
 <20260529171509.1163787-14-vladimir.oltean@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260529171509.1163787-14-vladimir.oltean@nxp.com>
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
Content-Type: multipart/mixed; boundary="===============2390071475100104317=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2390071475100104317==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n43cmaynV/qxZXqy"
Content-Disposition: inline


--n43cmaynV/qxZXqy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 29, 2026 at 08:15:07PM +0300, Vladimir Oltean wrote:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
>=20
> We allow both forms of #phy-cells =3D <1> in the top-level provider
> and #phy-cells =3D <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
>=20
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
>=20
> v1->v2:
> - move patch later in series, right before driver
> - deliberately ignoring this Sashiko feedback:
>   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@skbuf/
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.ya=
ml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Do=
cumentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..993f076bba4e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,131 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Lynx 10G SerDes PHY
> +
> +maintainers:
> +  - Vladimir Oltean <vladimir.oltean@nxp.com>
> +
> +description:
> +  The 10G Lynx is a multi-protocol SerDes block which handles networking=
, PCIe,
> +  SATA and other high-speed interfaces. It is present on most QorIQ and
> +  Layerscape SoCs. The register map is common, but the integration is
> +  SoC-specific, with the differences consisting in register endianness, =
the
> +  number of lanes, protocol converters available per lane and their loca=
tion in
> +  the PCCR registers. Some SoCs have multiple SerDes blocks and those di=
ffer in
> +  their protocol capabilities per lane.
> +
> +properties:
> +  compatible:
> +    description:
> +      There is intentionally no generic fsl,lynx-10g compatible string d=
ue to
> +      the hardware inability to report its capabilities, despite having a
> +      common register map.

I think you can probably drop this from the diff, and put it in the
commit message.

> +    enum:
> +      - fsl,ls1028a-serdes
> +      - fsl,ls1046a-serdes1
> +      - fsl,ls1046a-serdes2
> +      - fsl,ls1088a-serdes1
> +      - fsl,ls1088a-serdes2
> +      - fsl,ls2088a-serdes1
> +      - fsl,ls2088a-serdes2
> +
> +  reg:
> +    maxItems: 1
> +
> +  big-endian: true

This isn't a required property, but should it be made required for the
specific compatibles that are big endian? Or are we not that lucky, and
devices can be either?

Cheers,
Conor.

> +
> +  "#phy-cells":
> +    const: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^phy@[0-7]$":
> +    type: object
> +    description: SerDes lane (single RX/TX differential pair)
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +        description: Lane index as seen in register map
> +
> +      "#phy-cells":
> +        const: 0
> +
> +    required:
> +      - reg
> +      - "#phy-cells"
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,ls1028a-serdes
> +              - fsl,ls1046a-serdes1
> +              - fsl,ls1046a-serdes2
> +              - fsl,ls1088a-serdes1
> +              - fsl,ls1088a-serdes2
> +    then:
> +      patternProperties:
> +        "^phy@[0-7]$":
> +          properties:
> +            reg:
> +              minimum: 0
> +              maximum: 3
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      serdes@1ea0000 {
> +        compatible =3D "fsl,ls1028a-serdes";
> +        reg =3D <0x0 0x1ea0000 0x0 0xffff>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        #phy-cells =3D <1>;
> +
> +        phy@0 {
> +          reg =3D <0>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@1 {
> +          reg =3D <1>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@2 {
> +          reg =3D <2>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@3 {
> +          reg =3D <3>;
> +          #phy-cells =3D <0>;
> +        };
> +      };
> +    };
> --=20
> 2.34.1
>=20

--n43cmaynV/qxZXqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCah8OhgAKCRB4tDGHoIJi
0jTqAP9uJkBzy69VGT2auMd4hx6xT/BKOZEXAUBGygySolIGXAD+JF9xbx2hIJkG
SxA0ONlLt2s32aARx9lck5Xxwud3SQc=
=EkQN
-----END PGP SIGNATURE-----

--n43cmaynV/qxZXqy--


--===============2390071475100104317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2390071475100104317==--

