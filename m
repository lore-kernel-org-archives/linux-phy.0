Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7028FC61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 13:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=L2zV2UKpMtxNbRc9grRFExtbBGWAZiFmBMqVoDzBWHw=; b=zes
	+jqunpfYnaZNmxBxkzQtOWlqEIXyE7ddpVTUFijSk5LnkXk3GQrCGIFO86SumyHUpLuptRqCDOXZc
	Hzd6Dd1ZUVIo25xLpILtN3wpXlAkFNRoKzlmogA6LhKCL9y2kdZKkQEqmrqn9HiuWWl8j5pIIJSaM
	+FCOq25ZUDKBnZkfQbcrz/4A06I6chExhFneeJjnAm1uF/YHsu59eENa/tBrT78cCC+95TeUc0iDH
	Gt4XQCmuAxl7w7YTo2UaBA3GC97KUpunerSSf9VSydHdx8KU8PwsPj1LatS5ivxfejfMefBHw6abx
	LOU2yDazicsRwRKlUfaDpsq0PxfyFRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVYOH-002eC9-RU; Fri, 24 Feb 2023 13:45:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVYOE-002eAz-4X
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 13:45:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 16E75B81C88;
	Fri, 24 Feb 2023 13:45:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23A7DC433D2;
	Fri, 24 Feb 2023 13:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677246329;
	bh=LCwvhl3JMhO444bLIsR3AuLuODlwpl6cKD5zZrTAm9Q=;
	h=Date:From:To:Cc:Subject:From;
	b=mOOH6n/ujxRmOAr748lEf3PBr4izo63jLTngDW90IcNwuE6xM2qxbHsWB827YJRih
	 AUdxBLKXUq5wg2VhzOuNBKU9MeSdITBHisWTgEaqWYj/AOnDKJhxoq+MvDj/NLbW8m
	 aJI/tIi3Si9DE0i1FAbDAwn5MGxKnuEE89E3Nod3MLP+KVdTSbUG0fX3c5EM7dD3Ea
	 bhCIuZGH5Xtaa7Fqhb14JJ30Mb038uiwDoELa5Gq9SKlZYcnrhwo1bla9XdQCi7a7G
	 4hesa2qzmgoJRoRxR5gxp8G3Ex+xtC4Bx3xW2nGj47RyEVVvxxR6nAGzyySeCuDJEb
	 V2iS3mZrKgYMA==
Date: Fri, 24 Feb 2023 19:15:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy updates for v6.3
Message-ID: <Y/i/dVFrB855ADjV@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_054534_505034_8B6316C6 
X-CRM114-Status: GOOD (  18.14  )
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
Content-Type: multipart/mixed; boundary="===============0714909971496593499=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0714909971496593499==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fByaH0rnw8MxZjpw"
Content-Disposition: inline


--fByaH0rnw8MxZjpw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Linus,

Please pull to receive Generic phy updates for v6.3. This features bunch
of new device support, couple of new drivers. yaml comversion and
updates on few of drivers.

