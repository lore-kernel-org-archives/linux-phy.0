Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C82C6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 09:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=El4xbSDzsCwvwg+VIyap4j8vueXiTz6EKQDOTmPtp1E=; b=Lmpl0ZoRG0yoNEbqY0D8f+Z3El
	mPB7j1llpc8tbebndBlxvOAWCXf7ZvolglWoGn58ADAM5m6otEHALB//oGCOLd5qevQKQyyWRvr3O
	d/YpD4NYA9N89ZqumtKlRGuz6ce631Qp8kGWyGdNr3CwhEyY2iHIZ2e9h7i00EUB/sByis5SwJo7F
	NnSlBvum77UaH5EAzu26nablyda+sJ2oFa0y23WWtbnZpBt8bg2pamXjvwSuKt+T0C2Hg82ldJfaM
	SEYvKEdnu0pGi9IvPgkiWuJhF2Wnc9iSJQ4f9wUNVglD4Gb6bOwH1JY7Ba4xJTvF1IlwB7ubfsnA2
	G78+Quag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfH6p-001Pjg-27;
	Thu, 23 Mar 2023 09:19:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfH6n-001PjE-0L
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 09:19:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pfH6a-00036U-HK; Thu, 23 Mar 2023 10:19:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pfH6Z-0067Is-BO; Thu, 23 Mar 2023 10:19:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pfH6Y-007IMd-Jo; Thu, 23 Mar 2023 10:19:30 +0100
Date: Thu, 23 Mar 2023 10:19:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: ye.xingchen@zte.com.cn
Cc: vkoul@kernel.org, kishon@kernel.org, linmq006@gmail.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: omap-usb2-phy: Use dev_err_probe()
Message-ID: <20230323091930.svydywwm5t7kmrmh@pengutronix.de>
References: <202303231545522162256@zte.com.cn>
MIME-Version: 1.0
In-Reply-To: <202303231545522162256@zte.com.cn>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_021945_152852_4C74400E 
X-CRM114-Status: GOOD (  10.37  )
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
Content-Type: multipart/mixed; boundary="===============1628262249584602976=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1628262249584602976==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o3vanfobuja4yooz"
Content-Disposition: inline


--o3vanfobuja4yooz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 23, 2023 at 03:45:52PM +0800, ye.xingchen@zte.com.cn wrote:
> From: Ye Xingchen <ye.xingchen@zte.com.cn>
>=20
> Replace the open-code with dev_err_probe() to simplify the code.
>=20
> Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--o3vanfobuja4yooz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmQcGaEACgkQj4D7WH0S
/k414Qf9FL5ZtgkSSkD0Qzx1ffkcsHTCm/iQ4YXqWPX3zHJPsvjXZ2sPnfr/YsW/
tz9cUYJD0XuCWk8OMflPm9W15suvyzZG5x78JCUDYevL/6FRANutjwMQhv/EaUyB
jk5CQEf8AYUaYEib9nAOxxjTR21fAAt0rRjmdPtv1XBHLpnoB2b0hINVYufjjFIE
UcegqN1D4QKWI6HBsLJr+8lqLcYkhzI3agEInoEMV5guMatTgFzXvo6S2Qij6R5S
7C1pZoAWWT1GQCsfft9mcHSxF5mT2fnJG9fkq0LHLQEHogLysYatBDYeJPoLj24/
k7E+mBkx/uHPIKOsQ/8x/xBbru0LbQ==
=6ENB
-----END PGP SIGNATURE-----

--o3vanfobuja4yooz--


--===============1628262249584602976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1628262249584602976==--

