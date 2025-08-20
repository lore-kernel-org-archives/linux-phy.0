Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F383CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 21:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbmIRORPq2Id57n5IX5uEPBw9g1s1DK0rkpqefdn9nA=; b=sd2cNI1PbuJYSt
	aTG+mQ/rI5ZrOM+sF4aTv7L28Z7+5Q5PLkX4cjJuz2wuqsikwsUQjzHUV3qj7YeAsIT2zlbibFN+2
	AukHVmTpAzLJ2K8S7hmg8h3fKpNhy1gYZRgGP3r3BCM6GVFEZEP9RwaGlWrpfQkirBdlsLbjHE3Y0
	02piybx5cInrS9i0WGTVhQNEjlLJBHloVaHsDjMTUmS2mzjX4Njgyb8Xb2DuMQa1CCYKVzPyGC9tf
	hWnJnMFls6MQTWV6AfHKioueBjDgI5ZGgGC1/FmLPZ6qZ0VpNn5yyD/PS8LBDPwIW1p7zb22bV3Uj
	yszOG6zjKNxBP0i7OmKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoqa9-0000000F19j-0b4H;
	Wed, 20 Aug 2025 21:42:57 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomS3-0000000EVyM-0g3f
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:18:20 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45a15fd04d9so8284385e9.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755710297; x=1756315097; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eXt3qo9eRvQBc1zEQ4mrJDsYs0z6WgygEJaRo70LK1A=;
        b=EYS6QmTX1U/YBzZou8/0m32dNs5HqesUjAFw+06maYm4xc/HjnJ6v0vW2Kp99IEca4
         q/PfYeXv2P20L0a++dAW0Jd8XdYJLEOs2uSRsDPXBSJHskAAOtxJLK90y/iUgR/HKRtf
         S02pdHsdnyn08ScWK8Nvu7zy/zxq4D/T66Kh5PLlV2MM3rIFZxmd3s/HVTalRkDYTngJ
         xZIEMcvp22mtDmE2YUnx+QcJs2hv9PCwEvH2DV658O8e7LXZw3Yl463IFvEZl7QdfkeX
         QL0UFzru9ubYck267BDERT6cTGyYPRvOQdTTZ6rLxXZeVYHPo9IiypFD9YNuVLKvCQD0
         1mDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755710297; x=1756315097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eXt3qo9eRvQBc1zEQ4mrJDsYs0z6WgygEJaRo70LK1A=;
        b=t2FJdouMIV317PN0qsbAAznm7bRY0/o4Kkb8nJNfZrjaxxC2c8yiUvQuOnQTGRqjjO
         nJNfhve+O43rHbhMCNHqAgKQ9g7xhF5x99Wh/98m0hB1xF3tjLBZN+gKn8rn80EXZLW9
         DLL4hK4wxhYANmE2VKsknUO6K1G+JakG22TJo9oXUP1sYDHmcfyhu0ev/eV5418e7ky2
         xNKQFKqGIbgL6DCHUH1czPwf+NYJX0rLxEQPVd7L37Npa+V6mtCdR//0cmbWn3NUdY+P
         WcTYpuj//ZuzjaEM5n+n0wu9pTN9RBj2s/ag1HGb++Uy+7y2wthkZDfo5dBbhynC9kG/
         DpdQ==
X-Forwarded-Encrypted: i=1; AJvYcCX46KQyUwr5+cxiy96NELG6WWUAlKhBlfJi6pTW3xYUDFdjSB/nW+ElVB9J28BmUgQmm7LIM6fnlHo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdiM3egEMqC73H28vr0NhPfP2kFhP+7oRVtH1UQRMbXzkznmPt
	AnLQKyiMmEn+rx4D7uwXogUtaj0arDOjqLYJFewHrCEAAPRQZdcxjBor
