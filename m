Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6BDC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 12:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VI0xr0J3Pezxgvx9fxDvKJQEDLmN1hgO1vndmQId8SY=; b=k6+
	4+5eWMyfD5y6MFmc5wVeHvfvJV2f+YM3DylU1F1qPmdPrhvi7XSLiJLo1oCF3VS3KPkuL7+sURwyb
	b0FbLSURqz+LHz1EkTppWtrl2qOTOUEDELYpqlbImi5sbq9bJePYlTbEhf2XKdOOv6tId2mWla6Vz
	hsH3Tnz4hujKY1F85VEqI4i0VPE+9M/zuHSoXu4QNhhQDbPwY1C91lmpCZp5bZD4RfE07stV8dbeS
	Anpm5WPv/G+tFZSg7crP+96x5k76P+92aAjcRMdmGqq6nW5PVHpYqfe2npfOSHbE8FtNrgszwIEyC
	luHPhypisSoFiCSuCAvPM8LGnbA8Hkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np7pf-00Bkpe-98; Thu, 12 May 2022 12:22:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np7pc-00Bkns-8x
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 12:22:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0A40E61F2E;
 Thu, 12 May 2022 12:22:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB047C385B8;
 Thu, 12 May 2022 12:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652358130;
 bh=xBvJ+NEzbcrMHgxSHTdgneNbEkOjaQal2OdHHEGDOnk=;
 h=Date:From:To:Cc:Subject:From;
 b=e59s6kMe1C2DA3arRhPn7+PEEUUDfJ7eM4AXLvhOe5l/Y4xP4/2ZknknxkK9czXaV
 QZbnTpuH5b96astiM/zo4pHLa7/6p7G1C1plRz10gio7sOiDeF2etWlVsmhDIadlHv
 BmXtKhkPYJo3yWeuKJoQjKyVinV1MyngieJNjF9wYByT0u7x54KIJ2tR5uESGqHLxj
 Qy+NwvBNx68vOHlS6qHhy7IOJHCvxKCKQp1vDIiX6ajwxxwj3rqNSPzpzjj3A5laCV
 lyv17YPXUzU6jgzByAOijVoRl9Otdp/zxS+/8BUlCAx8oB+L01vrnKJl2XoCSLmBEC
 tX7q/0frRHBLw==
Date: Thu, 12 May 2022 17:52:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy updates for v5.19
Message-ID: <Ynz77p8KWnLzSzK3@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_052212_436538_79129520 
X-CRM114-Status: GOOD (  16.28  )
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
Content-Type: multipart/mixed; boundary="===============7190769604283316619=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7190769604283316619==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JeNhZ5GR7yUpIzDM"
Content-Disposition: inline


--JeNhZ5GR7yUpIzDM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to receive the Generic phy updates for v5.19. This time no
new driver, few driver with new chip support and driver updates. As
usual the changes are already in linux-next.

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.19

for you to fetch changes up to d413a34932f98cc5bf0ffdd332884a8b63a1a7f9:

  phy: qcom-qmp: rename error labels (2022-05-03 10:12:03 +0530)

----------------------------------------------------------------
phy-for-5.19

  - New support:
        - LVDS configuration support and implementation in fsl driver
	- Qualcomm UFS phy support for SM6350 and USB PHY for SDX65
	- Allwinner D-PHY Rx mode support
	- Yamilfy Mixel mipi-dsi-phy

  - Updates:
	- Documentation for phy ops order
        - Can transceiver mux support
	- Qualcomm QMP phy updates
	- Uniphier phy updates

----------------------------------------------------------------
AngeloGioacchino Del Regno (2):
      phy: mediatek: phy-mtk-mipi-dsi: Simplify with dev_err_probe()
      phy: mediatek: phy-mtk-hdmi: Simplify with dev_err_probe()

Aswath Govindraju (1):
      phy: phy-can-transceiver: Add support for setting mux

Biju Das (1):
      dt-bindings: phy: renesas,usb2-phy: Document RZ/G2UL phy bindings

Jiapeng Chong (1):
      phy: rockchip-inno-usb2: Clean up some inconsistent indenting

Johan Hovold (6):
      phy: qcom-qmp: fix phy-descriptor kernel-doc typo
      phy: qcom-qmp: fix struct clk leak on probe errors
      phy: qcom-qmp: fix reset-controller leak on probe errors
      phy: qcom-qmp: switch to explicit reset helpers
      phy: qcom-qmp: fix pipe-clock imbalance on power-on failure
      phy: qcom-qmp: rename error labels

Jules Maselbas (3):
      phy: core: Add documentation of phy operation order
      phy: core: Update documentation syntax
      phy: core: Warn when phy_power_on is called before phy_init

Kunihiko Hayashi (5):
      dt-bindings: phy: uniphier-usb2: Add vbus-supply
      dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply as optional
      dt-bindings: phy: uniphier-ahci: Fix missing reset-names
      dt-bindings: phy: uniphier-usb3hs: Fix incorrect clock-names and rese=
t-names
      dt-bindings: phy: uniphier: Clean up clocks, resets, and their names =
using compatible string

Liu Ying (4):
      phy: Add LVDS configuration options
      dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema
      dt-bindings: phy: mixel: mipi-dsi-phy: Add Mixel combo PHY support fo=
r i.MX8qxp
      phy: freescale: phy-fsl-imx8-mipi-dphy: Add i.MX8qxp LVDS PHY mode su=
pport

