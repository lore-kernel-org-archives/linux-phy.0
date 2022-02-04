Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 066DFC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  4 Feb 2022 16:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+jMOirouqhlO14Y1hz71vijXLPG8uxj3NDRLA6XLK7o=; b=HNQ
	ziFZd8bxxeXPdYDdSnTyFhc9mKfEKOWRMlJd3GYcaxE65rBx5/bpr/hxwA6xus+7WoaaqN0/HHMME
	f2qAbfcVk6qU/7Hl1LDOSKShT2i42gbhjABA8O+Rc7zppFvnMgjOPfQ2o53GJA7TLjYuT3K74VhfM
	MRLcJyL7N1sgufdqJJ3hTDd7sJpXj3L9FByX1HwvJxNg6m3tRwqbgYo486VAI0IpIXOYsYiyPuhQM
	BsE8RT4bUajORyuTKrSv/hUIBJnRhiwLdtq59W9TfZdHPn1D+C/3GLIiFnRKEAkzVKwlltf1ozpg3
	vQUVsPBnm6OUzpIBNV9Q45rnBGrzdaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nG1kQ-004xHa-Cb; Fri, 04 Feb 2022 16:47:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nG1kN-004xH2-5o
 for linux-phy@lists.infradead.org; Fri, 04 Feb 2022 16:47:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BC4B06194D;
 Fri,  4 Feb 2022 16:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B19C004E1;
 Fri,  4 Feb 2022 16:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643993262;
 bh=9e2Mu0Fu8rbPTnt4SnobAKnyDwsFA10BlghgdqBHmvQ=;
 h=Date:From:To:Cc:Subject:From;
 b=QReL6YHJVX/sOAtDvyDNLcrE80F/N5RSzZ2ji5/EVhZFRsphLCsv74YF09NJnhdex
 nFQ5gk2Xerc7eFBt1iUKtFs9J/hNftgLfI8YdEXQwQ038ejmRIVHYGDCVzCHRxF754
 94qgXYLEhU3W76pGpRWcatUqs5ZYKNluQHHF+CPlrbvqM6H+7PoCaLZaunycPx7GZ9
 0pUFJoYbicAaBC6ZA+nkzxtfCTH/oHrWsyPcn3OYWWyKYgq1Wf8T8THzP5OGLZMXoJ
 xVYUH6EEK6+RhR872z9C/BXAtHceNVDrk8WQz8ocREZzrFvpiMB5sv/rR7QPss01iV
 MyNQRWBhavWLQ==
Date: Fri, 4 Feb 2022 22:17:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy fixes for v5.17
Message-ID: <Yf1YqcqUmResNevN@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_084743_350494_3FBD058D 
X-CRM114-Status: GOOD (  11.24  )
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
Content-Type: multipart/mixed; boundary="===============7565633819316850187=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7565633819316850187==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6GopgMmcKAvDgyfo"
Content-Disposition: inline


--6GopgMmcKAvDgyfo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to recieve the fixes for v5.17 for Generic phy subsystem.

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-5.17

for you to fetch changes up to 9a8406ba1a9a2965c27e0db1d7753471d12ee9ff:

  phy: dphy: Correct clk_pre parameter (2022-02-02 10:33:04 +0530)

----------------------------------------------------------------
phy: fixes for 5.17

Fixes for bunch of drivers:
 - clk params for dphy
 - arg fix for mtk-tphy
 - refcount leak fix for stm32
 - bus width fix for zynqmp
 - sentinel fix ti
 - PHY_BRCM_USB Kconfig fix
 - clk fix for usb phy

----------------------------------------------------------------
Al Cooper (2):
      phy: usb: Leave some clocks running during suspend
      phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option

Dan Carpenter (2):
      phy: cadence: Sierra: fix error handling bugs in probe()
      phy: stm32: fix a refcount leak in stm32_usbphyc_pll_enable()

Kishon Vijay Abraham I (1):
      phy: ti: Fix missing sentinel for clk_div_table

Liu Ying (1):
      phy: dphy: Correct clk_pre parameter

Robert Hancock (1):
      phy: xilinx: zynqmp: Fix bus width setting for SGMII

Wan Jiabing (1):
      phy: phy-mtk-tphy: Fix duplicated argument in phy-mtk-tphy

 drivers/gpu/drm/bridge/nwl-dsi.c                 | 12 ++++----
 drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c    |  3 +-
 drivers/phy/broadcom/Kconfig                     |  3 +-
 drivers/phy/broadcom/phy-brcm-usb.c              | 38 ++++++++++++++++++++=
++++
 drivers/phy/cadence/phy-cadence-sierra.c         | 35 +++++++++++++-------=
--
 drivers/phy/mediatek/phy-mtk-tphy.c              |  2 +-
 drivers/phy/phy-core-mipi-dphy.c                 |  4 +--
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c |  3 +-
 drivers/phy/st/phy-stm32-usbphyc.c               |  2 +-
 drivers/phy/ti/phy-j721e-wiz.c                   |  1 +
 drivers/phy/xilinx/phy-zynqmp.c                  | 11 +++----
 11 files changed, 80 insertions(+), 34 deletions(-)


--=20
~Vinod

--6GopgMmcKAvDgyfo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmH9WKkACgkQfBQHDyUj
g0ekWw/9HU/aFfpFSx2VXd40AR6rUYzO25oK36lFlYJb8juxTsNvLsxaeW9wGyzc
2FQT3pZoqzaagV2Ttuu0k6QkThkGYhpkzSTxZv8uy2qqP+Xmsj1UK+mC9UyH/nm5
0Mem0XogOuP2mSVy0aGovd4oWaRqQi5WXF3r7rIa4zl2G9eCKODCUIMpUhSo+kaa
4LqpufbrGOT3iMW5C30wMBaVpxsRUpIJZ12HODmf0P29QH8C1pfiQarkit9i6TI+
ESlFmg/j1a7F5srDJkkZNa2LWYaO9RF3uUbuUA9cHJJVlVXumM3CimCVxBb3qHW3
eo0FcoZiOLJorCpg+i/t2R33GjZdyl91EfBO8cpBIhIJsUnEUwBpigX9/lQy+e1d
Af2I5r/D/o6gPp4FBEA0931zHh2weMNP+Aebtlrs0V+YTM7H7fFR5gween+nz3yV
Fi+Kh7Xe4T4qq8XYjEMa8xw+C7TkYSUqHqlBEXJTKARjBBmZa+2+0XjsJLxIkz/E
uL2HFC96iJBn7tds7Su3C2VoGBiSohfe1S1ZnVnB7VTAi5OjJWosDbnXS7g5mYuW
OReUeTadtSGitokVjJJWlzrSb0/EuwJmPoh+CObPIw3UytnEkujv9RAn1kG9eVD+
+uE2Gomm+aTsbTo1ITUDW4RCqyc9+GreuBDvr8j1DNLEBMj6NYM=
=9GyH
-----END PGP SIGNATURE-----

--6GopgMmcKAvDgyfo--


--===============7565633819316850187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7565633819316850187==--

