Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EACE9C4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:19:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD7DD61185
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:19:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD7DD61185
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=70UfzjOxc5a2qyx2xhWKIGrRuT3Ok1F4+3nEa3/2qmo=; b=UNC
	/7+2uy8rmDKXs3mkzRx2jXPAeL421axlyVSvJKKduj+4t/FYkW8NaUX7GWNf2BOLT4yQCHfP2er1T
	kchvgml+cT04EIINfgO27iZOz1FLoFuzNTa9DYUOKR4+QZsfP8XmsaGcFglN3OFgXVPWzAyMitLEq
	X1lroIfubWj+PsJSm5oPfXEh4vQ7V4GFHiNMQIIUFDQFF3J1WgblSR66x/NaBF7FpxdXe01MxzYqh
	Xar7vzNbcp6Oce1svJP26ONHqyTh/NCtrUzj/peqZZ9w3Q96Zt8FY8BRaUvJcNyoW4PxMm+DU5a7R
	e7NFsXjHa0RYYkQ67vQh4STMHjXZymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvy6x-009vCT-78; Wed, 23 Jun 2021 08:19:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvy6t-009vBv-DS
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 08:19:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 401BD60D07;
 Wed, 23 Jun 2021 08:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624436387;
 bh=S+s2Ft9S1NB87mocVZfLX71sInvKxvx9L4A7FN8ycbI=;
 h=Date:From:To:Cc:Subject:From;
 b=WassAqT/7pS1sViv2DBON2wWnN7CpNdSaC73Rlo8tzq+8W25uyG2gOY4r/XdCRt3q
 F4XeGmUOKa91DGBOf2+G2V1GeKcsApkeByxm12yqjVkbxRtbC7shveENs2Op/yBble
 X2BTw+ZUnhzb87dA2EVc0XgZkI8Z6/ZFJnXd1DvHmmLfh2umcx5ZyC/9N0+A5DZeHL
 dOSa2NwjupuzcXiHszv43A4MUc46aOooH6y6PMI0CmSieQ+zoYm6ylKn4LBvVGo1Zq
 6EYqmz2pvhRd7WzCtbGpZNtNaV+X/T/MoXqY3T2xy00G+mfFqUKsvcDHk18vH7unhL
 U3Acf4sJjRzkg==
Date: Wed, 23 Jun 2021 13:49:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [GIT PULL]: Generic phy updates for v5.14 version 2
Message-ID: <YNLun13SP+PyYCEf@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_011947_530107_FAE68240 
X-CRM114-Status: GOOD (  15.37  )
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
Content-Type: multipart/mixed; boundary="===============1649457324842647664=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1649457324842647664==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xXdEosMGUvG7arT2"
Content-Disposition: inline


--xXdEosMGUvG7arT2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

As discussed, here is the updated pull request after reverting the
offending commit.

Again very sorry for missing this in the review.

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.14_v2

for you to fetch changes up to 15692a80d9491b42f910f61f5ef2171b3c2eb15c:

  phy: Revert "phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'" (2=
021-06-23 12:59:46 +0530)

----------------------------------------------------------------
phy-for-5.14 version 2

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

Vinod Koul (1):
      phy: Revert "phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'"

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
 drivers/phy/ralink/Kconfig                         |   2 +-
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
 36 files changed, 1601 insertions(+), 136 deletions(-)
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

--xXdEosMGUvG7arT2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmDS7p8ACgkQfBQHDyUj
g0enBA/8DLmHroZPzMt/DUrQSOmi0Lvb3FLVh9NnVudOTmhPb/YI+WOy2UmLpVeR
Ied+gCriI/5iFhWE948OSL25A8L8UXv5Lr73Q5uLTitdnSRG2d6xNrKRDnW2X0yT
aSmVDB4i3E3fCh9gy7FoelaysXfgA44d7SWQzy8xkwE98d0EM3aIH/RSh8lnspCK
7TKcYlSJU5MSnHK0JyISsKjvUATd3gK58rUbq9+W3kjiX9XvBeD+LwtuSYrsLEcK
X76Y1wFwENgLlUcAOahvNHXTgN6ZhtPn8K/cGly4AOSr7KuLyB7pez/F4iifrTYe
LbW0Ww58uNji1AL0fabW+GUMn3SsDwSxuT7DVWHv85kI72Yzs5M6kUaSEP+D1Vtx
SFxLNlesKmme2BvhFZjh45TbQR0+Xm93tkjYFc4bDRGY/BToFOTNrTn4GAR60+ww
q15yJwSvBLLdIribPWSkU94gtWxGnd1bQ3a+vHQ7vqWf1l0ln+lTiNRIvYJbly7n
hQ53gdDcMChpIDzfyM8akeWdUeaV0nVhfdkkA+Bvx931l9fBkqE+MxXMzslCHuEI
ZZ6UP0MBUGN9BigsJIUsRSqBIkIGlPFYpyPniE657CgPKPqYnc0R7rlxZxrkvEEO
jI5aoNEIoI3GCGm9QssGW187MrKwrG933GFIy3GASG5xP06GKE4=
=vJfk
-----END PGP SIGNATURE-----

--xXdEosMGUvG7arT2--


--===============1649457324842647664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1649457324842647664==--

