Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2897BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 13:14:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D48B260F90
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 13:14:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D48B260F90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+WLhM2zj17V0t1eASxKZLapt9BlNWeU8DnCUf1oDeX4=; b=KiK
	N/Ih/+ArSeeT414EfzHQHGwhiT3LZ4bWYDdqtOyol3TLmWdbrSHRv3sE4s0CW4ZYuRi6OcyKf1P1i
	vcArfMMnkqZ71917q4AXXz1+ZkywjDE3LprT1e4toGae8nOmPxOAd/kB8f+0tiupoWdRTBaWl3aQp
	6MLsUKz0R2+BxCzEO1kjrYuIGhs0RLMdqyZuFwfDuFYFDIiQrH8/CK9/juuGXDBL/MXcSew7OrI7R
	fviaRENVHy02MVlTIn702AmDQW0T9tMwSafdHxhOR26sPuQ07lqodEcvibjFFxPC4/kkHeJ8SWi4A
	kunr8O0gH44Jlq6f8P35fPS41M7Vhqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfil1-004x99-CY; Wed, 27 Oct 2021 13:14:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfiky-004x8W-OO
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 13:14:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C2DE60F6F;
 Wed, 27 Oct 2021 13:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635340455;
 bh=VDD8FLVfY18WbBh+VJL9HD3TvckkYbKngdFnCpu1uCo=;
 h=Date:From:To:Cc:Subject:From;
 b=jsOi7vF6A3IwgHnN0OQHwaQ+MHYrx54MH3l9d/VJJRP4jjKvhQzX7KyM77TFnFUZH
 y+SUZSt+7xLeUQb8zx2z4nPHAxyba1f8AX4bFlxSihi+X2KcHc7xndQiNx1Hl738Xq
 UlhccY/Nrip5JsMk4T+po1YucTaYgvr+cNucGAH6L7BTSjkFKZb8d1eCUluJVPpC3y
 VwnMDoC1qxxjKAWNfkF6HYuvAGmARNaPMiDid0jBMDnceiE73hS0li7f0ue3e2hHTn
 a8kHCR3uqPq8b6j5qI4N63DP/sntRBoWluBeP+sPrq6zafSNEZAImYuYsKk8NLF9CK
 WwldHMPD5aHjg==
Date: Wed, 27 Oct 2021 18:44:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: [GIT PULL]: Generic phy updates for v5.16
Message-ID: <YXlQowNL5biZTq59@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_061416_880195_0C3FD9BB 
X-CRM114-Status: GOOD (  14.89  )
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
Content-Type: multipart/mixed; boundary="===============4944318316942366408=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4944318316942366408==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qtuXF2oq+PZ6Y3Sw"
Content-Disposition: inline


--qtuXF2oq+PZ6Y3Sw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to receive Generic Phy updates for v5.16. This includes
couple of new driver, new device support and updates to bunch of the
drivers. The changes are already in linux-next.

The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:

  Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next

for you to fetch changes up to b4dc97ab0a629eda8bda20d96ef47dac08a505d9:

  phy: Sparx5 Eth SerDes: Fix return value check in sparx5_serdes_probe() (=
2021-10-26 16:36:23 +0530)

----------------------------------------------------------------
Amelie Delaunay (3):
      phy: stm32: restore utmi switch on resume
      dt-bindings: phy: phy-stm32-usbphyc: add optional phy tuning properti=
es
      phy: stm32: add phy tuning support

Cai Huoqing (3):
      phy: broadcom: Kconfig: Add configuration menu for Broadcom phy drive=
rs
      phy: qcom-qmp: Make use of the helper function devm_add_action_or_res=
et()
      phy: rockchip-inno-usb2: Make use of the helper function devm_add_act=
ion_or_reset()

Dan Carpenter (1):
      phy: ti: gmii-sel: check of_get_address() for failure

Dmitry Baryshkov (1):
      phy: qcom-qmp: another fix for the sc8180x PCIe definition

Johan Jonker (1):
      dt-bindings: phy: rockchip: remove usb-phy fallback string for rk3066=
a/rk3188

Krzysztof Kozlowski (1):
      phy: samsung: unify naming and describe driver in KConfig

Mauro Carvalho Chehab (1):
      phy: HiSilicon: Add driver for Kirin 970 PCIe PHY

Rafa=C5=82 Mi=C5=82ecki (1):
      dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY block

