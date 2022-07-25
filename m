Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9891DC43334
	for <linux-phy@archiver.kernel.org>; Mon, 25 Jul 2022 02:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOdqSFOJtXStdfNyg5Rmi5oX0Bfv3pN0uKdFiQ6DH2M=; b=kdZr3GPGTUyAa/
	qtXRaMp3Y7pn+DAEqDuOjN5GJePwoFHMthxxb4hXwRWXERJKzyGQ+KgcX139u5c0TRttrMGtXQRGh
	beph+0cIDX0r9WO1s0v5eAA/Dgu1PizZFwnRTb5yyj4Y/+2C/cl9poABbb/Vtgrqh205gJ8JokvDH
	2Q/YclkakYXmyT/0lKVkNV53qd+GCK8oTrI3aLOmZ//KghGiRUQ4+aR0LvTTgpj8yphP0lcASuXfy
	D7JA9LDz9RZokiG4KqWfFMEcdxuJTX8W8l7k2F20YXsrxYtsRzq+9WFRtQ6+Hwupd9HGoJD+DyQCK
	XDhLbR6RLHU9oK+T5UYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5G-001LIY-2J; Mon, 25 Jul 2022 02:44:38 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5B-001LAK-JN
	for linux-phy@lists.infradead.org; Mon, 25 Jul 2022 02:44:35 +0000
Received: by mail-pg1-x52a.google.com with SMTP id q22so3984766pgt.9
        for <linux-phy@lists.infradead.org>; Sun, 24 Jul 2022 19:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FR0Q0hkObfGHlH/o9aOdkx3hkCX5LJ94VpLUneqzcqE=;
        b=Rg9epcqsSMNFXnIre3bf4yLzyN9J/X0ej5uPMhas6hJZSbSCZMPaD4iHwmNnXaZifB
         Qr8PiVdPGyHzX+peAGHQKeagJqgWLrL02N4nRy6xGBOUvhxFOHym3gNVHOUliFu2EejD
         6nRF7I87/dqxadKTo6MLYTNOWDHORK2EqyzWP/JKrXm5gF7eyOaCEGGLbqsQ0ErHtIzv
         pumTJBVs4VURY2q3dqpCWxL7KHz1+FPa3GfJeYPsgDK9ZWp/WxnKoDcWG9w7zCTwn21h
         1UjckW0opm1yBs2tl1yOT8CoRGytklFhbaq46jdN1/4VUjZnyBoKVQQoza8k0XzJlVqF
         HJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FR0Q0hkObfGHlH/o9aOdkx3hkCX5LJ94VpLUneqzcqE=;
        b=qBVIxsnuiLil5h3h+dLdp0OMEatw3nHT0E3+rx/xxsnYdyG3RbdKDOlelT3kiXOW/F
         +BzKBFuQkYgDrt6EoXByCgTSHPoxkA0L2GjYWa70v3x3GHYVq49dEHeu7J612Fxzo7P5
         bJCvKNjFHV2aChInFCG2oFWke2HEaVX1pCe1xZIIKCprbIR4F120tgjLrzrFWR0G8kLS
         1EEtIt5/Ct8t7u9oqpAHOJYKdcwskLQdx4qxXZvSEh+Hb2MgjKt02CC8VjLuUXiDUSO8
         ZQT4IohG+0UCIMnbV8KK/4V8/Auter8n7ITcxDeAySijdgbwAjeA58C4/eahnRU9H0La
         lzpA==
X-Gm-Message-State: AJIora+MW7/hC8nuL7gtd95owTf1XfD+tya7PuS2ybZ/jchi5xudtS8T
	QJkV+zXj9Dzn0VymStTZbZ8=
