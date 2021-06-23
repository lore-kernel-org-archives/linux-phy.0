Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 878B9C4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 06:16:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51D21611AC
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 06:16:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51D21611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fMFZTVaZHlkTgsMY83YNhyfW3wrPfYpmja4byjyBmZo=; b=oIq
	E4hXEPaeGDVmzP4EmePUDBT9rexswKX9zjjrr+v+CuQ3yuJQBszC7cySerfTTtYS4VnzetXVbOhEX
	droC6Drmj3yM6KdLB8mLcF4J0s6yy17wE3gdvQtrxq7+Y55hvna4ZZYw549qXkXRILIy/a0/DN+c+
	xuTisESMoqYbXFd18tXgC58Y/ijh8dD3pDWNm+yX/VdbgrTtbPEEueSLo+rDlIDD533/D0wmdmcAP
	T15cKa6XI5YFHkvoUcvhhx1brLY48HP3YGv7ISrTTmhbu8Htpk6P3XzOv+m1Aaxv9MJElyMwUv1O1
	GfwhZ2kIb0EXjSL+F2+/pF8USMWYG/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvwBE-009XZP-SU; Wed, 23 Jun 2021 06:16:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvwBA-009XYH-68
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 06:16:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DBD6611AC;
 Wed, 23 Jun 2021 06:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624428963;
 bh=+HMNDz318eGYMEU2udPuPAjDmDwRaVheXhvjfWcoJT0=;
 h=Date:From:To:Cc:Subject:From;
 b=B0AsR40GS344VqUups1rVKt2Ngu+JS8sjjseyCaSq7YyuNFFgB0s2kiwVNPVCOSM9
 16H2qoZYa9kwjsHKyWtn0YspLMk7awdBfOJit3ZKZfmlYQfELpNXvDAZtuQO5F/55O
 N3NMhH/s2nblj8qYeyNQl0vwcki7XqqWdkQcTNpB7Ghl0FuizDhyjaWIN5O4qXbuXc
 8UfTf1MWGBRP0myROEuJKYMaltqCzSGB0uT8oeC6eQbyMywoQCUAjTHVMZrCRC1t18
 I52tZZat50yr4D3DW3yCGPOKUFCTThmRNubMWjNNvnyXDkuHWz1HyQfRoYjEuTAwR+
 W1P11Me2iPMbg==
Date: Wed, 23 Jun 2021 11:45:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [GIT PULL]: Generic phy updates for v5.14
Message-ID: <YNLRn/5JkyYhYwxi@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_231604_314948_86FF8307 
X-CRM114-Status: GOOD (  14.71  )
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
Content-Type: multipart/mixed; boundary="===============0399504606462302419=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0399504606462302419==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fmbfkAWaGJ9PLRjd"
Content-Disposition: inline


--fmbfkAWaGJ9PLRjd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to receive Generic phy subsystem updates for v5.14

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.14

for you to fetch changes up to f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f:

  phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe() (=
2021-06-21 12:04:18 +0530)

----------------------------------------------------------------
phy-for-5.14

  - Updates:
        - Yaml conversion for renesas,rcar-gen3 pcie phy and
	  rockchip-usb-phy bindings
        - Support for devm_phy_get() taking NULL phy name

  - New support:
	- PCIe phy for Qualcomm IPQ60xx
	- PCIe phy for Qualcomm SDX55
	- USB phy for RK3308
	- CAN transceivers phy for TI TCAN104x
        - Innosilicon-based CSI dphy for rockchip

----------------------------------------------------------------
Amelie Delaunay (2):
      dt-bindings: phy: add vbus-supply optional property to phy-stm32-usbp=
hyc
      phy: stm32: manage optional vbus regulator on phy_power_on/off

Aswath Govindraju (3):
      phy: core: Reword the comment specifying the units of max_link_rate t=
o be Mbps
      dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
      phy: phy-can-transceiver: Add support for generic CAN transceiver dri=
ver

Baruch Siach (2):
      dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY bindings
      dt-bindings: pci: qcom: Document PCIe bindings for IPQ6018 SoC

Christophe JAILLET (1):
      phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe=
()

Chunfeng Yun (1):
      phy: qcom-qmp: remove redundant error of clock bulk

Colin Ian King (1):
      phy: rockchip: remove redundant initialization of pointer cfg

Geert Uytterhoeven (1):
      dt-bindings: phy: renesas,rcar-gen3-pcie-phy: Convert to json-schema

He Ying (4):
      phy: bcm-ns-usb3: Remove redundant dev_err call in bcm_ns_usb3_mdio_p=
robe()
      phy: phy-mmp3-hsic: Remove redundant dev_err call in mmp3_hsic_phy_pr=
obe()
      phy: phy-mtk-mipi-dsi: Remove redundant dev_err call in mtk_mipi_tx_p=
robe()
      phy: phy-mtk-hdmi: Remove redundant dev_err call in mtk_hdmi_phy_prob=
e()

Heiko Stuebner (2):
      dt-bindings: phy: add yaml binding for rockchip-inno-csi-dphy
      phy/rockchip: add Innosilicon-based CSI dphy

Johan Jonker (1):
      dt-bindings: phy: convert rockchip-usb-phy.txt to YAML

Kunihiko Hayashi (1):
      phy: uniphier-pcie: Fix updating phy parameters

Manivannan Sadhasivam (3):
      dt-bindings: phy: qcom,qmp: Add binding for SDX55 PCIe PHY
      phy: qcom-qmp: Use phy_status field for the status bit offset
      phy: qcom-qmp: Add support for SDX55 QMP PCIe PHY

