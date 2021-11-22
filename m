Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2DFAC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 13:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTNR3FDZqywbMx83d+zFd/VDggboGRdcoR70SNOUX6c=; b=vgrtp65embeL0nXLBmFJHyWFvQ
	Z1VVp9J2PBH2Xwdq3SMSM2HzRAt0MnmnIZwf3S7AVbMFETzyHsdavXvMQec86BKODzMq5IvTsP9Nd
	9/KTsqh7FODEKZJL3yu+rwPK0mCuAnpAIsO3EW3Qr45Jg3e7eKbzxyrIMVnY+twjql8KSWx5YItpD
	XzmK/omxC8YrYKR0J/vhVN/rUbiwmTFjpgLgvoPdqFS0W8WpjgcP5Utji2UGSEh3S+YjZKPJRPooE
	U8C0wJjiPhk60P6SPNhzo/Ow09xnwLhEmixpmOZKBHhR8Nbo4iwUUZz8JRs2r2hv4C2z+T0Lr5eAt
	BUHMOe7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp97X-00GbCJ-4C; Mon, 22 Nov 2021 13:12:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp97U-00GbB1-2v
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 13:12:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1mp97P-0002EZ-GO; Mon, 22 Nov 2021 14:12:23 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-c7fb-0fe8-e8cb-8e33.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:c7fb:fe8:e8cb:8e33])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 1D4826B2CFD;
 Mon, 22 Nov 2021 13:12:22 +0000 (UTC)
Date: Mon, 22 Nov 2021 14:12:21 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC v2 4/4] phy: phy-can-transceiver: Add support for
 setting mux
Message-ID: <20211122131221.i3djuarw2ae5lbdk@pengutronix.de>
References: <20211122125624.6431-1-a-govindraju@ti.com>
 <20211122125624.6431-5-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20211122125624.6431-5-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_051228_162707_6822736D 
X-CRM114-Status: GOOD (  25.58  )
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
Content-Type: multipart/mixed; boundary="===============8697205567168563652=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8697205567168563652==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gvhvfddsmx63z7gf"
Content-Disposition: inline


--gvhvfddsmx63z7gf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 22.11.2021 18:26:24, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceiver,
> muxes might need to be set. Therefore, add support for setting the mux by
> reading the mux-controls property from the device tree node.
>=20
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>=20
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-tran=
sceiver.c
> index 6f3fe37dee0e..15056b9d68ba 100644
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
> @@ -21,13 +22,23 @@ struct can_transceiver_phy {
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
> +		ret =3D mux_control_select(can_transceiver_phy->mux_ctrl,
> +					 mux_control_enable_state(can_transceiver_phy->mux_ctrl));
> +		if (ret) {
> +			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
> +			return ret;
> +		}
> +	}
>  	if (can_transceiver_phy->standby_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
>  	if (can_transceiver_phy->enable_gpio)
> @@ -45,6 +56,8 @@ static int can_transceiver_phy_power_off(struct phy *ph=
y)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
>  	if (can_transceiver_phy->enable_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
> +	if (can_transceiver_phy->mux_ctrl)
> +		mux_control_deselect(can_transceiver_phy->mux_ctrl);
> =20
>  	return 0;
>  }
> @@ -95,6 +108,19 @@ static int can_transceiver_phy_probe(struct platform_=
device *pdev)
>  	match =3D of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>  	drvdata =3D match->data;
> =20
> +	if (of_property_read_bool(dev->of_node, "mux-controls")) {
> +		struct mux_control *control;
> +		int ret;
> +
> +		control =3D devm_mux_control_get(dev, NULL);
> +		if (IS_ERR(control)) {
> +			ret =3D PTR_ERR(control);
> +			dev_err_probe(&pdev->dev, ret, "failed to get mux\n");
> +			return PTR_ERR(control);
> +		}
> +		can_transceiver_phy->mux_ctrl =3D control;
> +	}

What about adding a devm_mux_control_get_optional(), which doesn't
return a -ENODEV but a NULL pointer if the device doesn't exist?

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--gvhvfddsmx63z7gf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmGblzMACgkQqclaivrt
76n5jQf/bvjlyjVTxnqe4ORD1NDhaoVzWDGHqD+iyEWl4PyU8w8PINWY7af2oqxO
XwnfYZxryhwTT1cxdr27EcnnhVU24G4bKu/pm8Bz9EQTTG9CuTR/Eg+PgApzWtYX
dFQkqq6tLiUgAHsc7QFqGNVNoFxOcE2KCUOFS1jdn3gT07FrvN4M+qTVJQOpAi9c
SYJ6F8DT3duS45KjWaQuEG6YnCNQTYA2PA2r0Y6/IHqqMvWcApQf+IcdMhztJ7B7
5rJqAiPKq0OZAN4P2146WYodjO5b1c5aeH1lbjud2Kp3VPCptGX5trm9jEnZhstb
dLP7NjeZqyixrl63w5bp+7AHqX9SPw==
=IqZw
-----END PGP SIGNATURE-----

--gvhvfddsmx63z7gf--


--===============8697205567168563652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8697205567168563652==--