X-Gm-Gg: ASbGncuaqI3gql46aW1R1abK9Jex6V4Sa1I+bh/8XXLM6gu69Sjr+8HS85lBUgG/J3b
	HWThwfvjll7gG+CYKsfyAvF3bb7HxlT/W3elD+3PeO3SMygnNjAQrw2LyTJtkyVnVc3Q04iIq87
	Sab1uK+FKYbsLIf36uCD94bVWhDwM8z7Ut2H1fYE+BA+SRRtYlVArxF2mvMfOqdfu/NLIINE//r
	yWL3ODpWEb4kjQGdJai0ZUPeQeiRrl6EngHRoPJh2ULDUtRvo2WoBbdxJ/0WAwOR7RIqyEl0gGV
	9CA/l/GjluIYJ5SPUTzabGto+KEHH0ltq6qtBJXgE6zpIWvyZkJlpv9MlSQ6mHTW7rzjPNv2RWq
	SxWfVXGgKHKiUZgjUZfeeMP5yCisZmAmpQwFWB6QubE4MMpMhQBbSoaNRL7O6IW3FLggU0QCUxg
	==
X-Google-Smtp-Source: AGHT+IGMLXFaiyXvD5c1VpyhE+BkslSuTBzqjFkzFf4IACxYlYbRfwqAsWEXflzsRZGZa0jlfAKvxg==
X-Received: by 2002:a05:600c:4f48:b0:45b:47e1:ef7b with SMTP id 5b1f17b1804b1-45b4c602e32mr3405545e9.17.1755710297305;
        Wed, 20 Aug 2025 10:18:17 -0700 (PDT)
Received: from biju.lan (host31-53-6-191.range31-53.btcentralplus.com. [31.53.6.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47c2865dsm40319815e9.2.2025.08.20.10.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 10:18:17 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
Date: Wed, 20 Aug 2025 18:17:51 +0100
Message-ID: <20250820171812.402519-5-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_101819_204322_53D42EF3 
X-CRM114-Status: GOOD (  20.97  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add Renesas RZ/G3E USB3.0 PHY driver. This module is connected
between USB3 Host and PHY module. The main functions of this
module are:
 1) Reset control
 2) Control of PHY input pins
 3) Monitoring of PHY output pins

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 drivers/phy/renesas/Kconfig          |   7 +
 drivers/phy/renesas/Makefile         |   1 +
 drivers/phy/renesas/phy-rzg3e-usb3.c | 249 +++++++++++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c

diff --git a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
index e342eef0640b..16211072098e 100644
--- a/drivers/phy/renesas/Kconfig
+++ b/drivers/phy/renesas/Kconfig
@@ -40,3 +40,10 @@ config PHY_RCAR_GEN3_USB3
 	select GENERIC_PHY
 	help
 	  Support for USB 3.0 PHY found on Renesas R-Car generation 3 SoCs.
+
+config PHY_RZ_G3E_USB3
+	tristate "Renesas RZ/G3E USB 3.0 PHY driver"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	select GENERIC_PHY
+	help
+	  Support for USB 3.0 PHY found on Renesas RZ/G3E SoCs.
diff --git a/drivers/phy/renesas/Makefile b/drivers/phy/renesas/Makefile
index 8896d1919faa..0e98083f2f0c 100644
--- a/drivers/phy/renesas/Makefile
+++ b/drivers/phy/renesas/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_PHY_RCAR_GEN2)		+= phy-rcar-gen2.o
 obj-$(CONFIG_PHY_RCAR_GEN3_PCIE)	+= phy-rcar-gen3-pcie.o
 obj-$(CONFIG_PHY_RCAR_GEN3_USB2)	+= phy-rcar-gen3-usb2.o
 obj-$(CONFIG_PHY_RCAR_GEN3_USB3)	+= phy-rcar-gen3-usb3.o
