Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6368C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:59:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F51161220
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:59:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F51161220
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nkVh6ekmRnx84PWfBmAN7rd46OX7Lvgxs7Snr0ncpmY=; b=GVlS29SnGHoYBlfFhn3IdpRZQ
	V3fotR1fztd9gPHUcPbExnpVn4qipS/zkxihgwD4aNeV1xohR0B2ClRUmTGqvUw1PjHaJgHGV11uV
	YjMCtRfvyNHm9X5I/yLiWv3gc1u1410wXnVB+Prt2O4ZNGLYDl3QZqWy9k+GyGi3TTndmIkWVEPg7
	NNvcM8cx3m3tR++aDlCiECiszBmt8tb8x32qrti2HTDfuBEDe/Hvsv2vyanoYhIuTvy8lECtKg0Hd
	9sNT2n7x3wrAsDEmQd7Im8T9VTdLfZ4Jj6Ey6B1TEcJ/pRAJ9nz57vJi8B7WSdeicqgOpt13xZuHq
	3M+aKw7zA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZV7-00BlWX-Jp; Wed, 14 Apr 2021 06:59:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZUy-00BlUV-6X
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 06:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JCjW4c06AET2UFIFNL+dr9khe7lVd4toVZ20QPtc+do=; b=3dtz6sLFeNA4dZJE7rlzV3wq7i
 quLextmKJeQCTaOsrYBxLqiov2OFx/ts29FAEC3128+Z6dhPc+gGaRt5zw4cr0qq/fo5TXxncZ3qr
 PR9lBFGreic00IMP8xzTQObC+V7KR7IQ4WqV3quNNdqv4+YoWGIvZUe9XdVBGvA5984kTGrm7GVC7
 ZbEFJ6liGp/8+OTWkOEpIJpSHn+4srzL1475dMhoqpAgmjvYjlTErSZ7iK1Y4aY8zxGo9n6S1JkfZ
 fJFD0+GG0UzxW/QdBEuzzognok5B4J+y5ivsW/zw8Elkh8mo1L4DZEien1ILTPSB7PDVu5PCwOXiY
 ctK1bEvw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZUv-007YNF-J0
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 06:59:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWZUp-0004A5-83; Wed, 14 Apr 2021 08:59:31 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 6880960E540;
 Wed, 14 Apr 2021 06:59:29 +0000 (UTC)
Date: Wed, 14 Apr 2021 08:59:28 +0200
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
Subject: Re: [PATCH 0/4] CAN TRANSCEIVER: Add support for CAN transceivers
Message-ID: <20210414065928.d2carmtxsp57cczw@pengutronix.de>
References: <20210409134056.18740-1-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210409134056.18740-1-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_235937_646594_5C2C83E1 
X-CRM114-Status: GOOD (  16.50  )
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
Content-Type: multipart/mixed; boundary="===============8598162879914443360=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8598162879914443360==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="raq3yd6i5d77bb2l"
Content-Disposition: inline


--raq3yd6i5d77bb2l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.04.2021 19:10:50, Aswath Govindraju wrote:
> The following series of patches add support for CAN transceivers.
>=20
> TCAN1042 has a standby signal that needs to be pulled high for
> sending/receiving messages[1]. TCAN1043 has a enable signal along with
> standby signal that needs to be pulled up for sending/receiving
> messages[2], and other combinations of the two lines can be used to put t=
he
> transceiver in different states to reduce power consumption. On boards
> like the AM654-idk and J721e-evm these signals are controlled using gpios.
>=20
> Patch 1 models the transceiver as a phy device tree node with properties
> for max bit rate supported, gpio properties for indicating gpio pin numbe=
rs
> to which standby and enable signals are connected.

Please add a patch that adds the driver and the bindings to the
MAINTAINERS file. Feel free to add it CAN NETWORK DRIVERS.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--raq3yd6i5d77bb2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB2ks4ACgkQqclaivrt
76mHgQf/QZQQBkLEljBddFitlXSkW2erh/AEf1A4VAjsY2cWJEcOrWAzCT5FLV+v
+kNI7gUwtFl8wB6eHnC9OVl7fsvYgqhukX+KPkw6BNESbrSgzB3QBzOHoZOseTpm
nMiKP8gcKM5RVsoXWdiVOuUibbN6iLwKZvBvY6Vww1iz2wwtnPWqT5EyEoKh0YzO
ZfV6/5KCYVYzoAU/Jowk+iNfiPq9928Z0ek3hJHo9jaddhONcQ/PWM73ob/wAD+I
e5ixdVWJQEsmVaw2mG4C8sYXoYvqKIqMxd9S+O3Lu49oZcBrkEsrK4dwyEi8mLmt
MEJYPENQoVsvsWkX+OvhDQqOrg1eug==
=EjJc
-----END PGP SIGNATURE-----

--raq3yd6i5d77bb2l--


--===============8598162879914443360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8598162879914443360==--