Sandeep Maheswaram (1):
      phy: qcom-snps: Correct the FSEL_MASK

Shawn Guo (8):
      dt-bindings: phy: qcom,qmp: Update maintainer email
      dt-bindings: phy: qcom,qusb2: Add compatible for QCM2290
      phy: qcom-qusb2: Add compatible for QCM2290
      dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
      phy: qcom-qusb2: Add missing vdd supply
      dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
      phy: qcom-qmp: Add QCM2290 USB3 PHY support
      dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074 PCIe PHY require no s=
upply

Swapnil Jakhade (4):
      phy: cadence-torrent: Migrate to clk_hw based registration and OF APIs
      dt-bindings: phy: cadence-torrent: Add clock IDs for derived and rece=
ived refclk
      phy: cadence-torrent: Model reference clock driver as a clock to enab=
le derived refclk
      phy: cadence-torrent: Add support to output received reference clock

Vladimir Zapolskiy (1):
      phy: qcom-qusb2: Fix a memory leak on probe

Wan Jiabing (1):
      phy: hisilicon: Add of_node_put() in phy-hisi-inno-usb2

Yang Yingliang (1):
      phy: Sparx5 Eth SerDes: Fix return value check in sparx5_serdes_probe=
()

 .../devicetree/bindings/phy/bcm-ns-usb2-phy.yaml   |  25 +-
 .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 129 ++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |  84 +-
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   7 +
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  |  11 +-
 drivers/phy/broadcom/Kconfig                       |   4 +
 drivers/phy/cadence/phy-cadence-torrent.c          | 316 +++++++-
 drivers/phy/hisilicon/Kconfig                      |  10 +
 drivers/phy/hisilicon/Makefile                     |   1 +
 drivers/phy/hisilicon/phy-hi3670-pcie.c            | 845 +++++++++++++++++=
++++
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c         |  10 +-
 drivers/phy/microchip/sparx5_serdes.c              |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 157 +++-
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |  21 +-
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      |   2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |  11 +-
 drivers/phy/samsung/Kconfig                        |  16 +-
 drivers/phy/st/phy-stm32-usbphyc.c                 | 203 +++++
 drivers/phy/ti/phy-gmii-sel.c                      |   2 +
 include/dt-bindings/phy/phy-cadence.h              |   2 +
 21 files changed, 1752 insertions(+), 110 deletions(-)
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

Thanks
--=20
~Vinod

--qtuXF2oq+PZ6Y3Sw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmF5UKMACgkQfBQHDyUj
g0cQXBAAwKewz91aInkQNIAIbs9UauRiy2ebBvQMTSsGwJhPxj6dsY83pn0s/Bbc
SOXFLD5ec23Bt8GSWTpy8jbx8e4h9Arti21Don+MwTVom9WdIRY6oM6JdLKerMwX
BYadsS30FE9DNh5UEeeeciV+TvJuptxsmcRDii0m983egvpqzBO5aQZD51xb+0ql
tlJIAJ4PRoOdR1lzrqdp81WDwtLyeAJuJUdHdwJcwJ6/Nf/lu1GnNnZi7zabhVDb
7wEPOOGX05P0qCbfiAWs4TQ/N2jTmUJqzmnAUrmyrWg2ClPkNVtw+zEw44koiaRf
QUm7fkx+7CUmCorpsSCvmlDBkDLznp3fGZ6EDu/ehviuhiYWGjXe7bed0rpw5HEz
P5tue5gL2G2PpoAt8ge4SfcufUL1Ldt8yg2Sn+8nLd5GjlGqsHm5Xd008X1gorRD
IJEknbTUAOi+vhqupFuOKti0FvszpgO7MtBtVHvkhFYpoiOxwTMooZBt5P+kIYm6
D6emQxEM95GoP/rrCoWOdasaTCkzinyPrkktqoLQ/nf5k+KJcBEcqD4DH/R3HbvK
gKtnOASeAk7SHnF+w0TRs0xYuLrVQCnEHTKT5TmEV1HcBboFlOmoRAieC64ZQJmw
syCe/X7FkfI+rGVBhizAgVGA+sIrqbffHlXXpT+0acmYxqsTo4E=
=84/I
-----END PGP SIGNATURE-----

--qtuXF2oq+PZ6Y3Sw--


--===============4944318316942366408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4944318316942366408==--

