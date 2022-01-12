Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FDCC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 19:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BrxBA1/TUpmWALiwpOuCr3KN2Z5vsYvo4zm3Zxo8OU0=; b=d1bME/+eN2Mdd3
	XBZ2WXM644J8w1RrvfnccA9pBc7ftoCZT/rGurscIphEB4hyj0IaHDc8kApzxMSp8dOsvWPFS7wvN
	KM1JMIeIov5GasWvAk/XzQIBQQtZ7UdS7fvaPLwQ0pDJnqZEWvPuIZbBPNW9j1zTNXSEK9XR5GVkE
	kseST9VzeAlrufAq0QYKjzpQsVV+ze5JE2NyKWvWL7bsXkU4d5Nw0zdvYi940i+6p6Hk6440ZLm60
	6iUTorR7rX5fNA1X/xF0XILqoSnE6ks9eicDfiNlGBAhgQQmPa1h9bSB4O2kq6qkas0SI6cSYKsj/
	6b5a7N9XmSfL1tWvcvRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7jdk-003eRh-OG; Wed, 12 Jan 2022 19:50:36 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7jdh-003eQK-6l
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 19:50:34 +0000
Received: from localhost.localdomain (ip-213-127-106-2.ip.prioritytelecom.net
 [213.127.106.2])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 99ECDCDF9F;
 Wed, 12 Jan 2022 19:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1642016544; bh=0kWYHyQ+FdQZVfHCIbfLblrDXNannTFucaCQYt2r6LQ=;
 h=From:To:Cc:Subject:Date;
 b=miax10sWCxLcvuPulMRI9I8OxkGClnhZ7on8fnVVyuxu3eLoIzlmYgDUW+CcsPSnK
 Cz95AHMYXfk4vBg0yIPTahxcsi7xikZlNOJK59DxWJKpylDH8bAjfHzKVFpB2OfNoy
 ookhq+C83s4UtZgJGkb6zXdZKvG7GFw/47b1tpAI=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Amit Kucheria <amitk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Zhang Rui <rui.zhang@intel.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH 00/15] Initial MSM8953 & Fairphone 3 support
Date: Wed, 12 Jan 2022 20:40:49 +0100
Message-Id: <20220112194118.178026-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_115033_423234_3A4C5CD6 
X-CRM114-Status: GOOD (  10.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series adds initial support for MSM8953 (and SDM632 which is based
on MSM8953) and the Fairphone 3 smartphone.

Only relatively basic functionality is supported like storage, volume
keys and USB.

There is currently close-to-mainline support for other components for
this SoC including GPU, WiFi and audio, this series adds only basic
support so that the other components can start getting upstreamed
easier.

Luca Weiss (10):
  dt-bindings: phy: qcom,qusb2: Document msm8953 compatible
  phy: qcom-qusb2: Add compatible for MSM8953
  dt-bindings: mfd: qcom,tcsr: Document msm8953 compatible
  mfd: qcom-spmi-pmic: Add pm8953 compatible
  dt-bindings: mmc: sdhci-msm: Add msm8953 compatible
  dt-bindings: thermal: tsens: Add msm8953 compatible
  dt-bindings: usb: qcom,dwc3: Add msm8953 compatible
  dt-bindings: pinctrl: qcom: msm8953: allow gpio-reserved-ranges
  dt-bindings: arm: qcom: Document sdm632 and fairphone,fp3 board
  arm64: dts: qcom: sdm632: Add device tree for Fairphone 3

Vladimir Lypak (5):
  rpmsg: smd: Drop unnecessary condition for channel creation
  arm64: dts: qcom: Add MSM8953 device tree
  arm64: dts: qcom: Add PM8953 PMIC
  arm64: dts: qcom: Add SDM632 device tree
  arm64: dts: qcom: Add MSM8953+PM8953 device tree

 .../devicetree/bindings/arm/qcom.yaml         |    6 +
 .../bindings/mfd/qcom,spmi-pmic.txt           |    1 +
 .../devicetree/bindings/mfd/qcom,tcsr.txt     |    1 +
 .../devicetree/bindings/mmc/sdhci-msm.txt     |    1 +
 .../bindings/phy/qcom,qusb2-phy.yaml          |    1 +
 .../pinctrl/qcom,msm8953-pinctrl.yaml         |    2 +
 .../bindings/thermal/qcom-tsens.yaml          |    1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |    1 +
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 arch/arm64/boot/dts/qcom/msm8953-pm8953.dtsi  |   50 +
 arch/arm64/boot/dts/qcom/msm8953.dtsi         | 1337 +++++++++++++++++
 arch/arm64/boot/dts/qcom/pm8953.dtsi          |   90 ++
 .../boot/dts/qcom/sdm632-fairphone-fp3.dts    |  189 +++
 arch/arm64/boot/dts/qcom/sdm632.dtsi          |  125 ++
 drivers/phy/qualcomm/phy-qcom-qusb2.c         |    3 +
 drivers/rpmsg/qcom_smd.c                      |    8 +-
 16 files changed, 1810 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8953-pm8953.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/msm8953.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8953.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm632.dtsi

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
