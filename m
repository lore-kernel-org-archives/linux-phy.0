Return-Path: <SRS0=44yZ=P5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CB64C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 10 Nov 2021 13:08:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAF636112F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Nov 2021 13:08:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BAF636112F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYjrMLru0biY7XhUtiqI4je3yNu/HdnUJ7WAVexE7H0=; b=MN9dB/Z3kmHzvr
	805mXjJEQbu0cf9ypFrSl3IPj4M4rxn3K2qaSR0U+VdERpxn8jo8ck3NDRS5XmiYH7ftvaYbTDiNr
	zbfSQhvvkl5VdsiT6Oef3NslIQLfBNFzk29RXHp96TET7SJsxij7YSltYd8oFmcHtPvZZyb9pWtZQ
	2iCyryArmu8bb0NZ2n23/aziy894Jl335cbz32PCMcIZoy9PCJgnMjjRWFLCwLGEMEUlXsWwa20Pi
	YdfYFYH5VhhLa3xbd4vkOeNjv5v3/uioHY/pVPC0ypRJJ8YmWQhEVNyGmGkW/Z1ooIoP1p22tllPH
	srxfRKrxcohBLRMBbuyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mknKg-005WWF-8O; Wed, 10 Nov 2021 13:08:06 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mknJT-005Vtp-Ao
 for linux-phy@lists.infradead.org; Wed, 10 Nov 2021 13:06:56 +0000
Received: by mail-wm1-x332.google.com with SMTP id o29so2113595wms.2
 for <linux-phy@lists.infradead.org>; Wed, 10 Nov 2021 05:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SSXFqxiBuOfNZ2DCtSR+veqFktKpc7dHMgnMNGghdq8=;
 b=MaZYUwINJwuMinXwyeMvBOT9bE+bX7k6S+FvcwPsm1ZxQBNfBlaKxei1I0m3oss2nx
 Nyd1nHjVuK/IQfvH9iuFb2lpYDkweuOcsDmRZjdFH8tXnbSnQBbqJ7IvbU1LMtd/xIfN
 /rj0ausvABMjzeX7GwOfsqBQX9JA4/UrEdpk8QazbhYPOuyU+H2lcT8e5kWd84nsJl/Q
 jRXhnwKvlbj8ocIPa26VLrMF+/KTKBBm7xQzF3EiAvVVQOb1473LnKb/nLQ0zj2AU6ed
 IuW5YQjZcNolRDHA/h1G9Omt2A5QS46BPKo070mD9kyuvlkfTamUrsIjmHZDodb/k+Wm
 rDCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SSXFqxiBuOfNZ2DCtSR+veqFktKpc7dHMgnMNGghdq8=;
 b=S5l+wsg2MFEtkYHjT93An/vitxHaGuFHyHa9rtIyEtdiiDRGig0zTDrOvwQTp6mbzt
 SR72B+0TbA9tzvZeG3ANx01lvyKXu3Mn+aFfdkbshXvkPAz+GZPyIQMapwTL4CbSmh6+
 G94Xuuf5RmZ8Pio5Gys6zlQFNQLMFd/9ZGoXsRIn0xJvPTN35R3YxzsEmXaoTr4sT+Ax
 zxpt7IjbILBiwjr3uorVQ0T0Zt6YmH5UI5khdAwoKXP9+vrVcIgkwO9G5159W4m2jEpe
 7g0hpJWOznCnHJ98JFvDBOaO00P+1XfXtkadX2N6zZNdsXQ/hgKM/01+y6AO3SKZqXhw
 rNTg==
X-Gm-Message-State: AOAM532ph5+qC1G/Aq8pPZHG7IYdtC9QRmSgjV3w/aVW+NZiTD7zvE1C
 RkQXc5IDmK/y3+ZbcthfUDbUMQ==
X-Google-Smtp-Source: ABdhPJwlKpQ3Dr2oOfIc3YfJVHE+5oi0U8hC4W1kAee6jrqS1TDYiNl75bHr6fxsEyrLUXOQ2jpKmw==
X-Received: by 2002:a1c:2d5:: with SMTP id 204mr16357417wmc.47.1636549609428; 
 Wed, 10 Nov 2021 05:06:49 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-656-1-151-143.w92-154.abo.wanadoo.fr. [92.154.18.143])
 by smtp.gmail.com with ESMTPSA id i17sm5952175wmq.48.2021.11.10.05.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Nov 2021 05:06:49 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: [PATCH v6 6/7] phy: phy-mtk-dp: Add driver for DP phy
Date: Wed, 10 Nov 2021 14:06:22 +0100
Message-Id: <20211110130623.20553-7-granquet@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211110130623.20553-1-granquet@baylibre.com>
References: <20211110130623.20553-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_050651_416332_B583A650 
X-CRM114-Status: GOOD (  25.51  )
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

From: Markus Schneider-Pargmann <msp@baylibre.com>

