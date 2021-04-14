Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7780C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:43:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12A1661164
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:43:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12A1661164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V4GDUheWF9bLU3peTUTwM4nk6dPivSW2GnB3/8IdHJs=; b=Ffkt0qYJHxNmyoVQnF8wzWBq/
	1616q+RFv0yZT5IVCySgUA8cYr8qeXDEIPl87vqjpxaquhnqDsyPmbAPNLDF4TBqD4Luqwk0AVBxr
	jFcqUNQGeqk2BaYrzp9JhVot1F0Rz+8DFLdMak2SnEVgAVdYK/IhwgJjLwGksEeMX+aK7LYx1SQuy
	hJ+tgfqpzEP6rbGvqbvZw8TnBzC+ngsRvTXEGaUt1f+eBJgJV/6fg3FirrQeSBgXsg7Z+FWK+L8LC
	wyrA5nddLl6JSIRLOyngMmXBYCHvPQAxWV/YaTCh7SZJexZuPuqEI+IYHXXQuhqFwWGLMtYbyPNAO
	S44Jv+kkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhfw-00D34o-CR; Wed, 14 Apr 2021 15:43:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhft-00D34M-CF
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gtOjXx8+++4NZYFYGKpT5GqI9SqrJmCPZ3i0MfYOZoo=; b=lbB3/34q1VCz6IQa2byl/fENdG
 MasA5gVqmxKUImIKR0deNevtc2bc4ZYb3mu59sv9pU1gA2eKbmpPrNzIMpmUdLNrXUDbo8pSEqE/5
 E9iqMZIj6h5e4ncmPpwWAmBp8Ak8h5VrBf0bJsNGeW0rchxKjclU0qxGIT7NUync6/28ge6Cnops1
 hqD8e7rThEdyRS7QppgI6xUd+KVDja7iVDN1tRf1Cg8tQXCR+5uF3+GupFcH8aNoqMG3DQgcj2EKL
 ZLPkhQdOqed8IuZBu8b+F7MRf/CFr6FNcImF+JrvRzYbRjmGX9eUpgfat9VnsAc6dRdyQqSD1NegB
 AkblTZYQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhfq-007uhk-QZ
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:43:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWhfm-0005Fg-3Y; Wed, 14 Apr 2021 17:43:22 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 429EA60EA5B;
 Wed, 14 Apr 2021 15:43:20 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:43:19 +0200
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
Subject: Re: [PATCH v2 0/6] CAN TRANSCEIVER: Add support for CAN transceivers
Message-ID: <20210414154319.knn323wo6vi3t2dp@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210414140521.11463-1-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_084326_883757_924497A6 
X-CRM114-Status: GOOD (  19.10  )
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
Content-Type: multipart/mixed; boundary="===============8858409375451822252=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8858409375451822252==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ls64vuqf5liwgxeq"
Content-Disposition: inline


--ls64vuqf5liwgxeq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 19:35:15, Aswath Govindraju wrote:
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
> Patch 1 rewords the comment that restricts max_link_rate attribute to have
> units of Mbps.
>=20
> Patch 2 adds an API for devm_of_phy_optional_get_by_index

You probably want to split this into 2 or even 3 separate series. The
first one would be patches 1+2 then 3+4 they can go via the phy tree.
Patches 5+6 can go via linux-can-next

> Patch 3 models the transceiver as a phy device tree node with properties
> for max bit rate supported, gpio properties for indicating gpio pin numbe=
rs
> to which standby and enable signals are connected.
>=20
> Patch 4 adds a generic driver to support CAN transceivers.
>=20
> Patches 5 & 6 add support for implementing the transceiver as a phy of
> m_can_platform driver.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--ls64vuqf5liwgxeq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB3DZQACgkQqclaivrt
76l7xQf9EU/0dxjIIELdncw7YgkbG5MzMjxlZsTwehF/S7YPFD+SrhSE33kjSFr/
yan8/T+N6Gg3fSsLFQxpw3E5w2i5+0d2UjFErypXkUrLsTgT0d1rjKgywvakE7lj
+4hn33gfbCEK3Nx7vdDsZTbjmPpkXuCgrZKuFhvC8mtVTVMLC2p9hxdpvpzD7pOL
AmQJJwLv3ubkD2PUihd1Tbj1xbVK0vKtOFeGBCi4qE/EIdJMSldDvFkC9+6525pN
XXB7gAkAO/GGx+rkfmyV36bj97nfyoVoNGFjdPPY+VtIAiL7Vg8xBuXL7O7Eod70
AqwTVUnL6UCnpbH4gqtjjkock/G82w==
=kqEi
-----END PGP SIGNATURE-----

--ls64vuqf5liwgxeq--


--===============8858409375451822252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8858409375451822252==--

