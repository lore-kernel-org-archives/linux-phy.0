Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A522C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 16:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yTgDI0ZDxxJeJ0lIvJS3et5WrSVDbxCiXufuA9KCanc=; b=nhrtza8oHn8VhqY176weFMoAgz
	PGdTWMQuqhzs3zb9Ddftm6OrOoXPyxJSgNVvb2Vi1RttYGta9MWzTHjiv6FCloFQD16QS70M04sxX
	umHmBxVZYTFioFbLGehR7rdQyEIBYDFKdsCUrlquGgaEk+/RoLNFmPPIB/0w2G/AAULLYVW+sw2jW
	L0rXJvf7qSDiExgb6jBT00Pqcqqx6L5ZZ9DxHdhbK0+P9e9kJmMuw1zjdYn28rPzZgIc8e6icE3Zt
	Ph822+EojAwkFX7oo//hlrq5tR173jcIp309TP7dm/iCnZaejI/+F11G50nfOnnLHNj1eoZlhKHTD
	V62NTZ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Yy3-0000000Dd50-0OUW;
	Mon, 13 May 2024 16:56:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Yxz-0000000Dd3b-0GD2;
	Mon, 13 May 2024 16:56:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 67B13CE0F21;
	Mon, 13 May 2024 16:55:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20063C4AF09;
	Mon, 13 May 2024 16:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619356;
	bh=GtcP/4iTwZY7mpfL/M5e1XwzP6NaO5Lqcmc74sZdNcw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FDqkf6ei+cLN5J+3mVI5H6lijNlU3ylksYxRFJyGhxkLZZIgmAXZo3rDPSXEVhB9s
	 ZKN+IcUjhkMrYmZhuVWf6c6a/9hfJCCsGqFAzeJnaH9QIDkfu7PDyHGLGfXMVK1yl2
	 TOqQO43AmL8HoMnYrDpqv6T9ErFZzshaqqHmz9Y2Lh/Kmo7z+sM9LUAPTFwAAWLYTu
	 CfvuBy8Qw+wnn+x271EK19MgKLd4nEnilhrYnrC16QHtUSP1n4DUOfAELSRI3n1ooo
	 0TAw28A3GofijR9v8/2S5wAWYyT0juFxa8Eb+BeVEftXoNvxYVdG6yAoy3tIPprov4
	 1qdoB+aP6idmQ==
Date: Mon, 13 May 2024 18:55:52 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH 3/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
Message-ID: <ZkJGGE1A2oiQIskE@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
 <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>
MIME-Version: 1.0
In-Reply-To: <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_095559_483646_73DAAC98 
X-CRM114-Status: GOOD (  18.12  )
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
Content-Type: multipart/mixed; boundary="===============7915166334910617836=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7915166334910617836==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HpxzrNHt17mo5fDz"
Content-Disposition: inline


--HpxzrNHt17mo5fDz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> > Introduce support for Airoha PCIe PHY controller available in EN7581
> > SoC.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   MAINTAINERS                        |    8 +
> >   arch/arm64/configs/defconfig       |    1 +
> >   drivers/phy/Kconfig                |   10 +
> >   drivers/phy/Makefile               |    1 +
> >   drivers/phy/phy-airoha-pcie-regs.h |  476 +++++++++++
> >   drivers/phy/phy-airoha-pcie.c      | 1227 ++++++++++++++++++++++++++++
> >   6 files changed, 1723 insertions(+)
> >   create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
> >   create mode 100644 drivers/phy/phy-airoha-pcie.c
> >=20
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index ce9fac46f741..d918d41a80a3 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -653,6 +653,14 @@ S:	Supported
> >   F:	fs/aio.c
> >   F:	include/linux/*aio*.h
> > +AIROHA PCIE PHY DRIVER
> > +M:	Lorenzo Bianconi <lorenzo@kernel.org>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> > +F:	drivers/phy/phy-airoha-pcie-regs.h
> > +F:	drivers/phy/phy-airoha-pcie.c
> > +
> >   AIROHA SPI SNFI DRIVER
> >   M:	Lorenzo Bianconi <lorenzo@kernel.org>
> >   M:	Ray Liu <ray.liu@airoha.com>
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index a53c58584bcf..c0eacced5d41 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
>=20
> No, this should be in a different commit.

ack, I will do in v2

>=20
> > @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=3Dy
> >   CONFIG_RESET_QCOM_PDC=3Dm
> >   CONFIG_RESET_RZG2L_USBPHY_CTRL=3Dy
> >   CONFIG_RESET_TI_SCI=3Dy
> > +CONFIG_PHY_AIROHA_PCIE=3Dy
> >   CONFIG_PHY_XGENE=3Dy
> >   CONFIG_PHY_CAN_TRANSCEIVER=3Dm
> >   CONFIG_PHY_SUN4I_USB=3Dy
> > diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> > index 787354b849c7..8f9a7a6c4bba 100644
> > --- a/drivers/phy/Kconfig
> > +++ b/drivers/phy/Kconfig
> > @@ -72,6 +72,16 @@ config PHY_CAN_TRANSCEIVER
> >   	  functional modes using gpios and sets the attribute max link
> >   	  rate, for CAN drivers.
> > +config PHY_AIROHA_PCIE
> > +	tristate "Airoha PCIe-PHY Driver"
> > +	depends on ARCH_AIROHA || COMPILE_TEST
> > +	depends on OF
> > +	select GENERIC_PHY
> > +	help
> > +	  Say 'Y' here to add support for Airoha PCIe PHY driver.
>=20
> Say Y here (without quotes)

ack, I will fix in v2

Regards,
Lorenzo

>=20
> Apart from that:
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>=20
> > +	  This driver create the basic PHY instance and provides initialize
> > +	  callback for PCIe GEN3 port.
> > +
> >   source "drivers/phy/allwinner/Kconfig"
> >   source "drivers/phy/amlogic/Kconfig"
> >   source "drivers/phy/broadcom/Kconfig"
>=20

--HpxzrNHt17mo5fDz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJGGAAKCRA6cBh0uS2t
rJYlAQDI0uaXnpcs+MrptrpjMk22mLuapyynADTFHO5La7YfMAEA6KKpdJRySgE0
QDk5kO7tc19Br4a9YOAi9uNNYru8nwQ=
=49j/
-----END PGP SIGNATURE-----

--HpxzrNHt17mo5fDz--


--===============7915166334910617836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7915166334910617836==--

