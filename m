Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3D7CA0EF1
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 15:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VdZds2Bmrn60dt++gIWj62e95G/m7ex6ioxzxKRM060=; b=nmsBgkeSGSxFQLs7AjyuPnl5Ho
	dnWbn2Cru3QJW59huiS/ob5SGNfI+t6lGaJ7y9KA8F+ym3x76XaLCDG5bsCsl1wVRayhnlwhzEDWN
	/Twr4OOhnLjA+o2HRXcSxtw7G8njIgTULXMTTtJUuW5f1LLDbyr/+YdofolzQfHhzP6J6aTiDsHpT
	x537qY854FVHp0GQrEgbBJM9TowLypyQQOfjjflU/BpM9y7TkJsLoNsb1LEOtAVmysnoeeVE3hDL8
	QrMUrAf/Pi9q/HgwluCgyGrlqPsSmLXkArNp3Q7yE/u4i5VOTMyvVh/OLx2Yln9vN6/Jrck3tyd6K
	neMmuDew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg55z-003hbk-1i;
	Tue, 12 Sep 2023 15:14:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg55v-003hab-17
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 15:14:28 +0000
Received: from mercury (dyndsl-091-248-213-163.ewe-ip-backbone.de [91.248.213.163])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4BE016607324;
	Tue, 12 Sep 2023 16:14:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694531663;
	bh=k1PeNMbQDyj4A0pB0EJgK5Wa9ekdClD1G2gmfi4YvC0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N870jCRu6R4xCJAFUtfSlpOXQhj+csuGI6xJVZ92D6u/GlsADOzHu1WWfM94c2XLL
	 07+m0kYBqKKJ4pGY5b0QmWmirjvZq/4Turbl3+xoEhpsd/6zascB8oJpDaD98LDhex
	 tDGTGpvwyDV+Odi/kg9bUjIIB/EInShONEZB7a1YeaoGW37qJVovFxYjC20LY6hMB3
	 qX5YpBrE67Jd8CF1LKpJNHKO9lL+qGEyfn7Y3jtQc88eF4V/W+54IN5u5e+2Sfjvr6
	 7cfCuW9SdDP3fVMtU51WnqmDduQIGxtvZrSqa5neHj7GS9LEYRLGqI7EA0OzBmrPFW
	 WIRSs9iNWLHYw==
Received: by mercury (Postfix, from userid 1000)
	id 5EB851060929; Tue, 12 Sep 2023 17:14:21 +0200 (CEST)
Date: Tue, 12 Sep 2023 17:14:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 3/3] phy: mapphone-mdm6600: Fix pinctrl_pm handling for
 sleep pins
Message-ID: <20230912151421.s2n6uztafg23ceu7@mercury.elektranox.org>
References: <20230911035501.36706-1-tony@atomide.com>
 <20230911035501.36706-3-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20230911035501.36706-3-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_081427_646693_EB347CC9 
X-CRM114-Status: GOOD (  26.35  )
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
Content-Type: multipart/mixed; boundary="===============2792812556641923301=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2792812556641923301==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y5yvgn5q2mlg3w2e"
Content-Disposition: inline


