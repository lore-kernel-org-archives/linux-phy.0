Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20C5C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 13:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OHorx7Q57FSoDQZJzMRcuHlnfQSByLCX7Nrp0UN/BdQ=; b=VG7AwxpPULs5Nnq5x3DPKoVo6+
	TETdCiDp5o/ewesSlEC5PE24sstJXxlBs5NJl4p4tizlLdVXaSUXBbMDwAMuhc+wGkVjJN2RhjCEV
	nfW1A6OHw4Qwq5PJHmUOd2oy9Nay1cFYYJXtyFkm51gi2w5SSq1HVdtRiJQv5u2b/rmxtm7Wdo/I/
	LenrQO4hxrYrYpfgvFTniCP+hVZkAfltA607ZcBF8qSLqjAL78AWb9lDZpdL7tiQbw7oX7FiYnq99
	vFUkzguWcVRzp50CbafdqKVoCUkwzXpzEBGVKSiIZ93IFjIoFV8GDwbDVZqav/BFh/s9pzl3wViz5
	iis7TARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp9PO-00Geuk-7t; Mon, 22 Nov 2021 13:30:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp9PM-00Gety-2r
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 13:30:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1mp9PH-0004SB-Ej; Mon, 22 Nov 2021 14:30:51 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-c7fb-0fe8-e8cb-8e33.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:c7fb:fe8:e8cb:8e33])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id D01366B2D3B;
 Mon, 22 Nov 2021 13:30:49 +0000 (UTC)
Date: Mon, 22 Nov 2021 14:30:49 +0100
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
Message-ID: <20211122133049.mlbshta6ksck2ngo@pengutronix.de>
References: <20211122125624.6431-1-a-govindraju@ti.com>
 <20211122125624.6431-5-a-govindraju@ti.com>
 <20211122131221.i3djuarw2ae5lbdk@pengutronix.de>
 <47a0f27f-4d44-cc8f-f2ef-0919f38843bf@ti.com>
MIME-Version: 1.0
In-Reply-To: <47a0f27f-4d44-cc8f-f2ef-0919f38843bf@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_053056_162002_CAB2E851 
X-CRM114-Status: GOOD (  23.54  )
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
Content-Type: multipart/mixed; boundary="===============7648553730641285019=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7648553730641285019==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="avg66bt642mchbik"
Content-Disposition: inline


--avg66bt642mchbik
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 22.11.2021 18:50:00, Aswath Govindraju wrote:
> > What about adding a devm_mux_control_get_optional(), which doesn't
> > return a -ENODEV but a NULL pointer if the device doesn't exist?
> >=20
>=20
> I tried adding it in the following manner,
>=20
> +/**
> + * devm_mux_control_optional_get() - Optionally get the mux-control for a
> + *                                  device, with resource management.
> + * @dev: The device that needs a mux-control.
> + * @mux_name: The name identifying the mux-control.
> + *
> + * This differs from devm_mux_control_get in that if the mux does not
> + * exist, it is not considered an error and -ENODEV will not be
> + * returned. Instead the NULL is returned.
> + *
> + * Return: Pointer to the mux-control, or an ERR_PTR with a negative err=
no.
> + */
> +struct mux_control *devm_mux_control_optional_get(struct device *dev,
> +                                                 const char *mux_name)
> +{
> +       struct mux_control *mux_ctrl;
> +
> +       mux_ctrl =3D devm_mux_control_get(dev, mux_name);
> +       if (PTR_ERR(mux_ctrl) =3D=3D -ENOENT)
> +                mux_ctrl =3D NULL;
> +
> +       return mux_ctrl;
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_control_optional_get);
> +
>=20
> However the issue is that there is a print in mux_control_get()
>  dev_err(dev, "%pOF: failed to get mux-control %s(%i)\n",
>=20
> which is getting printed, whenever mux-controls property is not found.
> Therefore, I was not sure about how to go about this issue and did not
> implement it.

Ok, this would require more tweaking in the mux layer. Then leave it as
is.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--avg66bt642mchbik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmGbm4YACgkQqclaivrt
76kInAf4uEpOfpZiBZBlMCXUyEFrjiLrb5O4rk8Maf8VyIaPVEU5rIfaHdk1Xjz8
Ey8c66bHh4J6fuyPv03rz/HjqcwK14M3aiFMWYWkJ5+FpqGOizgCsRAbSR3u9yWg
Aqwdw4wTYy7I2wwxWE09E5klkYwScrsPFOH2Gg0B5PFS8RFDtAU8ubTOehB1aKB+
hf8NE+qeIgixJMbFgSc8pwPOtZt6w9Zsk522+vIZ86MMYEpo+LN6/VTuEtwrkYPI
X9wl1dmD9AeOkyjKqO9gC4Bplr3q7BDi2xAoWF+XvHxSAhW9EsYXNNZQUy8l8bZ1
Zce3ZUXLA7a5hzHvumr5sPUDbn0i
=kEtH
-----END PGP SIGNATURE-----

--avg66bt642mchbik--


--===============7648553730641285019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7648553730641285019==--

