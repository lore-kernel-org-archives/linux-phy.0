Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3F63C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 10:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rAw/CO42utWHwRat+3QSqfoUXi65OjO4tj2XWuYuI7g=; b=VkE6OVBVTvn1uI
	cLLmGGuFhEp2SKHZXdfjyCIbmkrAXcbNP04WWWdtZYi+QjrO1EwPX/vNJTSzAI4+yKy2mMt481XWQ
	wInOaCq4RH1FUeFxF2oSlVjDmaKGtheQ2U6V/uYUuBd6KlNJXl2YwCUYFqpIGguR98yS08OrAvGLU
	kUIna7+0BkF243WcWdCH17QYOsilp0IUriJkB24g+Oq0f/E1QR7WHhafw05b56eYlc8lHgvBgT594
	CeMBAmkrD3waysqG37HgRVlGJqJ5afAcw10TR7AEgcMm7va+2Kpzc+Czeef+B4LdbFAnkmsLSboMn
	SVjrWhXZ/aamhjtG6xKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhoKK-0000000HLmS-2AzL;
	Wed, 06 Mar 2024 10:16:44 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhoKE-0000000HLl5-2TAy;
	Wed, 06 Mar 2024 10:16:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1709720198; x=1741256198;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2d1aqiY4trYNpciFb69tJAgLwRtQ9/HBxfBjgwpVSys=;
  b=Qfu7tt06jlTUDtMiaGe5PzlsSXLwUczm5HAgOQCpUMJQBqJOZaCQq8Hc
   laei/Dv+44+897ESFfeXQJf09+1MVKm119eAVYLoTeM068+/aw1rrzFp/
   viq8Q3oQHw26x9kEMqNoaJx/AhyA7jLDcqAfpjqE56iB5TZ37nO3AHQLq
   x5PEI137PwCr2Ylpp+FsBAqK19xUQqzwEdesGjsK3WEKirSitI5zNjS1X
   f8a2ZAmazIeBoH0XeDeqHTQ7tloFAqhLjlQfcoZDSbL7oq0J5otvQ6DS7
   Vhx8OHrcQ+ZdjOcKTSMtSd4OlY2sS8IbfOpDGjiaGE4A99QlopUkP9uvI
   w==;
X-IronPort-AV: E=Sophos;i="6.06,208,1705359600"; 
   d="scan'208";a="35760880"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 06 Mar 2024 11:16:36 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3490316E87F;
	Wed,  6 Mar 2024 11:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1709720191; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=2d1aqiY4trYNpciFb69tJAgLwRtQ9/HBxfBjgwpVSys=;
	b=hHUH+//Q8QA82lDO1A0sDVfoCQktA5duxpbgABcvttJYhN4UN62ko8lardewotWxeDo1nK
	vztlmWrmZMrj0rywQOTfalGZBluKl0MgsnLeADObS60xJtCA0Xp05TB7DILtGlIZTh7eL7
	9RxuwAnNjwll8dgRN2YGRyCSzisqzVpXioLahnnqDjlkUFouT1uGu9JWRZKo6MNnaCVfGq
	6E2eefWz3uw461GkYud4OdDKwETIrhah3xn0Zc+M4mTxMt9VrBTQdoQGg7ulyPalzDqiP0
	nUanac7x45Y0CVzpECw7BZBg8Z6fTkiAf7W0h+o+nQQYsG1ghGm9Mi54wYqWdg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH v15 0/8] Initial support Cadence MHDP8501(HDMI/DP) for i.MX8MQ
Date: Wed,  6 Mar 2024 11:16:17 +0100
Message-Id: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_021639_281079_A33A2743 
X-CRM114-Status: GOOD (  22.04  )
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

The patch set initial support Cadence MHDP8501(HDMI/DP) DRM bridge
driver and Cadence HDP-TX PHY(HDMI/DP) driver for Freescale i.MX8MQ.

The patch set compose of DRM bridge drivers and PHY driver.

Both of them need by patch #1 and #2 to pass build.

DRM bridges driver patches:
  #1: drm: bridge: Cadence: Creat mhdp helper driver
  #2: phy: Add HDMI configuration options
  #3: dt-bindings: display: bridge: Add Cadence MHDP8501
  #4: drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver

PHY driver patches:
  #1: drm: bridge: Cadence: Creat mhdp helper driver
  #2: phy: Add HDMI configuration options
  #5: dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
  #6: phy: freescale: Add DisplayPort/HDMI Combo-PHY driver for i.MX8MQ

