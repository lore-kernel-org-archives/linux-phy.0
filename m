Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFFC5C25B78
	for <linux-phy@archiver.kernel.org>; Thu, 16 May 2024 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zQYE1frM3xgtShw5/VNEzf6shqh7toGdFhXlsF49VaY=; b=FMf4bHDszvolWB6hLe/yNlrIIu
	q2NK2eWybXczq0HaMHJ6tuOk7+iaVF1qHGBIUSSoYPRlKHqU0waQhdU1/qRCT0UUcj1XYDkin5BLJ
	Dn5j4uPH46VBE1Y5kIbwem6huilLCa0NWFHH0tPY3pJyqkVc/hisEHbAt2LzT7aQuznatXuKX+0Kb
	6bTfgekPiBZg3AWLWKQYskTm1H2W6Xew00wWxwMRZufBGdbgD4xJczWA6zmtc7x8y4z66YRL4tWz8
	Gq0L1WwvIVYa2zf+7CjQAlC8sKZW6B97kbVZobeBUbg4K/lFRxwjOA8Tm+ZPOoOPj66HEpnB14xZy
	asKmgaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Yme-00000004Xyn-3RWW;
	Thu, 16 May 2024 10:56:24 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7YmZ-00000004Xwc-1Enj;
	Thu, 16 May 2024 10:56:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C2E2ACE185F;
	Thu, 16 May 2024 10:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73D8CC32782;
	Thu, 16 May 2024 10:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856976;
	bh=rh5ZSgzb+xipdRSlRwu8YPmjbuQSeYjAhq0kMx8LL14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NeZ0QRoB67ojIrjp45w92g0Shyeh85fDAjlhQI8vzACyhMSZ+iQ2TWFzhwj4KcKFQ
	 p3PKI1cW55Qpeu9qQrcmnql1iZVkWpe/mRhIJ1Qd7jhjfka7/SwVCJfJg+b4lUahzE
	 KLxslvASGXc4kiNBundEkc4NkO3Tseb9FGnDJH3osJ8zDnCSp8gaaRBAIhpECiG6db
	 aUmssLsRMfLE8dKpUaNIOw+YJvVcG1fDSmjdafHPhogLMmc/jqzx1CdpzFZRyrotRH
	 uiOtmu9gJXfYkNF9DIsRiJfnDcHzZhRgWi0+g9JZ9c/Xtj2doZac3ZeJMpyYkywtwq
	 EvsTr9lnph15A==
Date: Thu, 16 May 2024 12:56:12 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, amitsinght@marvell.com
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for
 PCIe PHY driver
Message-ID: <ZkXmTP_hl2WsJyob@lore-desk>
References: <cover.1715769325.git.lorenzo@kernel.org>
 <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
 <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>
MIME-Version: 1.0
In-Reply-To: <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_035619_761729_C1147901 
X-CRM114-Status: GOOD (  18.77  )
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
Content-Type: multipart/mixed; boundary="===============1730537190261349146=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1730537190261349146==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r9EyE8PW+Om96BnB"
Content-Disposition: inline


--r9EyE8PW+Om96BnB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
> >   1 file changed, 55 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/airoha,en758=
1-pcie-phy.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-p=
hy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..4ab04b501129
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> > @@ -0,0 +1,55 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha EN7581 PCI-Express PHY
> > +
> > +maintainers:
> > +  - Lorenzo Bianconi <lorenzo@kernel.org>
> > +
> > +description:
> > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen=
3 port.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,en7581-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 3
>=20
> If you have a description for the registers, I'd appreciate seeing that l=
ist.
> If you don't, and can't retrieve a description, it's still fine, but plea=
se
> try if you can.

ack, I will fix it.

>=20
> > +
> > +  reg-names:
> > +    items:
> > +      - const: csr_2l
>=20
> Can we please avoid underscores?

sure, I will fix it.

Regards,
Lorenzo

>=20
> Please change this to "csr-2l", after which:
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>=20
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
> > +    soc {
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

--r9EyE8PW+Om96BnB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkXmSwAKCRA6cBh0uS2t
rAh7APwMoC7BO0FO+faFeNjjfXY/CGE+GtDOIy1I8PnqaugUzAD7BetsQcJbR97q
G12MjjD4c2kvEXr7jzjnoMHKr3y8agA=
=TErp
-----END PGP SIGNATURE-----

--r9EyE8PW+Om96BnB--


--===============1730537190261349146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1730537190261349146==--

