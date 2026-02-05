Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE45E9128E
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 08:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chHalsewrKN467rDzqMzqXDz2CiaaAVQa5SOeA2Artw=; b=pD5Ke1BF2s22jw
	top4pGSgogb1x5zGpaThDaLAE7ZfyVxFg5R82hjjdp0dBZTWRBcK5ld70xgfq6ttG3JvmjmtGwJhm
	cIqeDEhXljuU+pJOB8FxaAqzjknUvA8qo+OxjFWK0QmD8d+f3w4quUjMX3Svb3EX4sZB8X+nCREvJ
	rJvjTIEQKFm0hQuj+7pp9b5ZcqnKDv/1tsOAKI4RVzXpxc/5hxOrOVghVQIFiqgWSx7NCBj8US1DT
	ApRArzxDHhznBJzgqagcFhbzrbWePjuT2+RF1QQAQtgSfWTsx5buuJGt8kI8c1YEPaJE0EnRXF8U5
	Yb7lDPMBkwtCMYU3iS1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnudB-00000009bkk-0Khf;
	Thu, 05 Feb 2026 08:22:29 +0000
Received: from azure-sdnproxy.icoremail.net ([52.237.72.81])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnud7-00000009bjq-1xEv
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 08:22:27 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgCn9zc9U4RpIuoCAA--.13763S2;
	Thu, 05 Feb 2026 16:22:23 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	fenglin@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v9 2/2] phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver
Date: Thu,  5 Feb 2026 16:22:19 +0800
Message-Id: <20260205082219.1521-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
X-CM-TRANSID: TAJkCgCn9zc9U4RpIuoCAA--.13763S2
X-Coremail-Antispam: 1UD129KBjvJXoW3CrWUuF48trWktr1UWF4rXwb_yoWkXFykpF
	s8CF1jgrW8tF47Ka95t3Z0kF1agFnFqFya9FykK3WrZFW3Jr48XasIqay5trn0vr1kX3y8
	Kwn5XFy7Ca15Z3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jrv_JF1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb_Ma5UUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_002225_682583_2FCD2CFE 
X-CRM114-Status: GOOD (  22.13  )
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

Create the eswin phy driver directory and add support for the
SATA PHY driver on the EIC7700 SoC platform.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 drivers/phy/Kconfig                  |   1 +
 drivers/phy/Makefile                 |   1 +
 drivers/phy/eswin/Kconfig            |  14 ++
 drivers/phy/eswin/Makefile           |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c | 273 +++++++++++++++++++++++++++
 5 files changed, 291 insertions(+)
 create mode 100644 drivers/phy/eswin/Kconfig
 create mode 100644 drivers/phy/eswin/Makefile
 create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 678dd0452f0a..6d50704917f0 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -105,6 +105,7 @@ source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
 source "drivers/phy/cadence/Kconfig"
