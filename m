Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00014606A337
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 23:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J0fzIUSv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GRV9Kd1r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sK4hxrFYAyumzCPkQXVLQCCkz4NzNuIp8CO4eQm2o9I=; b=J0fzIUSvO8bq20U735GcqEtPrH
	sThsrUNTzeG1Csd5pscFyaDEQOkw5CZ8MfkiaZKvgANjJDvhnnmA6o/8poeqAXAk54T98p2KiFnaq
	2Aqb2lGL+LhgjW/ePcbgaVTDu0TWorAA951rDa89OEjedBnP6B1peTmjqNDXy1jF8g/kHbgI2/yCX
	BhcgG3KEgmpw9B99kHqH/hvC8x1iCAHSNfRj6xekrN43JzFk2uOEWInlAGRPB6SSRV6QRaW4fVxVs
	FfG2obLmOnmyV6ygAcAZqg2g4D15b5F7noluzoqyDrR7ro2yJA/NTEBMFoVOk6HcPyKBJ+cMK4Nra
	Y9HLa+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkep-00000007GgU-385d;
	Wed, 04 Nov 2026 23:44:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkep-00000007GgJ-0Ii8
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 23:44:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A31542E67;
	Wed,  4 Nov 2026 23:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA2E91F000C1;
	Wed,  4 Nov 2026 23:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793835882;
	bh=dm6QP+G8YaY/c3dC6XOZVyZ2/2/A8/3XTwxU4Pcnwos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GRV9Kd1rEsEfAQ2Kfe2peTMHKixUpD0Ori31y5YzsqVoT4P2WLRH8rnVhNC6Xyk29
	 v6YIsfMvm/ZB4AdasbzkGk8QeG1n7W3FFSBj0vTFTxDUI4Jn+C4xvtWVkA71egVeh8
	 kib0ml8hASIq675H42fflpQcJztCXuhT0MJkLTYefQwkvflVfmLiL6+2boJHVzz5u6
	 MEDv0up8aG8FnSD761ItpDhTkIUoqdbf6aoIeKigx3ebZ1K8jYGEQm7OKgVkL2EGiC
	 GvMjcMhD5x5QQpuWNl0O2h1olz7by54ZkT/UDQxQ0+Jyk/pwzbDp03XilCFqkvAPO6
	 iiKGUc92HI91Q==
Date: Wed, 4 Nov 2026 23:44:37 +0000
From: Conor Dooley <conor@kernel.org>
To: joseph@telaak.dev
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Siflower SF19A2890 USB 2.0 PHY
Message-ID: <20261104-unscented-armory-4dc756ab95cb@spud>
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-1-db0cad937614@telaak.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261104-sf19a2890-usb-phy-v1-1-db0cad937614@telaak.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1985331174955078021=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============1985331174955078021==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A3EGkJjMaBMSuLcm"
Content-Disposition: inline

--A3EGkJjMaBMSuLcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 04, 2026 at 02:21:52AM -0500, Joseph Telaak via B4 Relay wrote:
> From: Joseph Telaak <joseph@telaak.dev>
>=20
> The USB 2.0 PHY of the Siflower SF19A2890 serves its DWC2 controller.
> It takes a reference clock and two resets, power-on and PHY, from the
> USB block's clock and reset manager.
>=20
> Signed-off-by: Joseph Telaak <joseph@telaak.dev>
> ---
>  .../bindings/phy/siflower,sf19a2890-usb-phy.yaml   | 58 ++++++++++++++++=
++++++
>  1 file changed, 58 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb=
-phy.yaml b/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-ph=
y.yaml
> new file mode 100644
> index 000000000..77b8e35d8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.ya=
ml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/siflower,sf19a2890-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Siflower SF19A2890 USB 2.0 PHY
> +
> +maintainers:
> +  - Joseph Telaak <joseph@telaak.dev>
> +
> +description:
> +  The USB 2.0 PHY of the Siflower SF19A2890, used by its DWC2 controller.
> +
> +properties:
> +  compatible:
> +    const: siflower,sf19a2890-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: PHY reference clock
> +
> +  resets:
> +    items:
> +      - description: power-on reset
> +      - description: PHY reset
> +
> +  reset-names:
> +    items:
> +      - const: por
> +      - const: phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb-phy@19e0c040 {
> +        compatible =3D "siflower,sf19a2890-usb-phy";
> +        reg =3D <0x19e0c040 0x60>;

That's a weird offset and size.
What lies in the regions around this device?

> +        clocks =3D <&usb_crm 2>;
> +        resets =3D <&usb_crm 1>, <&usb_crm 2>;
> +        reset-names =3D "por", "phy";
> +        #phy-cells =3D <0>;
> +    };
>=20
> --=20
> Git-155)
>=20
>=20

--A3EGkJjMaBMSuLcm
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCauvDZQAKCRB4tDGHoIJi
0go4AP9IBByfY+ZrsMHhRJn/BNGZDtuBmhwUV9BLaN5/9qNPCAEAkk741BcvYirR
jopiYYHvRgcXyohEzT8v2FZsEeU13gc=
=X0p7
-----END PGP SIGNATURE-----

--A3EGkJjMaBMSuLcm--


--===============1985331174955078021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1985331174955078021==--

