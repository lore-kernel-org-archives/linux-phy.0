Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80FCCC25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 16:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7gzCryftX3NFkd7z2bH0F9tMKBeis2pOvFO6jWGqQE=; b=xyXaCyxZgHq5iWtAMTd0oM1mvZ
	M2fr+TKjdDx1eJnwgHltrfDBnIG7x3tAvGmqexlORW7gCGipmm4FzpVi0c6kZ9iQ1a9fWH6A7hgiN
	0ltCe1P9uO2E5mduinPHjWq9Z5ai6tCLeiRDJT8jDY52oPMSK6sUOxBjmc0pLplj9j6L1erTjjj0O
	afAgSfXRyDoZlF4ZdTy4gCp5pn65I7LQFTpkkujcwCLHAoqKGgsmo0T83Zidjellq9owWccr2FO6R
	KnyQg8omcq9AE/e4BBiBHyj4S+8/6kAbbsaq5HGm0lCJ6F/0G5H5DGyY/tRcBZcL1gq4H1TernOjO
	lkKCA5KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Yx5-0000000Dcsg-0tfd;
	Mon, 13 May 2024 16:55:03 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Yx0-0000000DcrD-326z;
	Mon, 13 May 2024 16:55:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 675EBCE0DFF;
	Mon, 13 May 2024 16:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22DCCC113CC;
	Mon, 13 May 2024 16:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619295;
	bh=uZ5ard+sumv6T1N848qKHAi5miG10E+UbOzJaGtMlTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Np33hDolXOw4LOUaAUcVKCSqYJyvSzuFFa0Q4aUkIBWLnO4D0XDy/bn4XyeZsUkeb
	 l/WY2vGPl4j7csM4P3KMhY0bh2XHD+QMOxRKKDEIEOZHhygUxfx5LsjwoN2Ma3Qb+V
	 nz3JqcMAjyCM7NRBzbMxSXFha0dVBbAeJ54FbIBvCQdBmY+Qg3qy6qK5NfGsHmVHu1
	 XoVrKFYJJEckBvufyzVYxWL0rOvpNM2FwoddpvSzMmgghNCBtscwD9KKNMvDobOZGa
	 WDQBPB2wh/dLbfhVOfA5pKcKthpbZn5nh4ylSHZayiaHfNgLOccgz6f/QcOSqMrQHy
	 dgnVyEqT7/0sg==
Date: Mon, 13 May 2024 18:54:51 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
Message-ID: <ZkJF2w0f2L6nOtKP@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
 <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
MIME-Version: 1.0
In-Reply-To: <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_095459_145430_36DFBAD4 
X-CRM114-Status: GOOD (  15.87  )
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
Content-Type: multipart/mixed; boundary="===============0233587515855625901=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0233587515855625901==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dRkxIEJn6F1Z9zTu"
Content-Disposition: inline


--dRkxIEJn6F1Z9zTu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
> >   1 file changed, 55 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-=
phy.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml=
 b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..443d7e717296
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
>=20
> airoha,en7581-pcie-phy.yaml

ack, I will fix it.

>=20
> > @@ -0,0 +1,55 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha PCIe PHY
>=20
> title: Airoha EN7581 PCI-Express PHY

ack, I will fix it.

>=20
> > +
> > +maintainers:
> > +  - Lorenzo Bianconi <lorenzo@kernel.org>
> > +
> > +description: |
> > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen=
3 port.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,en7581-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 3
> > +
> > +  reg-names:
> > +    items:
> > +      - const: csr_2l
> > +      - const: pma0
> > +      - const: pma1
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/phy/phy.h>
> > +
> > +    bus {
>=20
> Shouldn't this realistically be 'soc' instead?

ack, I will fix it.

Regards,
Lorenzo

>=20
> Cheers,
> Angelo
>=20
> > +        #address-cells =3D <2>;
> > +        #size-cells =3D <2>;
> > +
> > +        phy@11e80000 {
> > +            compatible =3D "airoha,en7581-pcie-phy";
> > +            #phy-cells =3D <0>;
> > +            reg =3D <0x0 0x1fa5a000 0x0 0xfff>,
> > +                  <0x0 0x1fa5b000 0x0 0xfff>,
> > +                  <0x0 0x1fa5c000 0x0 0xfff>;
> > +            reg-names =3D "csr_2l", "pma0", "pma1";
> > +        };
> > +    };
>=20
>=20
>=20

--dRkxIEJn6F1Z9zTu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJF2wAKCRA6cBh0uS2t
rFNMAQCINIx9JZ9XM42fFpuj8Pir2nzs80N6LEFcQsCRJCe2MAEA+FbysgeLv4+a
zNIakzQSgk9pdAywa4H7FPmMBAmyGQQ=
=p21a
-----END PGP SIGNATURE-----

--dRkxIEJn6F1Z9zTu--


--===============0233587515855625901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0233587515855625901==--