The following changes since commit 1b929c02afd37871d5afb9d498426f83432e71c2:

  Linux 6.2-rc1 (2022-12-25 13:41:39 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-6.3

for you to fetch changes up to 3584f6392f09440769246d4936e1fcbff76ac3bc:

  phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater (2023-02-1=
6 18:40:27 +0530)

----------------------------------------------------------------
phy-for-6.3

  - Core support
	- New devm_of_phy_optional_get() API with users and conversion

  - New support:
	- Mediatek MT7986 tphy support
        - Qualcomm SM8550 UFS, PCIe, combo phy support, SM6115 / SM4250
          USB3 phy support, SM6350 combo phy support, SM6125 UFS PHY
	  support amd SM8350 & SM8450 combo phy support
        - Qualcomm SNPS eUSB2 eUSB2 repeater drivers
	- Allwinner F1C100s USB PHY support
	- Tegra xusb support for Tegra234

  - Updates:
        - Yaml conversion for Qualcomm pcie2 phy and usb-hsic-phy
	- G4 mode support in Qualcomm UFS phy and support for various SoCs
	- Yaml conversion for Meson usb2 phy
	- TI Type C support for usb phy for j721
	- Yaml conversion for Tegra xusb binding

----------------------------------------------------------------
Abel Vesa (23):
      dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
      phy: qcom-qmp: qserdes-com: Add v6 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
      phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
      phy: qcom-qmp: pcs-ufs: Add v6 register offsets
      phy: qcom-qmp-ufs: Add SM8550 support
      dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
      phy: qcom-qmp: pcs: Add v6 register offsets
      phy: qcom-qmp: pcs: Add v6.20 register offsets
      phy: qcom-qmp: pcs-pcie: Add v6 register offsets
      phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
      phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
      phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
      dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
      phy: qcom: Add QCOM SNPS eUSB2 driver
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550 compatib=
le
      phy: qcom-qmp: pcs-usb: Add v6 register offsets
      phy: qcom-qmp: Add v6 DP register offsets
      phy: qcom-qmp-combo: Add support for SM8550
      dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
      dt-bindings: phy: qcom,snps-eusb2-phy: Add phys property for the repe=
ater
      phy: qcom: Add QCOM SNPS eUSB2 repeater driver

Andre Przywara (1):
      phy: sun4i-usb: Replace types with explicit quirk flags

Bhupesh Sharma (3):
      dt-bindings: phy: qcom,qmp-usb: Add SM6115 / SM4250 USB3 PHY
      phy: qcom-qmp-usb: Fix QSERDES_V3_RX_UCDR_PI_CONTROLS init val
      phy: qcom-qmp-usb: Add Qualcomm SM6115 / SM4250 USB3 PHY support

Chunfeng Yun (1):
      phy: mediatek: remove temporary variable @mask_

Dmitry Baryshkov (26):
      dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
      phy: qcom-qmp-pcie: split sm8450 gen3 PHY config tables
      phy: qcom-qmp-pcie: rename the sm8450 gen3 PHY config tables
      phy: qcom-qmp-pcie: add support for sm8350 platform
      dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
      phy: qualcomm: pcie2: register as clock provider
      dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
      phy: qcom-qmp-ufs: provide symbol clocks
      phy: qcom-qmp: fix typo in QSERDES_COM_CMN_RSVD5 value
      phy: qcom-qmp: remove duplicate v5_5nm register definitions
      phy: qcom-qmp-pcie: rework regs layout arrays
      phy: qcom-qmp-pcie: rename regs layout arrays
      phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
      phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate =
header
      phy: qcom-qmp-ufs: rework regs layout arrays
      phy: qcom-qmp-ufs: rename regs layout arrays
      phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
      phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
      phy: qcom-qmp-usb: rework regs layout arrays
      phy: qcom-qmp-usb: fix regs layout arrays
      phy: qcom-qmp: move type-specific headers to particular driver
      phy: qualcomm: qmp-ufs: rename qmp_ufs_offsets_v5 to qmp_ufs_offsets
      phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
      phy: qcom-qmp-combo: rework regs layout arrays
      phy: qcom-qmp-pcie: fix the regs layout table for sm8450 gen3x1 PHY
      phy: qcom-qmp-usb: fix the regs layout table for sdx65 uniphy PHY

Frank Wunderlich (1):
      dt-bindings: phy: mediatek,tphy: add support for mt7986

Geert Uytterhoeven (11):
      phy: phy-can-transceiver: Skip warning if no "max-bitrate"
      dt-bindings: phy: ti,tcan104x-can: Document NXP TJR1443
      phy: phy-can-transceiver: Add support for NXP TJR1443
      phy: Remove unused phy_optional_get()
      doc: phy: Document devm_of_phy_get()
      phy: Add devm_of_phy_optional_get() helper
      net: fman: memac: Convert to devm_of_phy_optional_get()
      net: lan966x: Convert to devm_of_phy_optional_get()
      PCI: tegra: Convert to devm_of_phy_optional_get()
      usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
      usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()

Haotien Hsu (1):
      phy: tegra: xusb: Support USB role default mode

Heiner Kallweit (2):
      dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible string documenta=
tion
      dt-bindings: phy: g12a-usb2-phy: fix compatible string documentation

Icenowy Zheng (2):
      dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
      phy: sun4i-usb: add support for the USB PHY on F1C100s SoC

Jiapeng Chong (1):
      phy: rockchip-typec: Fix unsigned comparison with less than zero

Jon Hunter (1):
      dt-bindings: phy: tegra-xusb: Add support for Tegra234

Krzysztof Kozlowski (5):
      dt-bindings: phy: qcom,usb-hsic-phy: convert to DT schema
      dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles
      dt-bindings: phy: qcom,qusb2: do not define properties in "if" block
      dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: correct SC7280 compati=
bles
      dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: correct clocks per var=
iants

Luca Weiss (2):
      dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
      phy: qcom-qmp-combo: Add config for SM6350

Lux Aliaga (2):
      dt-bindings: phy: Add QMP UFS PHY compatible for SM6125
      phy: qcom-qmp: Add SM6125 UFS PHY support

Manivannan Sadhasivam (12):
      phy: qcom-qmp-ufs: Remove _tbl suffix from qmp_phy_init_tbl definitio=
ns
      phy: qcom-qmp-ufs: Rename MSM8996 PHY definitions
      phy: qcom-qmp-ufs: Move register settings to qmp_phy_cfg_tbls struct
      phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
      phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
      phy: qcom-qmp-ufs: Move HS Rate B register setting to tbls_hs_b
      phy: qcom-qmp-ufs: Add HS G4 mode support to SM8150 SoC
      phy: qcom-qmp-ufs: Add HS G4 mode support to SM8250 SoC
      phy: qcom-qmp-ufs: Avoid setting HS G3 specific registers
      phy: qcom-qmp-ufs: Add HS G4 mode support to SM8350 SoC
      phy: qcom-qmp-ufs: Add HS G4 mode support to SM8450 SoC
      phy: qcom-qmp-ufs: Add HS G4 mode support to SC8280XP SoC

Marijn Suijten (1):
      phy: Revert "phy: qualcomm: usb28nm: Add MDM9607 init sequence"

Neil Armstrong (5):
      dt-bindings: phy: convert meson-gxl-usb2-phy.txt to dt-schema
      dt-bindings: phy: qcom,qmp-usb3-dp: document sm8350 & sm8450 compatib=
le
      phy: qcom: com-qmp-combo: add SM8350 & SM8450 support
      dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add missing optional ph=
y-supply property
      phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater

Neill Kapron (1):
      phy: rockchip-typec: fix tcphy_get_mode error case

Randy Dunlap (1):
      phy: ti: fix Kconfig warning and operator precedence

Richard Zhu (1):
      phy: freescale: imx8m-pcie: Add one missing error return

Shang XiaoJing (2):
      phy: usb: sunplus: Fix potential null-ptr-deref in sp_usb_phy_probe()
      phy: rockchip-inno-usb2: Fix missing clk_disable_unprepare() in rockc=
hip_usb2phy_power_on()

Sing-Han Chen (1):
      phy: tegra: xusb: Add Tegra234 support

Sinthu Raja (2):
      phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not spe=
cified
      phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap

Stephen Boyd (1):
      phy: qcom-qmp: Introduce Kconfig symbols for discrete drivers

Thierry Reding (1):
      dt-bindings: phy: tegra-xusb: Convert to json-schema

Vinod Koul (3):
      Merge tag 'phy-devm_of_phy_optional_get' into next
      phy: qcom: snps-eusb2: Add missing headers
      Merge tag 'phy-fixes-6.2' into next

Wayne Chang (1):
      phy: tegra: xusb: Disable trk clk when not in use

Yoshihiro Shimoda (3):
      phy: renesas: r8a779f0-eth-serdes: Fix register setting
      phy: renesas: r8a779f0-eth-serdes: Add .power_on() into phy_ops
      phy: renesas: r8a779f0-eth-serdes: Remove retry code in .init()

 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml       |  83 +++
 ...2a-usb2-phy.yaml =3D> amlogic,g12a-usb2-phy.yaml} |   8 +-
 ...ie-phy.yaml =3D> amlogic,g12a-usb3-pcie-phy.yaml} |  11 +-
 .../bindings/phy/amlogic,meson-gxl-usb2-phy.yaml   |  56 ++
 .../devicetree/bindings/phy/mediatek,tphy.yaml     |   1 +
 .../devicetree/bindings/phy/meson-gxl-usb2-phy.txt |  21 -
 .../bindings/phy/nvidia,tegra124-xusb-padctl.txt   | 779 -----------------=
