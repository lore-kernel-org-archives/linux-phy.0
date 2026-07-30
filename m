Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF38C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 06:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvMPfEtKNW7V/KD+ITs7tgoV94pxiWIU+7WpkhchtD8=; b=ECYq2+y7khW8br17N4Wen/jMqm
	kEBu5MhJ2+D4y02yNCl9WK3JUfYXsO60DOdPzOu4BoA72qQ2E9aBVV86VyfXb+Y7pzZYJhURy/7Hs
	8ube693zSOpnASbt4vKF2IuwxkxJqJrMBu0ADO68BjJ9qNcYs+/fAZDGUrG2RCmg2rFwAz0bh49EE
	dSJPx7lYBp6K9I1HsG6I2BEymJd+3Thp7iBdPvZjreKieti39havpXwsq3uVUnEBkjiBUdncpyUP3
	6UMWNoxAxcuY6osbaPvql/ffs25OIlJ1l2jW8FKLdoMsT44XVPktcP0Z7h0851JN/zoUkvqQ0iHIh
	h3iiYlXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpK0o-00000009aZd-48Gv;
	Thu, 30 Jul 2026 06:12:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpK0l-00000009aYQ-1VAg;
	Thu, 30 Jul 2026 06:12:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B2953201DCE;
	Thu, 30 Jul 2026 08:12:47 +0200 (CEST)
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1wpK0d-0020Cb-21;
	Thu, 30 Jul 2026 08:12:47 +0200
Received: from pengutronix.de (p4ffb2dc6.dip0.t-ipconnect.de [79.251.45.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 4142957698A;
	Thu, 30 Jul 2026 06:12:47 +0000 (UTC)
Date: Thu, 30 Jul 2026 08:12:46 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: haibo.chen@oss.nxp.com
Cc: Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, Haibo Chen <haibo.chen@nxp.com>, qijian.guo@nxp.com
Subject: Re: [PATCH 1/3] phy: phy-can-transceiver: default silent GPIO to
 high during probe
Message-ID: <20260730-debonair-artificial-meerkat-0a5ea2-mkl@pengutronix.de>
References: <20260730-can-share-silent-v1-0-63fd603f943d@nxp.com>
 <20260730-can-share-silent-v1-1-63fd603f943d@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260730-can-share-silent-v1-1-63fd603f943d@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_231255_550553_8ACC6E17 
X-CRM114-Status: GOOD (  14.51  )
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
Content-Type: multipart/mixed; boundary="===============6440998514291702871=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6440998514291702871==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cv6imrgcjwgjm3dq"
Content-Disposition: inline


--cv6imrgcjwgjm3dq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/3] phy: phy-can-transceiver: default silent GPIO to
 high during probe
MIME-Version: 1.0

On 30.07.2026 12:33:26, haibo.chen@oss.nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
>
> The silent pin of the CAN transceiver is active high, asserting it puts
> the transceiver into silent (listen-only) mode where the transmitter is
> disabled.
>
> At probe time, and before the PHY is powered on, the transceiver should
> default to silent mode. This is the correct and lower-power state: the
> transceiver should not actively drive the CAN bus until the PHY is
> explicitly powered on. Requesting the silent GPIO as GPIOD_OUT_LOW leaves
> the transceiver in normal mode by default, which is both incorrect and
> wastes power.
>
> Request the silent GPIO as GPIOD_OUT_HIGH so the transceiver starts in
> silent mode, and let the power_on/power_off callbacks manage the mode
> afterwards.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--cv6imrgcjwgjm3dq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCamrrWwAKCRDMOmT6rpmt
0u8cAP9IaDtkB+9JcxG6xg6iqgxUcAFmEOBlmqkqjP4MmECpEAD/Z7sg4KtbWKiz
yFHLst8QIG+JGAxoKnUMPsx2stUMxws=
=NLw1
-----END PGP SIGNATURE-----

--cv6imrgcjwgjm3dq--


--===============6440998514291702871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6440998514291702871==--

