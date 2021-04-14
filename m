Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 339F0C43460
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:16:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DFF2613B1
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:16:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DFF2613B1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=npgD8umRmLnVpL5A+QWHrlAiCXum2Fl4T74LF2ps3RE=; b=K3JRNZXCCRzWNaVwxSPvRCGbx
	GDvVQwY63peW8j7vVZoF6oRg0M5cjf7Lbrf+Q+NKM0t4Q6MXoDkxZkWGp5d4n3iJJn0KiGFQUs19u
	OyIGf5r7mA8WGdswIglW9xC8a85f4qGeMRgyDTI646wLo35WDzDYWIGuxW4ZaZChRJZyOwYCPp5wo
	wEhuOv9/PL4jb3ziRpyU51T2pRHdufCwEtq6Sdo0qy0u5r8dFaO+K6cHxRB41fJH0e4vZk8bmEBR+
	gb8B2WGT8+GIPt1FsBpJmFM7slJbUH6QL273PntThz2aU8YJXMSFi00Cck0DvwFtL7LNW7Gbhg5La
	LacnBsIYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhFV-00CzgU-U2; Wed, 14 Apr 2021 15:16:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhFH-00Czfm-Vy
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EiivbsmO765Ym+/Xvd9TW592k+qNj0hOl4wljGvbpaY=; b=V/mg3lmi9/ZFOwhuIu9/w/42Mg
 Ri0WBLiwSIseiK+itP1DtiYd/1zgiYXX5R9QovQv3ui44t5uwBI822fIHVhPCr4EeMudqT3EQVNqn
 OFugGuKltDiC1+Wt/RvxpGH041864L2afANqV9fk9SiybA/1p4w6mV/MnQEjEWCXLDjcmFFHguBzX
 X+uNoD86wOQ2o9+3Qglt3AasCiYNu7wPoV7rLnmmJMt6110WQY8g4Iz9SGWDlYzfd4uO7+80/zGHY
 d8GriEwxAIYUJuXz1YeJbv1zFbjxVUv7wBLWMzdNQSoVITcxQNgU4H93oJfackkBwVwnK0gcpChdH
 y1HIHi6g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhFF-007sSt-3r
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:15:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWhF7-0002Ja-7c; Wed, 14 Apr 2021 17:15:49 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id B74A760EA21;
 Wed, 14 Apr 2021 15:15:45 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:15:44 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 6/6] can: m_can: Add support for transceiver as phy
Message-ID: <20210414151544.uk756tddae3gdmvv@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-7-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210414140521.11463-7-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_081557_184328_5415E0B6 
X-CRM114-Status: GOOD (  26.71  )
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
Content-Type: multipart/mixed; boundary="===============4721220393305303879=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4721220393305303879==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o2cm6ur22kzzisul"
Content-Disposition: inline


