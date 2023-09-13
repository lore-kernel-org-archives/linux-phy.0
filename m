Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95631EDEC5F
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 14:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ccnlNy/Q/cg9C/wE/+jI1AxdPLVSFOZ+w3pKGyx9cME=; b=ISCGHCzOC7InyA2Hm8Ogn+mWvK
	ZW1xg8zI/AzO3bbIpErg7Rdz092rrxs0Qr5nU6ohj+TVzRwEkOQdwoIR/ceygSW3GK9MYRiZGBhhP
	ISOOVVOXKHx0CsLeoRW2/0HN1mmL+qi7kCw4Ah9Gu38Ws9ieADhCLpCOtyXxExvqxTGiRzLxPHneR
	8SrmcZLUVlHja6P2p9VhdG5OpXTfzfwmFI2+pXv4oJsgLUNFOGQyELArPZqSHa9xW3rpEgrDifCOA
	h8eFdqPebhU/b6zptCGkGFWc6inXYTO/W/134brW93hnYF0qXw/ZtjaK/+ct3sEUDMGIk3VYJpS3b
	Xrlm/JOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgQYv-0065ss-0V;
	Wed, 13 Sep 2023 14:09:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgQYs-0065s4-1u
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 14:09:48 +0000
Received: from mercury (dyndsl-091-248-208-175.ewe-ip-backbone.de [91.248.208.175])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5DF29660733E;
	Wed, 13 Sep 2023 15:09:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694614181;
	bh=3m3HxH6CwdEDu3ZXWCb/3mr/9NqGHqmAJrqZ4cAFGco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=onMBuGFb3H+9oLdtUwS8hRnZi8aCqi0eh+8J3g1npqf5ylPVzryddGIrXD3X01rDT
	 3TIfoVDA/EXh4KEtzfY/WH+2rfBJicTeNWqEIdgIdWD2L65RNeK2g2QB4NNyk/S8ir
	 WEhs+qbE3crP5sZhKgoo0npMDhSQzS74fv/OwJzx6kpzzj5VgSj6HWAXuqJyeVBF+5
	 LpggN90cdbRA29ZbkN2HpLqCwDGqLo7NAtvFJcssYbpU/xw66SoEbPMNr7X4dC6SN4
	 YDbUcbBkU3b9QQFnrffe5L71YhJUgDhxVxNGOvWrsY/N3LWqK7FXdgQH7Sb2GCFOK5
	 F6VW8q2AdkQdA==
Received: by mercury (Postfix, from userid 1000)
	id C52EC106098A; Wed, 13 Sep 2023 16:09:38 +0200 (CEST)
Date: Wed, 13 Sep 2023 16:09:38 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 2/3] phy: mapphone-mdm6600: Fix runtime PM for remove
Message-ID: <20230913140938.c5jmmjg32vxfjk5s@mercury.elektranox.org>
References: <20230913060433.48373-1-tony@atomide.com>
 <20230913060433.48373-2-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20230913060433.48373-2-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_070946_833775_9549A4B2 
X-CRM114-Status: GOOD (  17.52  )
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
Content-Type: multipart/mixed; boundary="===============5601373680097709752=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5601373680097709752==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hprv6k7zp2yqoiyn"
Content-Disposition: inline


--hprv6k7zp2yqoiyn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 13, 2023 at 09:04:28AM +0300, Tony Lindgren wrote:
> Otherwise we will get an underflow on remove.
>=20
> Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Fixes: f7f50b2a7b05 ("phy: mapphone-mdm6600: Add runtime PM support for n=
_gsm on USB suspend")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
> Changes since v1:
>=20
> - Using pm_runtime_get_noresume() is enough on remove as suggested by
>   Sebastian
>=20
> ---
>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/mo=
torola/phy-mapphone-mdm6600.c
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -641,6 +641,7 @@ static void phy_mdm6600_remove(struct platform_device=
 *pdev)
>  	struct phy_mdm6600 *ddata =3D platform_get_drvdata(pdev);
>  	struct gpio_desc *reset_gpio =3D ddata->ctrl_gpios[PHY_MDM6600_RESET];
> =20
> +	pm_runtime_get_noresume(ddata->dev);
>  	pm_runtime_dont_use_autosuspend(ddata->dev);
>  	pm_runtime_put_sync(ddata->dev);
>  	pm_runtime_disable(ddata->dev);
> --=20
> 2.42.0

--hprv6k7zp2yqoiyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUBwpUACgkQ2O7X88g7
+pqjnw/+J7JEjSvN/apri3TBo6H5dxgJ2BOkIbSeBh6VY4B1nmWc2VhIaVdI+rKx
6V5b5/DMiuZUhaJVztjCPMHUOlz/ds8Iz48vooQZMTRxmQqHgDAdtQj1VrhEOAfE
1S68o4oaIKcJT6hAJGzzyqgUEunN7uVAZUnKAPxcg44umeznA38FGNzxIsc6ppc9
ew2D6VgR5hg3x9z+ndnwCa0bukKMOdFkeOQmlHq3P8bfCaevNUKjIg4qaNj46BcC
u6gog9bXrdU1e4NodJHi1kSsPabodN3pNk6V5cYFW6ub1xqExBZZGIYBJFgBOWUd
Mgfj5AaDLEeBusPChcHV+qUFLhnKVlN9KGvFOl8DuMnp0Rihz+bokZf1J42kuWR9
TwWCFTPQCm/71tfQGyMFlXjutkCBV7F+m21Pga4PdWSO//w+IJJY367T/70Jn5Sg
aXEDSpyg7T36NmL+qsa5jrD/BI3i2vMI6AsilsA81T7/17BpQ9jHc1/yO+WnBmFs
r4X1NQfl+Yl1RLztxUD8mWsOBRU7rBTYAsyVZHN7F6lxJACVG58Nm5ACHvavRfwr
MWTiThD5ITxTx0/6v/4yo5Kz8+8hA1G5nSD29MRRqhEEOsmtEpfjYCzr4OkDkS1R
Tl1pNgTaHcpbWooWRFvXrpLqecl6RHbrSV7ipLeXHoAbayDj/54=
=3Mor
-----END PGP SIGNATURE-----

--hprv6k7zp2yqoiyn--


--===============5601373680097709752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5601373680097709752==--

