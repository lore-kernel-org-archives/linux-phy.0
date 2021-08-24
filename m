Return-Path: <SRS0=+fGD=NP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41568C432BE
	for <linux-phy@archiver.kernel.org>; Tue, 24 Aug 2021 05:10:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 067CC61248
	for <linux-phy@archiver.kernel.org>; Tue, 24 Aug 2021 05:10:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 067CC61248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IsL7DGx7dGkCfLfBlNlEkgxuZv6JV6cG7+1Ioi0ltH8=; b=E5q
	pqBRbhSeEXxLqyXAIuKCiFuEhE69v/jzW1ml4krnZjkB00lGTZUgRfNsPk3mlPrDg8z4xacnSpzss
	yIYKzzUYuwU6QWQJlRTGKtCavzXmUeuSE/G89Qa0UmjNtpZEjoQkK3faHroZZ/rimJ1SJzsQK3r2O
	PIjOtdZICUFmGGuou1VUxczat0dYISq1O1+7BxRADOCcmdrCpAigJqM1MM4LKuXFvStQW9oNunIxa
	Kb4eoI0NSsvQAUN6UKGxlM+HR+YqFXTOgM3pQIgnoXzeP8f3xP15ogba7z7fbXGjJaSxFix0+anGo
	F4JOKF7Ylw5vftiSFwJ4TGF06XXXuzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIOi0-001eAF-Hf; Tue, 24 Aug 2021 05:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIOhx-001e9T-8w
 for linux-phy@lists.infradead.org; Tue, 24 Aug 2021 05:10:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE16160F57;
 Tue, 24 Aug 2021 05:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629781845;
 bh=jytvFnpGKBFIKqx7pCKjyoj1lA+c76RzTUomXFxQ760=;
 h=Date:From:To:Cc:Subject:From;
 b=SuZ+6QHB04Nh3BIOyDukcK6sMGO3mYZ/l3wx4iowmzEVm3w5NTOOr3pAokLfWa+LG
 /EINGrx9IXFptFgDIpjsYFqOef9VgnkTQNifOAvDeafpfHFTvmA8+whdhTHSFrJH9m
 TMqLf/EsMYgujfCczCxxAiOVo3xNZBcMrNSA9Hm/d3F+1SbF0ZxAY4IWwfBKL4Sqo6
 nXC2klYa6rhUngYfgsQQGSRSxnY0PKQXYjqdu/ssYUPaEvVlcYpdmMFcBqYmmA9L18
 6ZQMLyMYM5uh3alr834rF9fIhp7Hbljcy0wBTyIBs9+L0fV0d/maehuS7bBfydtGD/
 EjysJlSfp6gSA==
Date: Tue, 24 Aug 2021 10:40:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: [GIT PULL]: Generic phy updates for v5.15
Message-ID: <YSR/UHNxE6iu3GBc@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_221045_406986_6F3FD476 
X-CRM114-Status: GOOD (  16.38  )
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
Content-Type: multipart/mixed; boundary="===============7999767581714114297=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7999767581714114297==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0oUymOkPC2OoOjB7"
Content-Disposition: inline


--0oUymOkPC2OoOjB7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Here is the update for v5.15, sorry this time it is bit late than
normal. Will make sure this hits early next time.

The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:

  Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.15

for you to fetch changes up to 152a810eae03f16e982444ffe3b0eca933a750cd:

  phy: qcom-qmp: Add support for SM6115 UFS phy (2021-08-23 11:12:30 +0530)

----------------------------------------------------------------
phy-for-5.15

  - Updates:
        - Yaml conversion for Freescale imx8mq usb phy, TI AM654 SERDES phy,
          Cadence torrent phy
        - Updates for Amlogic Meson8b-usb2 phy, Samsung ufs phy

  - New support:
        - UFS phy for Qualcomm SM6115
	- PCIe & USB/DP phy for Qualcomm sc8180x
	- USB3 PHY support for Qualcomm IPQ6018
	- Renesas USB2.0 PHY for RZ/G2L

----------------------------------------------------------------
Anand Moon (2):
      phy: amlogic: meson8b-usb2: Power off the PHY by putting it into rese=