--o2cm6ur22kzzisul
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 19:35:21, Aswath Govindraju wrote:
> From: Faiz Abbas <faiz_abbas@ti.com>
>=20
> Add support for implementing transceiver node as phy. The max_bitrate is
> obtained by getting a phy attribute.
>=20
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/net/can/m_can/m_can.c          | 18 ++++++++++++++++++
>  drivers/net/can/m_can/m_can.h          |  2 ++
>  drivers/net/can/m_can/m_can_platform.c | 15 +++++++++++++++
>  3 files changed, 35 insertions(+)
>=20
> diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
> index 34073cd077e4..4807a1f69cc7 100644
> --- a/drivers/net/can/m_can/m_can.c
> +++ b/drivers/net/can/m_can/m_can.c
> @@ -21,6 +21,7 @@
>  #include <linux/iopoll.h>
>  #include <linux/can/dev.h>
>  #include <linux/pinctrl/consumer.h>
> +#include <linux/phy/phy.h>
> =20
>  #include "m_can.h"
> =20
> @@ -1514,6 +1515,7 @@ static void m_can_stop(struct net_device *dev)
>  static int m_can_close(struct net_device *dev)
>  {
>  	struct m_can_classdev *cdev =3D netdev_priv(dev);
> +	int err;
> =20
>  	netif_stop_queue(dev);
> =20
> @@ -1536,6 +1538,14 @@ static int m_can_close(struct net_device *dev)
>  	close_candev(dev);
>  	can_led_event(dev, CAN_LED_EVENT_STOP);
> =20
> +	if (cdev->transceiver) {
> +		err =3D phy_power_off(cdev->transceiver);

phy_power_off() can handle NULL pointers

> +		if (err) {
> +			netdev_err(dev, "error powering off phy, err=3D%d\n", err);
> +			return err;

As far as I can see it already print an error message in case of an
error.

> +		}
> +	}
> +
>  	return 0;
>  }
> =20
> @@ -1720,6 +1730,14 @@ static int m_can_open(struct net_device *dev)
>  	struct m_can_classdev *cdev =3D netdev_priv(dev);
>  	int err;
> =20
> +	if (cdev->transceiver) {
> +		err =3D phy_power_on(cdev->transceiver);
> +		if (err) {
> +			netdev_err(dev, "error powering on phy, err=3D%d\n", err);
> +			return err;
> +		}

same here

> +	}
> +
>  	err =3D m_can_clk_start(cdev);
>  	if (err)
>  		return err;
> diff --git a/drivers/net/can/m_can/m_can.h b/drivers/net/can/m_can/m_can.h
> index ace071c3e58c..38cad068abad 100644
> --- a/drivers/net/can/m_can/m_can.h
> +++ b/drivers/net/can/m_can/m_can.h
> @@ -28,6 +28,7 @@
>  #include <linux/iopoll.h>
>  #include <linux/can/dev.h>
>  #include <linux/pinctrl/consumer.h>
> +#include <linux/phy/phy.h>
> =20
>  /* m_can lec values */
>  enum m_can_lec_type {
> @@ -82,6 +83,7 @@ struct m_can_classdev {
>  	struct workqueue_struct *tx_wq;
>  	struct work_struct tx_work;
>  	struct sk_buff *tx_skb;
> +	struct phy *transceiver;
> =20
>  	struct can_bittiming_const *bit_timing;
>  	struct can_bittiming_const *data_timing;
> diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_c=
an/m_can_platform.c
> index 599de0e08cd7..566ba25fb186 100644
> --- a/drivers/net/can/m_can/m_can_platform.c
> +++ b/drivers/net/can/m_can/m_can_platform.c
> @@ -6,6 +6,7 @@
>  // Copyright (C) 2018-19 Texas Instruments Incorporated - http://www.ti.=
com/
> =20
>  #include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
> =20
>  #include "m_can.h"
> =20
> @@ -67,6 +68,7 @@ static int m_can_plat_probe(struct platform_device *pde=
v)
>  	struct resource *res;
>  	void __iomem *addr;
>  	void __iomem *mram_addr;
> +	struct phy *transceiver;
>  	int irq, ret =3D 0;
> =20
>  	mcan_class =3D m_can_class_allocate_dev(&pdev->dev,
> @@ -101,6 +103,18 @@ static int m_can_plat_probe(struct platform_device *=
pdev)
>  		goto probe_fail;
>  	}
> =20
> +	transceiver =3D devm_of_phy_optional_get_by_index(&pdev->dev, pdev->dev=
=2Eof_node, 0);
> +	if (IS_ERR(transceiver)) {
> +		ret =3D PTR_ERR(transceiver);
> +		dev_err(&pdev->dev, "error while getting phy, err=3D%d\n", ret);
> +		return ret;
> +	}
> +
> +	if (!transceiver)
> +		dev_info(&pdev->dev, "No transceiver phy found\n");

I don't think you should print anything here...
If the driver was working before w/o a phy it will still work without one.

> +	else
> +		priv->cdev.can.bitrate_max =3D transceiver->attrs.max_link_rate;
> +
>  	priv->base =3D addr;
>  	priv->mram_base =3D mram_addr;
> =20
> @@ -108,6 +122,7 @@ static int m_can_plat_probe(struct platform_device *p=
dev)
>  	mcan_class->pm_clock_support =3D 1;
>  	mcan_class->can.clock.freq =3D clk_get_rate(mcan_class->cclk);
>  	mcan_class->dev =3D &pdev->dev;
> +	mcan_class->transceiver =3D transceiver;
> =20
>  	mcan_class->ops =3D &m_can_plat_ops;

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--o2cm6ur22kzzisul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB3Bx4ACgkQqclaivrt
76nqJgf+LvxWJun+RUUBEPoWS+K37DWPDjH1rwLLtden4SbODJ8WChiTH/ePXBYW
Y+FCVPbDdWfe2HdSLx+QKpupk9/xkowAeBTZmgQvxmZ9av0GNvO0BkuFauxqIRWv
qw3U9KaiI9BSEQ4Z4eQqi9Ilm/vMLnqRJE45wbS6G07YI9jyFZfxFfRqA2TSoBmw
Djn2OPbzHF0Z6OgrmnU3B5qtJ8XINX96dfQlRaLxEDJpSuQL0XkyKU5nr++Rs1Ih
oU+Upvw9d7sj6wvWqadsX32r5eg3KIw+uBEVP53B/+q9EZhSP1rKPukAOvSWzjDU
8oepPcFcmhLUyuMWrfEbzqeeYj/NWQ==
=77j2
-----END PGP SIGNATURE-----

--o2cm6ur22kzzisul--


--===============4721220393305303879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4721220393305303879==--

