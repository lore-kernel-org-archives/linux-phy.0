Return-Path: <SRS0=XdcK=JE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2505BC433ED
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 12:47:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A26316135D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 12:46:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A26316135D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rykdu2ueRtK4sgKfh+B1zcOIDupkYUUj15r9BoOgEcw=; b=JgI
	X4utTtqkb3DZjM32D7qrD+63HrJPhr+ubttDpwCELt0GfOdIA/8e9isFqWLEMkdy8Ggpj9tBJCjHh
	WKTMFiHSmumTD7YD2Z3xNIGfgqwzli68nF0b/2lTWSfDPDndonn8pIFcAO2Z9qHgRi1NpjBe5NgxQ
	GsGT5RR02/jfaQO0M3+0LK8i/zyg1pEtaHKCGj8+lziDweI5i668MYGdM08plgcSvZi/fZaayiy1Y
	jtUIOYOCpdu6ZyH6cN6HBYSjQLh5URIy2+U8Mu6r5/8sKLVxkOymLVbD83hzbzESOptEO+pCG0h0b
	14K2zutAt+jkefKhjVHmpLMHE0EngeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU7aD-004z62-U4; Wed, 07 Apr 2021 12:46:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU7a8-004z41-RH
 for linux-phy@lists.infradead.org; Wed, 07 Apr 2021 12:46:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4BFA56136A;
 Wed,  7 Apr 2021 12:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617799605;
 bh=wsphHqWxeyShQLP+96bGc4CqYQnanow42mct7ELlw3g=;
 h=Date:From:To:Cc:Subject:From;
 b=u5dcT8nNvXu+INfpGxKJ2+q2KnX6eTYT09O+YaLzaVMBb8uGAa/ASdtqRFddEXMSp
 Szat/LcGCGuv4n3AEK1lxbeQ+FzmAtjCmCbX8l9MpCmTGIvdh66xCHYNObREi4viO5
 XOF+XZIw8aBYB3rgzoXlFOgBvBCGAdEhm8MHF7OjXO6VYEwtrVJBsvBpEcASpSkIFQ
 Fxqa/CA1m5oidtKBUTMZGNyGjfA7AJgPioS5lyKLcJitBHrHsKls6/bkJIT9Qb+RNi
 O40UNfPZQTIl6S+UkND6HhXo3tFCHvBHDrXNbsz1u7c3p7mEGS2yYQl7MT0zKBeW58
 SvRe9lOrIjZYQ==
Date: Wed, 7 Apr 2021 18:16:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [GIT PULL]: Generic phy updates for v5.13-rc1
Message-ID: <YG2psdeBIlfYODdJ@vkoul-mobl.Dlink>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_134654_061766_0B2A016B 
X-CRM114-Status: GOOD (  17.96  )
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
Content-Type: multipart/mixed; boundary="===============8865659361075174718=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8865659361075174718==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R6XcYt5NMUCdGCC7"
Content-Disposition: inline


--R6XcYt5NMUCdGCC7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to receive generic phy updates for this cycle. This is usual
pull includes bunch of new driver/device support and updates to bunch of
drivers.

The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:

  Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.13

for you to fetch changes up to cbc336c09b6d6dfb24d20c955599123308fa2fe2:

  phy: fix resource_size.cocci warnings (2021-04-06 10:39:20 +0530)

----------------------------------------------------------------
phy-for-5.13

  - Updates:
	- Yaml conversion for mvebu-utmi binding, bcm-ns-usb2 and
	  bcm-ns-usb3 bindings
	- Mediatek dsi and hdmi phy updates
	- TI j721e-wiz updates for AM64
	- Cadence-torrent phy updates for SGMII/QSGMII

  - New support:
	- usb3-dp phy for Qualcomm SM8250
	- UTMI phy for Armada CP110
	- USB phy for Qualcomm SC7280
	- Binding and driver for Sparx5 ethernet serdes

----------------------------------------------------------------
Amelie Delaunay (2):
      dt-bindings: phy: phy-stm32-usbphyc: add #clock-cells property
      phy: stm32: register usbphyc as clock provider of ck_usbo_48m clock

Bhaskar Chowdhury (1):
      phy: intel: Fix a typo

Chunfeng Yun (3):
      dt-bindings: phy: mediatek: dsi-phy: modify compatible dependence
      dt-bindings: phy: mediatek: hdmi-phy: modify compatible items
      dt-bindings: phy: mediatek: tphy: change patternProperties