Luca Weiss (2):
      dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY bindings
      phy: qcom-qmp: Add SM6350 UFS PHY support

Marek Vasut (1):
      phy: freescale: imx8m-pcie: Handle IMX8_PCIE_REFCLK_PAD_UNUSED

Minghao Chi (CGEL ZTE) (2):
      phy/rockchip: Use of_device_get_match_data()
      phy/rockchip: Use of_device_get_match_data()

Paul Kocialkowski (2):
      dt-bindings: sun6i-a31-mipi-dphy: Add optional direction property
      phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY Rx mode for MIPI C=
SI-2

Rob Herring (1):
      dt-bindings: phy: marvell,armada-3700-utmi-host-phy: Fix incorrect co=
mpatible in example

Rohit Agarwal (2):
      dt-bindings: phy: qcom,qmp: Add SDX65 USB PHY binding
      phy: qcom-qmp: Add support for SDX65 QMP PHY

Samuel Holland (6):
      phy: rockchip-inno-usb2: Fix muxed interrupt support
      phy: rockchip-inno-usb2: Do not check bvalid twice
      phy: rockchip-inno-usb2: Do not lock in bvalid IRQ handler
      phy: rockchip-inno-usb2: Support multi-bit mask properties
      phy: rockchip-inno-usb2: Handle bvalid falling
      phy: rockchip-inno-usb2: Handle ID IRQ

Swapnil Jakhade (1):
      phy: cadence: Sierra: Add TI J721E specific PCIe multilink lane confi=
guration

 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml         |  12 +
 .../bindings/phy/marvell,armada-3700-utmi-phy.yaml |   2 +-
 .../devicetree/bindings/phy/mixel,mipi-dsi-phy.txt |  29 ---
 .../bindings/phy/mixel,mipi-dsi-phy.yaml           | 107 ++++++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   4 +
 .../devicetree/bindings/phy/renesas,usb2-phy.yaml  |   1 +
 .../bindings/phy/socionext,uniphier-ahci-phy.yaml  |  91 +++++--
 .../bindings/phy/socionext,uniphier-pcie-phy.yaml  |  47 +++-
 .../bindings/phy/socionext,uniphier-usb2-phy.yaml  |   3 +
 .../phy/socionext,uniphier-usb3hs-phy.yaml         |  89 +++++--
 .../phy/socionext,uniphier-usb3ss-phy.yaml         |  98 ++++++--
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c        | 166 ++++++++++++-
 drivers/phy/cadence/phy-cadence-sierra.c           | 193 +++++++++++++-
 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c     | 276 +++++++++++++++++=
+++-
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c         |  10 +-
 drivers/phy/mediatek/phy-mtk-hdmi.c                |  50 ++--
 drivers/phy/mediatek/phy-mtk-mipi-dsi.c            |  29 +--
 drivers/phy/phy-can-transceiver.c                  |  24 +-
 drivers/phy/phy-core.c                             |  44 +++-
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 124 +++++++--
 drivers/phy/rockchip/phy-rockchip-dphy-rx0.c       |   7 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      | 129 ++++++++--
 drivers/phy/rockchip/phy-rockchip-typec.c          |   6 +-
 include/linux/phy/phy-lvds.h                       |  32 +++
 include/linux/phy/phy.h                            |   4 +
 26 files changed, 1353 insertions(+), 225 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/mixel,mipi-dsi-ph=
y.txt
 create mode 100644 Documentation/devicetree/bindings/phy/mixel,mipi-dsi-ph=
y.yaml
 create mode 100644 include/linux/phy/phy-lvds.h

--=20
~Vinod

--JeNhZ5GR7yUpIzDM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmJ8++4ACgkQfBQHDyUj
g0cGzxAAgGr+s+6ht/6AAbizNY56JA2rElQpCaBVFfEqcXors8hOcqE8a6q6c9gI
oagi0MxqZTDEaHLfqyfMZ0wGRYvJEcBZSM6TWBWzhXAefPWyIjm/8oxN6UQ0soZR
ZBgmuG067K5hTE1fd43BAlc3SfDqdu2iPr3QBpi6dwNx7uvKs5qSqNtyDv14mNEP
ElRS0ghnowZERYw6EYQ5JuD+YHJXCMkH6gIuT5/KT/ygMN/kC1evqgWiOV68Eh9r
wjGo7QaFZYK+LCqARmSE7E7QTv6AZ4Uc71WK3wDyoI6pDJK10VLi3GHQntmoT6xR
AXXR1i93+Wa8cv3O5coi/5/ers4EqYUZ5TOBpWDijG1Nk+beNlpgUjCsQzZloQMv
9hH/QHKusm1HrV65XhozXOHXTQ+Mqy3hnEzqDfFK5/vDx9f2SMbA+NDewLUNlJ8S
GOiKT1NS8ppJisS7Udxlvz6EO1jzEUNL2l3nxw+Ml5rNeywcgBwTkyBlr1yC/yiM
MvNZD8xwyfrsfsEcZL6TZ1ZdenKuPwiv44ba80p013sPJZnv07lxzAwOJZxpw3ZT
8KxEBVHoXlSVUsZZzp36j51jSsY4pFboSJS1YmMQOlvCGqptqvr/EdFHscYRfxqV
NI3IyMKTFPuZBnRTTsujgYyoSIpdqooyxOn+Sr5WpMF2GDmVBAA=
=3OAW
-----END PGP SIGNATURE-----

--JeNhZ5GR7yUpIzDM--


--===============7190769604283316619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7190769604283316619==--

