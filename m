Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B03E6C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 18 Dec 2022 14:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UTX81dbfXVXmysZlPPByZC8WFPL+QrWODK9qTnZ6Sw4=; b=OP4
	1+L/NtAFC9jkp6V+3xjRgFDinISt9HUgHTLCQkWpOYENFQXtPdWIF98Q8IW/4gdd7u9VbHh6QGtff
	LzeZ8mJxDPt4XqHCvKtxmwXqFfdqMQdKlCivxkw8X0zVJF1sKNaedGNY+VCFu+kE9sgO++vmH34ki
	fbSNSiZNFoOD06zDXn22JwQtXxbz3SUZS2CneOvwlF2NnpL8LJ/Ep9us3MnuxmEVqZgmpZCULWdeL
	PtcxBiGB1RNK2kNdUcJl35M1cbciJcE7nZHLOA9XYWEirnI7CHWaNZqt0mhkdG/AqwYgQ8pDjMP75
	b5e/tnEvGY5D2l8zuowo6ea82nBmpDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6udi-002AuN-VZ; Sun, 18 Dec 2022 14:27:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6udI-002Aol-NY
	for linux-phy@lists.infradead.org; Sun, 18 Dec 2022 14:27:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6307EB80066;
	Sun, 18 Dec 2022 14:27:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 894B5C433EF;
	Sun, 18 Dec 2022 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671373629;
	bh=0NXg4XLjUjsfOkE+jPwBc1keH4EnN9ox2Che35PqWeE=;
	h=Date:From:To:Cc:Subject:From;
	b=Z/2/xexRZ75PoYXurEs9vYx0jtcaQBVHswhKjf1nRp0s1iHnBTWnOP2w1dzcHnz8a
	 P7yCJsFZq3LkLo5u2GTCdSuGUFIDDJL2icMGMMwwOts7170Pkk3DixBDI3SHxYzG1S
	 mubt19x1gWfnD3OZ8q0PYLvlzEd1sCxLM+62LE+3U49RiqFHBSfjqCDPSLm+vfY8NV
	 ykKy66pCphnNEMc+UR1UbKOYfa0OElxol5vs1O2vf9tb+1p6r5MNA/1FiNIXLEeZid
	 rwxvZPWZVggCF71nWrbp6ENa/NSkNeTNet5NLLq0y9K00f/i+NDBlxh7xDYGH+Aigz
	 kiJrcGMaXoKvQ==
Date: Sun, 18 Dec 2022 19:57:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [GIT PULL]: Generic phy updates for 6.2
Message-ID: <Y58jOP0HrtMxuP3y@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_062717_114944_33C1217A 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Type: multipart/mixed; boundary="===============0065828317549183557=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0065828317549183557==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q7qOx1VORIINndg9"
Content-Disposition: inline


--q7qOx1VORIINndg9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Linus,

Please pull to receive generic phy updatess. This tme we have again a
big pile of qcom-qmp-* changes, one new driver and bunch of new hardware
support.

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-6.2

for you to fetch changes up to bea3ce759b4664f20f1f57c53fe018c3b67da147:

  phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support (2022-11-24 23:=
41:41 +0530)

----------------------------------------------------------------
phy-for-6.2

  - New support:
        - Allwinner H616 USB PHY and A100 DPHY support
        - TI J721s2, J784s4 and J721e support
	- Freescale i.MX8MP PCIe PHY support
	- New driver for Renesas Ethernet SERDES supporting R-Car S4-8
	- Qualcomm SM8450 PCIe1 PHY support in EP mode

  - Updates:
        - again a big pile of updates on qcom-qmp-* drivers following the
          driver split and reorganization merged earlier
	- Phy order of API calls documentation update

----------------------------------------------------------------
Al Cooper (1):
      phy: usb: s2 WoL wakeup_count not incremented for USB->Eth devices

Andre Przywara (3):
      dt-bindings: phy: Add special clock for Allwinner H616 PHY
      phy: sun4i-usb: Introduce port2 SIDDQ quirk
      phy: sun4i-usb: Add support for the H616 USB PHY

Christian Marangi (1):
      phy: qcom-qmp-pcie: split pcs_misc init cfg for ipq8074 pcs table

