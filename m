Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6D5C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 16:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xoRt9u5vozRzdzfNSVAAh6SUJeKO2kPPv8oIhJ5V2H0=; b=Q/20B7lAEloOsoaJQU1AeZEdLn
	WEa/KCH8Ue9knSAOeX2+pxEZ8GJzgxt0cUnfyW/S7ii5CmfM0/HGo1RGiDR+SQ8PkRlNaAYsjDeoU
	RT53uIpUgfY2oq4YCVakNyDERvzvQfoKFzyPd9bOGWUDB+Ij9gt+vn+SlXdI6C0PuMm4Xu/UOOBdj
	9OIzixKN5ssjQ8uS5+e0hrnAHYb7dkESInh1iUzTa0LT3JGJDy/eX1xeYy43MukrZr2iYJDPRpyXW
	IcDP/9BGRW+Ow+kRAcnK3P5DfvHwRmcuFZCKemI6PNVfq3FF+dyFO6xMpTObsMmSDrlKdh+BsldO1
	+Pgv6cEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whVJG-000000000p4-1OKL;
	Wed, 08 Jul 2026 16:39:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whVJE-000000000oH-3BJU;
	Wed, 08 Jul 2026 16:39:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 02073600C3;
	Wed,  8 Jul 2026 16:39:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFF5F1F000E9;
	Wed,  8 Jul 2026 16:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783528779;
	bh=0vXeI+uCXnMRTRUaf8HMNBKTFOd8TopxxzIUG1swgmA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mAKVPYvLfywT4c/A7TNfSBbuW0PmTrerhJVp61IvBtaET8sHc8VIztbtUWBp0UqZx
	 /tz6XVc2uJoqaZHv2oc1kjKDqoeVdSEdTShBIqdsu/34W4tgFke/gOmjTBF3GdsbRy
	 J+oupoeLzOALtt+soh9dr19rB9cFk8RZQi49pW+CqpW9uh5I8YABFIhjk5yOXl9r/z
	 VHFGAO5p3YlYiiwIBuK0zwmxsvrtn8uaeuM8nMWIMvdDsycG7QQcyCUrGVdji/Ola9
	 ZYfWXCrtrmiFHq46lv+JVjhr78iuQ1O4B0fqMWvX22K5dqJCWoxagqwjTdabI1MPux
	 1M9rxYeT7hlqQ==
Date: Wed, 8 Jul 2026 17:39:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Gokul Praveen <g-praveen@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, nm@ti.com,
	robh@kernel.org, sjakhade@cadence.com, kristo@kernel.org,
	vigneshr@ti.com, vkoul@kernel.org, yamonkar@cadence.com
Subject: Re: [PATCH v5 net-next 1/2] dt-bindings: phy: cadence-torrent:
 Update property values to support multilink SERDES configuration
Message-ID: <20260708-purifier-subside-667f32244c09@spud>
References: <20260708083725.66777-1-g-praveen@ti.com>
 <20260708083725.66777-2-g-praveen@ti.com>
MIME-Version: 1.0
In-Reply-To: <20260708083725.66777-2-g-praveen@ti.com>
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
Content-Type: multipart/mixed; boundary="===============0473173081315558182=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============0473173081315558182==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SevP7+UOVskAfqSk"
Content-Disposition: inline

--SevP7+UOVskAfqSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2026 at 02:07:24PM +0530, Gokul Praveen wrote:
> Update the maxItems value of clocks parameter as 3 clocks
> (refclk,pll1_refclk,phy_en_refclk) are supported.
>=20
> Update the clock-names parameter to support mutilink SERDES configuration
> as the existing enum configuration of the clock-names parameter does not
> allow both pll1_refclk and phy_en_refclk to be used at the same time,
> hence preventing the support for the configuration  (refclk,pll1_refclk,
> phy_en_refclk), which is neeed for multilink SERDES usecases.
>=20
> For multilink SERDES configurations where the links require different
> clock speeds, all 3 clocks(refclk, pll1_refclk and phy_en_refclk)
> are needed.
>=20
> For example,considering the USXGMII+SGMII multilink SERDES configuration
> usecase, having only 1 reference clock(refclk) fails because USXGMII
> requires a clock speed of 156.25 Mhz and SGMII protocol requires an
> clock speed of 100 Mhz.
>=20
> Since one reference clock(refclk) alone cannot cater to the 2
> different clock speed requirements of these protocols, the second
> input reference clock(pll1_refclk) along with phy_en_refclk
> is also needed.

This binding supports 2 devices and the generic compatible. Do all these
devices have the new refclk?

Thanks,
Conor.

>=20
> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.ya=
ml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index 9af39b33646a..ac0f625cd76d 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -34,7 +34,7 @@ properties:
> =20
>    clocks:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      description:
>        PHY input reference clocks - refclk (for PLL0) & pll1_refclk (for =
PLL1).
>        pll1_refclk is optional and used for multi-protocol configurations=
 requiring
> @@ -48,6 +48,7 @@ properties:
>      items:
>        - const: refclk
>        - enum: [ pll1_refclk, phy_en_refclk ]
> +      - const: phy_en_refclk
> =20
>    reg:
>      minItems: 1
> --=20
> 2.34.1
>=20

--SevP7+UOVskAfqSk
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak59RgAKCRB4tDGHoIJi
0jCnAQDwtt/OwP4pRnpx2Cyg3NCRTTNs5l3WIiTgazMbaX9XagD+KZWxE6E1LGe+
AxAPK0PIAm6SzsOvq7pGRtKDUpY01gg=
=70nt
-----END PGP SIGNATURE-----

--SevP7+UOVskAfqSk--


--===============0473173081315558182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0473173081315558182==--

