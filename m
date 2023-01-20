Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D616EC05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 14:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JWaquuVkzLxeCfPpjp7Ence9Gpnpn18HwnuLSphVrpQ=; b=W8w
	pnWdCJLMIiohkW/wxiwJgAe14ZEoR9uR5WUf3Y0OcYfXliRRUq84IWn0VSZR11A1mHiYWunbjea/h
	QaVgYrUUJ+ilcBAKxDJ4yO/OOnl+pORkO38DsaGMkjeqboz+WICe/wSjF3NFfL1TeayLlIoy2fQHO
	8xwPBgFeAmPE9x9UWCRN5gGSkARtHB8ZMCgmqh9PDhzfiig3E0mduDMa+htGz2jZJzSlv19fWlPIB
	GbU1nTDUWmZXy5hIORnq2xQOIzLic27JxlyNXuXu8jSBUUWSl0xK1z/Jd4k8a/L5vFkcMz5XgFc+N
	wzo6JB0wdjc206XQOo99bXVdBJsjlRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIsq1-00ArAC-5h; Fri, 20 Jan 2023 14:57:53 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIsps-00Ar6r-6S
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 14:57:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A38FFB82841;
	Fri, 20 Jan 2023 14:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEE4FC4339B;
	Fri, 20 Jan 2023 14:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674226657;
	bh=AS5PufaNUEoYu4+fqP0/uoIGjk9Eb+i/nyHINjq064g=;
	h=Date:From:To:Cc:Subject:From;
	b=P6E3ufTTq04UuURwxuYMtAoyQr0AF+h391HOjsQ3JceO14BEcbuMT1PW+JSWjV0WX
	 z0Ep3VarUCyHimwJoQ9XqPvKT2Epj4XdySfwzXHmwVU4GKYUbmElMrqn1SYHOc1+vd
	 Ny+B2DQqlMOJE+7LxHtTiVm+QSlnioUTWhbU4Fd4LxqKbqwlzmswsGRWkXjEcziIHX
	 AupjTpsjAPRa8sCMYG2meK0QA/acyYlmE7M2I5EERzUZp2/i8gVuVaK/ssUECp4vjS
	 8mJczJUa//aLEcJ/CT4G0HVYVSmedvfpYXLuaxBHm1gXKVpRvRYA0aZyXfnA2a7CM7
	 CAy5GtD/B8kHw==
Date: Fri, 20 Jan 2023 20:27:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic Phy fixes for v6.2
Message-ID: <Y8qr3cy7eA5RJqbO@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_065744_557315_1DEA7E31 
X-CRM114-Status: GOOD (  13.20  )
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
Content-Type: multipart/mixed; boundary="===============3712779487998452245=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3712779487998452245==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WFAzIEmeE0NFz04F"
Content-Disposition: inline


--WFAzIEmeE0NFz04F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Linus,

Please pull to recive driver fixes for generic phy susbsystem for v6.2.
Nothing too exciting, bunch of small driver fixes

The following changes since commit 1b929c02afd37871d5afb9d498426f83432e71c2:

  Linux 6.2-rc1 (2022-12-25 13:41:39 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-6.2

for you to fetch changes up to bc30c15f275484f9b9fe27c2fa0895f3022d9943:

  phy: phy-can-transceiver: Skip warning if no "max-bitrate" (2023-01-18 22=
:58:05 +0530)

----------------------------------------------------------------
phy: fixes for 6.2

Fixes in drivers for:
 - Binding fix for g12a phys
 - Kconfig operator precedence for TI driver
 - renesas: register setting
 - sunplus: null deref fix
 - rockchip-inno fix for clk_disable_unprepare()
 - MDM9607 init sequence revert due to regression

----------------------------------------------------------------
Geert Uytterhoeven (1):
      phy: phy-can-transceiver: Skip warning if no "max-bitrate"

Heiner Kallweit (2):
      dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible string documenta=
tion
      dt-bindings: phy: g12a-usb2-phy: fix compatible string documentation

Marijn Suijten (1):
      phy: Revert "phy: qualcomm: usb28nm: Add MDM9607 init sequence"

Randy Dunlap (1):
      phy: ti: fix Kconfig warning and operator precedence

Richard Zhu (1):
      phy: freescale: imx8m-pcie: Add one missing error return

Shang XiaoJing (2):
      phy: usb: sunplus: Fix potential null-ptr-deref in sp_usb_phy_probe()
      phy: rockchip-inno-usb2: Fix missing clk_disable_unprepare() in rockc=
hip_usb2phy_power_on()

Yoshihiro Shimoda (1):
      phy: renesas: r8a779f0-eth-serdes: Fix register setting

 ...,meson-g12a-usb2-phy.yaml =3D> amlogic,g12a-usb2-phy.yaml} |  8 ++++----
 ...a-usb3-pcie-phy.yaml =3D> amlogic,g12a-usb3-pcie-phy.yaml} |  6 +++---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml |  1 -
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c                  |  2 +-
 drivers/phy/phy-can-transceiver.c                           |  5 +++--
 drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c                 | 13 ---------=
----
 drivers/phy/renesas/r8a779f0-ether-serdes.c                 |  2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c               |  4 +++-
 drivers/phy/sunplus/phy-sunplus-usb2.c                      |  3 +++
 drivers/phy/ti/Kconfig                                      |  4 ++--
 10 files changed, 20 insertions(+), 28 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb2-phy.=
yaml =3D> amlogic,g12a-usb2-phy.yaml} (85%)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie=
-phy.yaml =3D> amlogic,g12a-usb3-pcie-phy.yaml} (82%)

--=20
~Vinod

--WFAzIEmeE0NFz04F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmPKq90ACgkQfBQHDyUj
g0fhKRAAreSL5uYhjUqpHNZCsjQf9k17le9qUiFM1T4JgsFNgs9KimeBFoFXWvPD
DKda3oS5oaCvaPAgKin+lDHN5W386riQfuSS7167NCmkiW/H1GtVJbSLHPvODiXN
UOAQfl2DdjHu1ixYqssONJoLwj3feszwwafxqd5ihike/jcmCWNdIYqN/Y2xqkEE
tHqL0ziaFZBCQnzSf5z0PsoBekpjw96MvtDlqAMjV8fUndiLKg7va/SLrHEcvRUi
j+FEIwn5Y1dqdpyBPqnOI4QOBno2W7JOSPEBxJs12VM9a4Z038tLm/M7m4GAdJ9T
07DfSapK6RXQyJGwiOFeBfhTmB3nIjexfwI1ASrkWBtlaHVenYhMXGvPKZz+erDV
LJ0ZsJuKAZQpPfY802AqXhNVCvej837dXEX0xBXAauMScUDPJy8eFY26vmGBctHA
dv1Xe7zE0wiCcU9tiNM4f16zULyEH8e2o1s11I263W0JFwpiyoizY0L6S3ExhuZh
r8T4l4NmCGrmXU3mlId7xUtXuyLjvBwS45NP0ufumV1GfgCi7r1x52eFqOkbwfAM
cKj2uexZNfQSrDF1bs/DGQoorx/pw3VPD1yTf/yJPI43CIzOHSx+rXTtA2PuR2gy
gs+goq8T8jGohYBjfP1q5t8sPFzIK9yGXSxCrJwwDLztOTOrNFs=
=/csS
-----END PGP SIGNATURE-----

--WFAzIEmeE0NFz04F--


--===============3712779487998452245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3712779487998452245==--