Dan Carpenter (2):
      phy: stm32: fix an error code in probe
      phy: stm32: fix an error code in probe

Dmitry Baryshkov (6):
      phy: qcom-qmp-pcie: split register tables into common and extra parts
      phy: qcom-qmp-pcie: support separate tables for EP mode
      phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
      PCI: qcom: Setup PHY to work in RC mode
      PCI: qcom-ep: Setup PHY to work in EP mode
      phy: qcom-qmp-usb: correct registers layout for IPQ8074 USB3 PHY

Florian Fainelli (1):
      phy: phy-brcm-usb: Utilize platform_get_irq_byname_optional()

Johan Hovold (131):
      phy: qcom-qmp: fix obsolete lane comments
      phy: qcom-qmp-combo: drop unused UFS reset
      phy: qcom-qmp-pcie: drop unused common-block registers
      phy: qcom-qmp-pcie: clean up power-down handling
      phy: qcom-qmp-pcie: move power-down update
      phy: qcom-qmp-pcie-msm8996: clean up power-down handling
      phy: qcom-qmp-combo: clean up power-down handling
      phy: qcom-qmp-ufs: clean up power-down handling
      phy: qcom-qmp-usb: clean up power-down handling
      phy: qcom-qmp-pcie: clean up clock lists
      phy: qcom-qmp-pcie: drop bogus register update
      phy: qcom-qmp: drop regulator error message
      phy: qcom-qmp: drop superfluous comments
      phy: qcom-qmp-combo: drop unused in-layout configuration
      phy: qcom-qmp-pcie: drop redundant ipq8074 power on
      phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
      phy: qcom-qmp-ufs: drop unused in-layout configuration
      phy: qcom-qmp-usb: drop unused in-layout configuration
      phy: qcom-qmp-pcie: drop power-down delay config
      phy: qcom-qmp-pcie: replace power-down delay
      phy: qcom-qmp-pcie-msm8996: drop power-down delay config
      phy: qcom-qmp-combo: drop sc8280xp power-down delay
      phy: qcom-qmp-combo: drop power-down delay config
      phy: qcom-qmp-usb: drop sc8280xp power-down delay
      phy: qcom-qmp-usb: drop power-down delay config
      phy: qcom-qmp-pcie: fix sc8180x initialisation
      phy: qcom-qmp-pcie: fix ipq8074-gen3 initialisation
      phy: qcom-qmp-pcie: fix ipq6018 initialisation
      phy: qcom-qmp-pcie: clean up status polling
      phy: qcom-qmp-pcie: increase status polling period
      phy: qcom-qmp-pcie-msm8996: clean up ready and status polling
      phy: qcom-qmp-pcie-msm8996: increase status polling period
      phy: qcom-qmp-combo: clean up status polling
      phy: qcom-qmp-combo: increase status polling period
      phy: qcom-qmp-ufs: drop unused phy-status config
      phy: qcom-qmp-ufs: clean up ready polling
      phy: qcom-qmp-ufs: increase ready polling period
      phy: qcom-qmp-usb: clean up status polling
      phy: qcom-qmp-usb: increase status polling period
      phy: qcom-qmp-combo: drop start and pwrdn-ctrl abstraction
      phy: qcom-qmp-pcie: drop start-ctrl abstraction
      phy: qcom-qmp-pcie: add config sanity checks
      phy: qcom-qmp-pcie-msm8996: drop start and pwrdn-ctrl abstraction
      phy: qcom-qmp-ufs: drop start and pwrdn-ctrl abstraction
      phy: qcom-qmp-usb: drop start and pwrdn-ctrl abstraction
      phy: qcom-qmp-combo: fix NULL-deref on runtime resume
      phy: qcom-qmp-ufs: move device-id table
      phy: qcom-qmp-ufs: merge driver data
      phy: qcom-qmp-ufs: clean up device-tree parsing
      phy: qcom-qmp-ufs: clean up probe initialisation
      phy: qcom-qmp-ufs: rename PHY ops structure
      phy: qcom-qmp-ufs: clean up PHY init
      dt-bindings: phy: qcom,qmp-ufs: rename current bindings
      dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
      phy: qcom-qmp-ufs: restructure PHY creation
      phy: qcom-qmp-ufs: add support for updated sc8280xp binding
      phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
      phy: qcom-qmp-usb: sort device-id table
      phy: qcom-qmp-usb: move device-id table
      phy: qcom-qmp-usb: move pm ops
      phy: qcom-qmp-usb: merge driver data
      phy: qcom-qmp-usb: clean up device-tree parsing
      phy: qcom-qmp-usb: clean up probe initialisation
      phy: qcom-qmp-usb: rename PHY ops structure
      phy: qcom-qmp-usb: clean up PHY init
      dt-bindings: phy: qcom,qmp-usb: rename current bindings
      dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
      phy: qcom-qmp-usb: restructure PHY creation
      phy: qcom-qmp-usb: add support for updated sc8280xp binding
      phy: qcom-qmp-pcie: sort device-id table
      phy: qcom-qmp-pcie: move device-id table
      phy: qcom-qmp-pcie: merge driver data
      phy: qcom-qmp-pcie: clean up device-tree parsing
      phy: qcom-qmp-pcie: clean up probe initialisation
      phy: qcom-qmp-pcie: rename PHY ops structure
      phy: qcom-qmp-pcie: clean up PHY lane init
      phy: qcom-qmp-pcie: use shorter tables identifiers
      phy: qcom-qmp-pcie: add register init helper
      dt-bindings: phy: qcom,qmp-pcie: rename current bindings
      dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
      phy: qcom-qmp-pcie: restructure PHY creation
      phy: qcom-qmp-pcie: fix initialisation reset
      phy: qcom-qmp-pcie: add support for pipediv2 clock
      phy: qcom-qmp-pcie: add support for sc8280xp
      phy: qcom-qmp-pcie: add support for sc8280xp 4-lane PHYs
      phy: qcom-qmp-combo: fix out-of-bounds clock access
      phy: qcom-qmp-combo: fix sdm845 reset
      phy: qcom-qmp-combo: fix sc8180x reset
      phy: qcom-qmp-combo: fix broken power on
      phy: qcom-qmp-combo: fix runtime suspend
      phy: qcom-qmp-combo: clean up common initialisation
      phy: qcom-qmp-combo: sort device-id table
      phy: qcom-qmp-combo: move device-id table
      phy: qcom-qmp-combo: move pm ops
      phy: qcom-qmp-combo: rename PHY ops structures
      phy: qcom-qmp-combo: drop unused DP PHY mode op
      phy: qcom-qmp-combo: rename USB PHY ops
      phy: qcom-qmp-combo: drop unnecessary debug message
      phy: qcom-qmp-combo: separate USB and DP init ops
      phy: qcom-qmp-combo: rename DP PHY ops
      phy: qcom-qmp-combo: separate USB and DP power-on ops
      phy: qcom-qmp-combo: clean up serdes initialisation
      phy: qcom-qmp-combo: separate USB and DP devicetree parsing
      phy: qcom-qmp-combo: add dedicated DP iomem pointers
      phy: qcom-qmp-combo: clean up DP configurations
      phy: qcom-qmp-combo: rename sc8280xp config
      phy: qcom-qmp-combo: add DP configuration tables
      phy: qcom-qmp-combo: drop lanes config parameter
      phy: qcom-qmp-combo: merge USB and DP configurations
      phy: qcom-qmp-combo: merge driver data
      phy: qcom-qmp-combo: clean up device-tree parsing
      phy: qcom-qmp-combo: clean up probe initialisation
      phy: qcom-qmp-combo: clean up DP callback names
      dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
      dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding
      phy: qcom-qmp-combo: drop v4 reference-clock source
      phy: qcom-qmp-combo: restructure PHY creation
      phy: qcom-qmp-combo: generate pipe clock name
      phy: qcom-qmp-combo: drop redundant clock structure
      phy: qcom-qmp-combo: drop redundant clock allocation
      phy: qcom-qmp-combo: add clock registration helper
      phy: qcom-qmp-combo: separate clock and provider registration
      phy: qcom-qmp-combo: clean up DP clock callbacks
      phy: qcom-qmp-combo: rename common-register pointers
      phy: qcom-qmp-combo: rename DP_PHY register pointer
      phy: qcom-qmp-combo: add support for updated sc8280xp binding
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop reference-clock so=
urce
      phy: qcom-qmp-usb: drop sc8280xp reference-clock source
      phy: qcom-qmp: drop unused type header
      phy: qcom-qmp-usb: drop redundant clock allocation
      phy: qcom-qmp-pcie: drop redundant clock allocation