+obj-$(CONFIG_PHY_RZ_G3E_USB3)		+= phy-rzg3e-usb3.o
diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
new file mode 100644
index 000000000000..3ea521ed8f48
--- /dev/null
+++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
@@ -0,0 +1,249 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Renesas RZ/G3E USB3.0 PHY driver
+ *
+ * Copyright (C) 2025 Renesas Electronics Corporation
+ */
+
+#include <linux/bitfield.h>
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+
+#define USB3_TEST_RESET				0x0000
+#define USB3_TEST_UTMICTRL2			0x0b04
+#define USB3_TEST_PRMCTRL5_R			0x0c10
+#define USB3_TEST_PRMCTRL6_R			0x0c14
+
+#define USB3_TEST_RSTCTRL			0x1000
+#define USB3_TEST_CLKCTRL			0x1004
+#define USB3_TEST_RAMCTRL			0x100c
+#define USB3_TEST_CREGCTRL			0x1010
+#define USB3_TEST_LANECONFIG0			0x1030
+
+#define USB3_TEST_RESET_PORTRESET0_CTRL		BIT(9)
+#define USB3_TEST_RESET_SIDDQ			BIT(3)
+#define USB3_TEST_RESET_PHY_RESET		BIT(2)
+#define USB3_TEST_RESET_PORTRESET0		BIT(1)
+
+#define USB3_TEST_UTMICTRL2_CTRL_MASK		GENMASK(9, 8)
+#define USB3_TEST_UTMICTRL2_MODE_MASK		GENMASK(1, 0)
+
+#define USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK	GENMASK(2, 1)
+
+#define USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK	GENMASK(2, 0)
+
+#define USB3_TEST_RAMCTRL_SRAM_INIT_DONE	BIT(2)
+
+struct rz_usb3 {
+	void __iomem *base;
+	struct reset_control *rstc;
+	bool skip_reinit;
+};
+
+static void rzg3e_phy_usb2test_phy_init(void __iomem *base)
+{
+	u32 val;
+
+	val = readl(base + USB3_TEST_UTMICTRL2);
+	val |= USB3_TEST_UTMICTRL2_CTRL_MASK | USB3_TEST_UTMICTRL2_MODE_MASK;
+	writel(val, base + USB3_TEST_UTMICTRL2);
+
+	val = readl(base + USB3_TEST_PRMCTRL5_R);
+	val &= ~USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK;
+	val |= FIELD_PREP(USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK, 2);
+	writel(val, base + USB3_TEST_PRMCTRL5_R);
+
+	val = readl(base + USB3_TEST_PRMCTRL6_R);
+	val &= ~USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK;
+	val |= FIELD_PREP(USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK, 7);
+	writel(val, base + USB3_TEST_PRMCTRL6_R);
+
+	val = readl(base + USB3_TEST_RESET);
+	val &= ~USB3_TEST_RESET_SIDDQ;
+	val |= USB3_TEST_RESET_PORTRESET0_CTRL | USB3_TEST_RESET_PHY_RESET |
+	       USB3_TEST_RESET_PORTRESET0;
+	writel(val, base + USB3_TEST_RESET);
+	fsleep(10);
+
+	val &= ~(USB3_TEST_RESET_PHY_RESET | USB3_TEST_RESET_PORTRESET0);
+	writel(val, base + USB3_TEST_RESET);
+	fsleep(10);
+
+	val = readl(base + USB3_TEST_UTMICTRL2);
+	val &= ~USB3_TEST_UTMICTRL2_CTRL_MASK;
+	writel(val, base + USB3_TEST_UTMICTRL2);
+
+	writel(0, base + USB3_TEST_RESET);
+}
+
+static int rzg3e_phy_usb3test_phy_init(void __iomem *base)
+{
+	int ret;
+	u32 val;
+
+	writel(0x00000100, base + USB3_TEST_CREGCTRL);
+	writel(0x00000303, base + USB3_TEST_RSTCTRL);
+	fsleep(20);
+
+	writel(0x00000004, base + USB3_TEST_CLKCTRL);
+	writel(0x0000000d, base + USB3_TEST_LANECONFIG0);
+	writel(0x00000301, base + USB3_TEST_RSTCTRL);
+
+	ret = readl_poll_timeout_atomic(base + USB3_TEST_RAMCTRL, val,
+					val & USB3_TEST_RAMCTRL_SRAM_INIT_DONE, 1, 10000);
+	if (ret)
+		return ret;
+
+	writel(0x00000300, base + USB3_TEST_RSTCTRL);
+	writel(0x00000001, base + USB3_TEST_RAMCTRL);
+	writel(0x00000000, base + USB3_TEST_RSTCTRL);
+
+	return 0;
+}
+
+static int rzg3e_phy_usb3_init_helper(void __iomem *base)
+{
+	rzg3e_phy_usb2test_phy_init(base);
+
+	return rzg3e_phy_usb3test_phy_init(base);
+}
+
+static int rzg3e_phy_usb3_init(struct phy *p)
+{
+	struct rz_usb3 *r = phy_get_drvdata(p);
+	int ret = 0;
+
+	if (!r->skip_reinit)
+		ret = rzg3e_phy_usb3_init_helper(r->base);
+
+	return ret;
+}
+
+static const struct phy_ops rzg3e_phy_usb3_ops = {
+	.init = rzg3e_phy_usb3_init,
+	.owner = THIS_MODULE,
+};
+
+static int rzg3e_phy_usb3_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct rz_usb3 *r;
+	struct phy *phy;
+	int ret;
+
+	r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
+	if (!r)
+		return -ENOMEM;
+
+	r->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(r->base))
+		return PTR_ERR(r->base);
+
+	r->rstc = devm_reset_control_get_shared(dev, NULL);
+	if (IS_ERR(r->rstc))
+		return dev_err_probe(dev, PTR_ERR(r->rstc), "failed to get reset\n");
+
+	ret = reset_control_deassert(r->rstc);
+	if (ret)
+		return ret;
+
+	/*
+	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
+	 * And then, phy-core will manage runtime pm for this device.
+	 */
+	ret = devm_pm_runtime_enable(dev);
+	if (ret < 0)
+		return ret;
+
+	phy = devm_phy_create(dev, NULL, &rzg3e_phy_usb3_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create USB3 PHY\n");
+
+	platform_set_drvdata(pdev, r);
+	phy_set_drvdata(phy, r);
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider), "failed to register PHY provider\n");
+
+	return 0;
+}
+
+static void rzg3e_phy_usb3_remove(struct platform_device *pdev)
+{
+	struct rz_usb3 *r = dev_get_drvdata(&pdev->dev);
+
+	reset_control_assert(r->rstc);
+};
+
+static int rzg3e_phy_usb3_suspend(struct device *dev)
+{
+	struct rz_usb3 *r = dev_get_drvdata(dev);
+
+	pm_runtime_put(dev);
+	reset_control_assert(r->rstc);
+	r->skip_reinit = false;
+
+	return 0;
+}
+
+static int rzg3e_phy_usb3_resume(struct device *dev)
+{
+	struct rz_usb3 *r = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_deassert(r->rstc);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		goto reset_assert;
+
+	ret = rzg3e_phy_usb3_init_helper(r->base);
+	if (ret)
+		goto pm_put;
+
+	r->skip_reinit = true;
+
+	return 0;
+
+pm_put:
+	pm_runtime_put(dev);
+reset_assert:
+	reset_control_assert(r->rstc);
+	return ret;
+}
+
+static const struct dev_pm_ops rzg3e_phy_usb3_pm = {
+	NOIRQ_SYSTEM_SLEEP_PM_OPS(rzg3e_phy_usb3_suspend, rzg3e_phy_usb3_resume)
+};
+
+static const struct of_device_id rzg3e_phy_usb3_match_table[] = {
+	{ .compatible = "renesas,r9a09g047-usb3-phy" },
+	{ /* Sentinel */ }
+};
+
+MODULE_DEVICE_TABLE(of, rzg3e_phy_usb3_match_table);
+static struct platform_driver rzg3e_phy_usb3_driver = {
+	.driver = {
+		.name = "phy_rzg3e_usb3",
+		.of_match_table = rzg3e_phy_usb3_match_table,
+		.pm = pm_sleep_ptr(&rzg3e_phy_usb3_pm),
+	},
+	.probe	= rzg3e_phy_usb3_probe,
+	.remove	= rzg3e_phy_usb3_remove,
+};
+module_platform_driver(rzg3e_phy_usb3_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Renesas RZ/G3E USB3.0 PHY Driver");
+MODULE_AUTHOR("biju.das.jz@bp.renesas.com>");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
