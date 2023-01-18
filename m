Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68C2C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 18:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awcTc96DA1FnmYIAHYlXIfXe0sPDUEPM5wL9FuKZykk=; b=AUNBjgPZT9i4nV859uR9qXUhZF
	YnwuNhRAj5AX5mEzSRI9aYNL/MdZUxlcU/PR5V+dYLFLCzBz2SVvkcjakv62FTXntrjOjxsm3FLKl
	YMX1FX+6ee8HDUPchGIhHrfiYNN7ok4KRHMge0y1+qgM7OyFYB+cvICtv/oSn5bdXiZC/WkZNJsLC
	AhVug01j6snafqj4tsf/k+wESe8nIXAjgQfnsoMslh51fyVtn8JP7mw+j+FomuELecT/FAeHknpGX
	WhsDX+v7Bzer4drK0pm1pfgMtYPEeGALurVKQcZLZOpzuLJgLXq+Qu/F+a3+Rr3qfCnAHybwC/b7L
	0PhT5ToA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDb3-002Nhd-4S; Wed, 18 Jan 2023 18:55:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDb0-002Ngs-3v
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 18:55:39 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1pIDak-0000fm-BE; Wed, 18 Jan 2023 19:55:22 +0100
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:edde:b534:8a61:9dbc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id B526B15B0E4;
	Wed, 18 Jan 2023 18:55:19 +0000 (UTC)
Date: Wed, 18 Jan 2023 19:55:11 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfgang Grandegger <wg@grandegger.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: Add support for NXP TJR1443 CAN Transceiver
Message-ID: <20230118185511.jepo6sseafg452sk@pengutronix.de>
References: <cover.1674037830.git.geert+renesas@glider.be>
MIME-Version: 1.0
In-Reply-To: <cover.1674037830.git.geert+renesas@glider.be>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_105538_178942_4C2F289D 
X-CRM114-Status: GOOD (  15.83  )
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
Content-Type: multipart/mixed; boundary="===============6771961701017567008=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6771961701017567008==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vankhrwftcwisvsj"
Content-Disposition: inline


--vankhrwftcwisvsj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 18.01.2023 11:39:22, Geert Uytterhoeven wrote:
> 	Hi all,
>=20
> The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
> pin-compatible alternative for the TI TCAN1043.  Hence this patch series
> adds support for it to the existing TI TCAN1043 DT bindings and to the
> generic CAN Transceiver PHY driver.
>=20
> This has been tested on the Renesas White-Hawk development board.
>=20
> Thanks for your comments!

For both patches:

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--vankhrwftcwisvsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmPIQIwACgkQrX5LkNig
013+TAf9FCnLGd5e/KZG5ygyduglODeGFDaDHkAb8Iks0AB7NzKvx8eMDOqoYnwB
JPPpZMN5KxvE1E+8LSZ1IHygxiCtG9LwySztiQebfIhBLO4JkiIJR8w4x++viN0h
5gKC5/PuBIa1v0znqOH44kRMKCIspJ4c1ALfav3ZRG5CBmJRYAR33CMtyqwrSRUm
YKf1dJPoCBno/ll1j4hz/LWbQO5kBWw6itRVsm+fR66q/tiQtTtWTyq+zxZnfVnk
vxNfuUSOrze5dIhmEVGnDhF+Vj5TDnVV4GfImBAbfD5zkqAaqq3DOuwoFeHMS78m
/H7j72RSD4zA7zdw+Y9kT00/g+nLWA==
=YaNG
-----END PGP SIGNATURE-----

--vankhrwftcwisvsj--


--===============6771961701017567008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6771961701017567008==--