Jon Hunter (1):
      phy: tegra: xusb: Fix crash during pad power on/down

Justin Chen (5):
      phy: usb: Improve port mode selection
      phy: usb: Migrate to BIT and BITMASK macros
      phy: usb: Disable phy auto-suspend
      phy: usb: Use slow clock for wake enabled suspend
      phy: usb: Fix clock imbalance for suspend/resume

Kishon Vijay Abraham I (1):
      MAINTAINERS: Update Kishon's email address in GENERIC PHY FRAMEWORK

Manivannan Sadhasivam (2):
      phy: qcom-qmp-pcie: Fix high latency with 4x2 PHY when ASPM is enabled
      phy: qcom-qmp-pcie: Fix sm8450_qmp_gen4x2_pcie_pcs_tbl[] register nam=
es

Matt Ranostay (4):
      dt-bindings: phy-j721e-wiz: add j784s4 compatible string
      phy: ti: phy-j721e-wiz: add j784s4-wiz-10g module support
      dt-bindings: phy-j721e-wiz: add j721s2 compatible string
      phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support

Minghao Chi (1):
      phy: use devm_platform_get_and_ioremap_resource()

Pali Roh=E1r (1):
      phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY registers before U=
SB 3.0 power on

Richard Zhu (4):
      dt-binding: phy: Add i.MX8MP PCIe PHY binding
      phy: freescale: imx8m-pcie: Refine register definitions
      phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe PHY driver
      phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY support