--y5yvgn5q2mlg3w2e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 11, 2023 at 06:54:57AM +0300, Tony Lindgren wrote:
> Looks like the driver sleep pins configuration is unusable. Adding the
> sleep pins causes the usb phy to not respond. We need to use the default
> pins in probe, and only set sleep pins at phy_mdm6600_device_power_off().
>=20
> The sleep pins are needed as otherwise the modem hardware can wake up even
> with the phy driver unloaded as the reset gpio pin can glitch during the
> deeper SoC idle states.
>=20
> Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Fixes: 2ad2af081622 ("phy: mapphone-mdm6600: Improve phy related runtime =
PM calls")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Apparently phy_power_off is not called on device removal, so I
understand the need to setup sleep pins in phy_mdm6600_device_power_off()
in addition to the exsting setup in phy_mdm6600_power_off().

But I'm a bit confused about the change required in probe(), since
phy_mdm6600_power_on() selects the default state. I wouldn't expect
any access before the phy is powered on? Anyways,

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/mo=
torola/phy-mapphone-mdm6600.c
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -456,6 +456,7 @@ static void phy_mdm6600_device_power_off(struct phy_m=
dm6600 *ddata)
>  {
>  	struct gpio_desc *reset_gpio =3D
>  		ddata->ctrl_gpios[PHY_MDM6600_RESET];
> +	int error;
> =20
>  	ddata->enabled =3D false;
>  	phy_mdm6600_cmd(ddata, PHY_MDM6600_CMD_BP_SHUTDOWN_REQ);
> @@ -471,6 +472,11 @@ static void phy_mdm6600_device_power_off(struct phy_=
mdm6600 *ddata)
>  	} else {
>  		dev_err(ddata->dev, "Timed out powering down\n");
>  	}
> +
> +	error =3D pinctrl_pm_select_sleep_state(ddata->dev);
> +	if (error)
> +		dev_warn(ddata->dev, "%s: error with sleep_state: %i\n",
> +			 __func__, error);
>  }
> =20
>  static void phy_mdm6600_deferred_power_on(struct work_struct *work)
> @@ -571,12 +577,6 @@ static int phy_mdm6600_probe(struct platform_device =
*pdev)
>  	ddata->dev =3D &pdev->dev;
>  	platform_set_drvdata(pdev, ddata);
> =20
> -	/* Active state selected in phy_mdm6600_power_on() */
> -	error =3D pinctrl_pm_select_sleep_state(ddata->dev);
> -	if (error)
> -		dev_warn(ddata->dev, "%s: error with sleep_state: %i\n",
> -			 __func__, error);
> -
>  	error =3D phy_mdm6600_init_lines(ddata);
>  	if (error)
>  		return error;
> --=20
> 2.42.0

--y5yvgn5q2mlg3w2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUAgEgACgkQ2O7X88g7
+ppX+A//bbZX9bX6CfJLtihB/HSarY2ZTV6pm9EegsCw1DW98pRTOCBPBmYu75ve
ZcCnPy+zu0YB3CmdMR822NUXiWgD2VL2bjj9Db+S7pY58UIR5eRR6pFIPH0boIxU
YbeTfx7Xya28sKU+G+00cZ1zfo0kySDhAI8yqRO5/JpHSFqVNKjG1KRCSFbIsDkG
yDKWwLqcLeaEr3LFftchnbovvSCtLbJNC+cdScAfQw8dr4BHz/5mXQp9NmQ9T6JS
sj64agUAp3MKtrjutkGjDlQ/FEZwc+xVCX9oUZDzDE4vcMsmpMVH/9Txy1QDIPVj
TOa+DDGabTXJJ1s34qO0VSQQPTu0LkrK1bzA29c5tCr/gdDtq5TjN5qQGzd2OBRA
aDMyaL6jLHC4ELbBN5QwCMw4NynYdRsaU3/cT9JZzdgWblj1FKf6Vf2OjK/b5eCS
e8hA+HZEt++v9zPyJrwJUBJfSOo8ZRv+1nxEeCqwFZxsBCvYNkD/tWjEwW+542Ys
TQpr+h6VaSO6HEueVRWYqpmhAuuX+gh0F9Pe1Qdxm14Wflo/B3YWWHMf7lo9VWeV
wmpz+PkNroS39k7GpeqCSbQD2BTf4hUWETcKxDgEIgl4DddBPJqiZfrXOkKaHx9Z
nrzg91zKvJHWp8eza8oX/2uXnDabu0g752lMPlw+Hmffmj12/mI=
=J2kL
-----END PGP SIGNATURE-----

--y5yvgn5q2mlg3w2e--


--===============2792812556641923301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2792812556641923301==--

