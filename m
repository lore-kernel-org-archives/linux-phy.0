Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628E7C25B74
	for <linux-phy@archiver.kernel.org>; Thu, 16 May 2024 10:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JkuKXaQd0sWd9NBL/HeHpGLXJ5dR65ehKg+XxnBpnDE=; b=IFMPo8wMye2JRDXzZh/ZZipzYr
	SFkvztyI2QDVUWJXY4JsjHVSpHEQRQoy+sKbmNr/kKWxcqrTY0OGyuA4u4xxHCyRvI0OfcUxkX6/P
	NuYXHUz6bVZZNO5R5UmYHNtQ9HIWeE021Y+asfHp/9EMtsJzSJb+6T9+582yxuaG50Z94CZ+NTHct
	26gxysE++Uh+QF3tzM042wxTVFAF+ut99qDpoi7mG7B7WgZ4fOYkDLesJRPdaXP0PN1QALaaHugjz
	S0++YVrtZ5MdSz0ro7dRLJny1H2Bh6G5/jqtrhmxQcsR+U+Ew++iUohfC5fGf1Q17ZQcPNktZdpDE
	kXTAsntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7YYz-00000004VnG-03iE;
	Thu, 16 May 2024 10:42:17 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7YYu-00000004Vk4-2Zkc;
	Thu, 16 May 2024 10:42:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 82E54CE1896;
	Thu, 16 May 2024 10:42:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B8AC113CC;
	Thu, 16 May 2024 10:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856129;
	bh=1yPNANOmvJn1EMdeblWKSZYtKIiO5uIGD/onqnL/1cI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I1lojLaolujTwc0RZTvERDJFobp47N6tG7GT8jmKX3L096U1KQXbiIgdgG034UbGT
	 PXxu1BY5sxvpyEDwiNNykGbPHfzZka+nuS1rNKut3g7eQwTplgohjZ+AFy2O4ek35E
	 L+jm6fsRT9sa3rw78RuRPpZgTDYwJFRazx9ZFq1fpleJnTshRX2bkIv1VoirowbDaM
	 hlFAKYc1RYB9wMl8cZgL7Q2uGfyfILYCXdHGr+R3WX73guB07rnQInFW+oEsDUp1CT
	 v5cZyPP4IIHSf2mM6BoIKPmF05hXYLFihL30B9lEfpby1NSbu0Sm3Q7/NbRu+h2dGR
	 mz8cJ9ZrDqr2w==
Date: Thu, 16 May 2024 12:42:06 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, amitsinght@marvell.com
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Message-ID: <ZkXi_lxAbAiLkUPH@lore-desk>
References: <cover.1715769325.git.lorenzo@kernel.org>
 <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
 <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>
MIME-Version: 1.0
In-Reply-To: <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_034212_938070_827E0113 
X-CRM114-Status: GOOD (  13.49  )
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
Content-Type: multipart/mixed; boundary="===============6081573503028855821=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6081573503028855821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rNUB0ygf6MPo85Dh"
Content-Disposition: inline


--rNUB0ygf6MPo85Dh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> > Enables the PHY_AIROHA_PCIE config by default.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> What about setting that as =3Dm ?
>=20
> Ignoring initrd, PCIe is not even boot critical on that platform :-)
>=20
> Cheers,
> Angelo

ack, I will fix it.

Regards,
Lorenzo

>=20
> > ---
> >   arch/arm64/configs/defconfig | 1 +
> >   1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index a53c58584bcf..c0eacced5d41 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=3Dy
> >   CONFIG_RESET_QCOM_PDC=3Dm
> >   CONFIG_RESET_RZG2L_USBPHY_CTRL=3Dy
> >   CONFIG_RESET_TI_SCI=3Dy
> > +CONFIG_PHY_AIROHA_PCIE=3Dy
> >   CONFIG_PHY_XGENE=3Dy
> >   CONFIG_PHY_CAN_TRANSCEIVER=3Dm
> >   CONFIG_PHY_SUN4I_USB=3Dy
>=20

--rNUB0ygf6MPo85Dh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkXi/QAKCRA6cBh0uS2t
rE0jAP90ihHh6/dLgpD1pkA83izNRC5KG+v60l3o1TWdO+HiWgEA0fsIX9BnTHiM
Mx5qER7VY3d/NueWI1UdKLKplwEYuAk=
=uulB
-----END PGP SIGNATURE-----

--rNUB0ygf6MPo85Dh--


--===============6081573503028855821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6081573503028855821==--

