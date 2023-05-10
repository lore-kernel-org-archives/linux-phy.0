Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B801C77B7D
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 09:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+/0j+jjcwCm6Hhc/mxmBTKCcgrSnsZy1C9dUefXKB9A=; b=WUC0YbsKpnXwXa9gz43csVOoHs
	uOVDeG1O2O6a5v4gtk7cYApw4Qi5Cvfo/KX1yku2mT/GH4AfrZTM8+BkI8y2VAcXGjCnE4QivvT38
	zRq+LVAO6i74Q5VYQzYf1TBo289wQCw7EtXWrrdjD4X5+Neo8sRr2GgiuO+SrIFjUKDNXjOGc6jzr
	s+bcrsRQPCYGgiRrvUSAycw9axeM2h8D4Dpm6+co+JiPD8fN5uUcqvqx/9WsNVftsM7qrOYQgFtkW
	zN9Ib/6c08Y0aE+M45ObIVvEUgK7wv6efDBRlzJExr2kQwyDU9/2yYy4XeKlj4ovLsP54vdR0ixKR
	x3qUKYyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwgE0-005fU8-2X;
	Wed, 10 May 2023 09:35:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwgDx-005fSP-0d
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 09:35:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pwgDi-00082D-D1; Wed, 10 May 2023 11:34:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pwgDf-002RI0-RR; Wed, 10 May 2023 11:34:47 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pwgDf-0032a5-9B; Wed, 10 May 2023 11:34:47 +0200
Date: Wed, 10 May 2023 11:34:47 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Marcin Wierzbicki <mawierzb@cisco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Roger Quadros <rogerq@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add single link SGMII register
 configuration
Message-ID: <20230510093447.6hwro4ukv6i2dzve@pengutronix.de>
References: <20230508160142.2489365-1-mawierzb@cisco.com>
MIME-Version: 1.0
In-Reply-To: <20230508160142.2489365-1-mawierzb@cisco.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_023505_235229_13E817A2 
X-CRM114-Status: GOOD (  12.88  )
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
Content-Type: multipart/mixed; boundary="===============4009913465890152812=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4009913465890152812==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r5lq3blnkoglk22z"
Content-Disposition: inline


--r5lq3blnkoglk22z
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, May 08, 2023 at 04:01:40PM +0000, Marcin Wierzbicki wrote:
> Add single link SGMII register configuration for no SSC for
> cdns,sierra-phy-t0 compatibility string.
> The configuration is based on Sierra Programmer's Guide and
> validated in Cisco CrayAR SoC.
>=20
> Co-developed-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
> Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
> Signed-off-by: Marcin Wierzbicki <mawierzb@cisco.com>
> Change-Id: Id4c093a1bbf409f3176736b5326854a1396391c1

The Change-Id footers are not supposed to appear in the kernel's
history, so it's better to leave them out when submitting a patch.

(I didn't look at the remaining patch, so me not criticizing more
doesn't implicitly mean the rest is fine. (But of course it also doesn't
mean it is not fine.))

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--r5lq3blnkoglk22z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmRbZTYACgkQj4D7WH0S
/k5e9wf7BD/40i1IpW6aw9iKJlA3bkyq1AcSzzOC14YRCDtape7DV04T8NvZ3DG5
/V0ciqepiiym+BrHWScWSxVaDEBrf3828UT313ZnTXPtCN27J8caTjakmbjzhlCh
pp32eUZJDpmDWb62jfCotwNzSEa7GJgMQb7Trd7tNf65CMpSJu7chvFgf6hGtI52
vWBM5fOlQlUf3TvC3HNnFf078/J6oAvhX2z0ZsiXap5uTE/ECMl0Fo3GFHRTxpZO
/6ri2k1BSAjEC8fDNV2XF8Xvz39miNDjIabuV6ULzsdITgP/TJLWOJVnogXDnTk2
N/+txaYC/AoTFV8/7j0lYKOsxRBiDA==
=w/AR
-----END PGP SIGNATURE-----

--r5lq3blnkoglk22z--


--===============4009913465890152812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4009913465890152812==--

