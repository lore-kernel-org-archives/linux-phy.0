Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7854C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 17:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uSTzGTth/5noNYk0ZR7s45UlXXXb4g7aCNvlzH8zXMc=; b=aYZ+C8Gh7JdmdPR02YZgCWcP52
	8aQWSRYcIWZlr7wFadZptL1vqQ40QGApZlutzXa169+GoptmxaDayBuhoWStcVHNevUNbesl0pCdo
	l85KDs7XO13Z4eG4URTs8s3Ej5mmgnZXsNciGrJ17j00bosDalEvrgD34VIfMAvch/FZ4stDzgJ9J
	lhoZERYqnXK7hT6ex90ITpskeGtXt5eWKN3ne7zXg2qxn0qO6H/mV3LMFhXu/tHNsTzkvmrlrTVhn
	5n5rbY8rqK8Y7yOx70P6Hm15RoaH6DbKPwbEDnddbedRaDr7HMYM8R7M9Q/FYDcL4UthKZrE80wKK
	6DQYIXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb1M3-0000000Gf8p-1dn5;
	Mon, 05 Aug 2024 17:18:43 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb1LN-0000000Gev0-3VWN;
	Mon, 05 Aug 2024 17:18:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9C722CE0AFF;
	Mon,  5 Aug 2024 17:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B901C32782;
	Mon,  5 Aug 2024 17:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722878278;
	bh=AV2waQPl+NnId4SF/uw3soyjsDe9UvZeDetvOqmOgbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GqGxJWSe9Tlzr2XiYcQdVGwMz9Sdb5aJIcutpX4Nfpq7d+3F+qm8oDAx3PdTOuuFU
	 gNs4+21fShJES8BH3jXfkeRr3N6NdLfXcLkIUeGUzHSFAgelZQKzIRm0dNB2jl4NE5
	 aWrieqxh5KUqcTmjmdB7jVKFD5RkXLPKlpClfpXV8gVMKH/kIfjpsemoiA1ECNamkv
	 kLZMobhlIvTQNCiIfR5JfSciSeBHeaz/hNme4gmMew3Ke7pcnJ23vWJBt+fsomQ4Sj
	 s9iW8wlE7wxwfKKbr8D2E8JiN6FB23Gt2LCrjU6MsanhzpnZ7or4u+kDrEBT9yQu2V
	 1Uu3Az9c2PKBA==
Date: Mon, 5 Aug 2024 19:17:54 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org, lorenzo.bianconi83@gmail.com,
	nbd@nbd.name, john@phrozen.org, dd@embedd.com, upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH] phy: airoha: adjust initialization delay in
 airoha_pcie_phy_init()
Message-ID: <ZrEJQlCJbj5G0nI8@lore-rh-laptop>
References: <82e50875deba44e34f49bd92578b4dc24f121b01.1720508349.git.lorenzo@kernel.org>
 <Zq-67ZnlmMLh_Ssz@matsya>
MIME-Version: 1.0
In-Reply-To: <Zq-67ZnlmMLh_Ssz@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_101802_073603_B067D6C9 
X-CRM114-Status: GOOD (  19.22  )
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
Content-Type: multipart/mixed; boundary="===============2073117784435552178=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2073117784435552178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cgQmwvY7HYFgRWY8"
Content-Disposition: inline


--cgQmwvY7HYFgRWY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 09-07-24, 09:03, Lorenzo Bianconi wrote:
> > Align phy-pcie initialization delay to the vendor sdk in
> > airoha_pcie_phy_init routine and allow the hw to complete required
> > configuration before proceeding
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pci=
e.c
> > index bd3edaa986c8..445bacfdaaf4 100644
> > --- a/drivers/phy/phy-airoha-pcie.c
> > +++ b/drivers/phy/phy-airoha-pcie.c
> > @@ -18,6 +18,9 @@
> >  #define LEQ_LEN_CTRL_MAX_VAL	7
> >  #define FREQ_LOCK_MAX_ATTEMPT	10
> > =20
> > +/* PCIe-PHY initialization time in ms needed by the hw to complete */
> > +#define PHY_HW_INIT_TIME_MS	30
> > +
> >  enum airoha_pcie_port_gen {
> >  	PCIE_PORT_GEN1 =3D 1,
> >  	PCIE_PORT_GEN2,
> > @@ -1180,8 +1183,11 @@ static int airoha_pcie_phy_init(struct phy *phy)
> >  				 PCIE_DA_XPON_CDR_PR_PWDB);
> >  	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> >  				 PCIE_DA_XPON_CDR_PR_PWDB);
> > -
> > -	usleep_range(100, 200);
> > +	/*
> > +	 * Wait for the time in ms needed by the hw to complete the PCIe-PHY
> > +	 * initialization
> > +	 */
> > +	mdelay(PHY_HW_INIT_TIME_MS);
>=20
> Why not use msleep()...?

ack, you are right, it is not in an atomic context. I will fix it in v2.

Regards,
Lorenzo

>=20
> --=20
> ~Vinod

--cgQmwvY7HYFgRWY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZrEJPgAKCRA6cBh0uS2t
rFdFAP96fTgkoiGnad0N1DzIptoK11KWIhzT2zH5v1AYSWeaZgD8C53dAzKzJG0T
ZYiFgTSrXX5dloa0KtvjexxkfHkIZQw=
=68JE
-----END PGP SIGNATURE-----

--cgQmwvY7HYFgRWY8--


--===============2073117784435552178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2073117784435552178==--

