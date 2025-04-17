Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6192CC369C9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Apr 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YIwZfHxS/q5RyAvkYR+R4KR2RjiAOj5ICG9AENV0YxM=; b=moZsBNySTDUMkk
	RZnmKt75BQguXP5ZpyRFVqEx/7xLx6QLe/m29dgnPlRegzrYEZTFH+pqWOdnLSAYZae+/h/PKr0Lr
	m+qWCBW2XfoP2E5JP1EPaWbMDYR5GqsAf5BnpU2cK7oAZLVP9i9bdprnIDNXOzfCTOlgcUqxvnSSi
	dkuaHwQ1JLZp12gtH4v3fCXo2haX7+GoFV1p9gPur6y3XEej0sBNrS1AWGAu9DvF7bCrHRcVEkB58
	Y6obcn+RmiBlJmWkXcvGBhHKmmpkMSjWzyKOw1fwudaEaS9ZBreGPpHWwcg2nPFMPq1woDH+zJTp3
	gG3IZ3jERFhSSdUv1OWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Ooc-0000000D3ok-0WF4;
	Thu, 17 Apr 2025 12:58:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Ofd-0000000D2eJ-0gz7
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Apr 2025 12:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=pP7DOnM04VzxE8pydQGJO4WM1A4+wVf2V6VujHGxJMA=; b=dDdZEQd1WQP5Ub/RZfUJ0kuln5
	bycW3q73ug2cl0BfVOxSan2R7IXExg66ILqyDo3qKKGDcEzrGymUu79eG/d0YdIICVTJYMeLm8AAc
	xZB1NoyyUUz8Yz5LDQPj+h3SlqyXHDyu7herFZginvEl+vVV6HompnJN8ATmbmw3Q0aga0qixphAc
	PgRUmtGMq+hjz63Io92YH+P9Q5q2ueZAbnLsSSLvBMzdQFQrJL+fJdumoyV9SgeWW2BbAB7OTKutp
	Ha/eBjtdDHfpyablj6duSz+Zbxc0iE82MkDO/5flT0US5KPtjA4eOc7lJv9fwGefS6P5gpGyBScuz
	o4b6iRYw==;
Received: from mout.gmx.net ([212.227.15.19])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5OfX-0000000AHRp-3hQP
	for linux-phy@lists.infradead.org;
	Thu, 17 Apr 2025 12:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744894097; x=1745498897;
	i=markus.stockhausen@gmx.de;
	bh=pP7DOnM04VzxE8pydQGJO4WM1A4+wVf2V6VujHGxJMA=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=kE8TGIeR8Lb6KDQPssPiiDmgVhDu+hZcobiJGaVanABKVb4c94eJESlkbulhy6ec
	 tFg2HFIB1z/V43fz8l1Ub9D7tF9aFl8jsClLqgUo5ycFFEjaC84Z6oF2GFlN7imOu
	 cHOMosJV5gJYBm46o37+RqiacEW3tVbClbc8pvN3+mBKVqScmisXyt3Z1rBVhXLr8
	 7Qm/u6ZmchLoknwmFVdSRY1X+CUIG2FX53ovuMnlozgZRP/5y2WIoahRIS5qhKxyF
	 LTzbhA/qxMPYOGQ+oVFVYFBmOKJQNO4YL9m2BzdaAoOEjsD0oFkEtPReU8WXQKX1Z
	 dJVSxTXawd+Pk7hWgg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MUXtS-1uVgzR1euu-00OOmL; Thu, 17
 Apr 2025 14:48:17 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: markus.stockhausen@gmx.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Subject: [PATCH v6 2/2] phy: Realtek Otto SerDes driver
Date: Thu, 17 Apr 2025 08:48:13 -0400
Message-ID: <20250417124813.2406007-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:IHxA7YqltBRTVBm6sBUHVv6EoDsoas9A0A7U60oaNyQN6yXGikv
 PSXvXAjN+9/kIReapFYtpX3dvuxvFZ19lUjiWDFvAsREDaJ3D8huM+2GnCj1l7c/TXgaWGM
 NL3EO2TrU4E7/hk0+prXTqW7yHMICFr9NK/0ClPsnz9OjQXwpvTKcnz4U/IMDk3/vES2Fmq
 L38tpnKlMyhHVIqIbfurQ==
UI-OutboundReport: notjunk:1;M01:P0:YoKsBTPpKH4=;mfwW+MlOhU4QMuo+bDmghxEUxGb
 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_134840_287663_5712CD34 
X-CRM114-Status: GOOD (  28.96  )
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

The Realtek Otto platform is a series of 4 different MIPS32 based network
switch SoCs. They consist of:

 - RTL838x: 500MHz single core, up to 28 ports 20GBps switching capacity
 - RTL839x: 700MHz single core, up to 52 ports 100GBps switching capacity
 - RTL930x: 700MHz single core, up to 28 ports 120GBps switching capacity
 - RTL931x: 1.0GHz dual core, up to 52 ports 170GBps switching capacity

The SoCs have 6-14 SerDes that provide the interconnect between several
one, quad or octa port attached transceivers like the RTL8214FC.

This driver builts on top of several GPL source drops from different switch
vendors and harmonizes the different programming models. The common basics
are:

 - A SerDes is controlled through registers that are organized into pages
 - A page consists of 32x 16 bit registers that cover various functions
 - Registers are either accessed through I/O addresses or an MDIO style bus
 - The SerDes operate on different MII variants (mostly QSGMII & XGMII)

While some of the pages have meaningful names the registers within a page
cannot be identified. Use 2 digit hex notation for a consistent register
access in the code and debug interface.

The SerDes rely on heavy register modifications with lots of undocumented
features. This is even hardware specific (board, transceivers, ...) and
developers may not have access to all devices. Provide a debug interface
that allows to access the most important internals. With that patching
sequences can be developed that can be fed back as firmware files into
the driver. A generator for the firmware files is hosted on
https://github.com/plappermaul/realtek-firmware

Examples of other drivers with similar reset/register interfaces are:

 - gpu/drm/msm/adreno/a5xx_debugfs.c
 - gpu/drm/i915/i915_debugfs_params.c
 - gpu/drm/armada/armada_debugfs.c

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---

Changes in v6:

REMARK FOR REVIEW! Vinod requested to make use of FIELD helpers. Chris
requested to make use of regmap. This has been implemented throughout
the whole driver to the best possible extent. So a lot of coding has
changed. Additionally there was a misunderstanding about the Realtek
proprietary high speed SGMII and that it is different from normal
2500base-x. Mode handling was adapted.

 - make use of FIELD, GENMASK and regmap where possible
 - use MASK, REG, BPOS in defines always at the end for readability
 - Split & document SGMII/HSGMII mode handling
 - use sequence lengths instead of sequence end markers in firmware
 - Add firmware sequence pointer checks to avoid possible endless loops
 - Sort Kconfig and Makefile alphabetically
 - Sort function variables in reverse length
 - Add better explanation to magic values in rtsds_83xx_cmu_reset()
 - Relocate debugfs entries into driver specific subfolder
 - Replace -1 error codes with meaningful values

Changes in v5:

 - fix typos and punctuation in comments

Changes in v4:

 - drop hardcoded firmware name fallback
 - drop fwname from ctrl & conf structures as it is no longer used
 - fix kernel test robot warning about dev_info & size_t

Changes in v3:

REMARK FOR REVIEW! Because of helpful feedback and the problems that can
arise from different hardware designs and device configurations this patch
version was overhauled in several places. From now on patches can be
applied that are loaded from firmware files. For this a lot of locations
have been hardened to ensure that hardware is instructed the right way.
This allows for easier adaption and bug analysis when moving forward with
this driver in the future. So some changes might differ from the feedback
for v2.

 - designed/explained meaningful firmware format
 - converted patch sequences to be firmware loadable
 - determine/print chip version to verify DT compatibility
 - consolidated/simplified reset code paths
 - verify input in debug interface
 - added page names in code where known & possible
 - add multiple helpers for cleaner code
 - add possibility to modify registers from debug interface
 - fixed kernel buildbot warnings
 - changed comments to imperative style
 - recipient list according to get_maintainers

Changes in v2:

 - switched logic to internal patch sequences
 - added setup sequences for RTL838x and RTL839x
 - moved includes from header to source file
 - added helpers for better readability
---
 drivers/phy/realtek/Kconfig               |   14 +
 drivers/phy/realtek/Makefile              |    1 +
 drivers/phy/realtek/phy-rtk-otto-serdes.c | 1577 +++++++++++++++++++++
 drivers/phy/realtek/phy-rtk-otto-serdes.h |  219 +++
 4 files changed, 1811 insertions(+)
 create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.c
 create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.h

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..fc38d258ccb5 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,6 +3,20 @@
 # Phy drivers for Realtek platforms
 #
 
+if MACH_REALTEK_RTL || COMPILE_TEST
+
+config PHY_RTK_OTTO_SERDES
+	tristate "Realtek Otto Platform SerDes driver"
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support Realtek SerDes in the RTL83xx and
+	  RTL93xx network SoCs. These are based on MIPS32 architecture
+	  and the SerDes connect to one to octa transceivers to build
+	  up switches with up to 52 ports.
+
+endif # MACH_REALTEK_RTL || COMPILE_TEST
+
 if ARCH_REALTEK || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
index ed7b47ff8a26..ebd642c84427 100644
--- a/drivers/phy/realtek/Makefile
+++ b/drivers/phy/realtek/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PHY_RTK_OTTO_SERDES)       += phy-rtk-otto-serdes.o
 obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
 obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.c b/drivers/phy/realtek/phy-rtk-otto-serdes.c
