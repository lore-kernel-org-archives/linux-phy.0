Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFF8C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jan 2022 19:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KKv9VFBKFNWi74qgnHPfalJrBcnrPJLwz3W8q4gO3AQ=; b=XYvWe6BPuXeAzQwNmbobtWJZyR
	x2ZNGup1MSogspKGI+cxwF5rAeQZHmVv/MWYhL5sPebVxm+EE39bZ8fs1TKxdMJai0bvi4PvjROlj
	cBGEG8512iVX5/nfy4eYCtjhoj2Ol3ESQyjxHjIGW7Z7XlO27SR6oPMiX3NHo9askaPaB47mUkhpX
	ZTus7TUhFooO31sIrzJGGh1LyeewoUtcmNNPrtS2IdjwDWegYB3uBx1egbp7K2j+zNPU0U72tdNOw
	/MsZe9JIXvgT2/g7XTK6AJpKOXMR7mU/5zJidqW/2mQ6ktVRDOA1ritI/ryOTkG/mGdKs69/M3qdh
	+5wrQoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAdT0-00D2WG-Ny; Thu, 20 Jan 2022 19:51:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAdSv-00D2VJ-Cg
 for linux-phy@lists.infradead.org; Thu, 20 Jan 2022 19:51:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1nAdSY-0007Mg-Tt; Thu, 20 Jan 2022 20:51:02 +0100
Received: from pengutronix.de (unknown [195.138.59.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 3C0831E958;
 Thu, 20 Jan 2022 19:50:55 +0000 (UTC)
Date: Thu, 20 Jan 2022 20:50:51 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, ore@pengutronix.de,
 alexandru.tachici@analog.com
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <20220120195051.pb4k24uazqqe6ecd@pengutronix.de>
References: <20220119131117.30245-1-kabel@kernel.org>
 <20220120084914.ga7o372lyynbn4ly@pengutronix.de>
 <20220120190155.717f2d52@thinkpad>
MIME-Version: 1.0
In-Reply-To: <20220120190155.717f2d52@thinkpad>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_115125_454724_6A764827 
X-CRM114-Status: GOOD (  27.94  )
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
Content-Type: multipart/mixed; boundary="===============8734900178736485711=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8734900178736485711==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ig2sp3rdmyz7xxgk"
Content-Disposition: inline


--ig2sp3rdmyz7xxgk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 20.01.2022 19:01:55, Marek Beh=C3=BAn wrote:
> On Thu, 20 Jan 2022 09:49:14 +0100
> Marc Kleine-Budde <mkl@pengutronix.de> wrote:
>=20
> > On 19.01.2022 14:11:17, Marek Beh=C3=BAn wrote:
> > > Common PHYs and network PCSes often have the possibility to specify
> > > peak-to-peak voltage on the differential pair - the default voltage
> > > sometimes needs to be changed for a particular board.
> > >=20
> > > Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for th=
is
> > > purpose. The second property is needed to specify the mode for the
> > > corresponding voltage in the `tx-p2p-microvolt` property, if the volt=
age
> > > is to be used only for speficic mode. More voltage-mode pairs can be
> > > specified.
> > >=20
> > > Example usage with only one voltage (it will be used for all supported
> > > PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> > > case):
> > >=20
> > >   tx-p2p-microvolt =3D <915000>;
> > >=20
> > > Example usage with voltages for multiple modes:
> > >=20
> > >   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
> > >   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
> > >=20
> > > Add these properties into a separate file phy/transmit-amplitude.yaml,
> > > which should be referenced by any binding that uses it. =20
> >=20
> > If I understand your use-case correctly, you need different voltage p2p
> > levels in the connection between the Ethernet MAC and the Ethernet
> > switch or Ethernet-PHY?
>=20
> This is a SerDes differential pair amplitude. So yes to your question,
> if the MII interface uses differential pair, like sgmii, 10gbase-r, ...
>=20
> > Some of the two wire Ethernet standards (10base-T1S, 10base-T1L,
> > 100base-T1, 1000base-T1) defines several p2p voltage levels on the wire,
> > i.e. between the PHYs. Alexandru has posed a series where you can
> > specify the between-PHY voltage levels:
> >=20
> > | https://lore.kernel.org/all/20211210110509.20970-8-alexandru.tachici@=
analog.com/
>=20
> Copper ethernet is something different, so no conflict
>=20
> > Can we make clear that your binding specifies the voltage level on the
> > MII interface, in contrast Alexandru's binding?
>=20
> The binding explicitly says "common PHY", not ethernet PHY. I don't
> thing there will be any confusion. It can also be specified for USB3+
> differential pairs, or PCIe differential pairs, or DisplayPort
> differential pairs...

Thanks for the clarification.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--ig2sp3rdmyz7xxgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmHpvRkACgkQqclaivrt
76lZvAf9H8GhbUiGcplGx0asB/AtptboYzDuuhpMpI/RluV2pGEH2Qyf7RU92oy8
D01mIBwRnZIbOABBYVLf+gTbppmd9043lXuQwVKPijz0kqZsHthXDBP4QOQqDzRT
Flamo7qjNMv3EOdbj20Ylx6KVVRejZopRDBAHF1RqoXQm7ZM4GWU0EBol4d9wbRa
JZvOiIB0MAMIqs+NwsxXZPyfScZTsYMqXFNZXm9VKcilI61MnQ3sr/7Ls/XDkaQy
XnRjZxOWPKsxGNf5xMMXp5SniUa4uOzMzeZr/r7gUYw/d4SD2ak+vS4P8efzxnLD
HVwyYTjf+z0UKKfK/iK2LOc79zeETg==
=IZJg
-----END PGP SIGNATURE-----

--ig2sp3rdmyz7xxgk--


--===============8734900178736485711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8734900178736485711==--

