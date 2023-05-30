Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 409D6C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 15:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tAVsQryX07QEjv6epMV49BB0Di9zvg01FoFySc/SNKQ=; b=iEYp1MDwE594O1HWPySDtdtC2X
	ZfFSvxAOKcOTfX9ZD4KVMwT8FXpDgbiD96H7Z8rCbtJUg9US9Ky5kPP+Qz1cDhc08km1FhNeQdEgZ
	znmpa60PTRS8kwTWlhLYzKfAyz34psffWrWbo8crZ0KcpZH/LCGzM3Jxjnl8lsL4IZMxnmbbrLbNc
	xeiJA0TPiweq/kql9GulfeZ2BIaN1G2HZ0p3fmGucgDE0sgNOig3I9qxN4wmINsztOnYQixtEhOA9
	is6YB6xq0Lt/mTQKfXG91pVsiiIMi+5pbEeHa62aZswP90G6lvZG1ewmomh/LNI3VeyMYb58CqP1K
	G4McPPVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q41GA-00EPMx-2T;
	Tue, 30 May 2023 15:27:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q41G8-00EPLs-0U
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 15:27:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1q41Fd-0000cs-KF; Tue, 30 May 2023 17:27:09 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1q41FZ-003uHM-R0; Tue, 30 May 2023 17:27:05 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1q41FY-009Xf3-TU; Tue, 30 May 2023 17:27:04 +0200
Date: Tue, 30 May 2023 17:27:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH 0/7] dt-bindings: restrict node name suffixes
Message-ID: <20230530152704.tbflnepnioupnkmv@pengutronix.de>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_082740_193393_E89DB275 
X-CRM114-Status: GOOD (  13.71  )
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
Content-Type: multipart/mixed; boundary="===============7752430056779698382=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7752430056779698382==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qbppmt5ki4y3pwo5"
Content-Disposition: inline


--qbppmt5ki4y3pwo5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, May 30, 2023 at 04:48:44PM +0200, Krzysztof Kozlowski wrote:
> Hi,
>=20
> Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we all=
ow
> only decimal numbers.  In few cases narrow the pattern to also disallow
> multiple suffixes, e.g. "pwm-5-5".
>=20
> No dependencies, can be applied by individual subsystems.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--qbppmt5ki4y3pwo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmR2FcgACgkQj4D7WH0S
/k6mKggAlnEVcB4qInHpsUcVID/g9Si5ycFYWHV3Ur9fkw4/flTJsQ0+OPpooZXI
dpvQ7Kl9QZycIs6FZtMyK5Pgi6npW15XG8hL7k+NZq1YUw0qNt6vxH8UqSSUjIdY
to0v66ItQ5jvqJxskCqXG5nE4c39BB6kQmV0LmVqovwRxYEc3GvRqZgOF5RBVvfY
/WGbC2DUwy+zYVyBuAEP9D57J/iJKGXd3Axujy4SwzEJfcdq38axsICip6LF2J3I
goisJHcTFiyiw0ATcuvUafLQDXJUta6y3tmq/SKEjej6z5Iu1p2w3iH6SZ/FTeJx
GHPzrrwL7MzOXnIV9L0w6WsAOJBKtg==
=/tKH
-----END PGP SIGNATURE-----

--qbppmt5ki4y3pwo5--


--===============7752430056779698382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7752430056779698382==--