Dmitry Baryshkov (5):
      dt-bindings: phy: qcom,qmp-usb3-dp-phy: move usb3 compatibles back to=
 qcom,qmp-phy.yaml
      dt-bindings: phy: qcom,qmp-usb3-dp: Add support for SM8250
      phy: qcom-qmp: move DP functions to callbacks
      phy: qcom-qmp: rename common registers
      phy: qcom-qmp: add support for sm8250-usb3-dp phy

Faiz Abbas (1):
      phy: ti: j721e-wiz: Do not configure wiz if its already configured

Geert Uytterhoeven (2):
      phy: marvell: ARMADA375_USBCLUSTER_PHY should not default to y, uncon=
ditionally
      phy: microchip: PHY_SPARX5_SERDES should depend on ARCH_SPARX5

Gustavo A. R. Silva (1):
      phy: qcom-usb-hs: Fix fall-through warnings for Clang

Hao Fang (1):
      phy: hisilicon: Use the correct HiSilicon copyright

Junlin Yang (2):
      phy: rockchip-typec: add missing of_node_put
      phy: ti: j721e-wiz: add missing of_node_put

Kishon Vijay Abraham I (29):
      dt-bindings: phy: ti,phy-j721e-wiz: Add bindings for AM64 SERDES Wrap=
per
      dt-bindings: phy: cadence-torrent: Add binding for refclk driver
      dt-bindings: ti-serdes-mux: Add defines for AM64 SoC
      phy: ti: j721e-wiz: Remove "regmap_field" from wiz_clk_{mux|div}_sel
      phy: ti: j721e-wiz: Delete "clk_div_sel" clk provider during cleanup
      phy: ti: j721e-wiz: Configure full rate divider for AM64
      phy: ti: j721e-wiz: Model the internal clocks without device tree inp=
ut
      phy: ti: j721e-wiz: Enable reference clock output in cmn_refclk_<p/m>
      phy: cadence-torrent: Add support to drive refclk out
      phy: ti: j721e-wiz: Add support for configuring QSGMII
      phy: cadence-torrent: Update SGMII/QSGMII configuration specific to TI
      phy: cadence: Sierra: Fix PHY power_on sequence
      phy: ti: j721e-wiz: Invoke wiz_init() before of_platform_device_creat=
e()
      phy: cadence: Sierra: Create PHY only for "phy" or "link" sub-nodes
      phy: ti: j721e-wiz: Get PHY properties only for "phy" or "link" subno=
de
      phy: cadence: Sierra: Move all clk_get_*() to a separate function
      phy: cadence: Sierra: Move all reset_control_get*() to a separate fun=
ction
      phy: cadence: Sierra: Explicitly request exclusive reset control
      phy: cadence-torrent: Use a common header file for Cadence SERDES
      phy: cadence: Sierra: Add array of input clocks in "struct cdns_sierr=
a_phy"
      phy: cadence: Sierra: Add missing clk_disable_unprepare() in .remove =
callback
      dt-bindings: phy: phy-cadence-sierra: Add binding to model Sierra as =
clock provider
      phy: cadence: Sierra: Model PLL_CMNLC and PLL_CMNLC1 as clocks (mux c=
locks)
      phy: cadence: Sierra: Enable pll_cmnlc and pll_cmnlc1 clocks
      phy: cadence-torrent: Group reset APIs and clock APIs
      phy: cadence-torrent: Do not configure SERDES if it's already configu=
red
      phy: cadence-torrent: Explicitly request exclusive reset control
      phy: cadence-torrent: Add delay for PIPE clock to be stable
      phy: ti: j721e-wiz: Configure 'p_standard_mode' only for DP/QSGMII

Konstantin Porotchkin (3):
      drivers: phy: add support for Armada CP110 UTMI PHY
      dt-bindings: phy: convert phy-mvebu-utmi to YAML schema
      devicetree/bindings: add support for CP110 UTMI PHY

Kuogee Hsieh (1):
      phy: qcom-qmp: add hbr3_hbr2 voltage and premphasis swing table

Liam Beguin (1):
      phy: tusb1210: use bitmasks to set VENDOR_SPECIFIC2

Manish Narani (1):
      phy: zynqmp: Handle the clock enable/disable properly

