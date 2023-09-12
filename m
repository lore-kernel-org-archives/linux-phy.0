Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23AA9CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 15:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmCry+s0ewWQ8oteP6tkTvaY1mEDGUv0Xl5MA0zaTuw=; b=O5/TZnsIOGh+DSDch6HHXLReYA
	ChcoD6muQTkqts0/WXy1gJ3extXTSm2U+/FVaCQIvsKnmiRMEYPwO2LaLq7zLVOGYWIGQHk8qoD1S
	z+w1J2gLnbZP5QxgTLA9zoQpBxJZ7SvRVgoXgqbuZ0ssOcVx9vjeZydtWyIfRqADzaud2ME5FEcz3
	kMx63lZc5rkoHCbxeUY/ZxiRIQUoS9nevNtljF8OaWL0N/LdZ7WYL/NyK75RyTa38PrriAKEfMHAe
	y/oCYlZS9mFyiA7mW4eGd/Y4rDJ32s6iMle7W/hmsv/fc845WfNGpjXKQp6vSQKM4Ho1j1kXmR3rg
	3UrmiX7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg4sU-003gYP-2U;
	Tue, 12 Sep 2023 15:00:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg4sL-003gW2-25
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 15:00:30 +0000
Received: from mercury (dyndsl-091-248-213-163.ewe-ip-backbone.de [91.248.213.163])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F22B7660731E;
	Tue, 12 Sep 2023 16:00:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694530824;
	bh=fje6Ynqztyij110coND7hcc/ZRlT2ku6Tj6+9hxgAnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YNzvmUgUA8hIh6CD1wElzbY49RXgtZmmY9z7DVbL61loNwtqq3XvmUkzfFnLGNPG5
	 NTfaBEq3YvAFepQ3/rvKR4prlmzHYt8SAtfYanQo+rhNhuKZAMtCzBNpFvBn10nfb0
	 56ZJXejcyMf2Cx+5kec3IeRTFHt80wDTVKlBc6oPYG0Vy3+xOAdjwmIyXRreFbbGN7
	 k2nUVX7MMg3HFyI1qqKZ3p5kA4GrgpPDH9ik+IypLZkkEkMGz03cmjb30/OfoflLzy
	 By9I2zfpI2OC4c4xAxlBpwduFINwrb0tGwsMeeGb5sKTfrkYdPZlyE+1VB/97VEDoX
	 TY0hQRZh2EjSg==
Received: by mercury (Postfix, from userid 1000)
	id 25B5E1060929; Tue, 12 Sep 2023 17:00:22 +0200 (CEST)
Date: Tue, 12 Sep 2023 17:00:22 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/3] phy: mapphone-mdm6600: Fix runtime PM for remove
Message-ID: <20230912150022.ctkctrgbo3cdxyvh@mercury.elektranox.org>
References: <20230911035501.36706-1-tony@atomide.com>
 <20230911035501.36706-2-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20230911035501.36706-2-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_080028_478202_3194AB9F 
X-CRM114-Status: GOOD (  17.12  )
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
Content-Type: multipart/mixed; boundary="===============6710503744979502930=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6710503744979502930==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jxaxgjvsone6qrt4"
Content-Disposition: inline


--jxaxgjvsone6qrt4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 11, 2023 at 06:54:56AM +0300, Tony Lindgren wrote:
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
>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/mo=
torola/phy-mapphone-mdm6600.c
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -640,6 +640,11 @@ static void phy_mdm6600_remove(struct platform_devic=
e *pdev)
>  {
>  	struct phy_mdm6600 *ddata =3D platform_get_drvdata(pdev);
>  	struct gpio_desc *reset_gpio =3D ddata->ctrl_gpios[PHY_MDM6600_RESET];
> +	int error;
> +
> +	error =3D pm_runtime_resume_and_get(ddata->dev);
> +	if (error)
> +		return;

Isn't this just about the use counters, i.e.
pm_runtime_get_noresume(); should be enough?

-- Sebastian

>  	pm_runtime_dont_use_autosuspend(ddata->dev);
>  	pm_runtime_put_sync(ddata->dev);
> --=20
> 2.42.0

--jxaxgjvsone6qrt4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUAfPwACgkQ2O7X88g7
+po/BRAAoovzn0MHU1DI3+sWu57cH9IjoGgcUcHk3Wu/0eMURdXS9QsCYvTkUhPq
RPrKR/iH9L+W3kJFr9FR5xuYhyDB6NndNdlh4ZlmhXQIajThSwBBMzpilXMravGO
y0fktloyoWejaFwpaKG7nkn9nKt/kzu7ohIuS5YgRS3Y1WSnv9sb48Js5F2ZVkPP
J8eqE4IyNIhzT8ysfo3JMq/O7vCuc838DqIoHQYlXbB2Oc2MGa5yRyTbmN9z1wjg
tZHf3ZUQNVE+QvNR+pkTHQsDjMMmQsaC1qwjNSSBMtRuos6NOu+GZVGiK3tU1OJT
1umvPSmUbZ5i/JaPnJI1g2FuL+JdnjHhf6pAOG+vvbffciquNB+SBEYzGOX4lCt+
aORt6E5/zYWErXorUzh0qVPPBrys1N3Pn40WJzIHowTpJTWqVWOISToS10ncyNUX
ljwMMvDXUq2cKk37pBG2bsRXP8MEeaDIxyMgbXA8krg6c/i5SnZe9LzMt+mfjIYK
gymnDRgARt90APYCtJFyTd5tP5V1jpEk74t0UHDHi1JnPmjVMa/jUdPUunXqVxy9
hkMaXqt+u5lkVK5cUUClnXPfQIndgF5kWXuimD+6PCrwCy/HW/OwdABCtX+sEmcs
vOlsM+/qknnpSHZ0Tql6E98JV8e6BoK4S/TrMYxjxeKc6zPLhy8=
=2n+o
-----END PGP SIGNATURE-----

--jxaxgjvsone6qrt4--


--===============6710503744979502930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6710503744979502930==--