Mauro Carvalho Chehab (1):
      MAINTAINERS: update marvell,armada-3700-utmi-phy.yaml reference

Rob Herring (1):
      phy: Allow a NULL phy name for devm_phy_get()

Sebastian Fricke (1):
      phy: phy-core-mipi-dphy.c: Correct reference version

Selvam Sathappan Periakaruppan (1):
      phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx

Sergio Paracuellos (5):
      dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
      phy: ralink: phy-mt7621-pci: use kernel clock APIS
      phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
      phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
      phy: ralink: phy-mt7621-pci: properly print pointer address

Shubhankar Kuranagatti (1):
      phy: phy-xgene.c: Fix alignment of comment

Tobias Schramm (2):
      dt-bindings: phy: rockchip-inno-usb2: add compatible for rk3308 USB p=
hy
      phy: phy-rockchip-inno-usb2: add support for RK3308 USB phy

YueHaibing (1):
      phy: phy-twl4030-usb: use DEVICE_ATTR_RO macro

 .../devicetree/bindings/pci/qcom,pcie.txt          |  24 ++
 .../bindings/phy/mediatek,mt7621-pci-phy.yaml      |   5 +
 .../bindings/phy/phy-rockchip-inno-usb2.yaml       |   1 +
 .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml |  11 +
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |  27 ++
 .../devicetree/bindings/phy/rcar-gen3-phy-pcie.txt |  24 --
 .../bindings/phy/renesas,rcar-gen3-pcie-phy.yaml   |  53 +++
 .../bindings/phy/rockchip-inno-csi-dphy.yaml       |  79 ++++
 .../devicetree/bindings/phy/rockchip-usb-phy.txt   |  52 ---
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  |  81 ++++
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml   |  56 +++
 MAINTAINERS                                        |   4 +-
 drivers/phy/Kconfig                                |   9 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/broadcom/phy-bcm-ns-usb3.c             |   4 +-
 drivers/phy/marvell/phy-mmp3-hsic.c                |   4 +-
 drivers/phy/mediatek/phy-mtk-hdmi.c                |   4 +-
 drivers/phy/mediatek/phy-mtk-mipi-dsi.c            |   4 +-
 drivers/phy/phy-can-transceiver.c                  | 146 +++++++
 drivers/phy/phy-core-mipi-dphy.c                   |   2 +-
 drivers/phy/phy-core.c                             |  16 +-
 drivers/phy/phy-xgene.c                            |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 315 +++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp.h                | 189 ++++++++-
 drivers/phy/ralink/Kconfig                         |   4 +-
 drivers/phy/ralink/phy-mt7621-pci.c                |  37 +-
 drivers/phy/rockchip/Kconfig                       |   9 +
 drivers/phy/rockchip/Makefile                      |   1 +
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 459 +++++++++++++++++=
++++
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c      |   4 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |  44 ++
 drivers/phy/socionext/phy-uniphier-pcie.c          |  11 +-
 drivers/phy/st/phy-stm32-usbphyc.c                 |  31 ++
 drivers/phy/ti/phy-dm816x-usb.c                    |  17 +-
 drivers/phy/ti/phy-twl4030-usb.c                   |   6 +-
 include/linux/phy/phy.h                            |   2 +-
 36 files changed, 1602 insertions(+), 137 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen3-phy-pci=
e.txt
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen3=
-pcie-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-inno-csi=
-dphy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.=
txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.=
yaml
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.y=
aml
 create mode 100644 drivers/phy/phy-can-transceiver.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c

--=20
~Vinod

--fmbfkAWaGJ9PLRjd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmDS0Z8ACgkQfBQHDyUj
g0f5fg//XeX4XA6ZBGD3dJKD4DVUUN0JNugzhsEHjicHB1Xviu1zNiNHKIIZCq5c
P5ucLK/sRP38KXZ+64dyLdFqEwk11Hz903YTbI6h17W4rO7nH+ktN31qktQlMVYr
lpNMjH9pSUsXMnB6KgnzNtND8kIj+3ITeZTGp86ut64t9MGYKDRZzJ+mbpFsw94T
Lp5A7OmuiDT2fRKN9/wQO03mQ0vSh055lXL0UAHX6ItOPwDhJn7zd/w0zNeKCR/T
ZftSwj+VdQYsyg8+CZY89OdBRzmZlZHszvSoP//sRGxtXT+VEwJgE6wcgHdN7RTS
S+qjDuhvJCinq5YS6/qnaEvtXR84Ky9UpCL6aXEgFGTiOebIsWLewVfjAly9f06a
C8WrWllBrY9MQLUh9W8lFjo9wsbERI2WVOMmQEVgaP4EWflLf6V8s2qnled6XUQe
sVo0AeoRfLwx2+5bD5ezc1eXq4UMbTJNFqqu5+rCePDxSHAKI3R6GaT8mfVwaNyL
Pb8rRwJJubaG+GhUeVX45NxDrs3n3/2gLHD4GdraecZY3bpWiwioUjDRYYUqHHPj
mQ476xOWdR/4z9uEVoUrPwrp3heVGXTs77ZBZR/BaB/tqwOSW0Xbr1+x46O1lH+1
1UFwuwnFDjx0UHxB/YJqjM2oJVAD7WZWaQEysslTXFPxkSb2Ohg=
=4Sp9
-----END PGP SIGNATURE-----

--fmbfkAWaGJ9PLRjd--


--===============0399504606462302419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0399504606462302419==--

