Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D54C3ABC3
	for <linux-phy@archiver.kernel.org>; Tue, 13 May 2025 14:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4hmUbdbncCRT236+Ocm+/OeaDRZTWOVfAalCYK/ZSIs=; b=4MH7Xy5MnVBz1ZHrZshCyJQhTg
	5eabbpxwdPWkncthvlVRjsQPxkyCwkr7JvSQXPqsaGmQpQ8BVCk1UA2Tk2ua1jtqziWKEGQgEKwgp
	tEcXdDXvD3gmjFKNhpSLTPsjbM6gJbzVP1hxpkM7V2brW1JN6YXiO5ReYHhGgTJpRaXyxVOFyd8M1
	xxWJrBhtcI6WQOH+IDTD3Tg9H6mYJW+rUIF+egUPK7E2SdKN5tcbyqC4nBXeiwpi2lq4rdFSLe9s5
	TuWuqJ5B2CDc6YOlhhXRbGgXG9sirsPSjybinY22Q9BViNTgS7hVK/ftxBctRKPd4jIcLh3FS5Vas
	90ra7NeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqwK-0000000Cf7o-2tAi;
	Tue, 13 May 2025 14:49:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqwJ-0000000Cf7b-2eZZ
	for linux-phy@lists.infradead.org;
	Tue, 13 May 2025 14:49:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F0052629EA;
	Tue, 13 May 2025 14:49:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B420BC4CEF3;
	Tue, 13 May 2025 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747147742;
	bh=w+ahJVkjUKW/h+BAOwRzX8f1TQZOhdX5+YcMtNX18mQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O3IONiK2TK3iLZEsLyQ2+CDmN382HnX1jomxJyoY95S58jwRBIF4hbda/Ot92A/yk
	 noxyCwfHLfKs26B8SGZ0BHOkNijdF70zQoWy31LW3ZJd8Zhkw6uFbu0Xaqd8v3jcBE
	 gIxENSsqGX+fSXbzi8SBspcyVEP+vOC5lcswz5mzzCVoYODxZqw0w7KGJs5mQ+R/E1
	 UcccsTQGlXeuAX5FUXhFowcNf4E9In0dhNVslufHdil0Ltzg9Qa8VVH9WDBVvljATX
	 gDuhN6iGFH7bU/tAozVDUx1xC683bkXZGMkFQTCSjAcOcpZtzkSCUQrKw2cp2k/FrA
	 NIu9VwqPdZnnQ==
Date: Tue, 13 May 2025 15:48:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
Message-ID: <20250513-sanction-barricade-4ff7948de1ac@spud>
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
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
Content-Type: multipart/mixed; boundary="===============7194755556522750717=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7194755556522750717==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6XaM8wrPMaFluXjf"
Content-Disposition: inline


--6XaM8wrPMaFluXjf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 05:39:18PM +0300, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
>=20
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

RFC but nothing here about what in particular is RFC about this patch.
What specifically are you looking for comments about?

> ---
>  .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Doc=
umentation/devicetree/bindings/phy/qcom,csiphy.yaml
> new file mode 100644
> index 000000000000..ef712c5442ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI PHY
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> +
> +description: |
> +  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
> +  supports D-PHY or C-PHY interfaces to camera sensors.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sm8250-csiphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdda-csi-0p9-supply:
> +    description: Voltage supply, 0.9V
> +
> +  vdda-csi-1p2-supply:
> +    description: Voltage supply, 1.2V
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    description: CAMSS CSIPHY input port
> +
> +    patternProperties:
> +      "^endpoint@[0-1]$":
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 4
> +
> +          bus-type:
> +            enum:
> +              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +        required:
> +          - data-lanes
> +
> +    oneOf:
> +      - required:
> +          - endpoint
> +      - required:
> +          - endpoint@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - '#phy-cells'
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8250-csiphy
> +    then:
> +      required:
> +        - vdda-csi-0p9-supply
> +        - vdda-csi-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,camcc-sm8250.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    phy@ac6e000 {
> +      compatible =3D "qcom,sm8250-csiphy";
> +      reg =3D <0x0ac6e000 0x1000>;
> +      clocks =3D <&camcc CAM_CC_CSIPHY2_CLK>,
> +               <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
> +      interrupts =3D <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
> +      vdda-csi-0p9-supply =3D <&vreg_l5a_0p88>;
> +      vdda-csi-1p2-supply =3D <&vreg_l9a_1p2>;
> +      #phy-cells =3D <0>;
> +
> +      port {
> +        csiphy_in: endpoint {
> +          data-lanes =3D <1 2 3 4>;
> +          remote-endpoint =3D <&sensor_out>;
> +        };
> +      };
> +    };
> --=20
> 2.45.2
>=20

--6XaM8wrPMaFluXjf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCNb2QAKCRB4tDGHoIJi
0jhLAP9vDGf7owYflBhPRDVDKNexSIrkUinpNY7Qt5rZK+lqtgD+PJwG9W07LqrS
C0otwZta35jhKyvtHqu00svyGqhsMQI=
=gnkz
-----END PGP SIGNATURE-----

--6XaM8wrPMaFluXjf--


--===============7194755556522750717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7194755556522750717==--

