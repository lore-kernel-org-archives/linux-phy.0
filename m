Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C0D5D6A221
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qyy2ELNb58lspebaEtCKXG6bMHsfmr8jPS8hHud37Xs=; b=SqYJ6Ph0HQkKNjekeoVhZ0oD5D
	jxkxY04lMDWnf2KyjQH0bDteC/l3vYe9UM7HzC6Hp+Gf0RgSzZsXC8XnoJfD5+bXt5n795+1Ns6V7
	XKwU679GXaUmRf0xXq/WLl/4199ANMxGDgDsQHgd6AaHFdDkJTxV5OV3tBGdYaSJ5Uwf5gqvZfWh2
	ofT/b3XN1x9rMkUcOmFFr/h3LyjgHE2KM2xwe6rETVDQvKLRtatV+mIHVwyU1Fu1EJRy4Q+tphpJr
	k35u+vINaDAvDnKUBG0Omp+wqgfBzYO332MNT0iTc4YkWDhj0oCzJADmrvpz8jdVe+k/KpuxWEAvu
	KHd0RAEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdv5-00000000NTP-10MM;
	Thu, 14 Nov 2024 17:46:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdu6-00000000N1H-2nsw;
	Thu, 14 Nov 2024 17:45:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EF3E1A40C92;
	Thu, 14 Nov 2024 17:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF05DC4CED0;
	Thu, 14 Nov 2024 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731606312;
	bh=g2Nti/vf3sUh6QVaYsrF23szsr80tZFZx8AOgvPabRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X+fsqv1glf0GmgzH6OSjBqoombd9ydRBitGr7WMDXZ7M+kbjT0zIQHzmfVmKwMWoa
	 fE+ilVhIy3AfBcBmjSUsQSk+8DHW5ORHxtCGp988nYZXeC/VyvLAGm/4WQHhCkVtwO
	 G9H6V3P03U1g07EebDTsHjOFSwgRx9TXoHPoS1BNkZvRBCayrSGDWTvlIHTSRYB3dx
	 fWYf36G1GPwYZXBEJzKEE1OB2VnYCr2z31aemas+incrKM6EOvrmq9K3M5/kgbsibP
	 1ZZfUJ0PcFchtMGZulz+q2n3Y09WJc59G7TKz/pMhrroyugMM/Nieq3e+5Ji1h0NFm
	 AOOeeuVUt6HUA==
Date: Thu, 14 Nov 2024 17:45:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	jun.li@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: imx8mq-usb: optionally refer to
 usb-switch.yaml
Message-ID: <20241114-marmalade-bottling-8fe656515ee7@spud>
References: <20241114102203.4065533-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20241114102203.4065533-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_094514_772252_2B2D9997 
X-CRM114-Status: GOOD (  14.90  )
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
Content-Type: multipart/mixed; boundary="===============3475675950339580857=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3475675950339580857==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tOtGMvqBontwFfXh"
Content-Disposition: inline


--tOtGMvqBontwFfXh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 14, 2024 at 06:22:03PM +0800, Xu Yang wrote:
> The i.MX95 usb-phy can work with or without orientation-switch. With
> current setting, if usb-phy works without orientation-switch, the
> dt-schema check will show below error:
>=20
> phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
>         'port' is a required property
>         'ports' is a required property
>         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb=
-phy.yaml#
>=20
> This will add a condition to optionally refer to usb-switch.yaml.
>=20
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

$subject is not what the patch does.

> ---
>  Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yam=
l b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> index 6d6d211883ae..1238792157f8 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -118,6 +118,8 @@ allOf:
>            contains:
>              enum:
>                - fsl,imx95-usb-phy
> +      required:
> +        - orientation-switch
>      then:
>        $ref: /schemas/usb/usb-switch.yaml#
> =20
> --=20
> 2.34.1
>=20

--tOtGMvqBontwFfXh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzY3IwAKCRB4tDGHoIJi
0lZiAPsGD+L5kP752Lq06LoPa8MBvAshVTvc47iKq4VPeQ5BmAD7BdOzlk6wBkqL
VeQlwYSD0nAuy3ALgJk41OF0j5zyiAA=
=c160
-----END PGP SIGNATURE-----

--tOtGMvqBontwFfXh--


--===============3475675950339580857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3475675950339580857==--

