Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8257C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 15:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vTnXIKoXhRnS49BZjEXFJa0SGcP5Divs/1ZYI6PMQto=; b=FenazB7TCfvLk8/u7vG9vSY+u2
	TxiHDOtCabdVHwTYylM2iI0IaZzKixW/8VFEHWyjbIhe+795I6/3YUtmxZ7dFdMvVEql6it0PSjMA
	kNlQ+PztS3DqOdFlVYZsm7PFLPyuG/5vZLzcLSJDg7zdCnspgigMJ9YIN3YhhlsI/nmWe7/iOjzsm
	alXxdivxAs3r17LBTskhcCnbl3xcJ1vEnMBrItBLh8m/8AmZjw9FKHTGxwZZ6TFIF8D/Hl9GiuHp0
	bUDoA7i7iNdyAXjiQgqpsM8iKC6m6T5rWih6pnSnmoawYCxFYJINrI14Sipy6+r7kc9rkPTMCz8xY
	Grew9vpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weDlR-0000000F2xg-1zqs;
	Mon, 29 Jun 2026 15:19:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weDlQ-0000000F2xO-1Tjr
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 15:19:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E4D6C439A7;
	Mon, 29 Jun 2026 15:19:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 079AD1F000E9;
	Mon, 29 Jun 2026 15:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746351;
	bh=6FUFc8VbJurEpSDevgOvU/4VEZEQWETJDf8GR/IYV3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HEmZvJtKwhfG6+2u9YMDRUtu8arFt06cJRcwTdMJHDbr2BHORKFUmM8gzS6+Nuf59
	 JYOhNUCmlBBHYF4/8GdQhH8elDIxldPzftRRCbyQdOym90+G3RJsaxiTmlJsRPMyXw
	 cmHFhugQ3ScY89DeGqRHL0sT3Pa2VJZbvS578kDJ2rES6+ZhkK2iWFbxB9SjZEnRze
	 cYG9qds5ZcxWY1O9CXAb4WrhnjMiTNVfz0VLe0pimYobJ+lyt7cdzICzOD3zsrBLoc
	 Z6VNlufBJhg7Y9FhKrBdhGHPxBAiOT1o6kA/lutHXLf0sYWPInSBvkRrdiU73lP/MU
	 zApxhoY6JGLbA==
Date: Mon, 29 Jun 2026 16:19:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: mathias.nyman@intel.com, vkoul@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, thierry.reding@gmail.com,
	jonathanh@nvidia.com, linux-usb@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Message-ID: <20260629-baffling-gag-05e20c9d925b@spud>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-2-waynec@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20260629093406.1118594-2-waynec@nvidia.com>
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
Content-Type: multipart/mixed; boundary="===============6463057242900837867=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6463057242900837867==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZivZHyQiMsJs/gWz"
Content-Disposition: inline

--ZivZHyQiMsJs/gWz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 05:33:59PM +0800, Wayne Chang wrote:
> Add the compatible string for the Tegra264 XUSB PHY.
>=20
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

Why is a fallback compatible not suitable here?


Thanks,
Conor.

> ---
>  .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml     | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-p=
adctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-pad=
ctl.yaml
> index d8de900a4fce..f6fe3c90b5b0 100644
> --- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.y=
aml
> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.y=
aml
> @@ -45,6 +45,7 @@ properties:
>      enum:
>        - nvidia,tegra194-xusb-padctl
>        - nvidia,tegra234-xusb-padctl
> +      - nvidia,tegra264-xusb-padctl
> =20
>    reg:
>      items:
> --=20
> 2.25.1
>=20

--ZivZHyQiMsJs/gWz
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKM6gAKCRB4tDGHoIJi
0kBcAQCrqgOOerZugKKmjKtKayBzITE7zLM1L51QJ4kOU8RpIQEA2dvPt7Nwz6Xi
yE/Bh7l6FDgrHCL0xL46jpuiCDlmugU=
=iSW+
-----END PGP SIGNATURE-----

--ZivZHyQiMsJs/gWz--


--===============6463057242900837867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6463057242900837867==--

