Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DF28C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:58:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A5D6C61220
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:58:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A5D6C61220
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZjQQCATOVlGkKJVQ4SDDPu5Dvu14Y1cbUpVJUW/RB4g=; b=SruQPtJuGmjmIGwdpUzrpTMNZ
	aV6mL9Z7HEDBKOwiEn9fNcRdvvd/f0yhl+pcX8r3D3UiosHNy5wKIMQxzLCAOC6fGTp8WAYRXWunj
	9w0sSUzIMKGUNwrpf9ZXpCyB430vqpp/y4PCQTjgddKLrmmQHtrg3HYdk69ooAaPzZqhYW8Zw+Oj6
	C+Hc4Pug9ajj/GHyQ9/34HKvMVzOSmaPAAeiGY7R6whz4B9SSLab2Zz84tWNOYdKhmDiRInkajTVg
	7LZSwovrxGXSM4wFpMl2/DHelQ3CGVaRoTBxUkU/VC37bG8sVb4PJlt0C1Bsg7rhim9/IKKwiztYu
	WEOpkATRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZTS-00BlDp-Km; Wed, 14 Apr 2021 06:58:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZTP-00BlCv-9f
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 06:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=42e14zTYB7sd6qrX0Xrl6nbydVhTiPHK51paa7bh32I=; b=LbsT40/QftokSjI5Ki0vdqkjld
 /7f7jRCvrgBmpNWPoi407aWAdZYd/vDub1KPQ8ce+ObEz6smsE7k45tJyaVSQiBOS5pbADie2ovim
 9WgheGJZ7CPx65VULmaIbN9C4owmPn/vWKgynFSWOYyLzs9xT9L6ejYk4+Mm0Q+iKeUC+C0iNK5gA
 ZsIy9H2IPR4NbEqhL84fNGqpQUL5fmFysOl4p9UJD36Po9+c5mI/nRwSr/4wpljKEst3pZz5PARRz
 4aN1/iM9S/w8rTYS3jMO8C9wOs7aJ1/JGRYSZdTKzKke2Fp5Npd9GgacovfmnCilnW8bZf0VYyEki
 evUYzWoQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZTM-007YHR-5r
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 06:58:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWZTB-00048b-Lg; Wed, 14 Apr 2021 08:57:49 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id AA2C160E53C;
 Wed, 14 Apr 2021 06:57:44 +0000 (UTC)
Date: Wed, 14 Apr 2021 08:57:43 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Sriram Dash <sriram.dash@samsung.com>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] phy: phy-can-transceiver: Add support for generic
 CAN transceiver driver
Message-ID: <20210414065743.36cemub3ag7rzrvk@pengutronix.de>
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-3-a-govindraju@ti.com>
 <fe0a8a9b-35c6-8f23-5968-0b14abb6078d@pengutronix.de>
 <a7c72056-8d3d-f9ba-b8f0-868a4926a7d6@ti.com>
MIME-Version: 1.0
In-Reply-To: <a7c72056-8d3d-f9ba-b8f0-868a4926a7d6@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_235800_242652_CF92D6C1 
X-CRM114-Status: GOOD (  37.49  )
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
Content-Type: multipart/mixed; boundary="===============0924294418592430626=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0924294418592430626==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rq5wkpdjxw2zryon"
Content-Disposition: inline


--rq5wkpdjxw2zryon
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 11:54:36, Aswath Govindraju wrote:
> Hi Marc,
>=20
> On 12/04/21 3:48 pm, Marc Kleine-Budde wrote:
> > On 4/9/21 3:40 PM, Aswath Govindraju wrote:
> >> The driver adds support for generic CAN transceivers. Currently
> >> the modes supported by this driver are standby and normal modes for TI
> >> TCAN1042 and TCAN1043 CAN transceivers.
> >>
> >> The transceiver is modelled as a phy with pins controlled by gpios, to=
 put
> >> the transceiver in various device functional modes. It also gets the p=
hy
> >> attribute max_link_rate for the usage of m_can drivers.
> >=20
> > This driver should be independent of CAN driver, so you should not ment=
ion a
> > specific driver here.
> >=20
>=20
> I will substitute m_can with can in the respin.

Better use uppercase CAN instead of can.

[...]

