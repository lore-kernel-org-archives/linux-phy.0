Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94ACDC87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fv+CCD2fPzwZkrJaPaWGmLeC+FhhK+C7uwATvkzxC+g=; b=GHZ/ES5cFNrA2dZbfxNDxnjEIk
	6xLnkGQGv/74WnPGGwnlOl6U0g7QT3iqNYXXbRaT/pCvdLeoO4cePVV4j4jVBolwSFe9r0PTRkWN+
	F5NABmUM9fs6DoatO5Ze0W4MTJNNHYFgcvFKeMCAcrYYMjW4EfNNRbc8i8i2VPNsJMycjvK2016SX
	qpujshTRBTTUVkvlML7yHWVd4+l7+e6tiBMBl4Wx4i16ju9d8GfCiuQsjG0XrwKH+FInSyZ0YYsSQ
	zdsawarAywjYkHz+xNLYCPJ47u2n0ETEiDWIyew600OipOFjNiRpZ/fyZPGPStROsVGRoQ6hTh+zO
	e5Mqn+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2b0-0000000111m-0y8P;
	Thu, 07 Aug 2025 15:31:58 +0000
Received: from leonov.paulk.fr ([185.233.101.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2UI-00000000zly-3oO8;
	Thu, 07 Aug 2025 15:25:05 +0000
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id C8DA01F00055;
	Thu,  7 Aug 2025 15:24:49 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id EB05BB012C0; Thu,  7 Aug 2025 15:24:46 +0000 (UTC)
Received: from shepard (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id 92918B012AF;
	Thu,  7 Aug 2025 15:24:44 +0000 (UTC)
Date: Thu, 7 Aug 2025 17:24:41 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: Parthiban Nallathambi <parthiban@linumiz.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 07/22] dt-bindings: vendor-prefixes: Shenzhen Baijie
 Technology
Message-ID: <aJTFOV_MK4GftLWu@shepard>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
 <20241227-a133-display-support-v1-7-13b52f71fb14@linumiz.com>
MIME-Version: 1.0
In-Reply-To: <20241227-a133-display-support-v1-7-13b52f71fb14@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_082503_260115_9AE40AB6 
X-CRM114-Status: GOOD (  17.44  )
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
Content-Type: multipart/mixed; boundary="===============7713737313304085843=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7713737313304085843==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ho7mfi0SoROEEEAS"
Content-Disposition: inline


--ho7mfi0SoROEEEAS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 27 Dec 24, 16:37, Parthiban Nallathambi wrote:
> Add entry for Shenzhen Baijie Technology (https://szbaijie.com)
>=20
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index da01616802c7..81cbc8b6b195 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1466,6 +1466,8 @@ patternProperties:
>    "^synopsys,.*":
>      description: Synopsys, Inc. (deprecated, use snps)
>      deprecated: true
> +  "^szbaijie,.*":

It's quite common for Chinese companies to have their main location as a pr=
efix
in their name, for example Rockchip's full name is Fuzhou Rockchip Electron=
ics
Co., Ltd.

Since the company here calls itself "Baijie Technology" I think the "sz" pa=
rt
should be dropped from the vendor prefix and just be "baijie,.*".

All the best,

Paul

> +    description: Shenzhen Baijie Technology Co., Ltd.
>    "^tbs,.*":
>      description: TBS Technologies
>    "^tbs-biometrics,.*":
>=20
> --=20
> 2.39.5
>=20
>=20

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--ho7mfi0SoROEEEAS
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmiUxTkACgkQhP3B6o/u
lQwopA/+OeQYWbpgzDlU7JSXZXYWbcSY72g6g2qNUV8nGT5ut5lkOdPpDbag40ll
kW45uiqEwvjAqNjfNv2jP1oIIZJ/OzRfJ+5rFc0e5iskSa4bd8NOv8AHZMF0ibL6
Qc9N+qH1HdFiL/7e0btMZKjWTPTyoBqSLN2oJbEPrI14E/YyOpnmi0FQwP9tSBvD
GJHPXfijHfK/JJnlIV70cJSUugUvmcLzpy3JxoiuW8PModhutaIYXdZiyDsqWxBK
d+kxznL9QDfnY1qtQkse38eigagjwswfQXmSjTAXXNTFl+sQXFsKoxDZ21HBgd7X
3rwxa/hqesqIe6EPAs5xDQi6F2BOBa+ZLzLnjqmlj5FEZttLx/c8IePLqPHlKcg2
ycEsXE4XE0hpqs676aUwb/xVjVXbchBriZYX9ftKokBhRw/8AkRAUE6O4RNS4sGR
X+rhGpoaFKBiI2kcu1aF7cAjv6BhYfOhs9d6wFVfF0dDVsC2Cf+9pBMysCc0zSXX
/OLwkZj3sucRQHpNV5ZVsSQqR/ZUlae8K4INMLaMZFt97nW4EyCaHdmHlHrM7A7D
dp3NaIPkts0QyUswwDFY0Ahn/dqLKRxCVlUBix05YuGy0gbfigILHXxcERddkoyq
SG3VlZcyst6/ryITN66ZxWnPBrhxVFGN1NheSCPPe6E93GYPfuc=
=jRKT
-----END PGP SIGNATURE-----

--ho7mfi0SoROEEEAS--


--===============7713737313304085843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7713737313304085843==--

