Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64F92D65536
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 17:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s5+3eMTr2si6ob2iGhAI+/hwSAhk+fObP6OT/nDtAQE=; b=DG6yIpEqE1H7EcuwxxIa5EH0gI
	g3nLnEcBMID3APzqCL5+74hpxRnSnmY1XSq7TP7gaxLb8gzPlMlZ2T0nJ4fQ5ivqYh4h6UQlBCmog
	Z//6nSDFpVhLS+kKn+RWJA+4oyiJA1whqD6zNlOj+BBfiBdTfChmXP6ln1rn/8c/xvwfhXd6lypgx
	10FjCnv75fWJ++Y3gmrYbvJP1uW3PNvBvw20bFdooYBuA2MvoWGV7mT8DH5IvIV9ZJ0sMz+EqL93J
	p+6Cvzquio5idTRIbfx3JrQ2BdC3VIlQisdUzmSPvLNLwcFz87Z/EWy5nenxZ/rBPlPRxlr8+4N3A
	fPEmCX1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFzkP-0000000BMGf-0M8q;
	Tue, 26 Nov 2024 17:53:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFzkM-0000000BMFS-3jws
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 17:53:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 01F815C5CA8;
	Tue, 26 Nov 2024 17:52:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF56AC4CED0;
	Tue, 26 Nov 2024 17:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732643590;
	bh=NehC+ymsbPFPPJe4qVuy3PA7quIwdBzhzboTVNy83O8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aorIiGYth73xyfIGQblyPd2La7YxQE6w8xxfLLyL59BAoU/09Ue8aNqiI+RhuuZb4
	 LLFwb0RO0PxqYflMp98eVEWpLcc/zq1zs//jTzLbVwFm2XogBwXaU6T+w6zgGPYdbd
	 YDci2mxHI6BY6ave/gBGKANsUioNT17f7S8b6pPevqvwtGg8L3UkHQdgOr7kFhGF8b
	 fVv2AjDm103zy/65GNzymBKNgGlL60pJ1SHTPQmSkVuBTURgu7yQ+UbtBo0WpG4nMs
	 Zt2mW6OvtpJqVn2eNOLtmAk/j7Xkq2cwLmhtEGkOc8tAkw7ovCAwuoR9cNu6p6bx5O
	 sA4ukR+wCkzVQ==
Date: Tue, 26 Nov 2024 17:53:04 +0000
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
Subject: Re: [PATCH v2 11/15] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
Message-ID: <20241126-algorithm-wiring-b4339a222536@spud>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_095310_976848_6707B505 
X-CRM114-Status: UNSURE (   9.25  )
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
Content-Type: multipart/mixed; boundary="===============8305292941923635147=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8305292941923635147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/lz60/Ptmbm26ZvV"
Content-Disposition: inline


--/lz60/Ptmbm26ZvV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 26, 2024 at 11:20:46AM +0200, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The Renesas RZ/G3S USB PHY control block is similar with the one found on
> the Renesas RZ/G2L. Add documentation for it.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--/lz60/Ptmbm26ZvV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ0YLAAAKCRB4tDGHoIJi
0prBAQDBbakfQEYNvZfj558SOgCPRr+erB7IDZqbZqJxAKQx7AEA3xTKW2+0Eruc
7HuLCJAmCAFoNyfoAYEo0UE8SD80MA8=
=CybG
-----END PGP SIGNATURE-----

--/lz60/Ptmbm26ZvV--


--===============8305292941923635147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8305292941923635147==--