> >> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-t=
ransceiver.c
> >> new file mode 100644
> >> index 000000000000..14496f6e1666
> >> --- /dev/null
> >> +++ b/drivers/phy/phy-can-transceiver.c
> >> @@ -0,0 +1,140 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * phy-can-transceiver.c - phy driver for CAN transceivers
> >> + *
> >> + * Copyright (C) 2021 Texas Instruments Incorporated - http://www.ti.=
com
> >> + *
> >> + */
> >> +#include<linux/phy/phy.h>
> >> +#include<linux/platform_device.h>
> >> +#include<linux/module.h>
> >> +#include<linux/gpio.h>
> >> +#include<linux/gpio/consumer.h>
> >> +
> >> +struct can_transceiver_data {
> >> +	u32 flags;
> >> +#define STB_PRESENT	BIT(0)
> >> +#define EN_PRESENT	BIT(1)
> >=20
> > please add a common prefix to the defines
>=20
> I will add a common prefix(GPIO) in the respin.

I was thinking about something like CAN_TRANSCEIVER_

[...]

> >> +int can_transceiver_phy_probe(struct platform_device *pdev)
> >> +{
> >> +	struct phy_provider *phy_provider;
> >> +	struct device *dev =3D &pdev->dev;
> >> +	struct can_transceiver_phy *can_transceiver_phy;
> >> +	const struct can_transceiver_data *drvdata;
> >> +	const struct of_device_id *match;
> >> +	struct phy *phy;
> >> +	struct gpio_desc *standby_gpio;
> >> +	struct gpio_desc *enable_gpio;
> >> +	u32 max_bitrate =3D 0;
> >> +
> >> +	can_transceiver_phy =3D devm_kzalloc(dev, sizeof(struct can_transcei=
ver_phy), GFP_KERNEL);
> >=20
> > error handling?
> >=20
>=20
> Will add this in the respin.
>=20
> >> +
> >> +	match =3D of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
> >> +	drvdata =3D match->data;
> >> +
> >> +	phy =3D devm_phy_create(dev, dev->of_node,
> >> +			      &can_transceiver_phy_ops);
> >> +	if (IS_ERR(phy)) {
> >> +		dev_err(dev, "failed to create can transceiver phy\n");
> >> +		return PTR_ERR(phy);
> >> +	}
> >> +
> >> +	device_property_read_u32(dev, "max-bitrate", &max_bitrate);
> >> +	phy->attrs.max_link_rate =3D max_bitrate / 1000000;
> >=20
> > The problem is, there are CAN transceivers with a max of 83.3 kbit/s or=
 125 kbit/s.
> >=20
>=20
> The only way that I was able to find for this is to add a phy attribute
> "max_bit_rate" in include/linux/phy/phy.h. Would this be an acceptable
> solution ?

I think that's up to the phy people.

Another solution would be to have a public struct can_transceiver:

| struct can_transceiver {=20
| 	struct phy *generic_phy;
|       u32 max_bitrate;
| };

which holds the max_bitrate. In the CAN controller driver you can use
container_of to get that struct and access the max_bitrate.

> >> +	can_transceiver_phy->generic_phy =3D phy;
> >> +
> >> +	if (drvdata->flags & STB_PRESENT) {
> >> +		standby_gpio =3D devm_gpiod_get(dev, "standby",   GPIOD_OUT_LOW);
> >=20
> > please use only one space after the ",".
>=20
> Will correct this in respin.
>=20
> > Why do you request the gpio standby low?
>=20
> While probing the transceiver has to be in standby state and only after
> calling the power on does the transceiver go to enable state. This was
> the reason behind requesting gpio standby low.

This isn't consistent with the power_on and power_off functions.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--rq5wkpdjxw2zryon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB2kmUACgkQqclaivrt
76mK8Qf+N44d1xguZNswsKDJAf1+qzy/1jxdvKVmRRibWM+1ckonyZ43g1BMR3EB
oQhvAJOv024olJRjZGd7rEYlGl8RMIdV93aLn6Kycpr7/oo3XVyN2iyVrAsMoa2s
WesrH7Q1Ml5526ZESaDfvpdZy9e0+DtJssR35f76D0ubQwL8nfUfl3gWpmhetJpQ
9FRKAIyTfycXFHPIlFtDb9D7AJu9utpfaHqSlXKjZ6QjiEozyw1wyGPCCRnGuHvU
4f/IFvWx83bOUXEyY65qiKlriFw8wZhpn/FJukAGf4qaVjQzsVk3Sk6Ik5C6a3fP
KQuLh2DFI+XCark5BxyQQuLzR7bebA==
=gC6X
-----END PGP SIGNATURE-----

--rq5wkpdjxw2zryon--


--===============0924294418592430626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0924294418592430626==--

