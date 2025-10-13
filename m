Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9707CCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 09:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tNDJmSZKb+nXlO+hHu2Hwn78b7RKxre9F+YTcjCdQkA=; b=MIG7v5jgRYXwepEQDOWx1/bhyG
	iZ1t8/FvnNNf/qdm08a9LeGLQY189W3FpeCcf7dq3QMho1gKOe7jRZp84/d8BfjVeaRTqgVRhNX/r
	bMcynzkNVaQnWQvCWt1Cm6b0jnniFHZrz3R3DMwWvGAq5TL/PIO5TJkoTYARn/iw5XXtGTW6JujvM
	Wmf40OxO0rmJghotbeSf+3HK6aKZlp4PPYqRVCtRcbQirQtO5omLqcVZ7aA0f2QJ8cDXic+FVji/V
	t9TKgZcgTPDG2sQKH9JqX0OIB3Y3w+qRmQ4pW33XeALgOsj9xbX8W3sJlhV6lwi6+o1d4/JCd7s2M
	M9YWaPxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FDo-0000000Co5t-2QwA;
	Mon, 13 Oct 2025 09:52:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FDm-0000000Co4f-0XUX
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 09:52:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v8FDc-0005rG-Rl; Mon, 13 Oct 2025 11:51:52 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v8FDb-003MYD-2A;
	Mon, 13 Oct 2025 11:51:51 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 5A2E1484A28;
	Mon, 13 Oct 2025 09:51:51 +0000 (UTC)
Date: Mon, 13 Oct 2025 11:51:51 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dimitri Fedrau <dimitri.fedrau@liebherr.com>, Dimitri Fedrau <dima.fedrau@gmail.com>, 
	linux-can@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-2-4a9d245fe067@liebherr.com>
MIME-Version: 1.0
In-Reply-To: <20251013-tja1145-support-v3-2-4a9d245fe067@liebherr.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_025202_169160_97FF9092 
X-CRM114-Status: GOOD (  10.91  )
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
Content-Type: multipart/mixed; boundary="===============6276060917742242858=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6276060917742242858==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qdg74qywuxcudsqt"
Content-Disposition: inline


--qdg74qywuxcudsqt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0

On 13.10.2025 11:19:19, Dimitri Fedrau via B4 Relay wrote:
> Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
> PHY up/down by switching to normal/standby mode using SPI commands.

The PHY supports standby and sleep mode. Does the PHY framework provide
a way to configure this?

Why do you put the transceiver into standby not in sleep mode?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--qdg74qywuxcudsqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjsy7MACgkQDHRl3/mQ
kZzcWgf+OHX9MypGBZgJ7rndD9uqn3kqkAol7HambwaSnG5pp6Xn2gW/xl0Z9U9V
pSA4CYciskgb/k5CXq16yyR3mgxElA8JWCE6R5gg0TC+Cf37zQy2tCxc2Kzp6e2g
tNVxMeJyjowlFBN63AUyfWA3V98OiHMhdwOYKQ1vSWTYSa6FsOHAdlGJZGjblMXv
74ffibAy8JXsIOC9McNvssCIQi/VdhwQOW5PlzJI6A1BpbHz3aQgwKLv/aKIx8J2
DbaCFWR/kmKwzbEjsque/rhFvSF9JqaSFkvxdoY5YMVODMzlS0bhCMZ+Y1ugUUPi
ZJngsX/6GrL/kDyydwEZxZl/umdeuA==
=GoOc
-----END PGP SIGNATURE-----

--qdg74qywuxcudsqt--


--===============6276060917742242858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6276060917742242858==--