new file mode 100644
index 000000000000..ed5faea98be0
--- /dev/null
+++ b/drivers/phy/realtek/phy-rtk-otto-serdes.c
@@ -0,0 +1,1577 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2025 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#include <linux/crc32.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/firmware.h>
+#include <linux/module.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include "phy-rtk-otto-serdes.h"
+
+/* common helpers */
+
+static inline const char *rtsds_phy_modes(phy_interface_t interface)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_NA:
+		return "off";
+	case RTSDS_REALTEK_MODE_HSGMII:
+		return "realtek-hsgmii"; /* See rtsds_phy_set_mode() */
+	default:
+		return phy_modes(interface);
+	}
+}
+
+static inline int rtsds_write_bits_pos(struct regmap *map, unsigned int reg,
+				       unsigned int bitpos, unsigned int mask, unsigned int val)
+{
+	return regmap_write_bits(map, reg, mask << bitpos, val << bitpos);
+}
+
+static inline int rtsds_read_bits_pos(struct regmap *map, unsigned int reg,
+				      unsigned int bitpos, unsigned int mask, unsigned int *val)
+{
+	int ret = regmap_read(map, reg, val);
+
+	*val = (*val >> bitpos) & mask;
+
+	return ret;
+}
+
+static inline bool rtsds_invalid_reg(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	return (sid >= ctrl->cfg->sds_cnt || page >= ctrl->cfg->page_cnt || reg > 31);
+}
+
+static inline bool rtsds_invalid_sds(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	return (sid >= ctrl->cfg->sds_cnt);
+}
+
+static inline bool rtsds_invalid_mask(u32 mask, u32 val)
+{
+	return (val & mask) != val;
+}
+
+static int rtsds_hwmode_to_phymode(struct rtsds_ctrl *ctrl, int hwmode)
+{
+	for (int m = 0; m < PHY_INTERFACE_MODE_MAX; m++)
+		if (ctrl->cfg->mode_map[m] == hwmode)
+			return m;
+
+	return PHY_INTERFACE_MODE_MAX;
+}
+
+static void rtsds_check_and_fix_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode;
+
+	mutex_lock(&ctrl->lock);
+	mode = rtsds_hwmode_to_phymode(ctrl, ctrl->cfg->get_hwmode(ctrl, sid));
+	if (unlikely(ctrl->sds[sid].mode != mode)) {
+		/* Ouch, this should not occur. Nevertheless sync to keep driver operational. */
+		dev_err(ctrl->dev, "driver mode %s out of sync with hardware mode %s, fixing\n",
+			rtsds_phy_modes(ctrl->sds[sid].mode), rtsds_phy_modes(mode));
+		ctrl->sds[sid].mode = mode;
+	}
+	mutex_unlock(&ctrl->lock);
+}
+
+static void rtsds_get_chip(struct rtsds_ctrl *ctrl)
+{
+	u32 val, act, reg;
+
+	if (ctrl->cfg->family == RTSDS_838X_CFG_FAMILY) {
+		reg = RTSDS_838X_MODEL_NAME_INFO_REG;
+		act = RTSDS_83XX_SDS_CHIP_INFO_EN;
+	} else if (ctrl->cfg->family == RTSDS_839X_CFG_FAMILY) {
+		reg = RTSDS_839X_MODEL_NAME_INFO_REG;
+		act = RTSDS_83XX_SDS_CHIP_INFO_EN;
+	} else {
+		reg = RTSDS_93XX_REG_MODEL_NAME_INFO;
+		act = RTSDS_93XX_SDS_CHIP_INFO_EN;
+	}
+
+	regmap_read(ctrl->regmap, reg, &val);
+	ctrl->soc.model_id = FIELD_GET(RTSDS_MODEL_ID_MASK, val);
+	ctrl->soc.model_version = FIELD_GET(RTSDS_MODEL_VERSION_MASK, val);
+
+	regmap_write(ctrl->regmap, reg + 4, act);
+	regmap_read(ctrl->regmap, reg + 4, &val);
+	ctrl->soc.chip_id = FIELD_GET(RTSDS_CHIP_ID_MASK, val);
+
+	if (ctrl->cfg->family == RTSDS_838X_CFG_FAMILY ||
+	    ctrl->cfg->family == RTSDS_839X_CFG_FAMILY)
+		ctrl->soc.chip_version = FIELD_GET(RTSDS_83XX_SDS_CHIP_RL_ID_MASK, val);
+	else
+		ctrl->soc.chip_version = FIELD_GET(RTSDS_93XX_SDS_CHIP_RL_ID_MASK, val);
+
+	snprintf(ctrl->soc.model_name, sizeof(ctrl->soc.model_name),
+		 "RTL%04X%c", ctrl->soc.model_id,
+		 ctrl->soc.model_version ? ctrl->soc.model_version + 64 : 0);
+
+	snprintf(ctrl->soc.chip_name, sizeof(ctrl->soc.chip_name),
+		 "%04X%c", ctrl->soc.chip_id,
+		 ctrl->soc.chip_version ? ctrl->soc.chip_version + 64 : 0);
+}
+
+/*
+ * A Realtek Otto SerDes is configured/patched by writing specific values into its registers.
+ * These values are bound to the individual hardware and the transceivers that are connected to
+ * it. Depending on the model, some of this might be integrated into the bootloader. To fully
+ * support different configurations allow the driver to load firmware files and run patch
+ * sequences.
+ *
+ * A firmware file contains a head, a directory and at the end the raw patch data. See
+ * structure rtsds_fw_head, rtsds_fw_dir an rtsds_fw_seq for more details.
+ *
+ * header
+ *	(u32) magic = 0x83009300, see RTSDS_FW_MAGIC
+ *	(u32) CRC checksum of the following data
+ *	(u32) filesize
+ *	(u32) directory size = number of sequences
+ *
+ * directory with one or more blocks consisting of
+ *	(u32) id of the sequence. See RTSDS_FW_EVT_xxx
+ *	(u32) offset in bytes of patch data for this directory entry
+ *	(u32) length in bytes of patch data for this directory entry
+ *	(u32) future use to avoid structure breakage
+ *
+ * patch data with one ore more blocks consisting of
+ *	(u16) action to process. See RTSDS_FW_OP_xxx
+ *	(u16) mode for which the command is to be executed. See RTSDS_FW_MODE_xxx
+ *	(u16) SerDes ports bitmask for which the command is to be executed
+ *	(u16) page for action
+ *	(u16) register for action
+ *	(u16) value for action
+ *	(u16) mask for write operations
+ *	(u16) future use to avoid structure breakage
+ */
+
+static const char *rtsds_fw_events[RTSDS_FW_EVT_MAX] = {
+	[RTSDS_FW_EVT_SETUP]		= "setup",
+	[RTSDS_FW_EVT_INIT]		= "init",
+	[RTSDS_FW_EVT_POWER_ON]		= "power-on",
+	[RTSDS_FW_EVT_PRE_SET_MODE]	= "pre-set-mode",
+	[RTSDS_FW_EVT_POST_SET_MODE]	= "post-set-mode",
+	[RTSDS_FW_EVT_PRE_RESET]	= "pre-reset",
+	[RTSDS_FW_EVT_POST_RESET]	= "post-reset",
+	[RTSDS_FW_EVT_PRE_POWER_OFF]	= "pre-power-off",
+	[RTSDS_FW_EVT_POST_POWER_OFF]	= "post-power-off",
+};
+
+static const u8 rtsds_fw_modes[PHY_INTERFACE_MODE_MAX] = {
+	[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_FW_MODE_1000BASEX,
+	[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_FW_MODE_100BASEX,
+	[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_FW_MODE_10GBASER,
+	[PHY_INTERFACE_MODE_2500BASEX]	= RTSDS_FW_MODE_2500BASEX,
+	[PHY_INTERFACE_MODE_NA]		= RTSDS_FW_MODE_ALL,
+	[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_FW_MODE_QSGMII,
+	[PHY_INTERFACE_MODE_QUSGMII]	= RTSDS_FW_MODE_QUSGMII,
+	[PHY_INTERFACE_MODE_SGMII]	= RTSDS_FW_MODE_SGMII,
+	[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_FW_MODE_USXGMII,
+	[PHY_INTERFACE_MODE_XGMII]	= RTSDS_FW_MODE_XGMII,
+	[RTSDS_REALTEK_MODE_HSGMII]	= RTSDS_FW_MODE_HSGMII,
+};
+
+static int rtsds_fw_load(struct rtsds_ctrl *ctrl)
+{
+	struct rtsds_fw_head *h;
+	const char *fwname;
+	const char *msg;
+	u32 checksum;
+
+	if (device_property_read_string(ctrl->dev, "firmware-name", &fwname)) {
+		dev_info(ctrl->dev, "firmware not configured, patching disabled\n");
+		return -EACCES;
+	}
+
+	if (firmware_request_nowarn(&ctrl->firmware, fwname, ctrl->dev) < 0) {
+		dev_err(ctrl->dev, "firmware %s not found, patching disabled\n", fwname);
+		return -ENOENT;
+	}
+
+	if (ctrl->firmware->size < 16) {
+		msg = "size to small";
+		goto error;
+	}
+
+	h = (struct rtsds_fw_head *)ctrl->firmware->data;
+	if (h->magic != RTSDS_FW_MAGIC) {
+		msg = "magic mismatch";
+		goto error;
+	}
+
+	if (h->filesize != ctrl->firmware->size) {
+		msg = "size mismatch";
+		goto error;
+	}
+
+	checksum = ~crc32(0xFFFFFFFFU, ctrl->firmware->data + 8, ctrl->firmware->size - 8);
+	if (h->checksum != checksum) {
+		msg = "checksum mismatch";
+		goto error;
+	}
+
+	for (int i = 0; i < h->dirsize; i++)
+		if ((ctrl->firmware->size <= h->dir[i].offset) ||
+		    (ctrl->firmware->size < h->dir[i].offset + h->dir[i].len) ||
+		    (h->dir[i].len % sizeof(struct rtsds_fw_seq))) {
+			msg = "malformed sequence";
+			goto error;
+		}
+
+	dev_info(ctrl->dev, "firmware %s: loaded with %zu bytes, %d sequences\n",
+		 fwname, ctrl->firmware->size, h->dirsize);
+
+	return 0;
+error:
+	dev_err(ctrl->dev, "firmware %s: %s, patching disabled\n", fwname, msg);
+	ctrl->firmware = NULL;
+	return -EINVAL;
+}
+
+static void rtsds_fw_get_sequence(struct rtsds_ctrl *ctrl, int evt,
+				  struct rtsds_fw_seq **seq, int *cnt)
+{
+	struct rtsds_fw_head *h;
+
+	*seq = NULL;
+	*cnt = 0;
+
+	if (!ctrl->firmware)
+		return;
+
+	h = (struct rtsds_fw_head *)ctrl->firmware->data;
+	for (int i = 0; i < h->dirsize; i++)
+		if (h->dir[i].evtid == evt) {
+			*seq = (struct rtsds_fw_seq *)(ctrl->firmware->data + h->dir[i].offset);
+			*cnt = h->dir[i].len / sizeof(struct rtsds_fw_seq);
+		}
+}
+
+static int rtsds_fw_run_event(struct rtsds_ctrl *ctrl, u32 sid, int evt)
+{
+	int cnt, ret, step = 0, delay = 0, mode = rtsds_fw_modes[ctrl->sds[sid].mode];
+	struct rtsds_fw_seq *seq;
+
+	if (evt >= RTSDS_FW_EVT_MAX ||
+	    sid >= ctrl->cfg->sds_cnt ||
+	    mode == RTSDS_FW_MODE_UNDEFINED)
+		return -EINVAL;
+
+	rtsds_fw_get_sequence(ctrl, evt, &seq, &cnt);
+	if (!seq)
+		return 0;
+
+	seq--;
+	while (cnt) {
+		step++;	seq++; cnt--;
+
+		if (!(seq->ports & BIT(sid)) ||
+		    (seq->mode != RTSDS_FW_MODE_ALL && seq->mode != mode))
+			continue;
+
+		if (seq->action == RTSDS_FW_OP_WAIT) {
+			delay = seq->val;
+			continue;
+		}
+
+		if (delay) {
+			dev_dbg(ctrl->dev, "%s/%03d: SDS %02d WAIT(%d)\n",
+				rtsds_fw_events[evt], step, sid, delay);
+
+			usleep_range(delay << 10, (delay + 1) << 10);
+		}
+
+		if (seq->action == RTSDS_FW_OP_MASK) {
+			dev_dbg(ctrl->dev,
+				"%s/%03d: SDS %02d MASK(0x%04x, 0x%04x, 0x%04x, 0x%04x)\n",
+				rtsds_fw_events[evt], step, sid,
+				seq->page, seq->reg, seq->mask, seq->val);
+
+			ret = ctrl->cfg->write_bits(ctrl, sid, seq->page,
+						    seq->reg, seq->mask, seq->val);
+			if (ret) {
+				dev_err(ctrl->dev,
+					"sequence %s failed for SerDes %d at step %d, rc=%d",
+					rtsds_fw_events[evt], sid, step, ret);
+				return -EIO;
+			}
+		}
+	}
+
+	return 0;
+}
+
+/* common RTL838x and RTL839x helpers */
+
+static inline int rtsds_83xx_sds_5g(u32 sid)
+{
+	return (GENMASK(11, 10) | GENMASK(7, 0)) & BIT(sid);
+}
+
+static void rtsds_83xx_rx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	u32 page, reg, bits;
+
+	if (rtsds_83xx_sds_5g(sid)) {
+		/* RTL838x or RTL839x 5G SerDes */
+		page = RTSDS_SDS_EXT_PAGE;
+		reg = 0x09;
+		bits = RTSDS_RX_SELF_BIT;
+	} else if (sid == 8 || sid == 12) {
+		/* RTL839x 10G SerDes */
+		page = RTSDS_ANA_TG_EXT_PAGE;
+		reg = 0x00;
+		bits = RTSDS_RX_SELF_10G_BIT;
+	} else
+		return;
+
+	ctrl->cfg->write_bits(ctrl, sid, page, reg, bits, bits);
+	usleep_range(100000, 101000);
+	ctrl->cfg->write_bits(ctrl, sid, page, reg, bits, 0);
+}
+
+static void rtsds_83xx_digital_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int bits;
+
+	/* soft reset */
+	bits = RTSDS_SOFT_RST_BIT;
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x03, bits, bits);
+	usleep_range(100000, 101000);
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x03, bits, 0);
+
+	/* SerDes RX/TX reset */
+	bits = RTSDS_SDS_EN_RX_BIT | RTSDS_SDS_EN_TX_BIT;
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x00, bits, 0);
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x00, bits, bits);
+}
+
+static void rtsds_83xx_cmu_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mask, bpos, hi = sid | 1;
+
+	if (ctrl->cfg->family == RTSDS_838X_CFG_FAMILY) {
+		/*
+		 * 5G SerDes sequence for SDS_EXT_REG0. This is some very magic flipping of
+		 * fields FRC_PDOWN, VAL_RXEN, FRC_RXEN, VAL_CMUEN & FRC_CMUEN. See functions
+		 * rtl8380_serdes_rst() or _dal_maple_mac_serdes_rst() in GPL dumps.
+		 */
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4040);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4740);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x47c0);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4000);
+	} else if (rtsds_83xx_sds_5g(sid)) {
+		/*
+		 * 5G SerDes sequence for undocumented shared CMU register in odd SerDes.
+		 * See function rtl839x_serdes_rst() or sequence rtl839x_serdes_rst[] in GPL
+		 * dumps. Bits 4, 5 are for even SerDes, bits 6, 7 are for odd SerDes.
+		 */
+		if (sid & 1) {
+			mask = GENMASK(7, 6); bpos = 6;
+		} else {
+			mask = GENMASK(5, 4); bpos = 4;
+		}
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 1 << bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 3 << bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 0);
+	} else {
+		/*
+		 * 10G SerDes sequence for undocumented shared CMU register in odd SerDes.
+		 * See function rtl839x_serdes_rst() or sequences rtl839x_serdes8/12_rst[]
+		 * in GPL dumps. Bits 0, 1 are for even SerDes, bits 2, 3 are for odd SerDes.
+		 */
+		if (sid & 1) {
+			mask = GENMASK(3, 2); bpos = 2;
+		} else {
+			mask = GENMASK(1, 0); bpos = 0;
+		}
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 1 << bpos);
+		usleep_range(500000, 501000);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 3 << bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 0);
+	}
+}
+
+static int rtsds_83xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_83xx_rx_reset(ctrl, sid);
+	rtsds_83xx_cmu_reset(ctrl, sid);
+	rtsds_83xx_digital_reset(ctrl, sid);
+
+	return 0;
+}
+
+/* common RTL930x and RTL931x helpers */
+
+static inline int rtsds_rt93xx_io(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 cmd)
+{
+	int ret, val = FIELD_PREP(RTSDS_93XX_SDS_CMD_SID_MASK, sid) |
+		       FIELD_PREP(RTSDS_93XX_SDS_CMD_PAGE_MASK, page) |
+		       FIELD_PREP(RTSDS_93XX_SDS_CMD_REG_MASK, reg) |
+		       RTSDS_93XX_SDS_CMD_BUSY | cmd;
+
+	regmap_write(ctrl->regmap, ctrl->regbase, val);
+	ret = regmap_read_poll_timeout(ctrl->regmap, ctrl->regbase, val,
+				       !(val & RTSDS_93XX_SDS_CMD_BUSY), 30, 1000);
+
+	if (ret < 0) {
+		dev_err(ctrl->dev, "SerDes I/O timed out\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int rtsds_93xx_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	u32 val;
+
+	if (rtsds_rt93xx_io(ctrl, sid, page, reg, RTSDS_93XX_SDS_CMD_READ))
+		return -ETIMEDOUT;
+
+	regmap_read(ctrl->regmap, ctrl->regbase + 4, &val);
+
+	return val & RTSDS_FULL_REG_MASK;
+}
+
+static int rtsds_93xx_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg,
+				 u32 mask, u32 val)
+{
+	if (mask != RTSDS_FULL_REG_MASK) {
+		int oldval = rtsds_93xx_read(ctrl, sid, page, reg);
+
+		if (oldval < 0)
+			return -EIO;
+		val |= oldval & ~mask;
+	}
+
+	regmap_write(ctrl->regmap, ctrl->regbase + 4, val);
+
+	return rtsds_rt93xx_io(ctrl, sid, page, reg, RTSDS_93XX_SDS_CMD_WRITE);
+}
+
+static int rtsds_93xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int ret;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
+		return 0;
+
+	ret = ctrl->cfg->set_hwmode(ctrl, sid, ctrl->sds[sid].mode, PHY_INTERFACE_MODE_NA);
+	if (!ret)
+		return ret;
+
+	return ctrl->cfg->set_hwmode(ctrl, sid, PHY_INTERFACE_MODE_NA, ctrl->sds[sid].mode);
+}
+
+/*
+ * The RTL838x has 6 SerDes. The 16 bit registers start at 0xbb00e780 and are mapped directly into
+ * 32 bit memory addresses. High 16 bits are always empty. A "lower" memory block serves pages 0/3
+ * a "higher" memory block pages 1/2.
+ */
+
+static int rtsds_838x_reg_offset(u32 sid, u32 page, u32 reg)
+{
+	if (page == 0 || page == 3)
+		return (sid << 9) + (page << 7) + (reg << 2);
+	else
+		return 0xb80 + (sid << 8) + (page << 7) + (reg << 2);
+}
+
+static int rtsds_838x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int offs, val;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	offs = rtsds_838x_reg_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page == RTSDS_FIB_PAGE && reg == 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	return val & RTSDS_FULL_REG_MASK;
+}
+
+static int rtsds_838x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg,
+				 u32 mask, u32 val)
+{
+	int offs;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, val))
+		return -EINVAL;
+
+	offs = rtsds_838x_reg_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page == RTSDS_FIB_PAGE && reg == 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	regmap_write_bits(ctrl->regmap, ctrl->regbase + offs, mask, val);
+
+	return 0;
+}
+
+static int rtsds_838x_has_submode(u32 sid)
+{
+	/* only SerDes 4 and 5 can have fiber modes */
+	return GENMASK(5, 4) & BIT(sid);
+}
+
+static int rtsds_838x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int old, int new)
+{
+	int combomode = ctrl->cfg->mode_map[new];
+	int submode = RTSDS_SUBMODE(combomode);
+	int mode = RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	if (rtsds_838x_has_submode(sid))
+		rtsds_write_bits_pos(ctrl->regmap,
+				     RTSDS_838X_INT_MODE_CTRL_REG,
+				     RTSDS_838X_SDS_SUBMODE_BPOS(sid),
+				     RTSDS_838X_SDS_SUBMODE_MASK, submode);
+	else if (submode != 0)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_838X_SDS_MODE_SEL_REG,
+			     RTSDS_838X_SDS_MODE_BPOS(sid),
+			     RTSDS_838X_SDS_MODE_MASK, mode);
+
+	return 0;
+}
+
+static int rtsds_838x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode = 0;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			    RTSDS_838X_SDS_MODE_SEL_REG,
+			    RTSDS_838X_SDS_MODE_BPOS(sid),
+			    RTSDS_838X_SDS_MODE_MASK, &mode);
+
+	if (rtsds_838x_has_submode(sid))
+		rtsds_read_bits_pos(ctrl->regmap,
+				    RTSDS_838X_INT_MODE_CTRL_REG,
+				    RTSDS_838X_SDS_SUBMODE_BPOS(sid),
+				    RTSDS_838X_SDS_SUBMODE_MASK, &submode);
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL839x has 14 SerDes starting at 0xbb00a000. 0-7, 10, 11 are 5GBit, 8, 9, 12, 13 are
+ * 10 GBit. Two adjacent SerDes are tightly coupled and share a 1024 bytes register area. Per 32
+ * bit address two registers are stored. The first register is stored in the lower 2 bytes ("on
+ * the right" due to big endian) and the second register in the upper 2 bytes. The following
+ * register areas are known:
+ *
+ * - XSG0	(4 pages @ offset 0x000): for even SerDes
+ * - XSG1	(4 pages @ offset 0x100): for odd SerDes
+ * - TGRX	(4 pages @ offset 0x200): for even 10G SerDes
+ * - ANA_RG	(2 pages @ offset 0x300): for even 5G SerDes
+ * - ANA_RG	(2 pages @ offset 0x380): for odd 5G SerDes
+ * - ANA_TG	(2 pages @ offset 0x300): for even 10G SerDes
+ * - ANA_TG	(2 pages @ offset 0x380): for odd 10G SerDes
+ *
+ * The most consistent mapping that aligns to the RTL93xx devices is:
+ *
+ *		even 5G SerDes	odd 5G SerDes	even 10G SerDes	odd 10G SerDes
+ * Page 0:	XSG0/0		XSG1/0		XSG0/0		XSG1/0
+ * Page 1:	XSG0/1		XSG1/1		XSG0/1		XSG1/1
+ * Page 2:	XSG0/2		XSG1/2		XSG0/2		XSG1/2
+ * Page 3:	XSG0/3		XSG1/3		XSG0/3		XSG1/3
+ * Page 4:	<zero>		<zero>		TGRX/0		<zero>
+ * Page 5:	<zero>		<zero>		TGRX/1		<zero>
+ * Page 6:	<zero>		<zero>		TGRX/2		<zero>
+ * Page 7:	<zero>		<zero>		TGRX/3		<zero>
+ * Page 8:	ANA_RG		ANA_RG		<zero>		<zero>
+ * Page 9:	ANA_RG_EXT	ANA_RG_EXT	<zero>		<zero>
+ * Page 10:	<zero>		<zero>		ANA_TG		ANA_TG
+ * Page 11:	<zero>		<zero>		ANA_TG_EXT	ANA_TG_EXT
+ */
+
+static int rtsds_839x_reg_offset(u32 sid, u32 page, u32 reg)
+{
+	int offs = ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1) + (page << 6);
+	int sds5g = rtsds_83xx_sds_5g(sid);
+
+	if (page < 4)
+		return offs + ((sid & 1) << 8);
+	else if ((page & 4) && (sid == 8 || sid == 12))
+		return offs + 0x100;
+	else if (page >= 8 && page <= 9 && sds5g)
+		return offs + 0x100 + ((sid & 1) << 7);
+	else if (page >= 10 && !sds5g)
+		return offs + 0x80 + ((sid & 1) << 7);
+
+	return -EINVAL; /* hole */
+}
+
+static int rtsds_839x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int offs;
+	u32 val;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	offs = rtsds_839x_reg_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page == RTSDS_FIB_PAGE && reg == 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	rtsds_read_bits_pos(ctrl->regmap, ctrl->regbase + offs,
+			    RTSDS_839X_SDS_RW_BPOS(reg),
+			    RTSDS_FULL_REG_MASK, &val);
+
+	return val;
+}
+
+static int rtsds_839x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg,
+				 u32 mask, u32 val)
+{
+	int offs;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, val))
+		return -EINVAL;
+
+	offs = rtsds_839x_reg_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page == RTSDS_FIB_PAGE && reg == 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	rtsds_write_bits_pos(ctrl->regmap, ctrl->regbase + offs,
+			     RTSDS_839X_SDS_RW_BPOS(reg),
+			     mask, val);
+
+	return 0;
+}
+
+static int rtsds_839x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int old, int new)
+{
+	int combomode = ctrl->cfg->mode_map[new];
+	int submode = RTSDS_SUBMODE(combomode);
+	int mode = RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_839X_MAC_SDS_IF_CTL_REG(sid),
+			     RTSDS_839X_SDS_MODE_BPOS(sid),
+			     RTSDS_839X_SDS_MODE_MASK, mode);
+
+	rtsds_839x_write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x04,
+			      RTSDS_839X_SDS_SUBMODE_MASK,
+			      FIELD_PREP(RTSDS_839X_SDS_SUBMODE_MASK, submode));
+
+	return 0;
+}
+
+static int rtsds_839x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			    RTSDS_839X_MAC_SDS_IF_CTL_REG(sid),
+			    RTSDS_839X_SDS_MODE_BPOS(sid),
+			    RTSDS_839X_SDS_MODE_MASK, &mode);
+
+	submode = FIELD_GET(RTSDS_839X_SDS_SUBMODE_MASK,
+			    rtsds_839x_read(ctrl, sid, RTSDS_SDS_PAGE, 0x04));
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL930x family has 12 SerdDes of three types. They are accessed through two IO registers at
+ * 0xbb0003b0 which simulate commands to an internal MDIO bus:
+ *
+ * - SerDes 0-1 exist on the RTL9301 and 9302B and are QSGMII capable
+ * - SerDes 2-9 are USXGMII capabable with either quad or single configuration
+ * - SerDes 10-11 are 10GBase-R capable
+ */
+
+static int rtsds_930x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	return rtsds_93xx_read(ctrl, sid, page, reg);
+}
+
+static int rtsds_930x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg,
+				 u32 mask, u32 val)
+{
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, val))
+		return -EINVAL;
+
+	return rtsds_93xx_write_bits(ctrl, sid, page, reg, mask, val);
+}
+
+static void rtsds_930x_get_mode_regs(int sid,
+				     u32 *modereg, int *modebpos,
+				     u32 *subreg, int *subbpos)
+{
+	if (sid > 3) {
+		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL1_REG;
+		*subbpos = (sid - 4) * 5;
+	} else {
+		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL0_REG;
+		*subbpos = (sid - 2) * 5;
+	}
+
+	if (sid < 4) {
+		*modereg = RTSDS_930X_SDS_MODE_SEL_0_REG;
+		*modebpos = sid * 6;
+	} else if (sid < 8) {
+		*modereg = RTSDS_930X_SDS_MODE_SEL_1_REG;
+		*modebpos = (sid - 4) * 6;
+	} else if (sid < 10) {
+		*modereg = RTSDS_930X_SDS_MODE_SEL_2_REG;
+		*modebpos = (sid - 8) * 6;
+	} else {
+		*modereg = RTSDS_930X_SDS_MODE_SEL_3_REG;
+		*modebpos = (sid - 10) * 6;
+	}
+}
+
+static int rtsds_930x_has_submode(u32 sid)
+{
+	/* only SerDes 2-9 allow GMII 10G modes */
+	return GENMASK(9, 2) & BIT(sid);
+}
+
+static int rtsds_930x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int old, int new)
+{
+	int combomode = ctrl->cfg->mode_map[new];
+	u32 modereg, modebpos, subreg, subbpos;
+	int submode = RTSDS_SUBMODE(combomode);
+	int mode = RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	rtsds_930x_get_mode_regs(sid, &modereg, &modebpos, &subreg, &subbpos);
+
+	if (rtsds_930x_has_submode(sid))
+		rtsds_write_bits_pos(ctrl->regmap, subreg, subbpos,
+				     RTSDS_930X_SDS_SUBMODE_MASK, submode);
+	else if (submode != 0)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap, modereg, modebpos, RTSDS_930X_SDS_MODE_MASK, mode);
+
+	return 0;
+}
+
+static int rtsds_930x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	u32 modereg, modebpos, subreg, subbpos, mode, submode = 0;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_930x_get_mode_regs(sid, &modereg, &modebpos, &subreg, &subbpos);
+
+	rtsds_read_bits_pos(ctrl->regmap, modereg, modebpos, RTSDS_930X_SDS_MODE_MASK, &mode);
+
+	if (rtsds_930x_has_submode(sid))
+		rtsds_read_bits_pos(ctrl->regmap, subreg, subbpos,
+				    RTSDS_930X_SDS_SUBMODE_MASK, &submode);
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL931x family has 14 "frontend" SerDes that are cascaded. All operations (e.g. reset) work
+ * on this frontend view while their registers are distributed over a total of 32 background
+ * SerDes. Two types of SerDes exist:
+ *
+ * An "even" SerDes with numbers 0, 1, 2, 4, 6, 8, 10, 12 works on two background SerDes. 64 analog
+ * and 64 XGMII data pages are coming from a first background SerDes while another 64 XGMII pages
+ * are served from a second SerDes.
+ *
+ * The "odd" SerDes with numbers 3, 5, 7, 9, 11 & 13 SerDes consist of a total of 3 background
+ * SerDes (one analog and two XGMII) each with an own page/register set.
+ *
+ * Align this for readability by simulating a total of 576 pages and mix them as follows.
+ *
+ * frontend page		"even" frontend SerDes		"odd" frontend SerDes
+ * page 0x000-0x03f (analog):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS
+ * page 0x100-0x13f (XGMII1):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS+1
+ * page 0x200-0x23f (XGMII2):	page 0x000-0x03f back SDS+1	page 0x000-0x03f back SDS+2
+ */
+
+static int rtsds_931x_get_backing_sds(u32 sid, u32 page)
+{
+	int map[] = {0, 1, 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23};
+	int back = map[sid];
+
+	if (page & 0xc0)
+		return -EINVAL; /* hole */
+
+	if ((sid & 1) && (sid != 1))
+		back += (page >> 8); /* distribute "odd" to 3 background SerDes */
+	else if (page >= 512)
+		back += 1; /* distribute "even" to 2 background SerDes */
+
+	return back;
+}
+
+static int rtsds_931x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int back;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	back = rtsds_931x_get_backing_sds(sid, page);
+
+	return back < 0 ? 0 : rtsds_93xx_read(ctrl, back, page & 0x3f, reg);
+}
+
+static int rtsds_931x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg,
+				 u32 mask, u32 val)
+{
+	int back;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, val))
+		return -EINVAL;
+
+	back = rtsds_931x_get_backing_sds(sid, page);
+
+	return back < 0 ? 0 : rtsds_93xx_write_bits(ctrl, back, page & 0x3f, reg, mask, val);
+}
+
+static int rtsds_931x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int old, int new)
+{
+	int combomode = ctrl->cfg->mode_map[new];
+	int submode = RTSDS_SUBMODE(combomode);
+	int mode = RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	if (old != PHY_INTERFACE_MODE_NA && new == PHY_INTERFACE_MODE_NA)
+		regmap_write_bits(ctrl->regmap, RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG,
+				  BIT(sid), BIT(sid));
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_931X_SERDES_MODE_CTRL_REG(sid),
+			     RTSDS_931X_SDS_MODE_BPOS(sid),
+			     RTSDS_931X_SDS_MODE_WRITE_MASK,
+			     RTSDS_931X_SDS_MODE_FORCE_SETUP | mode);
+
+	rtsds_931x_write_bits(ctrl, sid, 0x1f, 0x09,
+			      RTSDS_931X_SDS_SUBMODE_MASK,
+			      FIELD_PREP(RTSDS_931X_SDS_SUBMODE_MASK, submode));
+
+	if (old == PHY_INTERFACE_MODE_NA && new != PHY_INTERFACE_MODE_NA)
+		regmap_write_bits(ctrl->regmap, RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG,
+				  BIT(sid), 0);
+
+	return 0;
+}
+
+static int rtsds_931x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			     RTSDS_931X_SERDES_MODE_CTRL_REG(sid),
+			     RTSDS_931X_SDS_MODE_BPOS(sid),
+			     RTSDS_931X_SDS_MODE_READ_MASK, &mode);
+
+	submode = FIELD_GET(RTSDS_931X_SDS_SUBMODE_MASK, rtsds_931x_read(ctrl, sid, 0x1f, 0x09));
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/* phy controller functions */
+
+static int rtsds_phy_init(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "init SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_INIT);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "init failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_on(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "power on SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POWER_ON);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_off(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "power off SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_POWER_OFF);
+	if (!ret)
+		ret = ctrl->cfg->set_hwmode(ctrl, sid,
+					    ctrl->sds[sid].mode, PHY_INTERFACE_MODE_NA);
+	if (!ret) {
+		ctrl->sds[sid].mode = PHY_INTERFACE_MODE_NA;
+		ctrl->sds[sid].speed = SPEED_UNKNOWN;
+		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_POWER_OFF);
+	}
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power off failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode_int(struct rtsds_ctrl *ctrl, u32 sid, int old, int new)
+{
+	int ret;
+
+	rtsds_check_and_fix_mode(ctrl, sid);
+
+	if (ctrl->sds[sid].mode == new)
+		return 0;
+
+	dev_dbg(ctrl->dev, "switch SerDes %d from %s to %s (hw mode 0x%X)\n",
+		sid, rtsds_phy_modes(old), rtsds_phy_modes(new), ctrl->cfg->mode_map[new]);
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_SET_MODE);
+	if (!ret)
+		ret = ctrl->cfg->set_hwmode(ctrl, sid, ctrl->sds[sid].mode, new);
+	if (!ret) {
+		ctrl->sds[sid].mode = new;
+		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_SET_MODE);
+	}
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "set mode failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int new = submode;
+
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+	/*
+	 * The Realtek SerDes distinguishes between 2500base-x and a propietary 2.5GBit SGMII
+	 * mode (aka HSGMII) that is acively used in the wild (e.g. Zyxel XGS1210-12). To provide
+	 * this non-standard mode follow /drivers/phy/qualcomm/phy-qcom-sgmii-eth.c that switches
+	 * between SGMII and HSGMII depending on the set speed. To simplify driver coding track
+	 * the mode as RTSDS_REALTEK_MODE_HSGMII (reusing PHY_INTERFACE_MODE_INTERNAL). Activating
+	 * this mode requires to set the SerDes mode to SGMII and the speed to 2500 before or
+	 * after. E.g.
+	 *
+	 * phy_ops->set_speed(SPEED_2500);
+	 * phy_ops->set_mode(PHY_INTERFACE_MODE_SGMII);
+	 */
+	if (new == PHY_INTERFACE_MODE_SGMII && ctrl->sds[sid].speed == SPEED_2500)
+		new = RTSDS_REALTEK_MODE_HSGMII;
+
+	return rtsds_phy_set_mode_int(ctrl, sid, ctrl->sds[sid].mode, new);
+}
+
+static int rtsds_phy_set_speed(struct phy *phy, int speed)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	mutex_lock(&ctrl->lock);
+	ctrl->sds[sid].speed = speed;
+	mutex_unlock(&ctrl->lock);
+
+	/* See rtsds_phy_set_mode() */
+	if (speed == SPEED_2500 && ctrl->sds[sid].mode == PHY_INTERFACE_MODE_SGMII)
+		return rtsds_phy_set_mode(phy, PHY_MODE_ETHERNET, RTSDS_REALTEK_MODE_HSGMII);
+	if (speed == SPEED_1000 && ctrl->sds[sid].mode == RTSDS_REALTEK_MODE_HSGMII)
+		return rtsds_phy_set_mode(phy, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_SGMII);
+
+	return 0;
+}
+
+static int rtsds_phy_reset_int(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int ret;
+
+	dev_dbg(ctrl->dev, "reset SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_RESET);
+	if (!ret)
+		ret = ctrl->cfg->reset(ctrl, sid);
+	if (!ret)
+		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_RESET);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "reset failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_reset(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	return rtsds_phy_reset_int(ctrl, sid);
+}
+
+static const struct phy_ops rtsds_phy_ops = {
+	.init		= rtsds_phy_init,
+	.power_on	= rtsds_phy_power_on,
+	.power_off	= rtsds_phy_power_off,
+	.reset		= rtsds_phy_reset,
+	.set_mode	= rtsds_phy_set_mode,
+	.set_speed	= rtsds_phy_set_speed,
+	.owner		= THIS_MODULE,
+};
+
+/*
+ * The SerDes offer a lot of magic that sill needs to be uncovered. To help further development
+ * provide some basic debugging about registers, modes, reset and polarity. All functions are
+ * run under the global lock to avoid inconsistencies.
+ */
+
+#ifdef CONFIG_DEBUG_FS
+
+#define RTSDS_PAGE_NAMES 48
+
+static const char *rtsds_page_name[RTSDS_PAGE_NAMES] = {
+	[0] = "SDS",		[1] = "SDS_EXT",
+	[2] = "FIB",		[3] = "FIB_EXT",
+	[4] = "DTE",		[5] = "DTE_EXT",
+	[6] = "TGX",		[7] = "TGX_EXT",
+	[8] = "ANA_RG",		[9] = "ANA_RG_EXT",
+	[10] = "ANA_TG",	[11] = "ANA_TG_EXT",
+	[31] = "ANA_WDIG",
+	[32] = "ANA_MISC",	[33] = "ANA_COM",
+	[34] = "ANA_SP",	[35] = "ANA_SP_EXT",
+	[36] = "ANA_1G",	[37] = "ANA_1G_EXT",
+	[38] = "ANA_2G",	[39] = "ANA_2G_EXT",
+	[40] = "ANA_3G",	[41] = "ANA_3G_EXT",
+	[42] = "ANA_5G",	[43] = "ANA_5G_EXT",
+	[44] = "ANA_6G",	[45] = "ANA_6G_EXT",
+	[46] = "ANA_10G",	[47] = "ANA_10G_EXT",
+};
+
+static int rtsds_dbg_mode_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int hwmode, sid = macro->sid;
+
+	rtsds_check_and_fix_mode(ctrl, sid);
+
+	mutex_lock(&ctrl->lock);
+	hwmode = ctrl->cfg->get_hwmode(ctrl, sid);
+	mutex_unlock(&ctrl->lock);
+
+
+	seq_printf(seqf, "hw mode: 0x%X\n", hwmode);
+	seq_printf(seqf, "phy mode: %s\n", rtsds_phy_modes(ctrl->sds[sid].mode));
+
+	return 0;
+}
+
+static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
+				    size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf = file->private_data;
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	int ret, hwmode, phymode, sid = macro->sid;
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+
+	ret = kstrtou32_from_user(userbuf, count, 16, &hwmode);
+	if (ret)
+		return ret;
+
+	/* Allow only modes we have under control. */
+	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
+	if (phymode == PHY_INTERFACE_MODE_MAX)
+		return -EINVAL;
+
+	ret = rtsds_phy_set_mode_int(ctrl, sid, ctrl->sds[sid].mode, phymode);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
+
+static int rtsds_dbg_reset_show(struct seq_file *seqf, void *unused)
+{
+	return 0;
+}
+
+static ssize_t rtsds_dbg_reset_write(struct file *file, const char __user *userbuf,
+				     size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf = file->private_data;
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int ret, reset, sid = macro->sid;
+
+	/* SerDes can be reset with "echo 1 > reset" */
+	ret = kstrtou32_from_user(userbuf, count, 10, &reset);
+	if (ret || reset != 1)
+		return -EINVAL;
+
+	ret = rtsds_phy_reset_int(ctrl, sid);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
+
+static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 page = 0, reg, sid = macro->sid;
+
+	seq_printf(seqf, "%*s", 12, "");
+	for (int i = 0; i < 32; i++)
+		seq_printf(seqf, "   %02X", i);
+
+	mutex_lock(&ctrl->lock);
+	while (page < ctrl->cfg->page_cnt) {
+		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
+			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
+		else if (page == 64 || page == 320) {
+			page += 192;
+			seq_printf(seqf, "\n\nXGMII_%d    : ", page >> 8);
+		} else
+			seq_printf(seqf, "\nPAGE_%03X   : ", page);
+		for (reg = 0; reg < 0x20; reg++)
+			seq_printf(seqf, "%04X ", ctrl->cfg->read(ctrl, sid, page, reg));
+		page++;
+	}
+	seq_puts(seqf, "\n");
+	mutex_unlock(&ctrl->lock);
+
+	return 0;
+}
+
+static ssize_t rtsds_dbg_registers_write(struct file *file, const char __user *userbuf,
+				    size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf = file->private_data;
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int ret, sid = macro->sid;
+	u32 reg, page, val, mask;
+	u64 data;
+
+	/*
+	 * Due to many different devices and limited regional hardware access for developers,
+	 * improve analysis with write access to the SerDes registers. This allows testers to
+	 * build new patch sequences from the command line without creating new firmware files
+	 * and building new images.
+	 *
+	 * Input for a register change is a single hex value that concatenates the page with
+	 * 12 bits, the register with 8 bits, the value and the mask with 16 bits each.
+	 * E.g. "echo 0x10110f000300 > register" means "write 0x0300 with a mask of 0x0f00
+	 * (leaving the other 12 bits as is) into register 0x11 of page 0x10".
+	 */
+
+	ret = kstrtou64_from_user(userbuf, count, 16, &data);
+	if (ret)
+		return ret;
+
+	page = FIELD_GET(RTSDS_DEBUG_PAGE_MASK, data);
+	reg = FIELD_GET(RTSDS_DEBUG_REG_MASK, data);
+	mask = FIELD_GET(RTSDS_DEBUG_FIELD_MASK, data);
+	val = FIELD_GET(RTSDS_DEBUG_VAL_MASK, data);
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, val))
+		return -EINVAL;
+
+	mutex_lock(&ctrl->lock);
+	ret = ctrl->cfg->write_bits(ctrl, sid, page, reg, mask, val);
+	mutex_unlock(&ctrl->lock);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_registers);
+
+static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int val, sid = macro->sid;
+
+	mutex_lock(&ctrl->lock);
+	val = ctrl->cfg->read(ctrl, sid, RTSDS_SDS_PAGE, 0x00);
+	mutex_unlock(&ctrl->lock);
+
+	if (val < 0)
+		return -EIO;
+
+	seq_puts(seqf, "tx polarity: ");
+	seq_puts(seqf, val & RTSDS_INV_HSO_BIT ? "inverse" : "normal");
+	seq_puts(seqf, "\nrx polarity: ");
+	seq_puts(seqf, val & RTSDS_INV_HSI_BIT ? "inverse" : "normal");
+	seq_puts(seqf, "\n");
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
+
+static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	struct device *dev = &ctrl->sds[sid].phy->dev;
+	struct dentry *dir, *root;
+	char dirname[32];
+
+	root = debugfs_lookup("realtek_serdes", NULL);
+	if (!root)
+		root = debugfs_create_dir("realtek_serdes", NULL);
+
+	snprintf(dirname, sizeof(dirname), "serdes.%d", sid);
+	dir = debugfs_create_dir(dirname, root);
+
+	debugfs_create_file("mode", 0600, dir, dev, &rtsds_dbg_mode_fops);
+	debugfs_create_file("polarity", 0400, dir, dev, &rtsds_dbg_polarity_fops);
+	debugfs_create_file("registers", 0600, dir, dev, &rtsds_dbg_registers_fops);
+	debugfs_create_file("reset", 0200, dir, dev, &rtsds_dbg_reset_fops);
+}
+
+#endif /* CONFIG_DEBUG_FS */
+
+static void rtsds_setup(struct rtsds_ctrl *ctrl)
+{
+	int hwmode, ret;
+
+	for (u32 sid = 0; sid < ctrl->cfg->sds_cnt; sid++) {
+		/* switch off SerDes */
+		ret = ctrl->cfg->set_hwmode(ctrl, sid,
+					    PHY_INTERFACE_MODE_MAX, PHY_INTERFACE_MODE_NA);
+		if (!ret)
+			ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_SETUP);
+		if (ret)
+			dev_err(ctrl->dev, "setup failed for SerDes %d\n", sid);
+
+		/* in any case sync back hardware status for consistency */
+		hwmode = ctrl->cfg->get_hwmode(ctrl, sid);
+		ctrl->sds[sid].mode = rtsds_hwmode_to_phymode(ctrl, hwmode);
+		ctrl->sds[sid].speed = SPEED_UNKNOWN;
+	}
+}
+
+static struct phy *rtsds_simple_xlate(struct device *dev,
+				      const struct of_phandle_args *args)
+{
+	struct rtsds_ctrl *ctrl = dev_get_drvdata(dev);
+	int sid, sid2, min_port, max_port;
+
+	/*
+	 * A SerDes is usually connected to Ethernet transceivers (e.g. RTL8218B). Some of them
+	 * make use of multiple links, e.g. 2x QSGMII. Transceivers themselves can have multiple
+	 * ports. To make the driver understand this topology when looked up from controller, use
+	 * following translation for the first port of a transceiver package in the devicetree.
+	 *
+	 * Single port/single link: E.g. Switch port 8 connected to SerDes 1
+	 *
+	 * port@8 { phys = <&serdes 1  1 8 8>; };
+	 * port@8 { phys = <&serdes 1 -1 8 8>; }; (alternative notation)
+	 *
+	 * Multiport/single link: E.g. Switch ports 16 to 23 connected to SerDes 2
+	 *
+	 * port@16 { phys = <&serdes 2  2 16 23>; };
+	 * port@16 { phys = <&serdes 2 -1 16 23>; }; (alternative notation)
+	 *
+	 * Multiport/multilink: E.g. Switch ports 24 to 31 connected to SerDes 3 & 4
+	 *
+	 * port@24 { phys = <&serdes 3 4 24 27>; };
+	 * port@28 { phys = <&serdes 4 3 28 31>; };
+	 */
+
+	if (args->args_count != 4)
+		return ERR_PTR(-EINVAL);
+
+	sid = args->args[0];
+	sid2 = args->args[1];
+	min_port = args->args[2];
+	max_port = args->args[3];
+
+	if (sid < 0 || sid >= ctrl->cfg->sds_cnt ||
+	    sid2 < -1 || sid2 >= ctrl->cfg->sds_cnt ||
+	    min_port < 0 || max_port < min_port)
+		return ERR_PTR(-EINVAL);
+
+	if (sid2 == sid)
+		sid2 = -1;
+
+	ctrl->sds[sid].link = sid2;
+	if (sid2 >= 0)
+		ctrl->sds[sid2].link = sid;
+
+	ctrl->sds[sid].min_port = min_port;
+	ctrl->sds[sid].max_port = max_port;
+
+	return ctrl->sds[sid].phy;
+}
+
+static int rtsds_phy_create(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	struct rtsds_macro *macro;
+
+	ctrl->sds[sid].phy = devm_phy_create(ctrl->dev, NULL, &rtsds_phy_ops);
+	if (IS_ERR(ctrl->sds[sid].phy))
+		return PTR_ERR(ctrl->sds[sid].phy);
+
+	macro = devm_kzalloc(ctrl->dev, sizeof(*macro), GFP_KERNEL);
+	if (!macro)
+		return -ENOMEM;
+
+	macro->sid = sid;
+	macro->ctrl = ctrl;
+	phy_set_drvdata(ctrl->sds[sid].phy, macro);
+
+	ctrl->sds[sid].link = -1;
+	ctrl->sds[sid].min_port = -1;
+	ctrl->sds[sid].max_port = -1;
+
+#ifdef CONFIG_DEBUG_FS
+	rtsds_dbg_init(ctrl, sid);
+#endif
+	return 0;
+}
+
+static int rtsds_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct rtsds_ctrl *ctrl;
+	int ret;
+
+	ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	ctrl->regmap = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(ctrl->regmap)) {
+		dev_err(dev, "failed to get parent syscon regmap\n");
+		return PTR_ERR(ctrl->regmap);
+	}
+	regcache_cache_bypass(ctrl->regmap, true);
+
+	ret = device_property_read_u32(dev, "reg", &ctrl->regbase);
+	if (ret) {
+		dev_err(dev, "SerDes register base not defined\n");
+		return ret;
+	}
+
+	ctrl->dev = dev;
+	ctrl->cfg = (struct rtsds_cfg *)of_device_get_match_data(dev);
+
+	for (u32 sid = 0; sid < ctrl->cfg->sds_cnt; sid++) {
+		ret = rtsds_phy_create(ctrl, sid);
+		if (ret) {
+			dev_err(dev, "failed to create phy for SerDes %d\n", sid);
+			return ret;
+		}
+	}
+
+	mutex_init(&ctrl->lock);
+	dev_set_drvdata(dev, ctrl);
+
+	rtsds_get_chip(ctrl);
+	rtsds_fw_load(ctrl);
+	rtsds_setup(ctrl);
+
+	dev_info(dev, "%s (chip %s) initialized. %d SerDes, %d pages, 32 registers.",
+		 ctrl->soc.model_name, ctrl->soc.chip_name,
+		 ctrl->cfg->sds_cnt, ctrl->cfg->page_cnt);
+
+	provider = devm_of_phy_provider_register(dev, rtsds_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(provider);
+}
+
+static const struct rtsds_cfg rtsds_838x_cfg = {
+	.family		= RTSDS_838X_CFG_FAMILY,
+	.sds_cnt	= RTSDS_838X_CFG_SDS_CNT,
+	.page_cnt	= RTSDS_838X_CFG_PAGE_CNT,
+	.write_bits	= rtsds_838x_write_bits,
+	.read		= rtsds_838x_read,
+	.reset		= rtsds_83xx_reset,
+	.set_hwmode	= rtsds_838x_set_hwmode,
+	.get_hwmode	= rtsds_838x_get_hwmode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x04, 0x01),
+		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(0x05, 0x01),
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x00, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_SGMII]	= RTSDS_COMBOMODE(0x02, 0x02),
+		[RTSDS_REALTEK_MODE_HSGMII]	= RTSDS_COMBOMODE(0x12, 0x04),
+	},
+};
+
+static const struct rtsds_cfg rtsds_839x_cfg = {
+	.family		= RTSDS_839X_CFG_FAMILY,
+	.sds_cnt	= RTSDS_839X_CFG_SDS_CNT,
+	.page_cnt	= RTSDS_839X_CFG_PAGE_CNT,
+	.write_bits	= rtsds_839x_write_bits,
+	.read		= rtsds_839x_read,
+	.reset		= rtsds_83xx_reset,
+	.set_hwmode	= rtsds_839x_set_hwmode,
+	.get_hwmode	= rtsds_839x_get_hwmode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x07, 0x00),
+		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(0x08, 0x00),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x01, 0x00),
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x00, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
+	},
+};
+
+static const struct rtsds_cfg rtsds_930x_cfg = {
+	.family		= RTSDS_930X_CFG_FAMILY,
+	.sds_cnt	= RTSDS_930X_CFG_SDS_CNT,
+	.page_cnt	= RTSDS_930X_CFG_PAGE_CNT,
+	.write_bits	= rtsds_930x_write_bits,
+	.read		= rtsds_930x_read,
+	.reset		= rtsds_93xx_reset,
+	.set_hwmode	= rtsds_930x_set_hwmode,
+	.get_hwmode	= rtsds_930x_get_hwmode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x04, 0x00),
+		[PHY_INTERFACE_MODE_2500BASEX]	= RTSDS_COMBOMODE(0x16, 0x00),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x1a, 0x00),
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x1f, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_QUSGMII]	= RTSDS_COMBOMODE(0x0d, 0x02),
+		[PHY_INTERFACE_MODE_SGMII]	= RTSDS_COMBOMODE(0x02, 0x00),
+		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(0x0d, 0x00),
+		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_COMBOMODE(0x10, 0x00),
+		[RTSDS_REALTEK_MODE_HSGMII]	= RTSDS_COMBOMODE(0x12, 0x00),
+	},
+};
+
+static const struct rtsds_cfg rtsds_931x_cfg = {
+	.family		= RTSDS_931X_CFG_FAMILY,
+	.sds_cnt	= RTSDS_931X_CFG_SDS_CNT,
+	.page_cnt	= RTSDS_931X_CFG_PAGE_CNT,
+	.write_bits	= rtsds_931x_write_bits,
+	.read		= rtsds_931x_read,
+	.reset		= rtsds_93xx_reset,
+	.set_hwmode	= rtsds_931x_set_hwmode,
+	.get_hwmode	= rtsds_931x_get_hwmode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x1f, 0x39),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x1f, 0x35),
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x1f, 0x3f),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_SGMII]	= RTSDS_COMBOMODE(0x02, 0x00),
+		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(0x0d, 0x00),
+		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_COMBOMODE(0x0a, 0x00),
+		[RTSDS_REALTEK_MODE_HSGMII]	= RTSDS_COMBOMODE(0x12, 0x00),
+	},
+};
+
+static const struct of_device_id rtsds_compatible_ids[] = {
+	{ .compatible = "realtek,rtl8380m-serdes",	.data = &rtsds_838x_cfg },
+	{ .compatible = "realtek,rtl8392m-serdes",	.data = &rtsds_839x_cfg },
+	{ .compatible = "realtek,rtl9302b-serdes",	.data = &rtsds_930x_cfg },
+	{ .compatible = "realtek,rtl9311-serdes",	.data = &rtsds_931x_cfg },
+	{},
+};
+MODULE_DEVICE_TABLE(of, rtsds_compatible_ids);
+
+static struct platform_driver rtsds_platform_driver = {
+	.probe		= rtsds_probe,
+	.driver		= {
+		.name	= "realtek,otto-serdes",
+		.of_match_table = rtsds_compatible_ids,
+	},
+};
+
+module_platform_driver(rtsds_platform_driver);
+
+MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
+MODULE_DESCRIPTION("SerDes driver for Realtek RTL83xx, RTL93xx switch SoCs");
+MODULE_LICENSE("GPL");
diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.h b/drivers/phy/realtek/phy-rtk-otto-serdes.h
new file mode 100644
index 000000000000..e7d5b54a6834
--- /dev/null
+++ b/drivers/phy/realtek/phy-rtk-otto-serdes.h
@@ -0,0 +1,219 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2025 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#ifndef _PHY_RTK_OTTO_SERDES_H
+#define _PHY_RTK_OTTO_SERDES_H
+
+#define RTSDS_CHIP_ID_MASK			GENMASK(15, 0)
+#define RTSDS_MODEL_ID_MASK			GENMASK(31, 16)
+#define RTSDS_MODEL_VERSION_MASK		GENMASK(15, 11)
+
+#define RTSDS_COMBOMODE(mode, submode)		(0x10000 | (mode << 8) | submode)
+#define RTSDS_MODE(combomode)			((combomode >> 8) & 0xff)
+#define RTSDS_SUBMODE(combomode)		(combomode & 0xff)
+
+#define RTSDS_INV_HSO_BIT			BIT(8)
+#define RTSDS_INV_HSI_BIT			BIT(9)
+#define RTSDS_SOFT_RST_BIT			BIT(6)
+#define RTSDS_SDS_EN_RX_BIT			BIT(1)
+#define RTSDS_SDS_EN_TX_BIT			BIT(0)
+#define RTSDS_RX_SELF_BIT			BIT(9)
+#define RTSDS_RX_SELF_10G_BIT			BIT(15)
+
+#define RTSDS_DEBUG_PAGE_MASK			GENMASK_ULL(45, 40)
+#define RTSDS_DEBUG_REG_MASK			GENMASK_ULL(39, 32)
+#define RTSDS_DEBUG_FIELD_MASK			GENMASK_ULL(31, 16)
+#define RTSDS_DEBUG_VAL_MASK			GENMASK_ULL(15, 0)
+
+#define RTSDS_SDS_PAGE				0x00
+#define RTSDS_SDS_EXT_PAGE			0x01
+#define RTSDS_FIB_PAGE				0x02
+#define RTSDS_FIB_EXT_PAGE			0x03
+#define RTSDS_ANA_RG_EXT_PAGE			0x09
+#define RTSDS_ANA_TG_EXT_PAGE			0x0b
+
+#define RTSDS_FULL_REG_MASK			GENMASK(15, 0)
+#define RTSDS_REALTEK_MODE_HSGMII		PHY_INTERFACE_MODE_INTERNAL
+
+#define RTSDS_838X_CFG_FAMILY			0x8380
+#define RTSDS_838X_CFG_PAGE_CNT			4
+#define RTSDS_838X_CFG_SDS_CNT			6
+
+#define RTSDS_838X_INT_MODE_CTRL_REG		0x005c
+#define RTSDS_838X_MODEL_NAME_INFO_REG		0x00d4
+#define RTSDS_838X_SDS_MODE_SEL_REG		0x0028
+
+#define RTSDS_838X_SDS_MODE_MASK		GENMASK(4, 0)
+#define RTSDS_838X_SDS_MODE_BPOS(sid)		(25 - sid * 5)
+#define RTSDS_838X_SDS_SUBMODE_MASK		GENMASK(2, 0)
+#define RTSDS_838X_SDS_SUBMODE_BPOS(sid)	((sid - 4) * 3)
+
+#define RTSDS_839X_CFG_FAMILY			0x8390
+#define RTSDS_839X_CFG_PAGE_CNT			12
+#define RTSDS_839X_CFG_SDS_CNT			14
+
+#define RTSDS_839X_MAC_SDS_IF_CTL_REG(sid)	(0x0008 + ((sid >> 1) & ~3))
+#define RTSDS_839X_MODEL_NAME_INFO_REG		0x0ff0
+
+#define RTSDS_839X_SDS_MODE_MASK		GENMASK(3, 0)
+#define RTSDS_839X_SDS_MODE_BPOS(sid)		((sid & 7) << 2)
+#define RTSDS_839X_SDS_SUBMODE_MASK		GENMASK(15, 12)
+#define RTSDS_839X_SDS_RW_BPOS(reg)		((reg << 4) & 0x10)
+
+#define RTSDS_83XX_SDS_CHIP_INFO_EN		0xa0000000
+#define RTSDS_83XX_SDS_CHIP_RL_ID_MASK		GENMASK(20, 16)
+
+#define RTSDS_930X_CFG_FAMILY			0x9300
+#define RTSDS_930X_CFG_PAGE_CNT			64
+#define RTSDS_930X_CFG_SDS_CNT			12
+
+#define RTSDS_930X_SDS_MODE_SEL_0_REG		0x0194
+#define RTSDS_930X_SDS_MODE_SEL_1_REG		0x02a0
+#define RTSDS_930X_SDS_MODE_SEL_2_REG		0x02a4
+#define RTSDS_930X_SDS_MODE_SEL_3_REG		0x0198
+#define RTSDS_930X_SDS_SUBMODE_CTRL0_REG	0x01cc
+#define RTSDS_930X_SDS_SUBMODE_CTRL1_REG	0x02d8
+
+#define RTSDS_930X_SDS_MODE_MASK		GENMASK(4, 0)
+#define RTSDS_930X_SDS_SUBMODE_MASK		GENMASK(4, 0)
+
+#define RTSDS_931X_SERDES_MODE_CTRL_REG(sid)	(0x13cc + (sid & ~3))
+#define RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG	0x13f4
+
+#define RTSDS_931X_CFG_FAMILY			0x9310
+#define RTSDS_931X_CFG_SDS_CNT			14
+#define RTSDS_931X_CFG_PAGE_CNT			576
+
+#define RTSDS_931X_SDS_MODE_FORCE_SETUP		0x80
+#define RTSDS_931X_SDS_MODE_READ_MASK		GENMASK(4, 0)
+#define RTSDS_931X_SDS_MODE_BPOS(sid)		((sid & 3) << 3)
+#define RTSDS_931X_SDS_MODE_WRITE_MASK		GENMASK(7, 0)
+#define RTSDS_931X_SDS_SUBMODE_MASK		GENMASK(11, 6)
+
+#define RTSDS_93XX_REG_MODEL_NAME_INFO		0x0004
+#define RTSDS_93XX_SDS_CHIP_INFO_EN		0xa0000
+#define RTSDS_93XX_SDS_CHIP_RL_ID_MASK		GENMASK(31, 28)
+
+#define RTSDS_93XX_SDS_CMD_READ			0
+#define RTSDS_93XX_SDS_CMD_WRITE		BIT(1)
+#define RTSDS_93XX_SDS_CMD_BUSY			BIT(0)
+#define RTSDS_93XX_SDS_CMD_SID_MASK		GENMASK(6, 2)
+#define RTSDS_93XX_SDS_CMD_PAGE_MASK		GENMASK(12, 7)
+#define RTSDS_93XX_SDS_CMD_REG_MASK		GENMASK(17, 13)
+
+/*
+ * All the following firmware constants are fixed and must not be changed. Otherwise existing
+ * firmware files in the wild will break. If new events, operations or modes need to be added,
+ * new numbers have to be assigned and reordering is strictly forbidden.
+ */
+
+#define RTSDS_FW_MAGIC				0x83009300
+
+#define RTSDS_FW_EVT_UNDEFINED			0
+#define RTSDS_FW_EVT_INIT			1
+#define RTSDS_FW_EVT_POWER_ON			2
+#define RTSDS_FW_EVT_POST_POWER_OFF		3
+#define RTSDS_FW_EVT_POST_RESET			4
+#define RTSDS_FW_EVT_POST_SET_MODE		5
+#define RTSDS_FW_EVT_PRE_POWER_OFF		6
+#define RTSDS_FW_EVT_PRE_RESET			7
+#define RTSDS_FW_EVT_PRE_SET_MODE		8
+#define RTSDS_FW_EVT_SETUP			9
+#define RTSDS_FW_EVT_MAX			10 /* end marker */
+
+#define RTSDS_FW_OP_UNDEFINED			0
+#define RTSDS_FW_OP_MASK			1 /* modify register with <mask> and <value> */
+#define RTSDS_FW_OP_WAIT			2 /* delay for <value> milliseconds */
+#define RTSDS_FW_OP_MAX				3 /* end marker */
+
+#define RTSDS_FW_MODE_UNDEFINED			0
+#define RTSDS_FW_MODE_ALL			1
+#define RTSDS_FW_MODE_HSGMII			2
+#define RTSDS_FW_MODE_SGMII			3
+#define RTSDS_FW_MODE_QSGMII			4
+#define RTSDS_FW_MODE_QUSGMII			5
+#define RTSDS_FW_MODE_USXGMII			6
+#define RTSDS_FW_MODE_XGMII			7
+#define RTSDS_FW_MODE_1000BASEX			8
+#define RTSDS_FW_MODE_100BASEX			9
+#define RTSDS_FW_MODE_10GBASER			10
+#define RTSDS_FW_MODE_2500BASEX			11
+#define RTSDS_FW_MODE_MAX			12 /* end marker */
+
+struct __packed rtsds_fw_dir {
+	uint32_t evtid;
+	uint32_t offset;
+	uint32_t len;
+	uint32_t _future_use;
+};
+
+struct __packed rtsds_fw_head {
+	u32 magic;
+	u32 checksum;
+	u32 filesize;
+	u32 dirsize;
+	struct rtsds_fw_dir dir[];
+};
+
+struct __packed rtsds_fw_seq {
+	u16 mode;
+	u16 ports;
+	u16 action;
+	u16 page;
+	u16 reg;
+	u16 mask;
+	u16 val;
+	u16 _future_use;
+};
+
+struct rtsds_sds {
+	struct phy *phy;
+	int mode;
+	int speed;
+	int link;
+	int min_port;
+	int max_port;
+};
+
+struct rtsds_soc {
+	u32 model_id;
+	u32 model_version;
+	char model_name[16];
+	u32 chip_id;
+	u32 chip_version;
+	char chip_name[16];
+};
+
+struct rtsds_ctrl {
+	struct rtsds_soc soc;
+	struct device *dev;
+	struct regmap *regmap;
+	u32 regbase;
+	struct mutex lock;
+	struct rtsds_cfg *cfg;
+	struct rtsds_sds sds[RTSDS_931X_CFG_SDS_CNT];
+	const struct firmware *firmware;
+};
+
+struct rtsds_macro {
+	struct rtsds_ctrl *ctrl;
+	u32 sid;
+};
+
+struct rtsds_cfg {
+	u32 family;
+	u32 sds_cnt;
+	u32 page_cnt;
+	void (*setup)(struct rtsds_ctrl *ctrl);
+	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
+	int (*write_bits)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u32 mask, u32 val);
+	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
+	int (*set_hwmode)(struct rtsds_ctrl *ctrl, u32 idx, int oldmode, int newmode);
+	int (*get_hwmode)(struct rtsds_ctrl *ctrl, u32 idx);
+	int mode_map[PHY_INTERFACE_MODE_MAX];
+};
+
+#endif /* _PHY_RTK_OTTO_SERDES_H */
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
