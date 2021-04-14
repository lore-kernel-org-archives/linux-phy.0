Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01556C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:39:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DDA660FD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:39:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DDA660FD8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xRfhQYAP7gTmhLb9zUDUat7NkTNofw+f/hOUBI/kwts=; b=MgqQIz1jHbIqpszG6YGtYi2iV
	xcb3Iog6gNUK3I3QROi9RRl4tDd4Ul/B8HclFLszuEgXZluYRY0KkxNhrQUH7V/2hYK9GeIeNkm4E
	dpmyM49WQJBDA6gGOm+oBfBmLCpoW/B3H55PsCeRvIYC05xLrk/9n57d5PZ+J27LBTXRw82BfJhWA
	Yd93ZYpVItoS7SZeVz1D3Sb+VrrYWlwbvefaBhxOw6BLeVytfLBltrc2gcTkxfB3S2SypnnNTAoGS
	R6mjG0NNg9OhOAIHS0mLWXXabo2KqvVA8VedI9hwD293QZBUunSM/weDXzw0o5Xc1fYo1pGss9tGd
	7qywFob4w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhbt-00D2Vg-IY; Wed, 14 Apr 2021 15:39:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhbr-00D2VN-5i
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uk+umck3ONNXVhJHIX7lkHAkQkL4P24QV3rRztV43VU=; b=3mov686atUqGtHYTfqf1xro4E1
 Yk4iR6s5dPPnmk69bCxjU48LKswyUCVII4LbNk+y/JiAMo71IUPpRyNMsK/5/F7B33NySw6joKZSJ
 GLfRZ3umXKd89qVE0BdITSUN9U9Pluy4dAFykkJ3gGG9Sw2SyQZ6c3HFMsCBE/AuH4nVzmfIFVYv2
 oGN0GYsPAeunmaZJOYTB3cSNAx9tBtqSIG1Y70OyZfz0eKiA4kPRVUGTree4ihH0+xI9lWajTVsl8
 0smPEGxFHQDW+TcNEkSDLWuMFx4b4bPbboRCPFow3tdHJIz9JBGMoykerOSM4IEYO6jLTgBTgjBMU
 6V+e0PYA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhbo-007uTT-Jh
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:39:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWhbj-0004qo-KI; Wed, 14 Apr 2021 17:39:11 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 69A3460EA55;
 Wed, 14 Apr 2021 15:39:09 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:39:08 +0200
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
Subject: Re: [PATCH v2 4/6] phy: phy-can-transceiver: Add support for generic
 CAN transceiver driver
Message-ID: <20210414153908.vt7vxohfc76pnu6q@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-5-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210414140521.11463-5-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_083916_668094_54223A18 
X-CRM114-Status: GOOD (  18.42  )
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
Content-Type: multipart/mixed; boundary="===============0041459389998683494=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0041459389998683494==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aldzm3xee5a5ngey"
Content-Disposition: inline


--aldzm3xee5a5ngey
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 19:35:19, Aswath Govindraju wrote:
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
> index e666d33af10d..70e1438c372d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4047,6 +4047,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/gi=
t/mkl/linux-can.git
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.=
git
>  F:	Documentation/devicetree/bindings/net/can/
>  F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +F:	drivers/phy/phy-can-transceiver.c
>  F:	drivers/net/can/

please keep this alphabetically sorted

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--aldzm3xee5a5ngey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB3DJkACgkQqclaivrt
76l/IwgAreD/6IHK8z047ucV0MPRO/TLhJE1s9R30MAhPc4nPrt4LnatRYfZz5Oj
dQF6fsUQ3t4r8FVdzSIRxshoM1UcORaIsGv6jLZ4IqjIVcyJE1rwoGA3EghhnD0R
xR+DL85B/9Fxn8K5tg8O0xu7XmMZ2cvOlC6nzoNBrbuVcfP4n2G8FPhsPiv6e668
ufmytXBM5gzMVoMXgEfdUg/Q55uCfGR6aCf3LaYXUNrrt+sOqfZm366jKjlJfM/V
+JY/mIT1R9MnS/Ycf0mPV5i4AD2GTOQ9hoiSqaxhpw7/4iHKAgziOSTuVS0EzHpl
8+KKLu8KKMiJjtazjfMaISdlGjiH5A==
=wqm5
-----END PGP SIGNATURE-----

--aldzm3xee5a5ngey--


--===============0041459389998683494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0041459389998683494==--

