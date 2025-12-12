Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04198D59D7C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Dec 2025 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93k66EYYbYSBLKLkzrOwzWOoAUceJoWdrJxrKA92UVc=; b=tOYawFExwHSKTA0i84a1r/vVtb
	Qf5rao+/Dbx8VpX5IGdb+kkoFCzAUVXDL/NEERTnVH3yVWmZ+yUMf/52AcnREHJlLNNeLRFulThXa
	bi8K73jQrdVWn99/1jzqyL4J+iEWGzJBxLIM9eLCWx7o/5sMmfAt7bNbLeqFi3IMvFnyrqPifKPgk
	e2ZUFpCIdt3H1uXTQ9CUW143XV6zn0rCEcz4h1M3/U4fqBrL9aDDZeCHvqmjQU/p5nbaJ6eI4BBw8
	jr4+9I+/useDXJerlujW5lh0Qkh6Q/4hrMVoR3lW4A0OcFg4ByrZjdpOIdIvxs8ylu090zy6jZPnW
	STZgzMiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU7RQ-00000000vJG-3D8H;
	Fri, 12 Dec 2025 18:00:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU7RO-00000000vIh-1l01
	for linux-phy@lists.infradead.org;
	Fri, 12 Dec 2025 18:00:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A55C3441AF;
	Fri, 12 Dec 2025 18:00:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E51AC4CEF1;
	Fri, 12 Dec 2025 18:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765562429;
	bh=bJ2KJCFxwgxmMsSuX7IhdV9rCVpxtdIdE13CWYdQEx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c+evEzBhkPlDbI3BlJdEvZ8AEjftKU/VXIdPPQJWvsCkWhGn0dqBuVSLZ16mXLcK+
	 OQYy/rRiaQmYlbi8QYxP/qhukPanqLxFBIRQOgUCDqyNpOQhI8JxXsFTEp0EbPxClx
	 UkxH7VzoYkIwaFc9ouQK5nOVWoqpUzdszERP5MM8ercsEPDYSvBkJfWfDbsjbe0Tyc
	 uV/YvsLvAAlE+F6xW8hjBaVU4sa1nIcTGpdaz5udHVRAbVeXbkffrWornvbLJlxJuO
	 myLTdNnURrg6rm4H/SWNmBWTVxv0n6rUtk1280Ij8u5Gnov3A2O5hjDK1iGxgOcKTr
	 +0hfL/nEmnITw==
Date: Fri, 12 Dec 2025 18:00:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Prabhakar <prabhakar.csengg@gmail.com>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
Message-ID: <20251212-thaw-octopus-57e8400506ea@spud>
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
 <20251210-persuaded-rewire-8ac93b0cc039@spud>
 <20251211-wonderful-singing-eel-4e2293-mkl@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20251211-wonderful-singing-eel-4e2293-mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_100030_500705_26E50F29 
X-CRM114-Status: GOOD (  22.43  )
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
Content-Type: multipart/mixed; boundary="===============8382073138997990678=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8382073138997990678==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ec+kgCN350Y3b0uL"
Content-Disposition: inline


--ec+kgCN350Y3b0uL
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 12, 2025 at 12:21:03PM +0100, Marc Kleine-Budde wrote:
> On 10.12.2025 18:21:34, Conor Dooley wrote:
> > On Wed, Dec 10, 2025 at 08:52:58AM +0100, Marc Kleine-Budde wrote:
> > > On 09.12.2025 16:21:19, Prabhakar wrote:
> > > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 i=
s a
> > > > dual high-speed CAN transceiver with sleep-mode support and no EN p=
in,
> > > > mirroring the behaviour of the NXP TJA1048, which also provides dual
> > > > channels and STB1/2 sleep-control lines.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.c=
om>
> > > > ---
> > > > TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=3D=
1765297159307&ref_url=3Dhttps%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN=
1046V-Q1
> > > > NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf
> > >
> > > The polarity of the standby line of the chips is different.
> > >
> > > You must set the correct active high/low property for the GPIO, as the
> > > driver uses logical levels.
> > >
> > > Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >
> > What you're saying seems to contradict the tag you've given, is a
> > fallback really suitable if the standby polarity is not the same?
>=20
> The driver uses _logical_ levels to switch the GPIOs. For example to
> power on the PHY, it disables the standby GPIO by setting the value to
> "0".
>=20
> | static int can_transceiver_phy_power_on(struct phy *phy)
> | {
> [...]
> |         gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
> [...]
> | }
>=20
> You have to use GPIO_ACTIVE_HIGH/GPIO_ACTIVE_LOW in the DT to configure
> the actual level of the GPIO.

Ah okay, I prob should have looked a bit further into the binding.
Acked-by: Conor Dooley <conor.dooley@microchip.com>


>=20
> If you connect the PHY's standby input directly to the SoC's GPIO....
>=20
> | TJA1048: HIGH =3D Normal mode, LOW =3D Standby mode
> | TCAN1046: High =3D Standby mode, Low =3D Normal Mode
>=20
> ...for the TJA1048 you would use GPIO_ACTIVE_LOW, while for the
> TCAN1046 you would use GPIO_ACTIVE_HIGH.
>=20
> regards,
> Marc
>=20
> --=20
> Pengutronix e.K.                 | Marc Kleine-Budde          |
> Embedded Linux                   | https://www.pengutronix.de |
> Vertretung N=FCrnberg              | Phone: +49-5121-206917-129 |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |



--ec+kgCN350Y3b0uL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTxYNwAKCRB4tDGHoIJi
0u4GAQCKQ0zLIMjJX0Bdhe/NUX9j3cgUy7HrpJmvIB9NveY+mQEA21rq6AEs7yyQ
5BxDz7hP5JNIAVC+Im1gKpg60Oy2JAs=
=8+rD
-----END PGP SIGNATURE-----

--ec+kgCN350Y3b0uL--


--===============8382073138997990678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8382073138997990678==--

