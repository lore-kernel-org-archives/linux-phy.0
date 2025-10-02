Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E1ACAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 18:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YYgPcn3HxNJVD9fmpTgvZyO9A0LKRwavpj/o4NaiR6k=; b=EsNOmkyRtgmI/eafHdIXYgHXl9
	/SErMVEey1hRe2Gbxi7IrRcmvB3IhDj1MKbAT6DZ5ORPVmqay26aXZNaxPfGIE0C3DXor/tsIBTzw
	Y19CB+jA1TDEfHa2W5JhYZoY6nciwiu+ZMQUXJbTJwUN1N5VNDZ/G/ev6jFhGAYN7+xKZcqMIEiWO
	UcGzonbpkJTNFHzJ+ujaNo6A7w8GAt9KsbPPymNcKmLASmCD7iywOEw5V4N/ECieYrD8xseofczTR
	nMVbOtKMT9l0+xwZZGSAcPnwA3B7iVgaMbWhBbA64lFp6Uhd3qryCwO68SiUBuujmCZQb+v92TrxD
	YMX5tQ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4OMR-0000000B48y-2srK;
	Thu, 02 Oct 2025 18:49:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4OMR-0000000B48p-0Gxa
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 18:49:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 767BD6228E;
	Thu,  2 Oct 2025 18:49:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C6AC4CEF4;
	Thu,  2 Oct 2025 18:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759430942;
	bh=NI9tbW1dRs+FSsXJo6G/jpW6PG0lao3tz6eQ+b8g5iU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WlPSXAkLUYZ1T/pGUYK2oK6ojCZup540aF7OCb8ISwdHgcCg4nmXcwnUAm3tRkU1t
	 RP3sLYYVuI3Na+Gqp+06H9wMkquPs7ZwLwgF4oRxUzA0tGmLl2NCJyWrfd8fORHurT
	 yIPeLybzvMa002Ei2ZOXRekvHkB9u2DRbPzk1Euhlq9Gr8QYMaVnj4448o4YOMsM9V
	 yoM6LA/Z62TmTK9at7Tm++hDpfr05s1pZej3MhLO0w0qDtYRiVOgQRhoewwQK/wE/Z
	 iaZOAWVNMWEFfqmfsZ4gbhP50a76xsiA/4VNaWKHoQkNJKVTHCU7FTBzYDRaaWE/bM
	 DT6iH7FiXG8vg==
Date: Thu, 2 Oct 2025 19:48:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/18] Add USB2.0 support for RZ/G3E
Message-ID: <20251002-mystify-idiom-0273ef40b4dd@spud>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
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
Content-Type: multipart/mixed; boundary="===============6722725122245541838=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6722725122245541838==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eLDSy2g573seoiip"
Content-Disposition: inline


--eLDSy2g573seoiip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 01, 2025 at 11:26:44PM +0200, Tommaso Merciai wrote:
> Dear All,
>=20
> This patch series adds USB2.0 support for the Renesas R9A09G047 (RZ/G3E)
> SoC and enables it on the RZ/G3E SMARC II board.
> The RZ/G3E USB2.0 IP is identical to that used in the RZ/V2H (R9A09G057),
> so the existing support has been extended accordingly.
>=20
> The series applies on top of [1] and [2] and includes driver cleanups,
> VBUS/OTG handling fixes, regulator improvements, clock/reset additions,
> and device tree updates for RZ/G3E, RZ/V2H, and RZ/V2N SoCs and boards.
>=20
> Thanks & Regards,
> Tommaso

If you're not gonna CC me on all the patches in the series, please at
least CC me on the cover so I have an idea about what is going on in the
rest of the set.
All the bindings are
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>=20
> [1] https://patchwork.kernel.org/project/linux-renesas-soc/list/?series=
=3D1001788
> [2] https://patchwork.kernel.org/project/linux-renesas-soc/list/?series=
=3D1006104
>=20
> Tommaso Merciai (18):
>   phy: renesas: rcar-gen3-usb2: Use devm_pm_runtime_enable()
>   phy: renesas: rcar-gen3-usb2: Factor out VBUS control logic
>   reset: rzv2h-usb2phy: Simplify pm_runtime driver handling
>   reset: rzv2h-usb2phy: Set VBENCTL register for OTG mode
>   dt-bindings: phy: renesas,usb2-phy: Document USB VBUS regulator
>   phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control
>   regulator: devres: Disable exclusive regulator before releasing
>   dt-bindings: clock: renesas,r9a09g047-cpg: Add USB2 PHY core clocks
>   clk: renesas: r9a09g047: Add clock and reset entries for USB2
>   dt-bindings: usb: renesas,usbhs: Add RZ/G3E SoC support
>   dt-bindings: phy: renesas,usb2-phy: Document RZ/G3E SoC
>   dt-bindings: reset: Document RZ/G3E USB2PHY reset
>   arm64: dts: renesas: r9a09g056: Add USB2.0 PHY VBUS internal regulator
>     node
>   arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable USB2 PHY0 VBUS
>     support
>   arm64: dts: renesas: r9a09g057: Add USB2.0 PHY VBUS internal regulator
>     node
>   arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable USB2 PHY0 VBUS
>     support
>   arm64: dts: renesas: r9a09g047: Add USB2.0 support
>   arm64: dts: renesas: r9a09g047e57-smarc: Enable USB2.0 support
>=20
>  .../bindings/phy/renesas,usb2-phy.yaml        |  10 +-
>  .../reset/renesas,rzv2h-usb2phy-reset.yaml    |   4 +-
>  .../bindings/usb/renesas,usbhs.yaml           |   1 +
>  arch/arm64/boot/dts/renesas/r9a09g047.dtsi    | 122 +++++++++++
>  .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  49 +++++
>  arch/arm64/boot/dts/renesas/r9a09g056.dtsi    |   6 +
>  .../dts/renesas/r9a09g056n48-rzv2n-evk.dts    |   5 +
>  arch/arm64/boot/dts/renesas/r9a09g057.dtsi    |   6 +
>  .../dts/renesas/r9a09g057h44-rzv2h-evk.dts    |   5 +
>  .../boot/dts/renesas/renesas-smarc2.dtsi      |  23 ++
>  drivers/clk/renesas/r9a09g047-cpg.c           |  18 +-
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 199 +++++++++++++-----
>  drivers/regulator/devres.c                    |   8 +-
>  drivers/reset/reset-rzv2h-usb2phy.c           | 105 ++++++---
>  .../dt-bindings/clock/renesas,r9a09g047-cpg.h |   2 +
>  15 files changed, 478 insertions(+), 85 deletions(-)
>=20
> --=20
> 2.43.0
>=20

--eLDSy2g573seoiip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaN7JGQAKCRB4tDGHoIJi
0rKdAP9D2KiLyyufhN7hq/rJnj5f3R36WtCUVA2GlgysBGz2zAEAjvU0Qjowphpf
Dlrv1wKDz9xKn/XpS0z1oY5GgtqCYAY=
=82Nv
-----END PGP SIGNATURE-----

--eLDSy2g573seoiip--


--===============6722725122245541838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6722725122245541838==--

