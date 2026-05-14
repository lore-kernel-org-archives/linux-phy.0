Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89C16CD37AC
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mDvHm4rCOAOgdGIM7PO6oQZem5b5B/MNQYjkQy+ZO+Q=; b=LjzY8IONGR4oBEi0pwidDBOTyX
	nLTz2Ff/tJnoI3XGf+x3dxwRiAMd/ep1LXNqO8UUkpLyVq2RvDeZceReoG0yjjj5lRTyafzzYFBwA
	Z4Ivg3+HfKh7dazXKlDLh1CoKV1J/8e9YpAfumkBRMbgdXcTqtIpSt8e8AntkGNuqDg6L1zCwvf1P
	liZZ8aVHpWMJ3nwkl0yGLg3RjsZTAVexmI7yEHwSlaFvKGeLjkhr1Il5pBlDqUdABGRyycC+Ouzq7
	qjf2/5I2Mz0pf/OyHRMrR2h6CFTLanKr+FrdFTPeWgoknMn8aH7zaaTHIH2HMe5FW7JJD3G10XtFs
	gX/TaLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNaUs-00000006HKK-0J8c;
	Thu, 14 May 2026 18:09:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNaUo-00000006HJX-2cVg
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 18:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DC5D942B6B;
	Thu, 14 May 2026 18:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0533C2BCB3;
	Thu, 14 May 2026 18:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778782157;
	bh=MlbDFgNuqesS/vtt+w+U2M1SHGf1/e2ict7OTZCA9Nk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TKwZ3jykwzEg7s7rGOXrdSncVewfonN42hO53D/WbCNl19lAYaopFZj7+ZDLhwn2N
	 pf4+LlUSayYOygKD+l8wmIi51jyBwkhswyszjE+IDHhdzGYwP50oznH9bttsNzgTxN
	 aKyr5uFgCit+iZxFD+AnrGLfQ90QgYg9u6X8OpoYKoD98vlyrhpX43TAfy2pEKDQWc
	 +2YOz9U8aDtg0ecZprvPh9riA7h4V7wgz/UNj2+L029XQxADO/RyFnnC7YsZB+JUUZ
	 0oEddhgbLDRgutfo3rPYeKJlP95Ti8LyJeJcqs1RWAXg8XozJ92pzWZYv+EedMXJZd
	 3LsdQd+UOYF9g==
Date: Thu, 14 May 2026 19:09:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-next 1/2] dt-bindings: phy: add PHY bindings for the
 TI DS125DF111 Retimer PHY
Message-ID: <20260514-scorebook-uproot-c9766b3e1be4@spud>
References: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
 <20260513185103.1371809-2-ioana.ciornei@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260513185103.1371809-2-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_110918_709471_A36E02BB 
X-CRM114-Status: GOOD (  15.19  )
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
Content-Type: multipart/mixed; boundary="===============6896389655842879703=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6896389655842879703==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45ZlJcds5wU0pS3E"
Content-Disposition: inline


--45ZlJcds5wU0pS3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2026 at 09:51:02PM +0300, Ioana Ciornei wrote:
> Add device tree binding for the TI DS125DF111 Retimer PHY.
>=20
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
>  .../bindings/phy/ti,ds125df111.yaml           | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.y=
aml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml b/D=
ocumentation/devicetree/bindings/phy/ti,ds125df111.yaml
> new file mode 100644
> index 000000000000..47e9ba2a8990
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,ds125df111.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI DS125DF111 Retimer PHY
> +
> +description:
> +  This binding describes the TI DS125DF111 multi-protocol Retimer PHY.
> +
> +maintainers:
> +  - Ioana Ciornei <ioana.ciornei@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: ti,ds125df111
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      The phandle's argument in the PHY specifier selects one of the two
> +      channels of the retimer
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      ti_retimer: retimer@18 {

Drop the unused label here please. How come the node name isn't phy@
btw?
Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: changes-requested

Cheers,
Conor.

> +        compatible =3D "ti,ds125df111";
> +        reg =3D <0x18>;
> +        #phy-cells =3D <1>;
> +      };
> +    };
> --=20
> 2.25.1
>=20

--45ZlJcds5wU0pS3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagYPyQAKCRB4tDGHoIJi
0sTMAPwLXhzIReQBO/zv5kY9Wf3P1x0bDogPEpE4EaHYt8L7hgEA8XHwi1gvu3Ba
5wosjLKdedh+0tspOVKUcMBzmAwLjAU=
=s6fG
-----END PGP SIGNATURE-----

--45ZlJcds5wU0pS3E--


--===============6896389655842879703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6896389655842879703==--