i.MX8M/TQMa8Mx DT patches:
  #7: Add DT nodes for DCSS/HDMI pipeline
  #8: Enable HDMI for TQMa8Mx/MBa8Mx

Sandor: Please test this series with DP output.

Thanks and best regards,
Alexander

v14->v15:
Patch #6 + #7:
-  Merged PHY driver into a single combo PHY driver
Patch #7 + #8:
- Add DT patches for a running HDMI setup

v13->v14:
Patch #4:
- Rebase to next-20240219, replace get_edid function by edid_read
  function as commits d807ad80d811b ("drm/bridge: add ->edid_read
  hook and drm_bridge_edid_read()") and 27b8f91c08d99 ("drm/bridge:
  remove ->get_edid callback") had change the API.

v12->v13:
Patch #4:
- Explicitly include linux/platform_device.h for cdns-mhdp8501-core.c
- Fix build warning
- Order bit bpc and color_space in descending shit. 
Patch #7:
- Fix build warning

v11->v12:
Patch #1: 
- Move status initialize out of mbox_mutex.
- Reorder API functions in alphabetical.
- Add notes for malibox access functions.
- Add year 2024 to copyright.
Patch #4:
- Replace DRM_INFO with dev_info or dev_warn.
- Replace DRM_ERROR with dev_err.
- Return ret when cdns_mhdp_dpcd_read failed in function cdns_dp_aux_transferi().
- Remove unused parmeter in function cdns_dp_get_msa_misc
  and use two separate variables for color space and bpc.
- Add year 2024 to copyright.
Patch #6:
- Return error code to replace -1 for function wait_for_ack().
- Set cdns_phy->power_up = false in phy_power_down function.
- Remove "RATE_8_1 = 810000", it is not used in driver.
- Add year 2024 to copyright.
Patch #7:
- Adjust clk disable order.
- Return error code to replace -1 for function wait_for_ack().
- Use bool for variable pclk_in.
- Add year 2024 to copyright.

v10->v11:
- rewrite cdns_mhdp_set_firmware_active() in mhdp8546 core driver,
use cdns_mhdp_mailbox_send() to replace cdns_mhdp_mailbox_write()
same as the other mailbox access functions.
- use static for cdns_mhdp_mailbox_write() and cdns_mhdp_mailbox_read()
and remove them from EXPORT_SYMBOL_GPL().
- remove MODULE_ALIAS() from mhdp8501 driver.

v9->v10:
- Create mhdp helper driver to replace macro functions,
move all mhdp mailbox access functions and common functions
into the helper driver.
Patch #1:drm: bridge: Cadence: Creat mhdp helper driver
it is totaly different with v9.

v8->v9:
- Remove compatible string "cdns,mhdp8501" that had removed
  from dt-bindings file in v8.
- Add Dmitry's R-b tag to patch #2
- Add Krzysztof's R-b tag to patch #3

v7->v8:
MHDP8501 HDMI/DP:
- Correct DT node name to "display-bridge".
- Remove "cdns,mhdp8501" from mhdp8501 dt-binding doc.

HDMI/DP PHY:
- Introduced functions `wait_for_ack` and `wait_for_ack_clear` to handle
  waiting with acknowledgment bits set and cleared respectively.
- Use FIELD_PRE() to set bitfields for both HDMI and DP PHY.

v6->v7:
MHDP8501 HDMI/DP:
- Combine HDMI and DP driver into one mhdp8501 driver.
  Use the connector type to load the corresponding functions.
- Remove connector init functions.
- Add <linux/hdmi.h> in phy_hdmi.h to reuse 'enum hdmi_colorspace'.

HDMI/DP PHY:
- Lowercase hex values
- Fix parameters indent issue on some functions
- Replace 'udelay' with 'usleep_range'

v5->v6:
HDMI/DP bridge driver
- 8501 is the part number of Cadence MHDP on i.MX8MQ.
  Use MHDP8501 to name hdmi/dp drivers and files. 
- Add compatible "fsl,imx8mq-mhdp8501-dp" for i.MX8MQ DP driver
- Add compatible "fsl,imx8mq-mhdp8501-hdmi" for i.MX8MQ HDMI driver
- Combine HDMI and DP dt-bindings into one file cdns,mhdp8501.yaml
- Fix HDMI scrambling is not enable issue when driver working in 4Kp60
  mode.
- Add HDMI/DP PHY API mailbox protect.

HDMI/DP PHY driver:
- Rename DP and HDMI PHY files and move to folder phy/freescale/
- Remove properties num_lanes and link_rate from DP PHY driver.
- Combine HDMI and DP dt-bindings into one file fsl,imx8mq-dp-hdmi-phy.yaml
- Update compatible string to "fsl,imx8mq-dp-phy".
- Update compatible string to "fsl,imx8mq-hdmi-phy".

v4->v5:
- Drop "clk" suffix in clock name.
- Add output port property in the example of hdmi/dp.

v3->v4:
dt-bindings:
- Correct dt-bindings coding style and address review comments.
- Add apb_clk description.
- Add output port for HDMI/DP connector
PHY:
- Alphabetically sorted in Kconfig and Makefile for DP and HDMI PHY
- Remove unused registers define from HDMI and DP PHY drivers.
- More description in phy_hdmi.h.
- Add apb_clk to HDMI and DP phy driver.
HDMI/DP:
- Use get_unaligned_le32() to replace hardcode type conversion
  in HDMI AVI infoframe data fill function.
- Add mailbox mutex lock in HDMI/DP driver for phy functions
  to reslove race conditions between HDMI/DP and PHY drivers.
- Add apb_clk to both HDMI and DP driver.
- Rename some function names and add prefix with "cdns_hdmi/cdns_dp".
- Remove bpc 12 and 16 optional that not supported.

v2->v3:
Address comments for dt-bindings files.
- Correct dts-bindings file names 
  Rename phy-cadence-hdptx-dp.yaml to cdns,mhdp-imx8mq-dp.yaml
  Rename phy-cadence-hdptx-hdmi.yaml to cdns,mhdp-imx8mq-hdmi.yaml
- Drop redundant words and descriptions.
- Correct hdmi/dp node name.

v2 is a completely different version compared to v1.
Previous v1 can be available here [1].

v1->v2:
- Reuse Cadence mailbox access functions from mhdp8546 instead of
  rockchip DP.
- Mailbox access functions be convert to marco functions
  that will be referenced by HDP-TX PHY(HDMI/DP) driver too.
- Plain bridge instead of component driver.
- Standalone Cadence HDP-TX PHY(HDMI/DP) driver.
- Audio driver are removed from the patch set, it will be add in another
  patch set later.

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/cover.1590982881.git.Sandor.yu@nxp.com/

Alexander Stein (2):
  arm64: dts: imx8mq: Add DCSS + HDMI/DP display pipeline
  arm64: dts: imx8mq: tqma8mq-mba8mx: Enable HDMI support

Sandor Yu (6):
  drm: bridge: Cadence: Create mhdp helper driver
  phy: Add HDMI configuration options
  dt-bindings: display: bridge: Add Cadence MHDP8501
  drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
  dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
  phy: freescale: Add DisplayPort/HDMI Combo-PHY driver for i.MX8MQ

 .../display/bridge/cdns,mhdp8501.yaml         |  104 ++
 .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  |   51 +
 .../dts/freescale/imx8mq-tqma8mq-mba8mx.dts   |   20 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   68 +
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     |   11 +
 drivers/gpu/drm/bridge/cadence/Kconfig        |   20 +
 drivers/gpu/drm/bridge/cadence/Makefile       |    3 +
 .../gpu/drm/bridge/cadence/cdns-mhdp-helper.c |  304 ++++
 .../drm/bridge/cadence/cdns-mhdp8501-core.c   |  328 ++++
 .../drm/bridge/cadence/cdns-mhdp8501-core.h   |  365 +++++
 .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c |  700 ++++++++
 .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   |  680 ++++++++
 .../drm/bridge/cadence/cdns-mhdp8546-core.c   |  403 +----
 .../drm/bridge/cadence/cdns-mhdp8546-core.h   |   44 +-
 drivers/phy/freescale/Kconfig                 |   10 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c  | 1402 +++++++++++++++++
 include/drm/bridge/cdns-mhdp-helper.h         |   97 ++
 include/linux/phy/phy-hdmi.h                  |   24 +
 include/linux/phy/phy.h                       |    7 +-
 20 files changed, 4267 insertions(+), 375 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
 create mode 100644 include/drm/bridge/cdns-mhdp-helper.h
 create mode 100644 include/linux/phy/phy-hdmi.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