Samuel Holland (6):
      dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
      dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY variant
      phy: allwinner: phy-sun6i-mipi-dphy: Make RX support optional
      phy: allwinner: phy-sun6i-mipi-dphy: Set the enable bit last
      phy: allwinner: phy-sun6i-mipi-dphy: Add a variant power-on hook
      phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY variant

Sean Anderson (1):
      doc: phy: Document typical order of API calls

Siddharth Vadapalli (3):
      dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
      phy: ti: gmii-sel: Update methods for fetching and using qsgmii main =
port
      phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J721e

Vidya Sagar (1):
      phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE in calibration

Vinod Koul (1):
      Merge branch 'fixes' into next

Wayne Chang (1):
      phy: tegra: xusb: Remove usb3 supply

Yoshihiro Shimoda (2):
      dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
      phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8

 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml         |   11 +
 .../bindings/phy/allwinner,sun8i-h3-usb-phy.yaml   |   26 +
 .../devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |   16 +-
 ...cie-phy.yaml =3D> qcom,ipq8074-qmp-pcie-phy.yaml} |    7 +-
 ...-ufs-phy.yaml =3D> qcom,msm8996-qmp-ufs-phy.yaml} |   17 +-
 ...usb-phy.yaml =3D> qcom,msm8996-qmp-usb3-phy.yaml} |   20 +-
 ...p-phy.yaml =3D> qcom,sc7180-qmp-usb3-dp-phy.yaml} |   25 +-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  165 ++
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   83 +
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  102 ++
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   99 ++
 .../phy/renesas,r8a779f0-ether-serdes.yaml         |   54 +
 .../devicetree/bindings/phy/ti,phy-gmii-sel.yaml   |   48 +-
 .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml  |    2 +
 Documentation/driver-api/phy/phy.rst               |   25 +-
 MAINTAINERS                                        |    2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |    5 +
 drivers/pci/controller/dwc/pcie-qcom.c             |    5 +
 drivers/phy/allwinner/phy-sun4i-usb.c              |   71 +
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c        |  236 ++-
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c  |   95 +-
 drivers/phy/broadcom/phy-brcm-usb-init.c           |   90 +-
 drivers/phy/broadcom/phy-brcm-usb-init.h           |   11 +-
 drivers/phy/broadcom/phy-brcm-usb.c                |   32 +-
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c         |  142 +-
 drivers/phy/marvell/phy-mmp3-hsic.c                |    4 +-
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c       |    3 +
 drivers/phy/qualcomm/Kconfig                       |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 1709 +++++++++-------=
