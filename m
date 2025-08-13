Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF2AACA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V98NiI0HlwpaoNvsULY/LlLv/R6SjziopmyqsbCJDb4=; b=D6ncWebktW1bqa
	TWhpTvWX0niAHYSeiERafU7QvwCJv88xK7Y1r6gM8JEnyw86wp1RpjOgkACPzhGm6w8WmwAnMOPAv
	J9TQ1IIabeUYWtyXafVo+tXEuvpRU4y+eei3WwS9j+gs4S889qf4erOStm8NWaUNr4uSptzs9m23u
	wkn1eL0lY1nJHuy04HtX3jdKokPK+GVlncYn+xUwp5EvafT+Qp6Ao4XaP/zUFQ2gdOgp3c5+pyqmM
	P4MI3AHW89aZDLU78qm20egdyURnNnDkvmIomsLS9S/EQnCB6a5aeX5Kb5PMDHDeT0yI2HFd0DTS9
	YZDPjbmHyCD2Barnfk9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umKEr-0000000FBhJ-34Pr;
	Wed, 13 Aug 2025 22:46:33 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umGVJ-0000000EjN5-45Ew
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 18:47:19 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-3e56ffcecf0so1516795ab.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 11:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755110837; x=1755715637; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqrSikMFQmlD3ircysZ9Jpg6O9yGDaE8xFduYiDcjjk=;
        b=uOf0BKCLfvRgnF3UW+PFy2AsJthE5OhnbhCmsrGhD4VR0+zAtyJa5hhBhcdEQGnmeC
         uU5dssDIZj4SO24J9tLUpUONRaeH/VZ9tjuKimG3r5oF99QC3N7NfaxPsibLcuFbRazv
         yopWa0CSGVtc8MEFBYvik10ZZMJDPKcg5gbNeAu3+5rkNsU3AEHJiPVYB71eisskr4db
         WSrs5oSQCOKU7wAEH6mssccTc33vfjvqmd9yOWRQncBds9hyq7Tmh/LmRbjS+Ln/qtem
         DiiDs82aL3Y6gZBad0kmoH1KlTXeB98TIUJQnuHGtBWNqcq7RmLe1A35Of+uvPDxuqXo
         b8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755110837; x=1755715637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RqrSikMFQmlD3ircysZ9Jpg6O9yGDaE8xFduYiDcjjk=;
        b=TC9C+FALAtflvubh/9iMWweBCAHGqy1h4t/lmuKg+Lcz7PO598hp8FXjmL/j0cY9h6
         6zgu2/KveRtcpUMYhBijqgI//rG1j7llhWk8jaoLlRef8YogF4TviFJiuih7uIf3BzuP
         Gf2gFqlLFk9Z+I9355nLMfwVjY6LzU0lQYkW943eLtpkUn4gCf1TqM73jZb9ZgOtfUJm
         D+Q04fxUjZc8q1f1eDYt/RI2RCcRa3hwsvJu40MnaWE2jqPcZJoGy1VNuNMenHfFHQG3
         t9w3X2vsf6S3q8kJmQau2vY2wv5ZbnZZ/xStMCMB/Pz+fhx1h1NxBO//mS2I8rw+Bc3B
         qZRA==
X-Forwarded-Encrypted: i=1; AJvYcCWdnYIQgD7iyRh9CmuO87eoXriB55i1pl0a5/sHS75ElNVx35TOIFOhWGMtl5fymO1u+uzmaWsOnvY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe8MvRC3WPbvI1E0h2MKx2vgUG8jJslzw5AEBuR2e1pecMvS7E
	2harjkSSatFwgULFhMT2Nn67Teqf9xZHJmnuVmjVSy14JWXIoSnHdk67K3rXcn8evqc=
