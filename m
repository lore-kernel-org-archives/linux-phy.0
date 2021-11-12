Return-Path: <SRS0=yge3=P7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FB9C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 08:40:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AD6460FE7
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 08:40:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3AD6460FE7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QcV3oJSzbYFvqHOsDMOlzOGlFfAMKjus79W/HELTR+g=; b=dl+TfXoNdhhr/s466nW0mSJAoX
	eazmaHVCgzEbPHmiiSciOWoGtrPAIr8e5ZnxMBUNLhIP5AXZ2WqZiYQrXHDPRzUJeFptGkMEy2aWM
	gXMq/kBVAnVcQlK+fH1BST10710D5guoBNK4sr9ndTo7FABpIAvSpIOJ9/MpSL4qpz15KFwbzP60Z
	K7QZNNTW4chh3lQBA7je+YYcgOAehLwC3xWrLli+9xuugLvsnAEgasyc65WWbBO9NEMT/5M8JnoDT
	Es66uwq+60/yMoSVQS/jWxFgzbDw+vROw0tcPltVPN9tDnYDc7MFWXe8F9VkvLGW6/6jaeT17BCN6
	3fVFIigw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlS6y-009jxI-Ny; Fri, 12 Nov 2021 08:40:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlS6v-009jus-GL
 for linux-phy@lists.infradead.org; Fri, 12 Nov 2021 08:40:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1mlS6o-0007Ca-BP; Fri, 12 Nov 2021 09:40:30 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-de63-3764-bcb9-a107.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:de63:3764:bcb9:a107])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id CF6296AA391;
 Fri, 12 Nov 2021 08:40:27 +0000 (UTC)
Date: Fri, 12 Nov 2021 09:40:27 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Nishanth Menon <nm@ti.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH RFC 2/2] phy: phy-can-transceiver: Add support for
 setting mux
Message-ID: <20211112084027.b2t2beqiiodnwjtv@pengutronix.de>
References: <20211111164313.649-1-a-govindraju@ti.com>
 <20211111164313.649-3-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20211111164313.649-3-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_004037_597653_90FF1BCE 
X-CRM114-Status: GOOD (  27.60  )
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
Content-Type: multipart/mixed; boundary="===============1815351922064216524=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1815351922064216524==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7j22je4qercubawa"
Content-Disposition: inline


--7j22je4qercubawa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 11.11.2021 22:13:12, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceiver,
> muxes might need to be set. Therefore, add support for setting the mux by
> reading the mux-controls property from the device tree node.
>=20
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-tran=
sceiver.c
> index 6f3fe37dee0e..3d8da5226e27 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -10,6 +10,7 @@
>  #include<linux/module.h>
>  #include<linux/gpio.h>
>  #include<linux/gpio/consumer.h>
> +#include <linux/mux/consumer.h>
> =20
>  struct can_transceiver_data {
>  	u32 flags;
> @@ -21,13 +22,22 @@ struct can_transceiver_phy {
>  	struct phy *generic_phy;
>  	struct gpio_desc *standby_gpio;
>  	struct gpio_desc *enable_gpio;
> +	struct mux_control *mux_ctrl;
>  };
> =20
>  /* Power on function */
>  static int can_transceiver_phy_power_on(struct phy *phy)
>  {
> +	int ret;
>  	struct can_transceiver_phy *can_transceiver_phy =3D phy_get_drvdata(phy=
);
> =20
> +	if (can_transceiver_phy->mux_ctrl) {
> +		ret =3D mux_control_select(can_transceiver_phy->mux_ctrl, 1);

Hard coding the "1" looks wrong here. I have seen some boards where you
can select between a CAN-2.0 and a single wire CAN transceiver with a
mux. So I think we cannot hard code the "1" here.

> +		if (ret) {
> +			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
> +			return ret;
> +		}
> +	}
>  	if (can_transceiver_phy->standby_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
>  	if (can_transceiver_phy->enable_gpio)
> @@ -45,6 +55,8 @@ static int can_transceiver_phy_power_off(struct phy *ph=
y)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
>  	if (can_transceiver_phy->enable_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
> +	if (can_transceiver_phy->mux_ctrl)
> +		mux_control_deselect(can_transceiver_phy->mux_ctrl);
> =20
>  	return 0;
>  }
> @@ -95,6 +107,15 @@ static int can_transceiver_phy_probe(struct platform_=
device *pdev)
>  	match =3D of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>  	drvdata =3D match->data;
> =20
> +	if (of_property_read_bool(dev->of_node, "mux-controls")) {

Is this the proper way of doing this? Looks like we need a
devm_mux_control_get_optional(), which doesn't return a -ENODEV if the
device doesn't exist.

Cc'ed Peter Rosin.

> +		struct mux_control *control;
> +
> +		control =3D devm_mux_control_get(dev, NULL);
> +		if (IS_ERR(control))
> +			return PTR_ERR(control);

What about making use of dev_err_probe()?

> +		can_transceiver_phy->mux_ctrl =3D control;
> +	}
> +
>  	phy =3D devm_phy_create(dev, dev->of_node,
>  			      &can_transceiver_phy_ops);
>  	if (IS_ERR(phy)) {
> --=20
> 2.17.1
>=20
>

Regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--7j22je4qercubawa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmGOKHgACgkQqclaivrt
76krsgf9HZyC31LNyXDMlw5iHHC/MjqR3DUT87FwBU5xiFUcgGq6QjNRUKF6b162
P0VpnrQR3dTA/dZDN4MPfgUZeLxH88QuhcAQAN3PVWU5CQd/njoI/O1Idk7+F1BS
QyVGGXV2EEMovB9ZD5xqiZ/9uBrrLvv278lHKxhZN6GFR+UV+0PKbOeJWzMmWafx
6p+ql/gYigs44hYs5WwGHAFiwT5Poisk5qA4E7kzG542PyiKW14+YxyYooBXbCV+
9Wss9w+3lgdgfDykYmVS961utCwlKwMGcojyxsVCao1+7VuqZb9lT8bMdaX1cqlD
uexl6a2K8MrvoKwNELhqCjfvp9vIKA==
=/gnY
-----END PGP SIGNATURE-----

--7j22je4qercubawa--


--===============1815351922064216524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1815351922064216524==--