This is a new driver that supports the integrated DisplayPort phy for
mediatek SoCs, especially the mt8195. The phy is integrated into the
DisplayPort controller and will be created by the mtk-dp driver. This
driver expects a struct regmap to be able to work on the same registers
as the DisplayPort controller. It sets the device data to be the struct
phy so that the DisplayPort controller can easily work with it.

The driver does not have any devicetree bindings because the datasheet
does not list the controller and the phy as distinct units.

The interaction with the controller can be covered by the configure
callback of the phy framework and its displayport parameters.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 MAINTAINERS                       |   1 +
 drivers/phy/mediatek/Kconfig      |   8 ++
 drivers/phy/mediatek/Makefile     |   1 +
 drivers/phy/mediatek/phy-mtk-dp.c | 219 ++++++++++++++++++++++++++++++
 4 files changed, 229 insertions(+)
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 170bbbeefc3f4..f9a71b6d2a4a9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6367,6 +6367,7 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	Documentation/devicetree/bindings/display/mediatek/
 F:	drivers/gpu/drm/mediatek/
+F:	drivers/phy/mediatek/phy-mtk-dp.c
 F:	drivers/phy/mediatek/phy-mtk-hdmi*
 F:	drivers/phy/mediatek/phy-mtk-mipi*
 
diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
index 55f8e6c048ab3..f7ec860590492 100644
--- a/drivers/phy/mediatek/Kconfig
+++ b/drivers/phy/mediatek/Kconfig
@@ -55,3 +55,11 @@ config PHY_MTK_MIPI_DSI
 	select GENERIC_PHY
 	help
 	  Support MIPI DSI for Mediatek SoCs.
+
+config PHY_MTK_DP
+	tristate "MediaTek DP-PHY Driver"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Support DisplayPort PHY for Mediatek SoCs.
diff --git a/drivers/phy/mediatek/Makefile b/drivers/phy/mediatek/Makefile
index ace660fbed3a1..4ba1e06504346 100644
--- a/drivers/phy/mediatek/Makefile
+++ b/drivers/phy/mediatek/Makefile
@@ -3,6 +3,7 @@
 # Makefile for the phy drivers.
 #
 
+obj-$(CONFIG_PHY_MTK_DP)		+= phy-mtk-dp.o
 obj-$(CONFIG_PHY_MTK_TPHY)		+= phy-mtk-tphy.o
 obj-$(CONFIG_PHY_MTK_UFS)		+= phy-mtk-ufs.o
 obj-$(CONFIG_PHY_MTK_XSPHY)		+= phy-mtk-xsphy.o
diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
new file mode 100644
index 0000000000000..4f8d26ec0346b
--- /dev/null
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021 BayLibre
+ * Author: Markus Schneider-Pargmann <msp@baylibre.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define PHY_OFFSET 0x1000
+
+#define MTK_DP_PHY_DIG_PLL_CTL_1		(PHY_OFFSET + 0x014)
+# define TPLL_SSC_EN				BIT(3)
+
+#define MTK_DP_PHY_DIG_BIT_RATE			(PHY_OFFSET + 0x03C)
+# define BIT_RATE_RBR				0
+# define BIT_RATE_HBR				1
+# define BIT_RATE_HBR2				2
+# define BIT_RATE_HBR3				3
+
+#define MTK_DP_PHY_DIG_SW_RST			(PHY_OFFSET + 0x038)
+# define DP_GLB_SW_RST_PHYD			BIT(0)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_3		(PHY_OFFSET + 0x138)
+#define MTK_DP_LANE1_DRIVING_PARAM_3		(PHY_OFFSET + 0x238)
+#define MTK_DP_LANE2_DRIVING_PARAM_3		(PHY_OFFSET + 0x338)
+#define MTK_DP_LANE3_DRIVING_PARAM_3		(PHY_OFFSET + 0x438)
+# define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	0x10
+# define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(0x14 << 8)
+# define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	(0x18 << 16)
+# define XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT	(0x20 << 24)
+# define DRIVING_PARAM_3_DEFAULT		(XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_4		(PHY_OFFSET + 0x13C)
+#define MTK_DP_LANE1_DRIVING_PARAM_4		(PHY_OFFSET + 0x23C)
+#define MTK_DP_LANE2_DRIVING_PARAM_4		(PHY_OFFSET + 0x33C)
+#define MTK_DP_LANE3_DRIVING_PARAM_4		(PHY_OFFSET + 0x43C)
+# define XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT	0x18
+# define XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT	(0x1e << 8)
+# define XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT	(0x24 << 16)
+# define XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT	(0x20 << 24)
+# define DRIVING_PARAM_4_DEFAULT		(XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_5		(PHY_OFFSET + 0x140)
+#define MTK_DP_LANE1_DRIVING_PARAM_5		(PHY_OFFSET + 0x240)
+#define MTK_DP_LANE2_DRIVING_PARAM_5		(PHY_OFFSET + 0x340)
+#define MTK_DP_LANE3_DRIVING_PARAM_5		(PHY_OFFSET + 0x440)
+# define XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT	0x28
+# define XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT	(0x30 << 8)
+# define DRIVING_PARAM_5_DEFAULT		(XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_6		(PHY_OFFSET + 0x144)
+#define MTK_DP_LANE1_DRIVING_PARAM_6		(PHY_OFFSET + 0x244)
+#define MTK_DP_LANE2_DRIVING_PARAM_6		(PHY_OFFSET + 0x344)
+#define MTK_DP_LANE3_DRIVING_PARAM_6		(PHY_OFFSET + 0x444)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT	0x00
+# define XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT	(0x04 << 8)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT	(0x08 << 16)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT	(0x10 << 24)
+# define DRIVING_PARAM_6_DEFAULT		(XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_7		(PHY_OFFSET + 0x148)
+#define MTK_DP_LANE1_DRIVING_PARAM_7		(PHY_OFFSET + 0x248)
+#define MTK_DP_LANE2_DRIVING_PARAM_7		(PHY_OFFSET + 0x348)
+#define MTK_DP_LANE3_DRIVING_PARAM_7		(PHY_OFFSET + 0x448)
+# define XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT	0x00
+# define XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT	(0x06 << 8)
+# define XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT	(0x0c << 16)
+# define XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT	(0x00 << 24)
+# define DRIVING_PARAM_7_DEFAULT		(XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_8		(PHY_OFFSET + 0x14C)
+#define MTK_DP_LANE1_DRIVING_PARAM_8		(PHY_OFFSET + 0x24C)
+#define MTK_DP_LANE2_DRIVING_PARAM_8		(PHY_OFFSET + 0x34C)
+#define MTK_DP_LANE3_DRIVING_PARAM_8		(PHY_OFFSET + 0x44C)
+# define XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT	0x08
+# define XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT	(0x00 << 8)
+# define DRIVING_PARAM_8_DEFAULT		(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
+
+struct mtk_dp_phy {
+	struct regmap *regs;
+};
+
+static int mtk_dp_phy_init(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	u32 driving_params[] = {
+		DRIVING_PARAM_3_DEFAULT,
+		DRIVING_PARAM_4_DEFAULT,
+		DRIVING_PARAM_5_DEFAULT,
+		DRIVING_PARAM_6_DEFAULT,
+		DRIVING_PARAM_7_DEFAULT,
+		DRIVING_PARAM_8_DEFAULT
+	};
+
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE0_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE1_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE2_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE3_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+
+	return 0;
+}
+
+static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	u32 val;
+
+	if (opts->dp.set_rate) {
+		switch (opts->dp.link_rate) {
+		default:
+			dev_err(&phy->dev,
+				"Implementation error, unknown linkrate %x\n",
+				opts->dp.link_rate);
+			return -EINVAL;
+		case 1620:
+			val = BIT_RATE_RBR;
+			break;
+		case 2700:
+			val = BIT_RATE_HBR;
+			break;
+		case 5400:
+			val = BIT_RATE_HBR2;
+			break;
+		case 8100:
+			val = BIT_RATE_HBR3;
+			break;
+		}
+		regmap_write(dp_phy->regs, MTK_DP_PHY_DIG_BIT_RATE, val);
+	}
+
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_PLL_CTL_1,
+			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
+
+	return 0;
+}
+
+static int mtk_dp_phy_reset(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+			   DP_GLB_SW_RST_PHYD, 0);
+	usleep_range(50, 200);
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+			   DP_GLB_SW_RST_PHYD, 1);
+
+	return 0;
+}
+
+static const struct phy_ops mtk_dp_phy_dev_ops = {
+	.init = mtk_dp_phy_init,
+	.configure = mtk_dp_phy_configure,
+	.reset = mtk_dp_phy_reset,
+	.owner = THIS_MODULE,
+};
+
+static int mtk_dp_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_dp_phy *dp_phy;
+	struct phy *phy;
+
+	dp_phy = devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
+	if (!dp_phy)
+		return -ENOMEM;
+
+	dp_phy->regs = *(struct regmap **)dev->platform_data;
+	if (!dp_phy->regs) {
+		dev_err(dev, "No data passed, requires struct regmap**\n");
+		return -EINVAL;
+	}
+
+	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "Failed to create DP PHY: %ld\n", PTR_ERR(phy));
+		return PTR_ERR(phy);
+	}
+	phy_set_drvdata(phy, dp_phy);
+
+	// Set device data to the phy so that mtk-dp can get it easily
+	dev_set_drvdata(dev, phy);
+
+	return 0;
+}
+
+struct platform_driver mtk_dp_phy_driver = {
+	.probe = mtk_dp_phy_probe,
+	.driver = {
+		.name = "mediatek-dp-phy",
+	},
+};
+module_platform_driver(mtk_dp_phy_driver);
+
+MODULE_AUTHOR("Markus Schneider-Pargmann <msp@baylibre.com>");
+MODULE_DESCRIPTION("MediaTek DP PHY Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
