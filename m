Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A48CD65538
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 17:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d87g8dkiP1tDBliJeVDiAtSwrNTKVOlxlWOwldR74u8=; b=Re0QAn2lpdPlhFfNAWoDzpX9gU
	TyqUB3DRZM35F0ZAL6eFGRtdw7hDw14YP/34AUD9Yq6pV8UEeDkIMGM+43FXcEaFchRWpKn2WMivW
	1FPzZ1WGLsHixJDHen+B9CIcks9ubiGE0rZvpxBIFXnaXFEtuJ+0rrVh9nQQ1Zy0wa2UQ/UsOWUK5
	Ztxw70mxPC010Y88ZDB5Uk2XGDRMZCsJYfnXSM5mtw581ITIYYEWiabTTLcBRS5wTw/w25G+Gld6V
	eTPaMTQeGuBddOWdNcTkvJ7ii7lIBXDj8ZY2l5i5MWpS+niiW22UZNiACrLrOeIeu1V2ReG6IL6pe
	vXdl7z5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFzl4-0000000BMLf-1dNM;
	Tue, 26 Nov 2024 17:53:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFzl2-0000000BMLD-1KJt
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 17:53:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6BB1A5C5CB7;
	Tue, 26 Nov 2024 17:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B664C4CECF;
	Tue, 26 Nov 2024 17:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732643631;
	bh=nRyoSI6TTXaFa8ac1PPIBrrKxQt3KD0SbotwCVNXJ7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=js0fK5PWQulDKym1SEWsenjcvezLya46nw7L20EXkVXX0Q2+xwbJXKNtDwcUzU5Aq
	 67lI9Pcm/xZNV3XBhK+EJ4mTOdec7A9aIOr0iZ0D/ZBFShuVUp69JhiFmQNG/FCbFg
	 4JVy18NCEJRj1zEOcMOVrgO9dMvBngKlOPDcFerS/VENAnnMeUMM8cV43WeQu+u3cr
	 9lFZCXogE4qsIhHHmUpH2Q+4Q9rCTx9R1p3yJ5ueF/Nqhln34lebD7vSm08AuH4NY8
	 8GpILIXz1xMhOue7G/mYbOTYxqhfRiejYy9Ib47vrsCW7w+ntGrojnzOMH8qWeFD6V
	 yz/yC4FbBmLuA==
Date: Tue, 26 Nov 2024 17:53:46 +0000
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v2 07/15] dt-bindings: phy: renesas,usb2-phy: Mark resets
 as required for RZ/G3S
Message-ID: <20241126-carport-sift-089d6356276a@spud>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_095352_394872_EA5FBDDE 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2744053826211646957=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2744053826211646957==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="syivhFzP6qcgIw2w"
Content-Disposition: inline


--syivhFzP6qcgIw2w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 26, 2024 at 11:20:42AM +0200, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The reset lines are mandatory for the Renesas RZ/G3S platform and must be
> explicitly defined in device tree.
>=20
> Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S=
 phy bindings")
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--syivhFzP6qcgIw2w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ0YLKgAKCRB4tDGHoIJi
0lFFAP9r3Rx0rIq1nWVPGrcA/B6a5oBamynv/AoKmix7LGwJjQD/Qo+N+wPLOawE
dl0QeS/IfgNqrgaFARZWVO3l6zNLuAY=
=SFZV
-----END PGP SIGNATURE-----

--syivhFzP6qcgIw2w--


--===============2744053826211646957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2744053826211646957==--

