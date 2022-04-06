Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B85C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CAOhA7v4UTkkFVi/LoOPBojaGhh3YZzSaZGJeAfny7A=; b=yEvaJOjBFqfw1l
	+CI3Lv4/y+oIp4ZMCZW/wEFGdozhLsyaizOEWs+Lj9BoECzcB/31iLHmpzL2KAjp+aj0SAaEvX9nY
	gU3J3sEC/v06Lr+6C+8iJ7ya5gVUcxwhH6BzsvKWtPAx4lQc9Ck+JBZBP6+hmviWYAdIElB9H/MKn
	Ii0kgbR6+35+lp4AMG0UWxnFyyhQJ43jnHspS0HuvFE14WPqz3upCAtiahk/i8QU/wN34fpuXuFp+
	S/E3XBOGDht0ncyjLiCATc2Ys+XkZhcHkBicrQbV7QRXsQfDXkdzgERcQtZcdpTIgFmiq9iby+rE3
	kB8QfGCrtFqf1wJL0Otg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc87c-0072pj-86; Wed, 06 Apr 2022 16:03:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc86I-00729c-IS
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 16:01:45 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nc861-0002Pq-9L; Wed, 06 Apr 2022 18:01:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH v0 00/10] i.MX8MP HDMI support
Date: Wed,  6 Apr 2022 18:01:13 +0200
Message-Id: <20220406160123.1272911-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_090142_674020_0F9BD93B 
X-CRM114-Status: GOOD (  13.65  )
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

this adds support for the HDMI output pipeline on the i.MX8MP.
It currently depends on the i.MX8MP HDMI power domain series [1]
and support for the new LCDIF [2] in the i.MX8MP. I guess the
implementation presented here also still has some warts that
require fixing and the individual patches most likely need to go
through different maintainer trees, so I don't expect this series
to be applied right away.

However this complete series should allow people to test it more
easily and provide feedback on the implementation with the full
picture available.

Compared to downstream this implementation actually allows to
power down the separate HDMI PHY power domain when the display
is inactive or no HDMI cable is connected.

Regards,
Lucas

[1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
[2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/

Lucas Stach (10):
  drm/bridge: dw-hdmi: add low-active PHY reset
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
 .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   72 ++
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   93 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |    7 +
 drivers/gpu/drm/imx/Kconfig                   |    1 +
 drivers/gpu/drm/imx/Makefile                  |    2 +
 drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
 drivers/gpu/drm/imx/bridge/Makefile           |    4 +
 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  209 +++
 drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  128 ++
 drivers/phy/freescale/Kconfig                 |    7 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1145 +++++++++++++++++
 include/drm/bridge/dw_hdmi.h                  |    1 +
 16 files changed, 1852 insertions(+)
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
