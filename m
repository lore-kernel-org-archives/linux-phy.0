Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F55CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 15:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QqHBsuZNbmsNKFziXRnk/hNe4WWhdXxEavjxg045sqY=; b=zlRs8QPPGcWKRujfTeJG+hmNhZ
	IVJX1rG6wkwurEzqBfVWFx1U0dB/NpiY/Zzk6Pup7hA+7C9Ikn9+uPhJf5Pvj/PWAzcZIQquwt8Oe
	70u1STJYSuLfYKYuogjjTmKhGwH7uXU5dbRXHUg7uXsDYWm3nmV9ugph9Q2yMGaePfx1FN/p1i5bJ
	WOu4lk4/2DqeIxWxf5WRtMeOLToVbWkuqtb5igsAQy9VfzNcG99TotFFeTtVWP618JeW53v7woqsU
	yc1LTiNhuMYiFrs4BKSFfQnu904jbo+3FexVOOgR3dG37jxTTVGZKwiZlnDAt1ZvXUtH+ERDVkpGJ
	1kH1nS6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg4sp-003gZo-1y;
	Tue, 12 Sep 2023 15:00:55 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg4sm-003gZS-30
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 15:00:54 +0000
Received: from mercury (dyndsl-091-248-213-163.ewe-ip-backbone.de [91.248.213.163])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ACF8C660731E;
	Tue, 12 Sep 2023 16:00:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694530851;
	bh=4fLnwRU+4SmeqyijnuFqdrA/iObnDAqiYUtCgYWRVT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jZhUILbw+ykoqBOnj9+dw0NMiaUpw+YZFZhOaYMw/ov6I2kr4evgW8ejN46FRUV6j
	 Ul8+sYKcwqOMcOr/WxPnPoL21NHE3tqufCLh8yklvSU2BF3nbN8zN820UeEie3TAd1
	 OGcVfeWQ7ksxaQE/dUbRUw28gGLzt1qpdHM2rIcJi+375KYzKoD5Qw9xjkHxy7NJXj
	 yxh/CdG1vYEMaKktG/ZTDa1kDrofKYA9ZD54UPdd8brnTOdxpmVzsF8LaJho2ADlzz
	 a237g0rNRsuCJxK/11rBehwE42HLzVXAmyi3qnH38L+2s55bzrbLjyCKbqVtSB9FSY
	 j2lU6Vw+4C58g==
Received: by mercury (Postfix, from userid 1000)
	id 9C6D71060929; Tue, 12 Sep 2023 17:00:49 +0200 (CEST)
Date: Tue, 12 Sep 2023 17:00:49 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/3] phy: mapphone-mdm6600: Fix runtime disable on probe
Message-ID: <20230912150049.2iglfglyt7us2mmx@mercury.elektranox.org>
References: <20230911035501.36706-1-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20230911035501.36706-1-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_080053_097558_D2464A20 
X-CRM114-Status: GOOD (  19.47  )
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
Content-Type: multipart/mixed; boundary="===============5042978497119834637=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5042978497119834637==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ddozgsgzloscp4tm"
Content-Disposition: inline


--ddozgsgzloscp4tm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 11, 2023 at 06:54:55AM +0300, Tony Lindgren wrote:
> Commit d644e0d79829 ("phy: mapphone-mdm6600: Fix PM error handling in
> phy_mdm6600_probe") caused a regression where we now unconditionally
> disable runtime PM at the end of the probe while it is only needed on
> errors.
>=20
> Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Miaoqian Lin <linmq006@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Fixes: d644e0d79829 ("phy: mapphone-mdm6600: Fix PM error handling in phy=
_mdm6600_probe")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/mo=
torola/phy-mapphone-mdm6600.c
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -627,10 +627,12 @@ static int phy_mdm6600_probe(struct platform_device=
 *pdev)
>  	pm_runtime_put_autosuspend(ddata->dev);
> =20
>  cleanup:
> -	if (error < 0)
> +	if (error < 0) {
>  		phy_mdm6600_device_power_off(ddata);
> -	pm_runtime_disable(ddata->dev);
> -	pm_runtime_dont_use_autosuspend(ddata->dev);
> +		pm_runtime_disable(ddata->dev);
> +		pm_runtime_dont_use_autosuspend(ddata->dev);
> +	}
> +
>  	return error;
>  }
> =20
> --=20
> 2.42.0

--ddozgsgzloscp4tm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUAfSEACgkQ2O7X88g7
+ppRNBAAoQ0/Uv4B+YwTEAyJlIq3tLGWjV+E0H1DfV3r88fvswBL5QjVkNL9/pSX
jWlul4A4mNLIU8/lsNcSwaAu50KB+K3Am3wg2OtQeezHZk+Av3nWwwdty5lDVRp+
kP12Pd23TUCUIAnTV449OyfUwIxEnKCIco0ga2Kc36HO4ZJJf9tp9eRaNu+Hmxnn
jEFuH4ISlaiCsBkaLsJlk4hYe91TRj6z/O+DzmMCNhUGgkFdM7L8DLCszv4Qzwod
+8yIubiY1tEyTWB/OtI8o3abLtfI06Gbat6iiaUgQpu+Og6kqvy9A7xEp85BgCUz
pNJfG18D9MtHX6j3JBdB20zhelCyw7LGw6dvY3PfeDo5zbncKtvgnZGVLt7PkG9m
Z8HP9/zGSyl14DGfJtAsF+J31dBlegiQfJFSYZECmu/eyx/Vt0wIuhiRPuqtLMYa
BLh7BJfAMCoyg7JyVnYcXEIaEFeR1hjK/TrxMjuvvBSaE+LMQqeOdDpae1dfdJaW
Cykcu5a1ctw8grEiLEa5a3Gtulo4Z/DzvV6DBYIx+BZciXdhaUIee8TD6GcF5zvh
x6i4QgmYnGR0tPi2ROhk9eNrHabt/ev/WekjBq0sOdkgQ8HxJNJAzfAkZC6VB+ab
Aw+IzYI2jiglFEjLHX2a4Pz5hinNIhIZ9X5TeuwLtSsJUnOI+JM=
=xuc9
-----END PGP SIGNATURE-----

--ddozgsgzloscp4tm--


--===============5042978497119834637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5042978497119834637==--