Rafa=C5=82 Mi=C5=82ecki (4):
      phy: phy-brcm-usb: select SOC_BRCMSTB on brcmstb only
      dt-bindings: phy: brcm,brcmstb-usb-phy: add power-domains
      dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
      dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml

Randy Dunlap (1):
      phy: marvell: phy-mvebu-cp11i-utmi needs USB_COMMON

Sandeep Maheswaram (1):
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SC7280

Seiya Wang (3):
      dt-bindings: phy: Add compatible for Mediatek MT8195
      dt-bindings: phy: Add compatible for Mediatek MT8195
      dt-bindings: phy: fix dt_binding_check warning in mediatek, ufs-phy.y=
aml

Sergio Paracuellos (1):
      phy: ralink: phy-mt7621-pci: fix XTAL bitmask

Steen Hegelund (4):
      dt-bindings: phy: Add sparx5-serdes bindings
      phy: Add media type and speed serdes configuration interfaces
      phy: Add Sparx5 ethernet serdes PHY driver
      phy: Sparx5 Eth SerDes: Use direct register operations

Swapnil Jakhade (2):
      phy: cadence-torrent: Update PCIe + QSGMII config for correct PLL1 cl=
ock
      phy: cadence-torrent: Update PCIe + USB config for correct PLL1 clock

Vinod Koul (2):
      MAINTAINERS: Add linux-phy list and patchwork
      Merge tag 'ti-serdes-for-5.13' into next

Wei Yongjun (2):
      phy: ralink: phy-mt7621-pci: fix return value check in mt7621_pci_phy=
_probe()
      phy: ingenic: Fix a typo in ingenic_usb_phy_probe()

Yang Li (1):
      phy: ti: j721e-wiz: add missing call to of_node_put()

Zhang Yunkai (1):
      phy: qualcomm: remove duplicate argument

kernel test robot (1):
      phy: fix resource_size.cocci warnings

 .../devicetree/bindings/phy/bcm-ns-usb2-phy.txt    |   21 -
 .../devicetree/bindings/phy/bcm-ns-usb2-phy.yaml   |   59 +
 .../devicetree/bindings/phy/bcm-ns-usb3-phy.txt    |   34 -
 .../devicetree/bindings/phy/bcm-ns-usb3-phy.yaml   |   62 +
 .../bindings/phy/brcm,brcmstb-usb-phy.yaml         |    3 +
 .../bindings/phy/marvell,armada-3700-utmi-phy.yaml |   57 +
 .../phy/marvell,armada-cp110-utmi-phy.yaml         |  109 +
 .../devicetree/bindings/phy/mediatek,dsi-phy.yaml  |   13 +-
 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |   11 +-
 .../devicetree/bindings/phy/mediatek,tphy.yaml     |    3 +-
 .../devicetree/bindings/phy/mediatek,ufs-phy.yaml  |    7 +-
 .../bindings/phy/microchip,sparx5-serdes.yaml      |  100 +
 .../bindings/phy/phy-cadence-sierra.yaml           |   17 +-
 .../bindings/phy/phy-cadence-torrent.yaml          |   22 +-
 .../devicetree/bindings/phy/phy-mvebu-utmi.txt     |   38 -
 .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml |    5 +
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |    2 +
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         |    3 +-
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |    1 +
 .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml  |    4 +
 MAINTAINERS                                        |    3 +-
 drivers/phy/Kconfig                                |    1 +
 drivers/phy/Makefile                               |    1 +
 drivers/phy/broadcom/Kconfig                       |    2 +-
 drivers/phy/cadence/Kconfig                        |    2 +
 drivers/phy/cadence/phy-cadence-sierra.c           |  419 ++-
 drivers/phy/cadence/phy-cadence-torrent.c          |  475 +++-
 drivers/phy/hisilicon/phy-hi6220-usb.c             |    2 +-
 drivers/phy/hisilicon/phy-hix5hd2-sata.c           |    2 +-
 drivers/phy/ingenic/phy-ingenic-usb.c              |    4 +-
 drivers/phy/intel/phy-intel-lgm-combo.c            |    2 +-
 drivers/phy/marvell/Kconfig                        |   12 +-
 drivers/phy/marvell/Makefile                       |    1 +
 drivers/phy/marvell/phy-mvebu-cp110-utmi.c         |  384 +++
 drivers/phy/microchip/Kconfig                      |   13 +
 drivers/phy/microchip/Makefile                     |    6 +
 drivers/phy/microchip/sparx5_serdes.c              | 2513 ++++++++++++++++=