---
 .../bindings/phy/nvidia,tegra124-xusb-padctl.yaml  | 654 +++++++++++++++++
 .../bindings/phy/nvidia,tegra186-xusb-padctl.yaml  | 544 ++++++++++++++
 .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 632 +++++++++++++++++
 .../bindings/phy/nvidia,tegra210-xusb-padctl.yaml  | 786 +++++++++++++++++=
++++
 .../bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml     |   3 +
 .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    |   3 +
 .../devicetree/bindings/phy/qcom,pcie2-phy.yaml    |  86 +++
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 160 +++--
 .../bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml  |  89 ++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  52 +-
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   5 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   4 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  79 +++
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |  52 ++
 .../devicetree/bindings/phy/qcom,usb-hs-28nm.yaml  |   1 -
 .../devicetree/bindings/phy/qcom,usb-hsic-phy.txt  |  65 --
 .../devicetree/bindings/phy/qcom,usb-hsic-phy.yaml |  67 ++
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  33 +-
 .../devicetree/bindings/phy/qcom-pcie2-phy.txt     |  42 --
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml   |   1 +
 Documentation/driver-api/phy/phy.rst               |  24 +-
 drivers/net/ethernet/freescale/fman/fman_memac.c   |   9 +-
 .../net/ethernet/microchip/lan966x/lan966x_main.c  |   5 +-
 drivers/pci/controller/pci-tegra.c                 |   5 +-
 drivers/phy/allwinner/phy-sun4i-usb.c              |  59 +-
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c         |   2 +-
 drivers/phy/mediatek/phy-mtk-io.h                  |   4 +-
 drivers/phy/phy-can-transceiver.c                  |   9 +-
 drivers/phy/phy-core.c                             |  51 +-
 drivers/phy/qualcomm/Kconfig                       |  68 +-
 drivers/phy/qualcomm/Makefile                      |  14 +-
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     | 259 +++++++
 drivers/phy/qualcomm/phy-qcom-pcie2.c              |   6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 750 +++++++++++++++++=
