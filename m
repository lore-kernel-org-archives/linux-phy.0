Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79D7CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 14:59:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39B9360F21
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 14:59:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 39B9360F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h4bN3Nlkpz0GMumGGAQsWvkGPDHH8y30q2Z0o7Hosuo=; b=enkuqVjeQKGNn3UMZoUhXgaqF9
	2zn+wFYLC1bn6aW37AWWl6q1TGkZRN34EAPT2+NZZdPY1sM1AxW+mjXAA4g1DcTlMzCtLk84Tlvm/
	DSbzm1mf2Qf8pRagSTqMmxgNHIKtjxFAghLLuPSnSLWroqZt5bO4tzyWpOPanR84WTpWXX/4Z44gW
	Hhd6ceqoIMeIu7BHUZSGlPYfNAs9OH4onktCcWlgQBy7iOJTVMwK1R+Qfco8cYhya8TsZzz4W1mHj
	xLVkotTI1tTb1CaJSXbID0jyRKGkP20WaFhfpqu0pAVyoagBfuy4wQZhQ/5POAOMT7fBNOnn/6X9A
	P843r1aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfkOr-005Dzw-Oy; Wed, 27 Oct 2021 14:59:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfkOo-005DzF-DE
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 14:59:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CC0360E73;
 Wed, 27 Oct 2021 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635346770;
 bh=5qUI0WntwgBdoEVLtAMFrPDPSu386we+MyyhdCwZ/tc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GoPStOdhkyiIHXVIxwyzzHYLdg4ZVKCznWJTRmG3eosKhrK8HtF1ougFxQGDrN5J/
 qJRpiksnY0Tgf+bmEM075qo2M/0359JHEGJVSfiRTIdtApEpM8NwfFFyf0WZx6UZeY
 Bgm/fhk0FLtu582SfRhOjyX3lzrgohVGwRsE5WK+EH5EWfSKkN6SauLKCuvitfjQvl
 6oMUB4dSUThWfDXt6m3+cpAZ7uzvGvdDq8ir9TQstLjthVFqjcPy1/GLc18Ah3BBJ1
 6PNx+cEW3mf/gK29YRJTrA1saXZ2+a97F+YfaUKR3MUx00DeWeC/LGn8FZlVm7QG0l
 0X55rnthzheyg==
Date: Wed, 27 Oct 2021 20:29:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.16
Message-ID: <YXlpTSs+dBIn1voD@matsya>
References: <YXlQowNL5biZTq59@matsya>
 <YXlnfQn0uFqwdHzD@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YXlnfQn0uFqwdHzD@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_075930_514141_213ABFCB 
X-CRM114-Status: GOOD (  23.58  )
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
Content-Type: multipart/mixed; boundary="===============4983898654688305250=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4983898654688305250==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y8PTBYRcbmlH95cB"
Content-Disposition: inline


--Y8PTBYRcbmlH95cB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 27-10-21, 16:51, Greg KH wrote:
> On Wed, Oct 27, 2021 at 06:44:11PM +0530, Vinod Koul wrote:
> > Hello Greg,
> >=20
> > Please pull to receive Generic Phy updates for v5.16. This includes
> > couple of new driver, new device support and updates to bunch of the
> > drivers. The changes are already in linux-next.
> >=20
> > The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6=
dd8f:
> >=20
> >   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> >=20
> > are available in the Git repository at:
> >=20
> >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next
>=20
> That is a branch, not a signed tag with information as to what is in the
> pull request :(

Sorry the tag was pushed and somehow my script ended up taking the
branch :(, not sure how that ended up...

Here are the detailed with the signed tag which was pushed earlier:

The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:

  Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.16

for you to fetch changes up to b4dc97ab0a629eda8bda20d96ef47dac08a505d9:

  phy: Sparx5 Eth SerDes: Fix return value check in sparx5_serdes_probe() (=
2021-10-26 16:36:23 +0530)

----------------------------------------------------------------
phy-for-5.16

  - New support:
	- Kirin 970 PCIe PHY driver
	- Qualcomm QCM2290 USB2 and USB3 support

  - Updates:
        - Qualcomm synopsis phy driver updates
	- sc8180x PCIe update
	- cadence-torrent driver updates for output reference clock
	- stm32 phy tuning support

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
--=20
~Vinod

--Y8PTBYRcbmlH95cB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmF5aU0ACgkQfBQHDyUj
g0fS7A//ablNhgb77oqwI1DErmUyD0V3u+gNDQJ4Cov4jNXHv3yLNZ9382sa9QVN
weKKa+Vc0Zu2efqDQKzT0PTi49ilNqJuqxymz9AjtMo6re0QVnz5jUwip+QlQy++
b4I99eyrHEpVZQV2roL1oJ5AjY5tPFBzubLiZnJk1Fpd7GpmM0yjhleG5Wn2CwAo
eXjzUBoU2DKGTbR98BoCxSfDptFCT1f5tan63ipZ/uKIk9jd3UrNWCNinrO+6Bxm
IOYjufTAoagGPm1KzngwJNdZvwzf3sA+LZWnZT+kSi2D7WZqHd5vwmDWu04HSiHQ
gSUy7ha3ReVyCN56ba7Kdpln+pGunRfN83ZSO/xji7RieC8TILTxOaNAInyPsfpb
iqbRDlv3pN/wuecpRG4bQcJUAXb0s9EEtmyXrNbGWWAjxMgJG7IZCMRT14KzkrTu
xtAFoc4SpGpkFnc0zGJQPI/EsLihmh4l2//IqPUpnla2ZV3HslpjPM1matizKyaC
LVh1PcQ9rd77I9B7QkZmLQ9dLPfQvJF458hRinQ9ORQRRHNM8KOqMIbE+yQNNbdQ
YfrEXWGmhIfnNI7RY0e9j0Sg7Hzd3IAGyTqvPqAY2unhnkzrEKQJQhu+gvTfB+XB
7NdijUZ8tydsIwv+NdF7s1XqjyRaU3/sVcaOv89uH41hs/W41q4=
=yfze
-----END PGP SIGNATURE-----

--Y8PTBYRcbmlH95cB--


--===============4983898654688305250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4983898654688305250==--

