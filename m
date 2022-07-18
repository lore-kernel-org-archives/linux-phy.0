Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4CCC43334
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 07:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=joB7PKeSz3dA7h0dUxzwBShg/2rapwQbxhQZxI73O/Y=; b=e6OmpgsvG2CBknQomjYx11gLy+
	SZcjajekD0h5+LEkszDf75Bj2FxsGIFfqmwblUtoLkA4TEblpH3r6WF1l9bpxs3HTzZPh4acPPD0k
	rap1Bc0Gk5Wl1B+b7rrCIeogmrwTYK/XDLWAzRE45OTAgzaJGuxcOJqLmR2CfWNrUU2/wOJtvMFgp
	uCYLbcRbPvppvgnpyJWbQzWSBwQtbWE5YThf+UnGpDVpRag+dVeL+/AYBxChqv8gYQAx8rc50fhQo
	myeSUA5K6LCd35VOSyuZH2fRoVIJDymQm4++RieP1bz3ezeGh0oghRAuYDvZhKXTDkH3fjVRAgyUf
	r5L6g/6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDLZ5-00BYqZ-5G; Mon, 18 Jul 2022 07:53:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDLZ3-00BYoS-91
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 07:53:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oDLYt-0001GH-N4; Mon, 18 Jul 2022 09:53:03 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oDLYs-001fcC-Go; Mon, 18 Jul 2022 09:53:02 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oDLYr-005uuY-JC; Mon, 18 Jul 2022 09:53:01 +0200
Date: Mon, 18 Jul 2022 09:53:00 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] phy: tegra: xusb: Only warn once reset problems in
 .remove()
Message-ID: <20220718075300.u6yxlwebwnh6gymi@pengutronix.de>
References: <20220716145403.107703-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220716145403.107703-1-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_005313_330465_CBDFFA27 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3311115814599732382=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3311115814599732382==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eng7uporgfs33jur"
Content-Disposition: inline


--eng7uporgfs33jur
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

$Subject ~=3D s/once reset/once about reset/

=2E Should I resend, or can you fixup when applying this patch? (Assuming
you're otherwise happy with the change of course.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--eng7uporgfs33jur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLVEVkACgkQwfwUeK3K
7Amg6gf+O4s04tPcTQsku70LG1RNfeJcB4yZOH8IyCO3RKF9EXhge6EVBwTc8bGT
5IGuFFVtgSA8V21q0dmcvOjiMjZsP1uZzlcfXp/NjMSMmjyV2CzfIfAIXFlqjGKw
FNoaYpXEKPf++oM9h2X0gnDWWA3GOl1fUO5g32FsQhfqvqs7igmADhJMxD38EIVb
U1eonlqyfUSMpx+Ito+fkkvhRjv+EGwrIRlypLeVLa5Z5GZhf9Mb97rWlQXM2fNr
Y7zJlqid8bXFrpyjdpS0Jg2JUJDp0uxfPOo/4xoX5UqSMTj84vWL4El9djolat5s
RBOnnnJ875g3SAk52aDWzJJ8tOBavQ==
=/CIO
-----END PGP SIGNATURE-----

--eng7uporgfs33jur--


--===============3311115814599732382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3311115814599732382==--

