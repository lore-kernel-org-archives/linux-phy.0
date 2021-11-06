Return-Path: <SRS0=YpS9=PZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A8DDC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  6 Nov 2021 16:58:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99A2E6108D
	for <linux-phy@archiver.kernel.org>; Sat,  6 Nov 2021 16:58:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 99A2E6108D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AXWeLEsMXLQSeCM9J9NadS64Dls7xvOUC+HszCcL+As=; b=0fRKdY6FVrcxxcQf3VmkdzX2Ov
	x7ZHXTERvIiTP5KkQ4d4TL3IM3Wr1Ya8qouXyIX9G7alkHrzRn4wQACPOqqhEnHE8TMgSzlDFoQoS
	L3JHi8JAUUlJEByAIlQ0PqsJVOgFsEKjSbzTe9T+6yTneM6Oqrf745SzMJr7MjL9e9iMyZFgrDZLW
	INR2p2R+XmvQ2CTHJIG5EXd+MnGTLJmT5ogOO5FZuOWUYDVErjP2M4WD5ore7FyzjM7Gu6ZQWeS9y
	rmlLDNDKHMIJY90VVsjFZ56YBOzcNaq5+blmjRTj/8XgV1USu9NB9mRkwSGzKbzbhZ4YWvEOrNvQY
	EuQ64bpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjP1W-00DCM0-P4; Sat, 06 Nov 2021 16:58:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjNOA-00D4GP-GS
 for linux-phy@bombadil.infradead.org; Sat, 06 Nov 2021 15:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Yi8xH+D2fmZQw1wRPrHdwiRR/F2HJZ82LAFFhEKMa/8=; b=bW1X8CpAa8Oj/+UpiLylytf+E/
 VeCv3D1hecApZ3pAc4INqIV55/VoSRthcfIk91Utsi7BLc+wWqzOARBQ2/DHH8Eg0FfrGRFY6vYgQ
 5oMUQKUSM3KH/a65/Bw0ksK5jXK2D4H+6HiCUNy8t3aO4QEsX8VH8OzLpLfmxEjviDfRg9zD/lYJv
 mB7EJRc0+a5JA5lL8rU1S5izHztDZe0pRC+3q2BOn1zBbPCEisO++ijlEV2OIK5JADWAis3iZUVy0
 kUJyWzZKK+o7Cy26dn8t7v7edNdB5Logq1AhLFsUE0AEEaxIOlnY0TdbiM1DpPmz0i8yTRNBsSa3M
 85ZWzxMg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjNO4-00EXKL-3S
 for linux-phy@lists.infradead.org; Sat, 06 Nov 2021 15:13:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1mjNN9-0007mh-Lj; Sat, 06 Nov 2021 16:12:47 +0100
Received: from pengutronix.de (dialin-80-228-153-084.ewe-ip-backbone.de
 [80.228.153.84])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id A3BC56A5D8B;
 Sat,  6 Nov 2021 15:12:43 +0000 (UTC)
Date: Sat, 6 Nov 2021 16:12:41 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Wolfgang Grandegger <wg@grandegger.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: phy-can-transceiver: Make devm_gpiod_get optional
Message-ID: <20211106151241.pnw2qv4x2wlacgmm@pengutronix.de>
References: <20211102112120.23637-1-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20211102112120.23637-1-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_151344_215504_1A671009 
X-CRM114-Status: GOOD (  11.82  )
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
Content-Type: multipart/mixed; boundary="===============1223301291935424436=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1223301291935424436==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ccilnbgzkbeyziy"
Content-Disposition: inline


--2ccilnbgzkbeyziy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 02.11.2021 16:51:20, Aswath Govindraju wrote:
> In some cases the standby/enable gpio can be pulled low/high and would not
> be connected to a gpio. The current driver implementation will return an
> error in these cases. Therefore, make devm_gpiod_get optional.
>=20
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--2ccilnbgzkbeyziy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmGGm2YACgkQqclaivrt
76n6hgf9F90x3vCftppEddVRmUg3e9nVuI1mflQ6m1371lcsOR+pwmMs5gD/Imrn
nMFfIK+z38AUsAABFT3BmfoxD/NOSEWJMSBz9zHw4C4+swCchVYWQd/VBbD6KDnQ
rASFqBMucCnIPaS6gbcZGa2QYQ9xi1svECLTHq0HRh3qc77uX2wBngM5e3mBvW7i
Puudz7Y7xxKWPIML+dGVhIcOOez7l0bBDcrw1f6IUAXef4lIWHy1D5ItJUqGwrTX
T5gtazJ7HEQ/mKzs81HehtF/U3iBYgieDcN/6AOn+KjyfqlMi1Ml/MEqeCyQj9lR
F3Z5WCqWKb8DnnMOydody+KT1AcNEg==
=858p
-----END PGP SIGNATURE-----

--2ccilnbgzkbeyziy--


--===============1223301291935424436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1223301291935424436==--

