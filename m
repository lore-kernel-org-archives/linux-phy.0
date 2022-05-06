Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 656ADC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  6 May 2022 18:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iSOaCUwR3xyC9L2QvELmnj8aM+vjAhin0A5TYSd97J4=; b=XLqMlbOcaSiu63
	GhHEWDpAmNMy5Bf75fjG5d4YlivrVhhuJAPEBvYh+SpSLix2Ckih6Ty4BNROOHSngqzbJTDmYjJ6N
	XYWp1p9XVGbPOeR1mBhxWRvmKqKwCrOVTcLDiai6/eD08pmBaFuaw3snTd215nD53GfLWpHSgNFKy
	hjATxzagOfYdvX2xLKFoQE2kLwpMM4HFpS+UCnAzWf1mzZI47j3iYHM1Zg8QtmTMPsVPpih7lObVu
	NFToI4G3ynaRNAGeVZfn2vbBlTgqLCmP30NJkWF7YuKbBiB6IgHx6qVW5rof/X80bqjSAat4PPTk4
	yaSio2GbDUap9hq49vEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nn2RO-004cp8-QV; Fri, 06 May 2022 18:12:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nn2Pj-004bxy-TQ
 for linux-phy@lists.infradead.org; Fri, 06 May 2022 18:10:54 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nn2PU-0005VY-2Y; Fri, 06 May 2022 20:10:36 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Cc: Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
 Sandor Yu <Sandor.yu@nxp.com>, linux-phy@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH v0.5 0/9] i.MX8MP HDMI support
Date: Fri,  6 May 2022 20:10:25 +0200
Message-Id: <20220506181034.2001548-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_111051_985467_CE9EDF5F 
X-CRM114-Status: GOOD (  12.58  )
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

Hi all,

second round of the i.MX8MP HDMI work. Still not split up into proper
parts for merging through the various trees this needs to go into, but
should make it easy for people to test.

I've worked in the feedback I got from the last round, including fixing
the system hang that could happen when the drivers were built as modules.

Series is based on linux-next/master, as there are some prerequisite
patches in both the drm and imx tree already. The last patch from [1]
and the patches from [2] need to be applied. Please note that this series
expects the sync polarity from the LCDIF to be set according to the
comments I made in [2]. Please test and provide feedback.

Regards,
Lucas

[1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
[2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/

Lucas Stach (9):
  dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
  drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
  dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
  drm/imx: add driver for HDMI TX Parallel Video Interface
  dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
  phy: freescale: add Samsung HDMI PHY
  arm64: dts: imx8mp: add HDMI irqsteer
  arm64: dts: imx8mp: add HDMI display pipeline
  arm64: dts: imx8mp-evk: enable HDMI

 .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
 .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   73 ++
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   94 ++
 drivers/gpu/drm/imx/Kconfig                   |    1 +
 drivers/gpu/drm/imx/Makefile                  |    2 +
 drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
 drivers/gpu/drm/imx/bridge/Makefile           |    4 +
 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  201 +++
 drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  141 +++
 drivers/phy/freescale/Kconfig                 |    6 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1078 +++++++++++++++++
 14 files changed, 1783 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
 create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
 create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
 create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
 create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
 create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