++
 drivers/phy/microchip/sparx5_serdes.h              |  136 +
 drivers/phy/microchip/sparx5_serdes_regs.h         | 2695 ++++++++++++++++=
++++
 drivers/phy/phy-core.c                             |   30 +
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c        |    4 +-
 drivers/phy/qualcomm/phy-qcom-qmp.c                |  528 +++-
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   77 +-
 drivers/phy/qualcomm/phy-qcom-usb-hs.c             |    1 +
 drivers/phy/ralink/phy-mt7621-pci.c                |    6 +-
 drivers/phy/rockchip/phy-rockchip-typec.c          |    1 +
 drivers/phy/st/Kconfig                             |    1 +
 drivers/phy/st/phy-stm32-usbphyc.c                 |   65 +
 drivers/phy/ti/phy-j721e-wiz.c                     |  449 +++-
 drivers/phy/ti/phy-tusb1210.c                      |   27 +-
 drivers/phy/xilinx/phy-zynqmp.c                    |   58 +-
 include/dt-bindings/mux/ti-serdes.h                |    5 +
 include/dt-bindings/phy/phy-cadence-torrent.h      |   13 -
 include/dt-bindings/phy/phy-cadence.h              |   20 +
 include/dt-bindings/phy/phy-ti.h                   |   21 +
 include/linux/phy/phy.h                            |   26 +
 56 files changed, 8144 insertions(+), 432 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.t=
xt
 create mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.y=
aml
 delete mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.t=
xt
 create mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.y=
aml
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,armada-37=
00-utmi-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,armada-cp=
110-utmi-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,sparx5-=
serdes.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-mvebu-utmi.txt
 create mode 100644 drivers/phy/marvell/phy-mvebu-cp110-utmi.c
 create mode 100644 drivers/phy/microchip/Kconfig
 create mode 100644 drivers/phy/microchip/Makefile
 create mode 100644 drivers/phy/microchip/sparx5_serdes.c
 create mode 100644 drivers/phy/microchip/sparx5_serdes.h
 create mode 100644 drivers/phy/microchip/sparx5_serdes_regs.h
 delete mode 100644 include/dt-bindings/phy/phy-cadence-torrent.h
 create mode 100644 include/dt-bindings/phy/phy-cadence.h
 create mode 100644 include/dt-bindings/phy/phy-ti.h

Thanks
--=20
~Vinod

--R6XcYt5NMUCdGCC7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmBtqbEACgkQfBQHDyUj
g0dvhxAAmIj4IfpqRPU5VhSa7QNXjQOvjozcmkQB+cHY3XdjwNNTui7+6Bk61JJq
Q4UzeBM6pdrgez2eth2iVVrZFGAnLfm5z3YTytxmq8pTGHd97S/9NzuR7OUicmIA
7K9DRa673FPXChcpEgA5FQwTyxbQQflGyz2faffTq8eIFUJOABkyiYh0DkL19y0K
LguqDdDQCUQZ0Ag7IjKsdbS/NpzYUMnq6KPmdGoqUyIdBE7aL+q9xHIS4/9LnLVa
ssBApX8P6vWqwJ7q2KaPmcCMhCCa4z9AgAWvDaB6zmNBrKLwpebEkQxqoP2Cd30c
mOHhoi0HLE46w3L2yHp0Lr02/B+wQyvfEAkYO66wZXbCUiDMp55UOOHDcaxpJYZi
ySwRIVxuyAJx3vnnbqY6+hOFBvS1D014MsNWBp8+OYEiRKV2gtYG+s6WfxFqbpUu
y0DaH4Q+duDEJpKjEA8CRgC4VVJR+agBSOO19FONB1lx51n9HiE82G7hu7gCceZf
pWHvq9j6Sf2WIft9tp4rS5sYxDLNvMRlaNf7HSXKvLVU1vFuRu7E1OkbQBJvyrev
ALXJ7ghekzZemt93cdWfOqgi0pOEzNaj9pjNK4gVNvMD5aGlWZXsZ0OHydIMjaJM
qMJ2DwTxIpgum9AfzzUGBpVUqjZ85pWR/NwJy+cu+g885hHunMs=
=0L6R
-----END PGP SIGNATURE-----

--R6XcYt5NMUCdGCC7--


--===============8865659361075174718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8865659361075174718==--