++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c   |   6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 588 +++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |  15 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h |  23 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h     |  25 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h     |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h     |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  31 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h     |  31 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h         |  19 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h         |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h         |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h      |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  82 +++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h    |   2 +-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h |  32 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  30 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h    |   5 -
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |  77 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h |  45 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 688 ++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |  83 ++-
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  23 +-
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c         | 441 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c        |  13 -
 drivers/phy/renesas/r8a779f0-ether-serdes.c        |  67 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |   4 +-
 drivers/phy/rockchip/phy-rockchip-typec.c          |   7 +-
 drivers/phy/sunplus/phy-sunplus-usb2.c             |   3 +
 drivers/phy/tegra/Makefile                         |   1 +
 drivers/phy/tegra/xusb-tegra186.c                  |  64 +-
 drivers/phy/tegra/xusb.c                           |  23 +
 drivers/phy/tegra/xusb.h                           |  23 +
 drivers/phy/ti/Kconfig                             |   4 +-
 drivers/phy/ti/phy-j721e-wiz.c                     |  66 +-
 drivers/usb/host/ehci-exynos.c                     |  23 +-
 drivers/usb/host/ohci-exynos.c                     |  23 +-
 include/linux/phy/phy.h                            |  16 +-
 79 files changed, 6686 insertions(+), 1525 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f=
1c100s-usb-phy.yaml
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb2-phy.=
yaml =3D> amlogic,g12a-usb2-phy.yaml} (85%)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie=
-phy.yaml =3D> amlogic,g12a-usb3-pcie-phy.yaml} (72%)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-gxl=
-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-gxl-usb2-ph=
y.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra124-x=
usb-padctl.txt
 create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra124-x=
usb-padctl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra186-x=
usb-padctl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra194-x=
usb-padctl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra210-x=
usb-padctl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-p=
hy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-r=
epeater.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy=
=2Etxt
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy=
=2Eyaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
 create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

--=20
~Vinod

--fByaH0rnw8MxZjpw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmP4v3UACgkQfBQHDyUj
g0fHlQ/+Ns/RL3QyUrTs89pdxilT8L3r+WaS+sRf2/A4APdpDLOwogxA2RDIkwkQ
MPVAekOVmr1EdaYxADnzeD+FLSI3LQScFgJITJIVZtTiG5ZUvH1S/MlRcZ3c7Um4
qWdqMTfRmnMyxn+knnjQVCd38MlUHYY3uhUfPgAsSCqNNBqC0oTMZW4RxGgxKStd
hVX/h2IzxmFkqN6MWmDhSDcu+rpC8vSMsZQx8tp7N9Vsfp6jqb09idXJRiBdHLRT
5cdhMyubrRdK9mJS1qaYtlgseStWtXF9kZmH/PwZsN8ZOjd7UG7K+YJMwMfDJpPJ
J0nPyQq95fPnXFeUsDGTGBAfFOVgDfyhY8eaCVezP9dvpKv3S9oaIK8wTlHQm4je
WbvLSj5dfyPuJiHsESdWd0ljNVvtnkz189Tw+oNtgT6M4n+n/4tVMICSBOpjGZyH
Vu5elKnkzNsHeO2iS7PQ1/IdLUlNPioE78Di1SuDuPe40wfdnCCWkWKOfQ8d3skl
TY4tZLmOzIMsXqZePBX4AscAPMB25v33Uqklh4U6dfCo6rEra8L915B4yxiizE4G
JatK5SRsEk1NRIcqSWpfp35YYJn2jhF19EH8rLuwJtsYnANjxX31zxG3m8MQS72b
Si7Q9CCz37oGK2VUru4/0zRZTcdu0jXo/isQ21YP5DWbjQlJJCU=
=l3gg
-----END PGP SIGNATURE-----

--fByaH0rnw8MxZjpw--


--===============0714909971496593499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0714909971496593499==--