----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c   |  103 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 1443 ++++++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h    |    2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |    2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |   14 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  482 +++---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |  737 ++++-----
 drivers/phy/qualcomm/phy-qcom-qmp.h                |    1 +
 drivers/phy/renesas/Kconfig                        |    8 +
 drivers/phy/renesas/Makefile                       |    1 +
 drivers/phy/renesas/r8a779f0-ether-serdes.c        |  417 +++++
 drivers/phy/st/phy-stm32-usbphyc.c                 |    2 +
 drivers/phy/tegra/phy-tegra194-p2u.c               |   14 +
 drivers/phy/tegra/xusb-tegra124.c                  |    1 -
 drivers/phy/tegra/xusb-tegra186.c                  |    1 -
 drivers/phy/tegra/xusb-tegra210.c                  |    1 -
 drivers/phy/tegra/xusb.c                           |   30 +-
 drivers/phy/tegra/xusb.h                           |    2 -
 drivers/phy/ti/phy-gmii-sel.c                      |   42 +-
 drivers/phy/ti/phy-j721e-wiz.c                     |   38 +
 include/dt-bindings/phy/phy-qcom-qmp.h             |   20 +
 50 files changed, 3933 insertions(+), 2534 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml =3D> =
qcom,ipq8074-qmp-pcie-phy.yaml} (96%)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-ufs-phy.yaml =3D> q=
com,msm8996-qmp-ufs-phy.yaml} (93%)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb-phy.yaml =3D> q=
com,msm8996-qmp-usb3-phy.yaml} (95%)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb3-dp-phy.yaml =
=3D> qcom,sc7180-qmp-usb3-dp-phy.yaml} (91%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp=
-pcie-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp=
-ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp=
-usb3-uni-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp=
-usb43dp-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-=
ether-serdes.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
 create mode 100644 drivers/phy/renesas/r8a779f0-ether-serdes.c
 create mode 100644 include/dt-bindings/phy/phy-qcom-qmp.h

--=20
~Vinod

--q7qOx1VORIINndg9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmOfIzgACgkQfBQHDyUj
g0fs9g/6AhFBA7xC4AYFMKEcEQe8lrvzj0cMeRZ7Gxw5AHfCyUZknBCwMoUfH5/Y
Eq2LXyEAXZir2+IfxTuxibcj3m46xbIFi7mzURRI+Uop+acBBlWFJjuncOHV8Nah
BCPm7p9WuEwSBbi24+d41qf3mbmJ60N6x1Q+GAYs4izG6J9TeQ3C++dxCYZxBZtO
lVjPgxy71gM+Bm2e9jInSEBi/kS30bsBtwzb8MueM27Kpkyt2dM3iwtp5D+b+dKQ
6oos/yBue0OZ69vlvysebSpXcOdz2Ond11SavaGkQSKvd8eyNsIFgxmYYjzxlE4j
0iTZsFiBNY80GysiSwIS0lrqjCaQ0/2CI7ljQPUsH2VA4qcyiw/a8rNL382htzZO
EhnUaH8djKux3hqpxfFws525oNb/vGmz8qggpE4ETQx91bM4++uibe2rTeLWKrpZ
WnQUj2pc24YLlG2/+ES1LGGz1LUaaJWai9XDTkDcIOWCJsMw4ofb5OjqUT2GJHL7
DYIwM+FRWJvfPP42G8w/ZDP3BSWicfxrfMQh48/nYPsMNd7vKO1v07RthRP+/UBx
kAzCZgr+Qa6yhUklgpQ6zEo94E8DM0dbi9eOG5zx2TPBtpx7AuyA5WHuc9oTHxwm
RP1Ugvgpur16if5DInP6b3cTQ55eOEJdCRhCutzWqgAUXL+cESk=
=55C8
-----END PGP SIGNATURE-----

--q7qOx1VORIINndg9--


--===============0065828317549183557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0065828317549183557==--

