Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B89FCDE020
	for <linux-phy@archiver.kernel.org>; Thu, 26 Sep 2024 16:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v8LP9UTVy+AeExea9BiimaTOiS20HvKbZ/bhWhsyvRc=; b=TgoXOwI9Y4gHqvlklmxEK68U3a
	QNp2peiAZDWKzvv/vtKL78uTkldYAf1qX4no0iYEmThvSd0r9anNZWz1GlBIlQA/rjZHmDoCb3S8l
	ZFmo7kwLiPjIAMYlKi9mbpy2q1ZFhxAyAu16RSTsR9ZVBR15sM0QzKj1OO9AgHbAHZNPWLl8/ojvj
	EJZARxKC2O0Y7q7hc37/J1e3ndbit1y5mZyJEP04O9lbArfdY1JvteZkUIJ0B75ZYSPmXILTs3KEG
	CNByZbXiDzKMD5YFc3N+nWbhjCkkTsLI+YpZk86xKP5neP2VxJ2ARuJS/mp3pCZuia15HoL+nIpOX
	/8UzwbDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1strKB-00000008t2V-0tbW;
	Thu, 26 Sep 2024 16:26:39 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1strIy-00000008spY-1eVz;
	Thu, 26 Sep 2024 16:25:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0082EA40F96;
	Thu, 26 Sep 2024 16:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DB22C4CEC5;
	Thu, 26 Sep 2024 16:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727367922;
	bh=B8iLCJEN9rehuLkyemSP/P0mW8WiYBdBMfgJGeUjnWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=og4sylJbjpQArFQWkV0WlbDkKWm5S/6OIp5xqEim/YHTSRlIRxqagCoFCJkHEF/7h
	 8fuNRyBDLfqBXLXzZw7xao5Dn8roveccwUeNDitiF/jDERq4cRKlXK9di9+Ga3hu4x
	 7voxgZewV890lp+47MOpuXekGsFRIGWir0xg4K6Hox3yxhUfOKq778YhhKYhiXlbCX
	 xgxi3uQRVIZ58B0qAhbUVB3J801qiiGsnwCe+FEEaLfKWoO/+hee6BV1UE+c9a06d0
	 4QSaa5guU5Mva/qHKSUQKMPfz4t6NcxgI04cqiqwpE6SSyRNIhIBNOEZLbG/W1U3oI
	 3bBRY7c1IqihQ==
Date: Thu, 26 Sep 2024 17:25:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Bear Wang <bear.wang@mediatek.com>,
	Pablo Sun <pablo.sun@mediatek.com>, Macpaul Lin <macpaul@gmail.com>,
	Sen Chu <sen.chu@mediatek.com>,
	Chris-qj chen <chris-qj.chen@mediatek.com>,
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>,
	Chen-Yu Tsai <wenst@chromium.org>
Subject: Re: [PATCH] dt-bindings: phy: mediatek: tphy: add a property for
 power-domains
Message-ID: <20240926-treadmill-purr-b2e3279a14a4@spud>
References: <20240926101804.22471-1-macpaul.lin@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20240926101804.22471-1-macpaul.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_092524_524062_214FDE45 
X-CRM114-Status: GOOD (  14.58  )
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
Content-Type: multipart/mixed; boundary="===============5060241884673107463=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5060241884673107463==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w3rN3Cezyqcq/8tm"
Content-Disposition: inline


--w3rN3Cezyqcq/8tm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 06:18:04PM +0800, Macpaul Lin wrote:
> Some platforms requires a dependency for power-domains.

Some, so not all? Why isn't this restricted on a per compatible basis?

> So we add property 'power-domains' and set 'maxItems: 1' in the
> DT Schema.
>=20
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/D=
ocumentation/devicetree/bindings/phy/mediatek,tphy.yaml
> index 423b7c4e62f2..c77fe43c224a 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> @@ -125,6 +125,9 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 28
> =20
> +  power-domains:
> +    maxItems: 1
> +
>  # Required child node:
>  patternProperties:
>    "^(usb|pcie|sata)-phy@[0-9a-f]+$":
> --=20
> 2.45.2
>=20

--w3rN3Cezyqcq/8tm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvWK7AAKCRB4tDGHoIJi
0n83AQDmlf3s79564V1ZUYmAOBOtHb3MjKIx+OlxbtvzS1/hPwD/d3J9i90sPxTf
lSL+nqfbpB2W2qroRWWrLyD2axXVpQw=
=2EfV
-----END PGP SIGNATURE-----

--w3rN3Cezyqcq/8tm--


--===============5060241884673107463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5060241884673107463==--