X-Google-Smtp-Source: AGRyM1sJZjD0RkXwk3OiOSWendqWOzhnJOZqOK0togQe7ITGlZgSZq9fBPHmNwY9eqXSetwwKZwP6A==
X-Received: by 2002:a63:ae03:0:b0:408:b78c:e284 with SMTP id q3-20020a63ae03000000b00408b78ce284mr9078247pgf.401.1658717072545;
        Sun, 24 Jul 2022 19:44:32 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id u13-20020a170903124d00b0016d1b197914sm7983304plh.90.2022.07.24.19.44.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jul 2022 19:44:32 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	p.zabel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v5 1/2] phy: usb: Add USB2.0 phy driver for Sunplus SP7021
Date: Mon, 25 Jul 2022 10:44:11 +0800
Message-Id: <1658717052-26142-2-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
References: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_194433_662770_07757249 
X-CRM114-Status: GOOD (  24.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add USB2.0 phy driver for Sunplus SP7021

Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
---
Changes in v5
 - No change

 MAINTAINERS                            |   8 +
 drivers/phy/Kconfig                    |   1 +
 drivers/phy/Makefile                   |   1 +
 drivers/phy/sunplus/Kconfig            |  12 ++
 drivers/phy/sunplus/Makefile           |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c | 297 +++++++++++++++++++++++++++++++++
 6 files changed, 321 insertions(+)
 create mode 100644 drivers/phy/sunplus/Kconfig
 create mode 100644 drivers/phy/sunplus/Makefile
 create mode 100644 drivers/phy/sunplus/phy-sunplus-usb2.c

diff --git a/MAINTAINERS b/MAINTAINERS
index f679152..31d2ba0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19223,6 +19223,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml
 F:	drivers/nvmem/sunplus-ocotp.c
 
+SUNPLUS USB2 PHY DRIVER
+M:	Vincent Shih <vincent.sunplus@gmail.com>
+L:	linux-usb@vger.kernel.org
+S:	Maintained
+F:	drivers/phy/sunplus/Kconfig
+F:	drivers/phy/sunplus/Makefile
+F:	drivers/phy/sunplus/phy-sunplus-usb2.c
+
 SUNPLUS PWM DRIVER
 M:	Hammer Hsieh <hammerh0314@gmail.com>
 S:	Maintained
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 300b0f2..7bd00a1 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -91,6 +91,7 @@ source "drivers/phy/rockchip/Kconfig"
 source "drivers/phy/samsung/Kconfig"
 source "drivers/phy/socionext/Kconfig"
 source "drivers/phy/st/Kconfig"
+source "drivers/phy/sunplus/Kconfig"
 source "drivers/phy/tegra/Kconfig"
 source "drivers/phy/ti/Kconfig"
 source "drivers/phy/intel/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 01e9eff..54f312c 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -31,6 +31,7 @@ obj-y					+= allwinner/	\
 					   samsung/	\
 					   socionext/	\
 					   st/		\
+					   sunplus/	\
 					   tegra/	\
 					   ti/		\
 					   xilinx/
diff --git a/drivers/phy/sunplus/Kconfig b/drivers/phy/sunplus/Kconfig
new file mode 100644
index 0000000..3bd3cfb
--- /dev/null
+++ b/drivers/phy/sunplus/Kconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config PHY_SUNPLUS_USB
+	tristate "Sunplus SP7021 USB 2.0 PHY driver"
+	depends on OF && (SOC_SP7021 || COMPILE_TEST)
+	select GENERIC_PHY
+	help
+	  Enable this to support the USB 2.0 PHY on Sunplus SP7021
+	  SoC. The USB 2.0 PHY controller supports battery charger
+	  and synchronous signals, various power down modes including
+	  operating, partial and suspend modes, and high-speed,
+	  full-speed and low-speed data transfer.
diff --git a/drivers/phy/sunplus/Makefile b/drivers/phy/sunplus/Makefile
new file mode 100644
index 0000000..71754d5
--- /dev/null
+++ b/drivers/phy/sunplus/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_PHY_SUNPLUS_USB)	+= phy-sunplus-usb2.o
diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
new file mode 100644
index 0000000..09875c4
--- /dev/null
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -0,0 +1,297 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Sunplus SP7021 USB 2.0 phy driver
+ *
+ * Copyright (C) 2022 Sunplus Technology Inc., All rights reserved.
+ *
+ * Note 1 : non-posted write command for the registers accesses of
+ * Sunplus SP7021.
+ *
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of_platform.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+#define HIGH_MASK_BITS				GENMASK(31, 16)
+#define LOW_MASK_BITS				GENMASK(15, 0)
+#define OTP_DISC_LEVEL_DEFAULT			0xd
+
+/* GROUP UPHY */
+#define CONFIG1					0x4
+#define J_HS_TX_PWRSAV				BIT(5)
+#define CONFIG3					0xc
+#define J_FORCE_DISC_ON				BIT(5)
+#define J_DEBUG_CTRL_ADDR_MACRO			BIT(0)
+#define CONFIG7					0x1c
+#define J_DISC					0X1f
+#define CONFIG9					0x24
+#define J_ECO_PATH				BIT(6)
+#define CONFIG16				0x40
+#define J_TBCWAIT_MASK				GENMASK(6, 5)
+#define J_TBCWAIT_1P1_MS			FIELD_PREP(J_TBCWAIT_MASK, 0)
+#define J_TVDM_SRC_DIS_MASK			GENMASK(4, 3)
+#define J_TVDM_SRC_DIS_8P2_MS			FIELD_PREP(J_TVDM_SRC_DIS_MASK, 3)
+#define J_TVDM_SRC_EN_MASK			GENMASK(2, 1)
+#define J_TVDM_SRC_EN_1P6_MS			FIELD_PREP(J_TVDM_SRC_EN_MASK, 0)
+#define J_BC_EN					BIT(0)
+#define CONFIG17				0x44
+#define IBG_TRIM0_MASK				GENMASK(7, 5)
+#define IBG_TRIM0_SSLVHT			FIELD_PREP(IBG_TRIM0_MASK, 4)
+#define J_VDATREE_TRIM_MASK			GENMASK(4, 1)
+#define J_VDATREE_TRIM_DEFAULT			FIELD_PREP(J_VDATREE_TRIM_MASK, 9)
+#define CONFIG23				0x5c
+#define PROB_MASK				GENMASK(5, 3)
+#define PROB					FIELD_PREP(PROB_MASK, 7)
+
+/* GROUP MOON4 */
+#define UPHY_CONTROL0				0x0
+#define UPHY_CONTROL1				0x4
+#define UPHY_CONTROL2				0x8
+#define MO1_UPHY_RX_CLK_SEL			BIT(6)
+#define MASK_MO1_UPHY_RX_CLK_SEL		BIT(6 + 16)
+#define UPHY_CONTROL3				0xc
+#define MO1_UPHY_PLL_POWER_OFF_SEL		BIT(7)
+#define MASK_MO1_UPHY_PLL_POWER_OFF_SEL		BIT(7 + 16)
+#define MO1_UPHY_PLL_POWER_OFF			BIT(3)
+#define MASK_UPHY_PLL_POWER_OFF			BIT(3 + 16)
+
+struct sp_usbphy {
+	struct device *dev;
+	struct resource *phy_res_mem;
+	struct resource *moon4_res_mem;
+	struct reset_control *rstc;
+	struct clk *phy_clk;
+	void __iomem *phy_regs;
+	void __iomem *moon4_regs;
+	u32 disc_vol_addr_off;
+};
+
+static int update_disc_vol(struct sp_usbphy *usbphy)
+{
+	struct nvmem_cell *cell;
+	char *disc_name = "disc_vol";
+	ssize_t otp_l = 0;
+	char *otp_v;
+	u32 val, set;
+
+	cell = nvmem_cell_get(usbphy->dev, disc_name);
+	if (IS_ERR_OR_NULL(cell)) {
+		if (PTR_ERR(cell) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+	}
+
+	otp_v = nvmem_cell_read(cell, &otp_l);
+	nvmem_cell_put(cell);
+
+	if (otp_v) {
+		set = *(otp_v + 1);
+		set = (set << (sizeof(char) * 8)) | *otp_v;
+		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+	}
+
+	if (!otp_v || set == 0)
+		set = OTP_DISC_LEVEL_DEFAULT;
+
+	val = readl(usbphy->phy_regs + CONFIG7);
+	val = (val & ~J_DISC) | set;
+	writel(val, usbphy->phy_regs + CONFIG7);
+
+	return 0;
+}
+
+static int sp_uphy_init(struct phy *phy)
+{
+	struct sp_usbphy *usbphy = phy_get_drvdata(phy);
+	u32 val;
+	int ret;
+
+	ret = clk_prepare_enable(usbphy->phy_clk);
+	if (ret)
+		goto err_clk;
+
+	ret = reset_control_deassert(usbphy->rstc);
+	if (ret)
+		goto err_reset;
+
+	/* Default value modification */
+	writel(HIGH_MASK_BITS | 0x4002, usbphy->moon4_regs + UPHY_CONTROL0);
+	writel(HIGH_MASK_BITS | 0x8747, usbphy->moon4_regs + UPHY_CONTROL1);
+
+	/* disconnect voltage */
+	ret = update_disc_vol(usbphy);
+	if (ret < 0)
+		return ret;
+
+	/* board uphy 0 internal register modification for tid certification */
+	val = readl(usbphy->phy_regs + CONFIG9);
+	val &= ~(J_ECO_PATH);
+	writel(val, usbphy->phy_regs + CONFIG9);
+
+	val = readl(usbphy->phy_regs + CONFIG1);
+	val &= ~(J_HS_TX_PWRSAV);
+	writel(val, usbphy->phy_regs + CONFIG1);
+
+	val = readl(usbphy->phy_regs + CONFIG23);
+	val = (val & ~PROB) | PROB;
+	writel(val, usbphy->phy_regs + CONFIG23);
+
+	/* port 0 uphy clk fix */
+	writel(MASK_MO1_UPHY_RX_CLK_SEL | MO1_UPHY_RX_CLK_SEL,
+	       usbphy->moon4_regs + UPHY_CONTROL2);
+
+	/* battery charger */
+	writel(J_TBCWAIT_1P1_MS | J_TVDM_SRC_DIS_8P2_MS | J_TVDM_SRC_EN_1P6_MS | J_BC_EN,
+	       usbphy->phy_regs + CONFIG16);
+	writel(IBG_TRIM0_SSLVHT | J_VDATREE_TRIM_DEFAULT, usbphy->phy_regs + CONFIG17);
+
+	/* chirp mode */
+	writel(J_FORCE_DISC_ON | J_DEBUG_CTRL_ADDR_MACRO, usbphy->phy_regs + CONFIG3);
+
+	return 0;
+
+err_reset:
+	reset_control_assert(usbphy->rstc);
+err_clk:
+	clk_disable_unprepare(usbphy->phy_clk);
+
+	return ret;
+}
+
+static int sp_uphy_power_on(struct phy *phy)
+{
+	struct sp_usbphy *usbphy = phy_get_drvdata(phy);
+	u32 pll_pwr_on, pll_pwr_off;
+
+	/* PLL power off/on twice */
+	pll_pwr_off = (readl(usbphy->moon4_regs + UPHY_CONTROL3) & ~LOW_MASK_BITS)
+			| MO1_UPHY_PLL_POWER_OFF_SEL | MO1_UPHY_PLL_POWER_OFF;
+	pll_pwr_on = (readl(usbphy->moon4_regs + UPHY_CONTROL3) & ~LOW_MASK_BITS)
+			| MO1_UPHY_PLL_POWER_OFF_SEL;
+
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | pll_pwr_off,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+	mdelay(1);
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | pll_pwr_on,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+	mdelay(1);
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | pll_pwr_off,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+	mdelay(1);
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | pll_pwr_on,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+	mdelay(1);
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | 0x0,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+
+	return 0;
+}
+
+static int sp_uphy_power_off(struct phy *phy)
+{
+	struct sp_usbphy *usbphy = phy_get_drvdata(phy);
+	u32 pll_pwr_off;
+
+	pll_pwr_off = (readl(usbphy->moon4_regs + UPHY_CONTROL3) & ~LOW_MASK_BITS)
+			| MO1_UPHY_PLL_POWER_OFF_SEL | MO1_UPHY_PLL_POWER_OFF;
+
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | pll_pwr_off,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+	mdelay(1);
+	writel(MASK_MO1_UPHY_PLL_POWER_OFF_SEL | MASK_UPHY_PLL_POWER_OFF | 0x0,
+	       usbphy->moon4_regs + UPHY_CONTROL3);
+
+	return 0;
+}
+
+static int sp_uphy_exit(struct phy *phy)
+{
+	struct sp_usbphy *usbphy = phy_get_drvdata(phy);
+
+	reset_control_assert(usbphy->rstc);
+	clk_disable_unprepare(usbphy->phy_clk);
+
+	return 0;
+}
+
+static const struct phy_ops sp_uphy_ops = {
+	.init		= sp_uphy_init,
+	.power_on	= sp_uphy_power_on,
+	.power_off	= sp_uphy_power_off,
+	.exit		= sp_uphy_exit,
+};
+
+static const struct of_device_id sp_uphy_dt_ids[] = {
+	{.compatible = "sunplus,sp7021-usb2-phy", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sp_uphy_dt_ids);
+
+static int sp_usb_phy_probe(struct platform_device *pdev)
+{
+	struct sp_usbphy *usbphy;
+	struct phy_provider *phy_provider;
+	struct phy *phy;
+	int ret;
+
+	usbphy = devm_kzalloc(&pdev->dev, sizeof(*usbphy), GFP_KERNEL);
+	if (!usbphy)
+		return -ENOMEM;
+
+	usbphy->dev = &pdev->dev;
+
+	usbphy->phy_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
+	usbphy->phy_regs = devm_ioremap_resource(&pdev->dev, usbphy->phy_res_mem);
+	if (IS_ERR(usbphy->phy_regs))
+		return PTR_ERR(usbphy->phy_regs);
+
+	usbphy->moon4_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon4");
+	usbphy->moon4_regs = devm_ioremap(&pdev->dev, usbphy->moon4_res_mem->start,
+					  resource_size(usbphy->moon4_res_mem));
+	if (IS_ERR(usbphy->moon4_regs))
+		return PTR_ERR(usbphy->moon4_regs);
+
+	usbphy->phy_clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(usbphy->phy_clk))
+		return PTR_ERR(usbphy->phy_clk);
+
+	usbphy->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	if (IS_ERR(usbphy->rstc))
+		return PTR_ERR(usbphy->rstc);
+
+	of_property_read_u32(pdev->dev.of_node, "sunplus,disc-vol-addr-off",
+			     &usbphy->disc_vol_addr_off);
+
+	phy = devm_phy_create(&pdev->dev, NULL, &sp_uphy_ops);
+	if (IS_ERR(phy)) {
+		ret = -PTR_ERR(phy);
+		return ret;
+	}
+
+	phy_set_drvdata(phy, usbphy);
+	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static struct platform_driver sunplus_usb_phy_driver = {
+	.probe		= sp_usb_phy_probe,
+	.driver		= {
+		.name	= "sunplus-usb2-phy",
+		.of_match_table = sp_uphy_dt_ids,
+	},
+};
+module_platform_driver(sunplus_usb_phy_driver);
+
+MODULE_AUTHOR("Vincent Shih <vincent.shih@sunplus.com>");
+MODULE_DESCRIPTION("Sunplus USB 2.0 phy driver");
+MODULE_LICENSE("GPL");
+
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
