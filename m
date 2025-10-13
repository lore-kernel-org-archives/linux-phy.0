Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 388FACCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 11:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nxG9Yuu3V03UkeZQ1XML6KBWhOG4i/gKbBByCUdVrpc=; b=q6LlR9zk/EFs1O8PpnVZBy70cu
	mArHU0/S0AfiBW5IrmlMOJpool8rzR+yZjJlg1uo8J+kV7LZvI3yjqYzPzilu8E4RFZTFIb6knjvk
	ZQfBm0PtxG0EdX01oEz+1TSy08R5Yp6/3Pi/RXXyqW7xotoKpwmYqmEwhoGedoqTnsljhr4hPFKef
	ot8AASxiN3cGTg9gXyECp6B2qrKjJc9QgPQX+8XQ5rrHZBwQRY2tJIFB6SNUuNSTisvrm944wjezq
	xPamL9LcBXNS3fhQ5GJHj6FbTRXLAlWBfgGK0ZGy38SzxWu19MVz2gwEpH9Hy7cWtzUXHvtDfezZP
	+lq396sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8GyR-0000000D2S4-42W5;
	Mon, 13 Oct 2025 11:44:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8GyP-0000000D2RR-1H9a
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 11:44:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v8GyA-0004Pm-QG; Mon, 13 Oct 2025 13:44:02 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v8Gy9-003NPs-2b;
	Mon, 13 Oct 2025 13:44:01 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 77709484B87;
	Mon, 13 Oct 2025 11:44:01 +0000 (UTC)
Date: Mon, 13 Oct 2025 13:44:00 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
	linux-can@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20251013-burrowing-elk-of-coffee-210990-mkl@pengutronix.de>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-2-4a9d245fe067@liebherr.com>
 <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>
 <20251013113605.GA177845@legfed1>
MIME-Version: 1.0
In-Reply-To: <20251013113605.GA177845@legfed1>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_044417_339186_006C91FA 
X-CRM114-Status: GOOD (  21.51  )
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
Content-Type: multipart/mixed; boundary="===============6297863941954027296=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6297863941954027296==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7p5ebwh66hrkwuao"
Content-Disposition: inline


--7p5ebwh66hrkwuao
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0

On 13.10.2025 13:36:05, Dimitri Fedrau wrote:
> Am Mon, Oct 13, 2025 at 11:51:51AM +0200 schrieb Marc Kleine-Budde:
> > On 13.10.2025 11:19:19, Dimitri Fedrau via B4 Relay wrote:
> > > Add basic driver support for NXPs TJA1145 CAN transceiver which bring=
s the
> > > PHY up/down by switching to normal/standby mode using SPI commands.
> >=20
> > The PHY supports standby and sleep mode. Does the PHY framework provide
> > a way to configure this?
> >=20
>=20
> Didn't find anything related.
>=20
> > Why do you put the transceiver into standby not in sleep mode?
> >=20
> Datasheet states:
>=20
> Standby mode is the first-level power-saving mode of the TJA1145A,
> featuring low current consumption. The transceiver is unable to transmit
> or receive data in Standby mode, but the INH pin remains active so voltage
> regulators controlled by this pin will be active.
>=20
> Sleep mode is the second-level power saving mode of the TJA1145A. In Sleep
> mode, the transceiver behaves as in Standby Mode with the exception that
> pin INH is set to a high-ohmic state. Voltage regulators controlled by th=
is
> pin will be switched off, and the current into pin BAT will be reduced to=
 a
> minimum.
>=20
> I'm assuming that the sleep state would fit into some suspend,
> power-off, ... scenario, because the INH pin maybe used to control
> regulators.

That makes sense, and I think it depends heavily on the use case of the
system. This can be implemented as soon as the need arises.

For the whole series:

Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--7p5ebwh66hrkwuao
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjs5f0ACgkQDHRl3/mQ
kZyjqggArjAF75JX1jsP6Oh6UDJKXTCUtRYB0X1u1QmOgNOCdkMtH44l59g81+nW
5Vm1QYld8NkdmyPu3FugSdCDDxDnVFLX2v9Bwake5eRSHm9RSQFZ1hSblqVZQ0Bx
ULlWXPZrS+QdhCmtdSAbi7iEbvZtxYcf9M/qjH8vRdpSJ+5BRZ/vIyfwMxJPJgms
BM6jflWj7zTTFR9EM/9vwlnRc7Hrfe+woZ0BM7aYYjY8ibmWe9Xe6R5m6QQBtDUv
5PILzA2mxoUkZ/LGXi0OgExuwZp+1LdrLRat+4ZsLTGQqSMHKypuwrB89Z0qMkIv
/izuJx1+Sy5HQFcgLMVZYdkB9hOKpg==
=tHfi
-----END PGP SIGNATURE-----

--7p5ebwh66hrkwuao--


--===============6297863941954027296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6297863941954027296==--

