Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1CF3E77188
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jan 2025 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fc3D1ZHKQ+wL82bmxjYsK5uqOpbocOi9BzpAQfEZZMM=; b=2M4tB9z0aSFe0MUOel9v3kPdLv
	46yZmSmqYezEsLl4PkXTr9JTgkAgpopy7T351lKkY4icxoTWJQDTTs/l115z4movB4pafvl6n+18h
	ku5M9piOa0EL2jkWdTNcqvV+rb2Jjj/pg3pumGdzb1uF62fJYkbd43snOIs1QdJFuOMnngA4u9JWz
	Mq48lOhSclKNVjGu9jI2WBFgMNP3uqBs+q1tJu137EgBqMQxIQNzUXwSfVic9+CxxGT/IfRCMwnq6
	/SsZZzeuY9iCn6hFzDJyPXZjCL8nwWMgpgj2Hw8q6EeGi0a58o2J2OnX0U9kvnOMbbICMFPar8Sx0
	qhmQwnRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWCG1-0000000ExAD-2qZH;
	Fri, 10 Jan 2025 10:28:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWC1K-0000000EuBp-3b0U
	for linux-phy@lists.infradead.org;
	Fri, 10 Jan 2025 10:13:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tWC1D-0006Vz-Px; Fri, 10 Jan 2025 11:13:31 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tWC1D-0008oI-1r;
	Fri, 10 Jan 2025 11:13:31 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 482BC3A4491;
	Fri, 10 Jan 2025 10:13:31 +0000 (UTC)
Date: Fri, 10 Jan 2025 11:13:31 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states"
 property presence check
Message-ID: <20250110-amiable-impartial-chinchilla-0dc0ae-mkl@pengutronix.de>
References: <20241231163251.244167-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20241231163251.244167-1-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_021338_896840_53EC039B 
X-CRM114-Status: GOOD (  21.75  )
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
Content-Type: multipart/mixed; boundary="===============7649759881956272210=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7649759881956272210==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3cw2zb4afavmoxfo"
Content-Disposition: inline


--3cw2zb4afavmoxfo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states"
 property presence check
MIME-Version: 1.0

On 31.12.2024 10:32:51, Rob Herring (Arm) wrote:
> It doesn't matter whether "mux-states" is not present or there is some
> other issue parsing it causing an error. Drop the presence check and
> rework the error handling to ignore anything other than deferred probe.
>=20
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  drivers/phy/phy-can-transceiver.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-tran=
sceiver.c
> index ee4ce4249698..ed8ba30eb038 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -103,6 +103,7 @@ static int can_transceiver_phy_probe(struct platform_=
device *pdev)
>  	struct phy *phy;
>  	struct gpio_desc *standby_gpio;
>  	struct gpio_desc *enable_gpio;
> +	struct mux_state *mux_state;
>  	u32 max_bitrate =3D 0;
>  	int err;
> =20
> @@ -113,15 +114,12 @@ static int can_transceiver_phy_probe(struct platfor=
m_device *pdev)
>  	match =3D of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>  	drvdata =3D match->data;
> =20
> -	if (of_property_read_bool(dev->of_node, "mux-states")) {
> -		struct mux_state *mux_state;
> -
> -		mux_state =3D devm_mux_state_get(dev, NULL);
> -		if (IS_ERR(mux_state))
> -			return dev_err_probe(&pdev->dev, PTR_ERR(mux_state),
> -					     "failed to get mux\n");
> +	mux_state =3D devm_mux_state_get(dev, NULL);
> +	if (IS_ERR(mux_state)) {
> +		if (PTR_ERR(mux_state) =3D=3D -EPROBE_DEFER)
> +			return PTR_ERR(mux_state);
> +	} else
>  		can_transceiver_phy->mux_state =3D mux_state;
> -	}

Nitpick:
I think we want { } on both sides of the if/else.

After fixing this:
Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

> =20
>  	phy =3D devm_phy_create(dev, dev->of_node,
>  			      &can_transceiver_phy_ops);
> --=20

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--3cw2zb4afavmoxfo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmeA8scACgkQKDiiPnot
vG8nLAf/dLVWSXMBeNKUG0l6POKIND14Axc6EfZuG/QFbvxGVyFzM89BQUCZeYwi
aSo7HwiPNwPeD3R/LBjaPx76h2Zo5SIRyBc+aYKvW4+HjmhNR6t0iZTx9jhoyssu
8cuSBspk9Le8yLvoxAiERzZdvLIia3HqJH0Qy3zxmjG7oTO2mv7D8OONt6Sr5R7f
r6/nCRXhN2wQoWo8AxAKS6Z9sZ4G/QB6UeTJ8olRbqsGj6fJHjUbKta9tiBQMeW/
aIkwopHPnGIKwPrH3ZA8jGMKA9q/fVGWox+XrWmsNPK778y/nApGIIr2rLxVnzXv
I2RyDfKCkBf4TKEYpN20dWddx5+vPw==
=mBep
-----END PGP SIGNATURE-----

--3cw2zb4afavmoxfo--


--===============7649759881956272210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7649759881956272210==--