t mode
      phy: amlogic: meson8b-usb2: don't log an error on -EPROBE_DEFER

Arnd Bergmann (1):
      phy: tegra: xusb: mark PM functions as __maybe_unused

Baruch Siach (2):
      dt-bindings: phy: qcom,qmp: Add IPQ6018 USB3 PHY
      phy: qcom-qmp: add USB3 PHY support for IPQ6018

Biju Das (2):
      dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
      phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY support for RZ/G2L

Bjorn Andersson (6):
      dt-bindings: phy: qcom,qmp: Add sc8180x PCIe compatible
      phy: qcom-qmp: Add sc8180x PCIe support
      phy: qcom-qmp: Fix sc8180x PCIe definition
      dt-bindings: phy: qcom,qmp-usb3-dp: Add support for sc8180x
      phy: qcom: qmp: Add SC8180x USB/DP combo
      phy: qmp: Provide unique clock names for DP clocks

Chanho Park (2):
      phy: samsung-ufs: move phy-exynos7-ufs header
      phy: samsung-ufs: support exynosauto ufs phy driver

Chunfeng Yun (12):
      dt-bindings: phy: mediatek: tphy: add support hardware version 3
      phy: phy-mtk-tphy: support new hardware version
      phy: phy-mtk-tphy: add support mt8195
      dt-bindings: phy: mediatek: tphy: support type switch by pericfg
      phy: phy-mtk-tphy: use clock bulk to get clocks
      phy: phy-mtk-tphy: support type switch by pericfg
      phy: phy-mtk-tphy: print error log using child device
      phy: phy-mtk-tphy: remove error log of ioremap failure
      phy: phy-mtk-ufs: use clock bulk to get clocks
      phy: phy-mtk-hdmi: convert to devm_platform_ioremap_resource
      phy: phy-mtk-mipi-dsi: remove dummy assignment of error number
      phy: phy-mtk-mipi-dsi: convert to devm_platform_ioremap_resource

Dong Aisheng (1):
      dt-bindings: phy: imx8mq-usb-phy: convert to json schema

Geert Uytterhoeven (1):
      dt-bindings: phy: Rename Intel Keem Bay USB PHY bindings

Iskren Chernev (2):
      dt-bindings: phy: qcom,qmp: Add SM6115 UFS PHY bindings
      phy: qcom-qmp: Add support for SM6115 UFS phy

Kishon Vijay Abraham I (1):
      dt-bindings: phy: Convert AM654 SERDES bindings to YAML

Piyush Mehta (1):
      phy: xilinx: zynqmp: skip PHY initialization and PLL lock for USB

Randy Dunlap (1):
      phy: qualcomm: phy-qcom-usb-hs: repair non-kernel-doc comment

Swapnil Jakhade (9):
      phy: cadence-torrent: Remove use of CamelCase to fix checkpatch CHECK=
 message
      phy: cadence-torrent: Reorder few functions to remove function declar=
ations
      phy: cadence-torrent: Add enum for supported input reference clock fr=
equencies
      phy: cadence-torrent: Configure PHY registers as a function of input =
reference clock rate
      phy: cadence-torrent: Add PHY registers for DP in array format
      phy: cadence-torrent: Add PHY configuration for DP with 100MHz ref cl=
ock
      phy: cadence-torrent: Add separate functions for reusable code
      phy: cadence-torrent: Add debug information for PHY configuration
      phy: cadence-torrent: Check PIPE mode PHY status to be ready for oper=
ation

Tony Lindgren (1):
      phy: phy-twl4030-usb: Disable PHY for suspend

kernel test robot (1):
      phy: rockchip-inno-usb2: fix for_each_child.cocci warnings

 .../devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt |   20 -
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml           |   53 +
 ...keembay-usb.yaml =3D> intel,keembay-phy-usb.yaml} |    2 +-
 .../devicetree/bindings/phy/mediatek,tphy.yaml     |   30 +-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |    4 +
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         |    1 +
 .../devicetree/bindings/phy/renesas,usb2-phy.yaml  |   15 +
 .../devicetree/bindings/phy/samsung,ufs-phy.yaml   |    1 +
 .../bindings/phy/ti,phy-am654-serdes.txt           |   82 -
 .../bindings/phy/ti,phy-am654-serdes.yaml          |  103 +
 drivers/phy/amlogic/phy-meson8b-usb2.c             |    8 +-
 drivers/phy/cadence/phy-cadence-torrent.c          | 3181 +++++++++++-----=
