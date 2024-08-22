Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A775C52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PriIJNiuSUo8F50K8ZRc6V55dP55oE2Ime8cpmd2rQQ=; b=LMZXKEPXYZbF+Dc6gH1jOiMMqI
	FEK6QkYiZqyL46DB/BBnrQ3e8PNc7JG2RdAV7eODr3PD01hnIWwTPh3nKY+HhPAV9ohanp/vUd8a/
	IJURNxD2gb720gVAddqhcMKofdsMXg4Pk2lh+tUsONn1taYDh1kQKrKepRtvbqM4Zkve5veh3MIzB
	SNFyQfkP2y6JAto6uZCvuyFVeX0zuApgtl9nXTduzSynIFsFR2y5hadmPXQ8KjPVNkmr63ziF6siP
	6jJ4cVEqvADzTh6F97k8r29lB6cSpi/wqmPRHkHCyMhG6VlZbTcGC0XQ/YAV123bO23v9ZuGYeO8z
	tQTmNVcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shB0c-0000000DfjM-3O6f;
	Thu, 22 Aug 2024 16:50:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAxN-0000000DehO-1Gbz;
	Thu, 22 Aug 2024 16:46:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B657261221;
	Thu, 22 Aug 2024 16:46:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22688C32782;
	Thu, 22 Aug 2024 16:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345200;
	bh=FvxdiKHyEdgk3+LYFNwSArmpeWuVoucsDBFvg6Z/Hro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gTtiZOl2pgiaJ0lGKZJOPwRpHDst0oReqOU+oGdVWRWSzkvGeAauMWry4M2oXseVm
	 DdjTwR68Rv/4Lwr2u8uz7hqPqnH5fXHm3f+mXILdvdPH1ZuewKTu4MO5T00uWH3JX9
	 XlmZZYD+n1reOcP4g7843IcnE+SFdc2aa+W1lVc/BoN7xP4x9NAhPlDZjwjC+2lF0I
	 D1pLNf5BrL3lTy+tUXjRm/5tRB+S+umjUv4AAinQv/aLwHt44Ph3xJ5tzrtaWAvAHH
	 6EuEYEzcPzoZ1AbSE3MARNVGgmgOP7rXkXkGDh8Nfa1Sd2YsyDg2hFZH0ILdz1WI5q
	 LIUfqMl0DeuWg==
Date: Thu, 22 Aug 2024 17:46:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, mturquette@baylibre.com,
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 11/16] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3S phy bindings
Message-ID: <20240822-idiom-parasite-1c025f81a399@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094641_410896_AFA72953 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: multipart/mixed; boundary="===============6527018736766696563=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6527018736766696563==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n6tcZc8VQgDU6IS+"
Content-Disposition: inline


--n6tcZc8VQgDU6IS+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 06:27:56PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Document the RZ/G3S PHY bindings. The RZ/G3S USB PHY is almost identical
> with the RZ/G2L USB PHY. The difference is that there is a hardware
> limitation on the max burst size used when the BUS master interface
> issues a transfer request for RZ/G3S that is configured though PHY
> registers.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--n6tcZc8VQgDU6IS+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdraQAKCRB4tDGHoIJi
0tFUAP4+QkcGlFAZRCml52Rk+JBPvo9JE4TS+hLepapieOITIwEArIn+vxHSvlPF
SRdWF33ftrzazHqHTyx3A1xVMa7DngM=
=+2KY
-----END PGP SIGNATURE-----

--n6tcZc8VQgDU6IS+--


--===============6527018736766696563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6527018736766696563==--