+source "drivers/phy/eswin/Kconfig"
 source "drivers/phy/freescale/Kconfig"
 source "drivers/phy/hisilicon/Kconfig"
 source "drivers/phy/ingenic/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index bfb27fb5a494..482a143d3417 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -17,6 +17,7 @@ obj-y					+= allwinner/	\
 					   amlogic/	\
 					   broadcom/	\
 					   cadence/	\
+					   eswin/	\
 					   freescale/	\
 					   hisilicon/	\
 					   ingenic/	\
diff --git a/drivers/phy/eswin/Kconfig b/drivers/phy/eswin/Kconfig
new file mode 100644
index 000000000000..cf2bf2efc32f
--- /dev/null
+++ b/drivers/phy/eswin/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Phy drivers for ESWIN platforms
+#
+config PHY_EIC7700_SATA
+	tristate "eic7700 Sata SerDes/PHY driver"
+	depends on ARCH_ESWIN || COMPILE_TEST
+	depends on HAS_IOMEM
+	select GENERIC_PHY
+	help
+	  Enable this to support SerDes/Phy found on ESWIN's
+	  EIC7700 SoC. This Phy supports SATA 1.5 Gb/s,
+	  SATA 3.0 Gb/s, SATA 6.0 Gb/s speeds.
+	  It supports one SATA host port to accept one SATA device.
diff --git a/drivers/phy/eswin/Makefile b/drivers/phy/eswin/Makefile
new file mode 100644
index 000000000000..db08c66be812
--- /dev/null
+++ b/drivers/phy/eswin/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PHY_EIC7700_SATA)	+= phy-eic7700-sata.o
diff --git a/drivers/phy/eswin/phy-eic7700-sata.c b/drivers/phy/eswin/phy-eic7700-sata.c
new file mode 100644
index 000000000000..c33653d48daa
--- /dev/null
+++ b/drivers/phy/eswin/phy-eic7700-sata.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ESWIN SATA PHY driver
+ *
+ * Copyright 2026, Beijing ESWIN Computing Technology Co., Ltd..
+ * All rights reserved.
+ *
+ * Authors: Yulin Lu <luyulin@eswincomputing.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#define SATA_AXI_LP_CTRL			0x08
+#define SATA_MPLL_CTRL				0x20
+#define SATA_P0_PHY_STAT			0x24
+#define SATA_PHY_CTRL0				0x28
+#define SATA_PHY_CTRL1				0x2c
+#define SATA_REF_CTRL				0x34
+#define SATA_REF_CTRL1				0x38
+#define SATA_LOS_IDEN				0x3c
+
+#define SATA_CLK_RST_SOURCE_PHY			BIT(0)
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK	GENMASK(6, 0)
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN1_DEFAULT	0x42
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK	GENMASK(14, 8)
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN2_DEFAULT	0x46
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK	GENMASK(22, 16)
+#define SATA_P0_PHY_TX_AMPLITUDE_GEN3_DEFAULT	0x73
+#define SATA_P0_PHY_TX_PREEMPH_GEN1_MASK	GENMASK(5, 0)
+#define SATA_P0_PHY_TX_PREEMPH_GEN1_DEFAULT	0x5
+#define SATA_P0_PHY_TX_PREEMPH_GEN2_MASK	GENMASK(13, 8)
+#define SATA_P0_PHY_TX_PREEMPH_GEN2_DEFAULT	0x5
+#define SATA_P0_PHY_TX_PREEMPH_GEN3_MASK	GENMASK(21, 16)
+#define SATA_P0_PHY_TX_PREEMPH_GEN3_DEFAULT	0x23
+#define SATA_LOS_LEVEL_MASK			GENMASK(4, 0)
+#define SATA_LOS_BIAS_MASK			GENMASK(18, 16)
+#define SATA_M_CSYSREQ				BIT(0)
+#define SATA_S_CSYSREQ				BIT(16)
+#define SATA_REF_REPEATCLK_EN			BIT(0)
+#define SATA_REF_USE_PAD			BIT(20)
+#define SATA_MPLL_MULTIPLIER_MASK		GENMASK(22, 16)
+#define SATA_P0_PHY_READY			BIT(0)
+
+#define PLL_LOCK_SLEEP_US			10
+#define PLL_LOCK_TIMEOUT_US			1000
+
+struct eic7700_sata_phy {
+	u32 tx_amplitude_tuning_val[3];
+	u32 tx_preemph_tuning_val[3];
+	struct reset_control *rst;
+	struct regmap *regmap;
+	struct clk *clk;
+	struct phy *phy;
+};
+
+static const struct regmap_config eic7700_sata_phy_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = SATA_LOS_IDEN,
+};
+
+static int wait_for_phy_ready(struct regmap *regmap, u32 reg, u32 checkbit,
+			      u32 status)
+{
+	u32 val;
+	int ret;
+
+	ret = regmap_read_poll_timeout(regmap, reg, val,
+				       (val & checkbit) == status,
+				       PLL_LOCK_SLEEP_US, PLL_LOCK_TIMEOUT_US);
+
+	return ret;
+}
+
+static int eic7700_sata_phy_init(struct phy *phy)
+{
+	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
+	u32 val;
+	int ret;
+
+	ret = clk_prepare_enable(sata_phy->clk);
+	if (ret)
+		return ret;
+
+	regmap_write(sata_phy->regmap, SATA_REF_CTRL1, SATA_CLK_RST_SOURCE_PHY);
+
+	val = FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK,
+			 sata_phy->tx_amplitude_tuning_val[0]) |
+	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK,
+			 sata_phy->tx_amplitude_tuning_val[1]) |
+	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK,
+			 sata_phy->tx_amplitude_tuning_val[2]);
+	regmap_write(sata_phy->regmap, SATA_PHY_CTRL0, val);
+
+	val = FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN1_MASK,
+			 sata_phy->tx_preemph_tuning_val[0]) |
+	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN2_MASK,
+			 sata_phy->tx_preemph_tuning_val[1]) |
+	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN3_MASK,
+			 sata_phy->tx_preemph_tuning_val[2]);
+	regmap_write(sata_phy->regmap, SATA_PHY_CTRL1, val);
+
+	val = FIELD_PREP(SATA_LOS_LEVEL_MASK, 0x9) |
+	      FIELD_PREP(SATA_LOS_BIAS_MASK, 0x2);
+	regmap_write(sata_phy->regmap, SATA_LOS_IDEN, val);
+
+	val = SATA_M_CSYSREQ | SATA_S_CSYSREQ;
+	regmap_write(sata_phy->regmap, SATA_AXI_LP_CTRL, val);
+
+	val = SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD;
+	regmap_write(sata_phy->regmap, SATA_REF_CTRL, val);
+
+	val = FIELD_PREP(SATA_MPLL_MULTIPLIER_MASK, 0x3c);
+	regmap_write(sata_phy->regmap, SATA_MPLL_CTRL, val);
+
+	usleep_range(15, 20);
+
+	ret = reset_control_deassert(sata_phy->rst);
+	if (ret)
+		goto disable_clk;
+
+	ret = wait_for_phy_ready(sata_phy->regmap, SATA_P0_PHY_STAT,
+				 SATA_P0_PHY_READY, 1);
+	if (ret < 0) {
+		dev_err(&sata_phy->phy->dev, "PHY READY check failed\n");
+		goto disable_clk;
+	}
+
+	return 0;
+
+disable_clk:
+	clk_disable_unprepare(sata_phy->clk);
+	return ret;
+}
+
+static int eic7700_sata_phy_exit(struct phy *phy)
+{
+	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
+	int ret;
+
+	ret = reset_control_assert(sata_phy->rst);
+	if (ret)
+		return ret;
+
+	clk_disable_unprepare(sata_phy->clk);
+
+	return 0;
+}
+
+static const struct phy_ops eic7700_sata_phy_ops = {
+	.init		= eic7700_sata_phy_init,
+	.exit		= eic7700_sata_phy_exit,
+	.owner		= THIS_MODULE,
+};
+
+static void eic7700_get_tuning_param(struct device_node *np,
+				     struct eic7700_sata_phy *sata_phy)
+{
+	if (of_property_read_u32_array
+		(np, "eswin,tx-amplitude-tuning",
+		sata_phy->tx_amplitude_tuning_val,
+		ARRAY_SIZE(sata_phy->tx_amplitude_tuning_val))) {
+		sata_phy->tx_amplitude_tuning_val[0] =
+			SATA_P0_PHY_TX_AMPLITUDE_GEN1_DEFAULT;
+		sata_phy->tx_amplitude_tuning_val[1] =
+			SATA_P0_PHY_TX_AMPLITUDE_GEN2_DEFAULT;
+		sata_phy->tx_amplitude_tuning_val[2] =
+			SATA_P0_PHY_TX_AMPLITUDE_GEN3_DEFAULT;
+	}
+
+	if (of_property_read_u32_array
+		(np, "eswin,tx-preemph-tuning",
+		sata_phy->tx_preemph_tuning_val,
+		ARRAY_SIZE(sata_phy->tx_preemph_tuning_val))) {
+		sata_phy->tx_preemph_tuning_val[0] =
+			SATA_P0_PHY_TX_PREEMPH_GEN1_DEFAULT;
+		sata_phy->tx_preemph_tuning_val[1] =
+			SATA_P0_PHY_TX_PREEMPH_GEN2_DEFAULT;
+		sata_phy->tx_preemph_tuning_val[2] =
+			SATA_P0_PHY_TX_PREEMPH_GEN3_DEFAULT;
+	}
+}
+
+static int eic7700_sata_phy_probe(struct platform_device *pdev)
+{
+	struct eic7700_sata_phy *sata_phy;
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct resource *res;
+	void __iomem *regs;
+
+	sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
+	if (!sata_phy)
+		return -ENOMEM;
+
+	/*
+	 * Map the I/O resource with platform_get_resource and devm_ioremap
+	 * instead of the devm_platform_ioremap_resource API, because the
+	 * address region of the SATA-PHY falls into the region of the HSP
+	 * clock & reset that has already been obtained by the HSP
+	 * clock-and-reset driver.
+	 */
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENOENT;
+
+	regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
+	sata_phy->regmap = devm_regmap_init_mmio
+			   (dev, regs, &eic7700_sata_phy_regmap_config);
+	if (IS_ERR(sata_phy->regmap))
+		return dev_err_probe(dev, PTR_ERR(sata_phy->regmap),
+				     "failed to init regmap\n");
+
+	dev_set_drvdata(dev, sata_phy);
+
+	eic7700_get_tuning_param(np, sata_phy);
+
+	sata_phy->clk = devm_clk_get(dev, "phy");
+	if (IS_ERR(sata_phy->clk))
+		return PTR_ERR(sata_phy->clk);
+
+	sata_phy->rst = devm_reset_control_array_get_exclusive(dev);
+	if (IS_ERR(sata_phy->rst))
+		return dev_err_probe(dev, PTR_ERR(sata_phy->rst),
+				     "failed to get reset control\n");
+
+	sata_phy->phy = devm_phy_create(dev, NULL, &eic7700_sata_phy_ops);
+	if (IS_ERR(sata_phy->phy))
+		return dev_err_probe(dev, PTR_ERR(sata_phy->phy),
+				     "failed to create PHY\n");
+
+	phy_set_drvdata(sata_phy->phy, sata_phy);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "failed to register PHY provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id eic7700_sata_phy_of_match[] = {
+	{ .compatible = "eswin,eic7700-sata-phy" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, eic7700_sata_phy_of_match);
+
+static struct platform_driver eic7700_sata_phy_driver = {
+	.probe	= eic7700_sata_phy_probe,
+	.driver = {
+		.of_match_table	= eic7700_sata_phy_of_match,
+		.name  = "eic7700-sata-phy",
+	}
+};
+module_platform_driver(eic7700_sata_phy_driver);
+
+MODULE_DESCRIPTION("SATA PHY driver for the ESWIN EIC7700 SoC");
+MODULE_AUTHOR("Yulin Lu <luyulin@eswincomputing.com>");
+MODULE_LICENSE("GPL");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