----
 drivers/phy/mediatek/phy-mtk-hdmi.c                |    7 +-
 drivers/phy/mediatek/phy-mtk-mipi-dsi.c            |   13 +-
 drivers/phy/mediatek/phy-mtk-tphy.c                |  224 +-
 drivers/phy/mediatek/phy-mtk-ufs.c                 |   44 +-
 drivers/phy/qualcomm/phy-qcom-qmp.c                |  321 +-
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   18 +
 drivers/phy/qualcomm/phy-qcom-usb-hs.c             |    2 +-
 drivers/phy/renesas/phy-rcar-gen3-usb2.c           |   97 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |    4 +-
 drivers/phy/samsung/Makefile                       |    5 +-
 .../{phy-exynos7-ufs.h =3D> phy-exynos7-ufs.c}       |    8 +-
 drivers/phy/samsung/phy-exynosautov9-ufs.c         |   67 +
 drivers/phy/samsung/phy-samsung-ufs.c              |    3 +
 drivers/phy/samsung/phy-samsung-ufs.h              |   13 +-
 drivers/phy/tegra/xusb.c                           |    4 +-
 drivers/phy/ti/phy-twl4030-usb.c                   |   15 +
 drivers/phy/xilinx/phy-zynqmp.c                    |    3 +
 29 files changed, 2676 insertions(+), 1672 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-ph=
y.txt
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-ph=
y.yaml
 rename Documentation/devicetree/bindings/phy/{intel,phy-keembay-usb.yaml =
=3D> intel,keembay-phy-usb.yaml} (93%)
 delete mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serd=
es.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serd=
es.yaml
 rename drivers/phy/samsung/{phy-exynos7-ufs.h =3D> phy-exynos7-ufs.c} (93%)
 create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c

Thanks
--=20
~Vinod

--0oUymOkPC2OoOjB7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmEkf08ACgkQfBQHDyUj
g0eh6BAAwB8ZuXAsat/AuJDgSF+ybLz4u+Bk8cDpvPHXas2P2OnPD3XYWgNYO/Ah
bG1Ri+vsiioaJ8eYkhDyla/ulG/gKx3pmRnDsCUxYuyOh8Bx5hdA9BF9U8ZyxaSd
uk2prAShCipcvv8DbZ+V1D1cNZT9jZvx2MXjtuu82HMrb3VNN89r4vGwln/XiYqy
fbM9Mf2gItG+iuX9Mkgp8D7o6tvcm/griKHCix9glINMBq2ED/A+csztj77eX2ze
6bXzb1RkPrc/7ZvQM+HBzXCnIPqMfNT73BBJ63HbG/Psa+gBWa+nYA2H27QgAiJJ
XT2FytgDF3r/xwNJRPJT420+C57yAqVHVlbQmNnMWMF8iwKQhCylshMP9U8VeH/6
+kHYUPYL6jhCYCUZZgZq7u2bRcMYJVnG1NSUU1Q9+tuIkIIYEBe2+6qvzGPbHwhl
xpiMfa+Yn9I39Ilk3TI2HihXnX90mu11PpPJReOaouUZFbk5TY+w0rzjF3u1c9rI
AznAYmXHlvAG1F3djUEJg5Wmr5C10UsxuRtYbM1old5bKnxxR6OZdNdeRIdpjsgd
ylKuNkq5hYJuuyNVRIzXLCQKButUfIiIAsC6Cy0OfuaThsyf5EVguLfMADUiRGhN
M5FIS1R8B/B4CA6YpwrJ4cHUMouSsiRgLS1pyXeuO8BtIofZjHo=
=/D9M
-----END PGP SIGNATURE-----

--0oUymOkPC2OoOjB7--


--===============7999767581714114297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7999767581714114297==--

