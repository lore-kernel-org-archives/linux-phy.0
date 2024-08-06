Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2AEC52D70
	for <linux-phy@archiver.kernel.org>; Tue,  6 Aug 2024 15:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e9/HwMxTbJ9uNmS1duyG1FWzjKvhcwj7lTgVr12/Sa4=; b=qF6LBPQy14ml2wLXwktooU7sq9
	aa+8xe2m+sYpBlX5D8Jpw2QGqNZh0llhqhl1lYq77s16d0B3ilC2J3S63e0ecXnEd/35W/bUaOnl9
	14XZfIjv/IvtCoWDhSem65ldwtAr+iWhmeir4u+NyL1OBo4H2++0dATSpVzJvNXEO7sVYYdTANWTQ
	nEWuz0XuoxcaVrLMGbXm1JFd6LG+woS+jpKHAZKHJMoUO+E1m2tDajNIykZy28BNaALz05vZZC1QV
	VUYC5x2WcAKTU4j5PvK1G0BCi/81fvN6P+aacLFOIQ07rzNNx5xQ2V08J+Dx95tvzo1fqdAksCk7X
	8sXaXtCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMZL-00000002Fxk-0b0a;
	Tue, 06 Aug 2024 15:57:51 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMYO-00000002FaX-2IUo;
	Tue, 06 Aug 2024 15:56:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A2B3ECE0EC4;
	Tue,  6 Aug 2024 15:56:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FBB4C32786;
	Tue,  6 Aug 2024 15:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722959809;
	bh=Mvs4ORnJ3Si/5wwRO/ZBUHrgkfFrSryuqSFkF3rcpmk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lkaJVD9MHYYF/QkqMWv9ae8YoN3Qp/r1IgnX4CR3mET/X2mlIAutXJ8xlUBHx6r5q
	 t5qG/JGzaDih9p8pvUJDbUer5RcEFJgxa272XgKYL5NTm2goJx0e+6u//SHk/M8gLL
	 0PA3UOr8o/FS6XEFXWrN/vLPlwJX4TCYav3gQWwGo3J6A7+gO3Uurw8jiBIP7C425D
	 Tq4VTlNGLoIWbUdbuO2Jbhf5KLrkYx0GY/e9OY1Rb713mq7HRAduZXFyMguuMNK0A1
	 t5Tuss7XhGjVuxJHjxLzYa01o1WVr0i/ea/+KuWOczR3O6D41hOt1F0Dm709/W1aD3
	 Q0RiMh+v7Jy7w==
Date: Tue, 6 Aug 2024 17:56:45 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org, lorenzo.bianconi83@gmail.com,
	nbd@nbd.name, john@phrozen.org, dd@embedd.com, upstream@airoha.com
Subject: Re: [PATCH v2] phy: airoha: adjust initialization delay in
 airoha_pcie_phy_init()
Message-ID: <ZrJHvS39CCdR_Kcz@lore-rh-laptop>
References: <d174837bcb5a53f7b2c2580211d60a175d0ce8db.1722887003.git.lorenzo@kernel.org>
 <47f25caf-8d0d-4c9f-8550-fa9506680113@collabora.com>
MIME-Version: 1.0
In-Reply-To: <47f25caf-8d0d-4c9f-8550-fa9506680113@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_085653_120008_DCA86A5A 
X-CRM114-Status: GOOD (  21.04  )
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
Content-Type: multipart/mixed; boundary="===============2542317973601305453=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2542317973601305453==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qsaoB7vNDel1zy39"
Content-Disposition: inline


--qsaoB7vNDel1zy39
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 05/08/24 21:57, Lorenzo Bianconi ha scritto:
> > Align phy-pcie initialization delay to the vendor sdk in
> > airoha_pcie_phy_init routine and allow the hw to complete required
> > configuration before proceeding
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>=20
> > ---
> > Changes since v1:
> > - use msleep() instead of mdelay()
> > ---
> >   drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
> >   1 file changed, 8 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pci=
e.c
> > index bd3edaa986c8..6d61e6486a03 100644
> > --- a/drivers/phy/phy-airoha-pcie.c
> > +++ b/drivers/phy/phy-airoha-pcie.c
> > @@ -18,6 +18,9 @@
> >   #define LEQ_LEN_CTRL_MAX_VAL	7
> >   #define FREQ_LOCK_MAX_ATTEMPT	10
> > +/* PCIe-PHY initialization time in ms needed by the hw to complete */
> > +#define PHY_HW_INIT_TIME_MS	30
> > +
> >   enum airoha_pcie_port_gen {
> >   	PCIE_PORT_GEN1 =3D 1,
> >   	PCIE_PORT_GEN2,
> > @@ -1180,8 +1183,11 @@ static int airoha_pcie_phy_init(struct phy *phy)
> >   				 PCIE_DA_XPON_CDR_PR_PWDB);
> >   	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> >   				 PCIE_DA_XPON_CDR_PR_PWDB);
> > -
> > -	usleep_range(100, 200);
> > +	/*
> > +	 * Wait for the time in ms needed by the hw to complete the PCIe-PHY
> > +	 * initialization
>=20
> ...but regardless, I have a nit here (not a blocker for me, hence the R-b=
 tag):
> there's no need to say that we're waiting for milliseconds, so this comme=
nt can
> be just one line:
>=20
> 	/* Wait for the PCIe PHY to complete initialization before returning */
>=20
> Cheers,
> Angelo

ack, no worries, already fixed in v3.

Regards,
Lorenzo

>=20
> > +	 */
> > +	msleep(PHY_HW_INIT_TIME_MS);
> >   	return 0;
> >   }
>=20
>=20

--qsaoB7vNDel1zy39
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZrJHugAKCRA6cBh0uS2t
rHkeAQDZV2tg01O1G63oTxgErFcClTB6YW5N1KZFE9KpV4nWLwD/VzryLORic+JW
9EgkljlIE7kSZVY1YrtHeDeQdk8/cQA=
=nHuP
-----END PGP SIGNATURE-----

--qsaoB7vNDel1zy39--


--===============2542317973601305453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2542317973601305453==--