X-Gm-Gg: ASbGncsl6RjxyLo/iivyKUot4AgfH09dkWE6yF+oAnX/0w3dD9VXdryaPIP3qh1qy3h
	jy8QWHJ2uO2uZbbtWJ4ehzkPFoEivRbUQMoIiHXPVq4bPtVwOHj+6gOe+CriUpw/+JC+5irkDay
	vpvixmDdeCmV+MqlXyTvC36fjr+2hqVnDjHN81w8ddHV3hTBqEoF8iaonp8QivQS4hBfuJMIwIZ
	5SXyOe+aRNXGIUJgk8/ETzaDBh3n85BpeF1nrV/zpmC2HOqmelQxUxJBQy6kJOaBpD65yb8eDDu
	yv/7JZU1xy0o2JzOIUji/zD/jZzjE8DBnt3HUSsbPaK5KTWiDh5s1HpaJOkMizIEPoczly26oZf
	UQ5/dhrrjDXcXrwzUu/h8gB+oEsJyTr6yrxQ3ZIE2cO84UvSItI2uG/3C1kProOwu8ZQSkPIs+w
	rX
X-Google-Smtp-Source: AGHT+IFakcubpn5mHTn1JDkWaREv1XsONoVtOusT8QU6x779GX8VBGlCp0xzpJfuBOt06dZoHGIOJA==
X-Received: by 2002:a05:6e02:1a0c:b0:3e5:4e4f:65e6 with SMTP id e9e14a558f8ab-3e57087a1bcmr4222795ab.13.1755110837093;
        Wed, 13 Aug 2025 11:47:17 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd89d7sm3933104173.59.2025.08.13.11.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:47:16 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	tglx@linutronix.de,
	johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com,
	namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	quic_schintav@quicinc.com,
	fan.ni@samsung.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] PCI: spacemit: introduce SpacemiT PCIe host driver
Date: Wed, 13 Aug 2025 13:46:59 -0500
Message-ID: <20250813184701.2444372-6-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813184701.2444372-1-elder@riscstar.com>
References: <20250813184701.2444372-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_114718_038452_D23BCCAA 
X-CRM114-Status: GOOD (  25.90  )
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

Introduce a driver for the PCIe root complex found in the SpacemiT
K1 SoC.  The hardware is derived from the Synopsys DesignWare PCIe IP.
The driver supports three PCIe ports that operate at PCIe v2 transfer
rates (5 GT/sec).  The first port uses a combo PHY, which may be
configured for use for USB 3 instead.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/pci/controller/dwc/Kconfig   |  10 +
 drivers/pci/controller/dwc/Makefile  |   1 +
 drivers/pci/controller/dwc/pcie-k1.c | 355 +++++++++++++++++++++++++++
 3 files changed, 366 insertions(+)
 create mode 100644 drivers/pci/controller/dwc/pcie-k1.c

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index ff6b6d9e18ecf..ca5782c041ce8 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -492,4 +492,14 @@ config PCIE_VISCONTI_HOST
 	  Say Y here if you want PCIe controller support on Toshiba Visconti SoC.
 	  This driver supports TMPV7708 SoC.
 
+config PCIE_K1
+	bool "SpacemiT K1 host mode PCIe controller"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on PCI && OF && HAS_IOMEM
+	select PCIE_DW_HOST
+	default ARCH_SPACEMIT
+	help
+	  Enables support for the PCIe controller in the K1 SoC operating
+	  in host mode.
+
 endmenu
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index 6919d27798d13..62d9d4e7dd4d3 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -31,6 +31,7 @@ obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
 obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
 obj-$(CONFIG_PCIE_VISCONTI_HOST) += pcie-visconti.o
 obj-$(CONFIG_PCIE_RCAR_GEN4) += pcie-rcar-gen4.o
+obj-$(CONFIG_PCIE_K1) += pcie-k1.o
 
 # The following drivers are for devices that use the generic ACPI
 # pci_root.c driver but don't support standard ECAM config access.
