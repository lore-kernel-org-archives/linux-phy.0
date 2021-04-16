Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05079C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 08:16:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71CAA611AB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 08:16:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71CAA611AB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7BlPUdoAWJTmIYKzdMc0g0WuACH7y8Zh9yuldcI0gwY=; b=IL/wWZztks7fZgtbTe1/6briw
	2ZtcpGwZ7uv1ijXFK9QJ/uO8F/bItqPdS5E9iYpHjYMYeKSUJjo0PxQNkGr4Yvm72u+m8/zZKsN17
	0DDSSuMz0476SDDCYUzcaaunnS686cqRZwLc4S15HS/AHFAfQLGb3WC7bXQLUES9bwiNuA9VI5H8o
	Zp5GF7P1gSf8dIEpkTvZN/ROoa7gk1VdYRmvvwZ5+6gmmi6WfOoYWrau/8SHUhAESQn+rDa2RctEb
	BDwM00pWTBQCeXSVpPS5llPBVbNnhCwxPIg2uJmnZhjmXh2B7mOT2aCpVxM9EVV64JlWPgFZQJKFF
	8S5kjVmrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJdy-001Iqm-I0; Fri, 16 Apr 2021 08:16:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJG6-001FM5-7c
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 07:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=b+F7TMYZkFwY8zI3k5i7iozMWA1M+IKRW33xF7mU6DU=; b=zw5ebNrZnT7FlqSwAdroxotyN6
 2+ELNu3+N5eTZLSbqma87hRX72Hj/mOgiMN2sXvFZOT4wyx3DKcHTnjnP9FUmBCOZ+MIIQQtyzICG
 gfu6f8tEsQxqto2zdolId0Htso5Oncl2PJShcnxKsAttwMpBFGUQAhxd+xeBxK/E105TLCQ5Ay49I
 2yp38m7G51OsNpkVRc8/GII5KUVdnq9sJTsfFF/Qbd7uB7F1ApSVBDW7HRmBSuLkWBWM79BS3ioD7
 LcNqlFexos/23NOdy1TFLJbPt1rxn3KYKVpxBYwPef0eXWPkgrn3Mdm0RJwVt/wllZP7qeL0s25pc
 bsaNEmOw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJG3-009AIY-GC
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 07:51:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lXJFv-0007Vj-FL; Fri, 16 Apr 2021 09:51:11 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:b21a:a98c:8cd:ce9c])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id AEC6260FFEB;
 Fri, 16 Apr 2021 07:51:09 +0000 (UTC)
Date: Fri, 16 Apr 2021 09:51:09 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-can@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v4 3/3] phy: phy-can-transceiver: Add support for generic
 CAN transceiver driver
Message-ID: <20210416075109.yw3c47ii67gckeqd@pengutronix.de>
References: <20210416052647.2758-1-a-govindraju@ti.com>
 <20210416052647.2758-4-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210416052647.2758-4-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_005119_560896_0356575B 
X-CRM114-Status: GOOD (  20.93  )
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
Content-Type: multipart/mixed; boundary="===============6874550009375862070=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6874550009375862070==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ady7filrbecwiiya"
Content-Disposition: inline


--ady7filrbecwiiya
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 16.04.2021 10:56:47, Aswath Govindraju wrote:
> The driver adds support for generic CAN transceivers. Currently
> the modes supported by this driver are standby and normal modes for TI
> TCAN1042 and TCAN1043 CAN transceivers.
>=20
> The transceiver is modelled as a phy with pins controlled by gpios, to put
> the transceiver in various device functional modes. It also gets the phy
> attribute max_link_rate for the usage of CAN drivers.
>=20
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  MAINTAINERS                       |   1 +
>  drivers/phy/Kconfig               |   9 ++
>  drivers/phy/Makefile              |   1 +
>  drivers/phy/phy-can-transceiver.c | 146 ++++++++++++++++++++++++++++++
>  4 files changed, 157 insertions(+)
>  create mode 100644 drivers/phy/phy-can-transceiver.c
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e666d33af10d..4e868f2a97c7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4048,6 +4048,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/gi=
t/mkl/linux-can-next.git
>  F:	Documentation/devicetree/bindings/net/can/
>  F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>  F:	drivers/net/can/
> +F:	drivers/phy/phy-can-transceiver.c
>  F:	include/linux/can/bittiming.h
>  F:	include/linux/can/dev.h
>  F:	include/linux/can/led.h
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 54c1f2f0985f..51902b629fc6 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -61,6 +61,15 @@ config USB_LGM_PHY
>  	  interface to interact with USB GEN-II and USB 3.x PHY that is part
>  	  of the Intel network SOC.
> =20
> +config PHY_CAN_TRANSCEIVER
> +	tristate "CAN transceiver PHY"
> +	select GENERIC_PHY
> +	help
> +	  This option enables support for CAN transceivers as a PHY. This
> +	  driver provides function for putting the transceivers in various
> +	  functional modes using gpios and sets the attribute max link
> +	  rate, for mcan drivers.
                    ^^^^

CAN

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--ady7filrbecwiiya
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB5QeoACgkQqclaivrt
76lL2Af/UvxExvGuIijK2rChTwL3SRtvX/+pPjQvIocOQXS0k3f/Qrn4kekRnYra
L5E5CKfkfDyQ8+Z1hI10WxOKP12wtekyocXH06+wPYZfnSfVXTGa0udUzQsnDbZq
HWJcSdy1AIAuDuRCteWuaAKpXkvqRIKcg2i06DWKHnsM/CiHN6PHunf2pNO7vN6N
m+tM2haOcNWGb0MQ9MYL3q18rN+MtO/FyKhGnQ6G0WNPGzhwPoHHuYEk/tP2mMB8
kbqRyYOOTdtmssPqLGU9/w3N2AB+av9m+JtiVO4xfk9lcREN5NdF7DFsdCg3pC2q
uojUDhg536F1EyjPzsiuucbsPtSE7Q==
=WkZb
-----END PGP SIGNATURE-----

--ady7filrbecwiiya--


--===============6874550009375862070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6874550009375862070==--

