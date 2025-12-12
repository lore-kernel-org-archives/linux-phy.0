Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA6DD44176
	for <linux-phy@archiver.kernel.org>; Fri, 12 Dec 2025 11:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2KJ5zowveQIv5p9yDaXVY55d8mb7KxuA//wWQ3eU/dc=; b=QzMHFuDysvv/xXZ4DIeN9TIxom
	NvEMEgR6/Wk9zH4pLL890jANmQjRp5mc4b9v+0LnFiWDBJnQDRhs3ft/USPFDXobSA0A5hvx8tU9q
	/U5Cao3j09NyCbmGc0gu8x5m9/6Pa+r9nPqBtpyirJl479h2Dhww6/iLcaI4HehkP7Zg2oW0Na1rT
	SULwyXE5a26YFdJY2dFd0w452vKxNO6nB1vZqlRKLFBoncOLudjT5frBs7A2mbeIeMNOpafpwX1wf
	TFf8qX0MyfStGbJTa9QrbmlbLf88vKdo1/k0WSEvkQQoGDGce2nTEl8FYyDVwwnot6bkfL++i38HD
	Im+6zj4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU1DH-00000000T65-1CwF;
	Fri, 12 Dec 2025 11:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU1DE-00000000T5k-3I7J
	for linux-phy@lists.infradead.org;
	Fri, 12 Dec 2025 11:21:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vU1Cs-0004Lc-D5; Fri, 12 Dec 2025 12:21:06 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vU1Cq-005Hin-05;
	Fri, 12 Dec 2025 12:21:04 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A86804B5198;
	Fri, 12 Dec 2025 11:21:03 +0000 (UTC)
Date: Fri, 12 Dec 2025 12:21:03 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Prabhakar <prabhakar.csengg@gmail.com>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
Message-ID: <20251211-wonderful-singing-eel-4e2293-mkl@pengutronix.de>
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
 <20251210-persuaded-rewire-8ac93b0cc039@spud>
MIME-Version: 1.0
In-Reply-To: <20251210-persuaded-rewire-8ac93b0cc039@spud>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_032128_830524_A3C92346 
X-CRM114-Status: GOOD (  19.85  )
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
Content-Type: multipart/mixed; boundary="===============7657490569328371091=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7657490569328371091==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xctq6j2q5icdxbk"
Content-Disposition: inline


--7xctq6j2q5icdxbk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
MIME-Version: 1.0

On 10.12.2025 18:21:34, Conor Dooley wrote:
> On Wed, Dec 10, 2025 at 08:52:58AM +0100, Marc Kleine-Budde wrote:
> > On 09.12.2025 16:21:19, Prabhakar wrote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
> > > dual high-speed CAN transceiver with sleep-mode support and no EN pin,
> > > mirroring the behaviour of the NXP TJA1048, which also provides dual
> > > channels and STB1/2 sleep-control lines.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > ---
> > > TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=3D17=
65297159307&ref_url=3Dhttps%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN10=
46V-Q1
> > > NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf
> >
> > The polarity of the standby line of the chips is different.
> >
> > You must set the correct active high/low property for the GPIO, as the
> > driver uses logical levels.
> >
> > Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>
>
> What you're saying seems to contradict the tag you've given, is a
> fallback really suitable if the standby polarity is not the same?

The driver uses _logical_ levels to switch the GPIOs. For example to
power on the PHY, it disables the standby GPIO by setting the value to
"0".

| static int can_transceiver_phy_power_on(struct phy *phy)
| {
[...]
|         gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
[...]
| }

You have to use GPIO_ACTIVE_HIGH/GPIO_ACTIVE_LOW in the DT to configure
the actual level of the GPIO.

If you connect the PHY's standby input directly to the SoC's GPIO....

| TJA1048: HIGH =3D Normal mode, LOW =3D Standby mode
| TCAN1046: High =3D Standby mode, Low =3D Normal Mode

=2E..for the TJA1048 you would use GPIO_ACTIVE_LOW, while for the
TCAN1046 you would use GPIO_ACTIVE_HIGH.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--7xctq6j2q5icdxbk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmk7+pwACgkQDHRl3/mQ
kZzoXAf/WppHtgf+xjeHcSDUxWQiT0y/ms86YiQzUQjFGDoc+DrkDvbpuaMAc93u
Gsxz0QtfwMnzoMRyvd514QpjuacWsRppi+Td6sE70o8P4bOMWqy6oErLNqzHqOMX
4Z4ouZIL8vy+0uBD2KOicJ4lveWiJikUM4/I1tA3EW/19a0PJraNizbrnhzytasp
9YkxE/fMQopyYhb7//q4kyyzA/CzNqCS2qvi7RSk9XzXQYfzgSVCvF22USjkTUtH
J+hBMluDYcw1DAoRTB7YqBrCYsdnjDtokuiY2lvvnnXl3FX4PjmWMrSRnkyFhmtB
KlwlVtJ9F8qJbQrT0cqukuPBhyOcwA==
=RGBu
-----END PGP SIGNATURE-----

--7xctq6j2q5icdxbk--


--===============7657490569328371091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7657490569328371091==--