diff --git a/drivers/pci/controller/dwc/pcie-k1.c b/drivers/pci/controller/dwc/pcie-k1.c
new file mode 100644
index 0000000000000..e9b1df3428d16
--- /dev/null
+++ b/drivers/pci/controller/dwc/pcie-k1.c
@@ -0,0 +1,355 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SpacemiT K1 PCIe host driver
+ *
+ * Copyright (C) 2025 by RISCstar Solutions Corporation.  All rights reserved.
+ * Copyright (c) 2023, spacemit Corporation.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/gfp.h>
+#include <linux/irq.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mod_devicetable.h>
+#include <linux/of.h>
+#include <linux/pci.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+#include <linux/types.h>
+
+#include "pcie-designware.h"
+
+#define K1_PCIE_VENDOR_ID	0x201f
+#define K1_PCIE_DEVICE_ID	0x0001
+
+/* Offsets and field definitions of link management registers */
+
+#define K1_PHY_AHB_IRQ_EN			0x0000
+#define PCIE_INTERRUPT_EN		BIT(0)
+
+#define K1_PHY_AHB_LINK_STS			0x0004
+#define SMLH_LINK_UP			BIT(1)
+#define RDLH_LINK_UP			BIT(12)
+
+#define INTR_ENABLE				0x0014
+#define MSI_CTRL_INT			BIT(11)
+
+/* Offsets and field definitions for PMU registers */
+
+#define PCIE_CLK_RESET_CONTROL			0x0000
+#define LTSSM_EN			BIT(6)
+#define PCIE_AUX_PWR_DET		BIT(9)
+#define PCIE_RC_PERST			BIT(12)	/* 0: PERST# high; 1: low */
+#define APP_HOLD_PHY_RST		BIT(30)
+#define DEVICE_TYPE_RC			BIT(31)	/* 0: endpoint; 1: RC */
+
+#define PCIE_CONTROL_LOGIC			0x0004
+#define PCIE_SOFT_RESET			BIT(0)
+
+struct k1_pcie {
+	struct dw_pcie pci;
+	void __iomem *link;
+	struct regmap *pmu;
+	u32 pmu_off;
+	struct phy *phy;
+	struct reset_control *global_reset;
+};
+
+#define to_k1_pcie(dw_pcie)	dev_get_drvdata((dw_pcie)->dev)
+
+static int k1_pcie_toggle_soft_reset(struct k1_pcie *k1)
+{
+	u32 offset = k1->pmu_off + PCIE_CONTROL_LOGIC;
+	const u32 mask = PCIE_SOFT_RESET;
+	int ret;
+
+	ret = regmap_set_bits(k1->pmu, offset, mask);
+	if (ret)
+		return ret;
+
+	mdelay(2);
+
+	return regmap_clear_bits(k1->pmu, offset, mask);
+}
+
+/* Enable app clocks, deassert app resets */
+static int k1_pcie_app_enable(struct k1_pcie *k1)
+{
+	struct dw_pcie *pci = &k1->pci;
+	u32 clock_count;
+	u32 reset_count;
+	int ret;
+
+	clock_count = ARRAY_SIZE(pci->app_clks);
+	ret = clk_bulk_prepare_enable(clock_count, pci->app_clks);
+	if (ret)
+		return ret;
+
+	reset_count = ARRAY_SIZE(pci->app_rsts);
+	ret = reset_control_bulk_deassert(reset_count, pci->app_rsts);
+	if (ret)
+		goto err_disable_clks;
+
+	ret = reset_control_deassert(k1->global_reset);
+	if (ret)
+		goto err_assert_resets;
+
+	return 0;
+
+err_assert_resets:
+	(void)reset_control_bulk_assert(reset_count, pci->app_rsts);
+err_disable_clks:
+	clk_bulk_disable_unprepare(clock_count, pci->app_clks);
+
+	return ret;
+}
+
+/* Disable app clocks, assert app resets */
+static void k1_pcie_app_disable(struct k1_pcie *k1)
+{
+	struct dw_pcie *pci = &k1->pci;
+	u32 count;
+	int ret;
+
+	(void)reset_control_assert(k1->global_reset);
+
+	count = ARRAY_SIZE(pci->app_rsts);
+	ret = reset_control_bulk_assert(count, pci->app_rsts);
+	if (ret)
+		dev_err(pci->dev, "app reset assert failed (%d)\n", ret);
+
+	count = ARRAY_SIZE(pci->app_clks);
+	clk_bulk_disable_unprepare(count, pci->app_clks);
+}
+
+static int k1_pcie_init(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct k1_pcie *k1 = to_k1_pcie(pci);
+	u32 offset;
+	u32 mask;
+	int ret;
+
+	ret = k1_pcie_toggle_soft_reset(k1);
+	if (ret)
+		goto err_app_disable;
+
+	ret = k1_pcie_app_enable(k1);
+	if (ret)
+		return ret;
+
+	ret = phy_init(k1->phy);
+	if (ret)
+		goto err_app_disable;
+
+	/* Set the PCI vendor and device ID */
+	dw_pcie_dbi_ro_wr_en(pci);
+	dw_pcie_writew_dbi(pci, PCI_VENDOR_ID, K1_PCIE_VENDOR_ID);
+	dw_pcie_writew_dbi(pci, PCI_DEVICE_ID, K1_PCIE_DEVICE_ID);
+	dw_pcie_dbi_ro_wr_dis(pci);
+
+	/*
+	 * Put the port in root complex mode, record that Vaux is present.
+	 * Assert fundamental reset (drive PERST# low).
+	 */
+	offset = k1->pmu_off + PCIE_CLK_RESET_CONTROL;
+	mask = DEVICE_TYPE_RC | PCIE_AUX_PWR_DET;
+	mask |= PCIE_RC_PERST;
+	ret = regmap_set_bits(k1->pmu, offset, mask);
+	if (ret)
+		goto err_phy_exit;
+
+	/* Wait the PCIe-mandated 100 msec before deasserting PERST# */
+	mdelay(100);
+
+	ret = regmap_clear_bits(k1->pmu, offset, PCIE_RC_PERST);
+	if (!ret)
+		return 0;	/* Success! */
+
+err_phy_exit:
+	(void)phy_exit(k1->phy);
+err_app_disable:
+	k1_pcie_app_disable(k1);
+
+	return ret;
+}
+
+/* Silently ignore any errors */
+static void k1_pcie_deinit(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct k1_pcie *k1 = to_k1_pcie(pci);
+
+	/* Re-assert fundamental reset (drive PERST# low) */
+	(void)regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
+			      PCIE_RC_PERST);
+
+	(void)phy_exit(k1->phy);
+
+	k1_pcie_app_disable(k1);
+}
+
+static const struct dw_pcie_host_ops k1_pcie_host_ops = {
+	.init		= k1_pcie_init,
+	.deinit		= k1_pcie_deinit,
+};
+
+static void k1_pcie_enable_interrupts(struct k1_pcie *k1)
+{
+	void __iomem *virt;
+	u32 val;
+
+	/* Enable the MSI interrupt */
+	writel(MSI_CTRL_INT, k1->link + INTR_ENABLE);
+
+	/* Top-level interrupt enable */
+	virt = k1->link + K1_PHY_AHB_IRQ_EN;
+	val = readl(virt);
+	val |= PCIE_INTERRUPT_EN;
+	writel(val, virt);
+}
+
+static void k1_pcie_disable_interrupts(struct k1_pcie *k1)
+{
+	void __iomem *virt;
+	u32 val;
+
+	virt = k1->link + K1_PHY_AHB_IRQ_EN;
+	val = readl(virt);
+	val &= ~PCIE_INTERRUPT_EN;
+	writel(val, virt);
+
+	writel(0, k1->link + INTR_ENABLE);
+}
+
+static bool k1_pcie_link_up(struct dw_pcie *pci)
+{
+	struct k1_pcie *k1 = to_k1_pcie(pci);
+	u32 val;
+
+	val = readl(k1->link + K1_PHY_AHB_LINK_STS);
+
+	return (val & RDLH_LINK_UP) && (val & SMLH_LINK_UP);
+}
+
+static int k1_pcie_start_link(struct dw_pcie *pci)
+{
+	struct k1_pcie *k1 = to_k1_pcie(pci);
+	int ret;
+
+	/* Stop holding the PHY in reset, and enable link training */
+	ret = regmap_update_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
+				 APP_HOLD_PHY_RST | LTSSM_EN, LTSSM_EN);
+	if (ret)
+		return ret;
+
+	k1_pcie_enable_interrupts(k1);
+
+	return 0;
+}
+
+static void k1_pcie_stop_link(struct dw_pcie *pci)
+{
+	struct k1_pcie *k1 = to_k1_pcie(pci);
+	int ret;
+
+	k1_pcie_disable_interrupts(k1);
+
+	/* Disable the link and hold the PHY in reset */
+	ret = regmap_update_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
+				 APP_HOLD_PHY_RST | LTSSM_EN, APP_HOLD_PHY_RST);
+	if (ret)
+		dev_err(pci->dev, "disable LTSSM failed (%d)\n", ret);
+}
+
+static const struct dw_pcie_ops k1_pcie_ops = {
+	.link_up	= k1_pcie_link_up,
+	.start_link	= k1_pcie_start_link,
+	.stop_link	= k1_pcie_stop_link,
+};
+
+static int k1_pcie_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct dw_pcie_rp *pp;
+	struct dw_pcie *pci;
+	struct k1_pcie *k1;
+	int ret;
+
+	k1 = devm_kzalloc(dev, sizeof(*k1), GFP_KERNEL);
+	if (!k1)
+		return -ENOMEM;
+	dev_set_drvdata(dev, k1);
+
+	k1->pmu = syscon_regmap_lookup_by_phandle_args(dev_of_node(dev),
+						       "spacemit,syscon-pmu",
+						       1, &k1->pmu_off);
+	if (IS_ERR(k1->pmu))
+		return dev_err_probe(dev, PTR_ERR(k1->pmu),
+				     "lookup PMU regmap failed\n");
+
+	k1->link = devm_platform_ioremap_resource_byname(pdev, "link");
+	if (!k1->link)
+		return dev_err_probe(dev, -ENOMEM, "map link regs failed\n");
+
+	k1->global_reset = devm_reset_control_get_shared(dev, "global");
+	if (IS_ERR(k1->global_reset))
+		return dev_err_probe(dev, PTR_ERR(k1->global_reset),
+				     "get global reset failed\n");
+
+	/* Hold the PHY in reset until we start the link */
+	ret = regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
+			      APP_HOLD_PHY_RST);
+	if (ret)
+		return dev_err_probe(dev, ret, "hold PHY in reset failed\n");
+
+	k1->phy = devm_phy_get(dev, NULL);
+	if (IS_ERR(k1->phy))
+		return dev_err_probe(dev, PTR_ERR(k1->phy), "get PHY failed\n");
+
+	pci = &k1->pci;
+	dw_pcie_cap_set(pci, REQ_RES);
+	pci->dev = dev;
+	pci->ops = &k1_pcie_ops;
+
+	pp = &pci->pp;
+	pp->num_vectors = MAX_MSI_IRQS;
+	pp->ops = &k1_pcie_host_ops;
+
+	ret = dw_pcie_host_init(pp);
+	if (ret)
+		return dev_err_probe(dev, ret, "host init failed\n");
+
+	return 0;
+}
+
+static void k1_pcie_remove(struct platform_device *pdev)
+{
+	struct k1_pcie *k1 = dev_get_drvdata(&pdev->dev);
+	struct dw_pcie_rp *pp = &k1->pci.pp;
+
+	dw_pcie_host_deinit(pp);
+}
+
+static const struct of_device_id k1_pcie_of_match_table[] = {
+	{ .compatible = "spacemit,k1-pcie-rc", },
+	{ },
+};
+
+static struct platform_driver k1_pcie_driver = {
+	.probe	= k1_pcie_probe,
+	.remove	= k1_pcie_remove,
+	.driver = {
+		.name			= "k1-dwc-pcie",
+		.of_match_table		= k1_pcie_of_match_table,
+		.suppress_bind_attrs	= true,
+	},
+};
+module_platform_driver(k1_pcie_driver);
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
