Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23372CAC59B
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAqZOpopg3JbDAUkYoJN0IH0qDS/BjxdFuVWN8a86rc=; b=NjTMOy3U28dXWR
	7hit40CgyPcqnRbjJffjIkH14PFxnztBK/S8e3Re9f7y5ctTol9at19WxOgkOUMJS2OPpjYFPwlUB
	xmJqAXSbCUaEXNuu48miyaOjoGrAJTUrxvRzGC2LVbP13yYk/Wg/9Mt28TOazR8y1Q3hHRbpYN+Uz
	Jcohqk269bFC8vXKgpMlmWvnzL3rOfakmSNf7GahQK1jMdNabsVjbZvgcub99HBsapgLLTZJmd7Sk
	lhy4e+fzDw3/UnXDPHmF/8cGGgZgYN3KYAfnwj7WNnUQ6KNBqFBtB93MRwdiMVUMblwX/g4OM2hGv
	d+Fh4p5S6Y9lvvJU/r2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXCz-00000008E4p-3mG5;
	Tue, 16 Sep 2025 15:03:05 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXCw-00000008E2z-2ey6
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 15:03:03 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so3875204f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 08:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034981; x=1758639781; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDxLhV+2gMDy7emGeBAYXvZ4aX0UX/LLqME3nAHd1vQ=;
        b=e/g6lQSBIJHpmP50jECiwMXHLvruPxIyOaCxOh5dD2sKib/ZWSkc3TSnB9PZ9JD3EN
         VXk+yO3n14SqeG4rjYD2vrGjr5DQvb4r3fTfuepc1zBqWIHZeJnITNY1zLPO/y2EZdEA
         OS+cmXjsKwwPc0PNH9nS3//XntmGOssESda63dzPyNcjkch31j9+6Xz5wLc/wBdk44Mk
         +a8RCrUkb01+yqu62Gdv4BirxRzAQAPPeGkVFnLhDq5YnGFMgA4I4z9X2/HdWs2enwBo
         soQlMFEjYIFrlufMllxNRgVbEWD7+gGs8+hEarfk4Y64Iqghi6Kf1pUvb+hFxKrQbT5p
         ghPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034981; x=1758639781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDxLhV+2gMDy7emGeBAYXvZ4aX0UX/LLqME3nAHd1vQ=;
        b=m87QseamxRrdw/ePiX5D3YzMtArzKQADcobFLP9/g1jqRyhEjVdZrYAFd8Nn7ya976
         wpR9KO94076JsgLAdwrmop9KtR5ajVc1cqA8MT0XH9XfYL2biM2xNXYYFjcGzLpWxtpx
         xi5XJGxyDGAF9EsLfpWQzaWuX+/SKg3r/6pOZx0ATzwWIsuvpkgvP2kFrIUQQ+HsrAlF
         m+idBEogBVEfl2smUmnjTayVh/k3vxWh1tbyN/9tkHugHvFBAS4gMj2Y29cdw5qgSHjX
         cBCJUuGYVXlJudDZkxZvSH8jXSNMXMcR1T2ks0UW3CmkTiV1YSXOicg4zRagGH0mGDwp
         u5/A==
X-Forwarded-Encrypted: i=1; AJvYcCXl3gs85Gax+G91Q75uqE2lN31YZqH2tgqID7RJsY86C5wcxiXDB2RHkcVpYxiL2+h3+w0C69ejigQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvlHW++tHm+5A5LvSqLjO8vCywLGn3HJHlsF0d8JBZGxgFwMVv
	vwtS7KyBr8ZWMl16e/qmNGVahqQqKd0VIQpPJjezWD/IbTlMHGBKq7ie
X-Gm-Gg: ASbGncuBC3uVqHUb6p5KgawFRloTvXBJYAMuoDQSsh9vZmYyCmosQDzq+ijv44ZP7dp
	vbRM93tyF3yjBGAobEBEugDhCiextDK6ApEsULKzqHzawSTX21ZMSodBnG96C2X5SYVNq4UDBcY
	42RHEOyZ8ih9DF6YdB8tzMii/aDQeAg77XRwQIvezvvqBxA4CGuSDVnjsBvKAdBYesnxKv6VZXM
	CJEchkd+YNXc5tP9/r21sGP3Y9uyGtkWEwcbJAHeOwF2JirIC+RDgZHBWxSeoE5aw31V8fk1UOQ
	ZP2WeuC7wQyKRGfKQGJxku3ZYjaiUl11Khc0NfJ7n4R79LIzs/YwaBwOzmdRFIiOE3TlSOIGMsP
	4ICFYitZNMJh1s42OlI7Cx0elPm8S1344Jyifp8T0X1ZdqMAq5alLPpl6rqtc2mYqCBDJs5XBhj
	X1DQ==
X-Google-Smtp-Source: AGHT+IGVJustd9TLx0P93IKwc7CcxBS30fpG6u0fjmoM0cBDpT8mVHJA6bMsKLSxrQSx7/wYBUhekQ==
X-Received: by 2002:a05:6000:184a:b0:3eb:a237:a03c with SMTP id ffacd0b85a97d-3eba237a36bmr5533059f8f.51.1758034980098;
        Tue, 16 Sep 2025 08:03:00 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdc2deb20sm932154f8f.47.2025.09.16.08.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:02:59 -0700 (PDT)
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
Subject: [PATCH v3 2/9] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
Date: Tue, 16 Sep 2025 16:02:38 +0100
Message-ID: <20250916150255.4231-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_080302_721748_04C5892E 
X-CRM114-Status: GOOD (  21.33  )
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
v2->v3:
 * Replaced devm_reset_control_get_{shared}->{shared_deasserted}
 * Dropped remove() callback
v1->v2:
 * Replaced magic numbers with macros.
---
 drivers/phy/renesas/Kconfig          |   7 +
 drivers/phy/renesas/Makefile         |   1 +
 drivers/phy/renesas/phy-rzg3e-usb3.c | 259 +++++++++++++++++++++++++++
 3 files changed, 267 insertions(+)
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
index 000000000000..6b3453ea0004
--- /dev/null
+++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
@@ -0,0 +1,259 @@
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
+#define USB3_TEST_RESET_RELEASE_OVERRIDE	(0)
+
+#define USB3_TEST_UTMICTRL2_CTRL_MASK		GENMASK(9, 8)
+#define USB3_TEST_UTMICTRL2_MODE_MASK		GENMASK(1, 0)
+
+#define USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK	GENMASK(2, 1)
+
+#define USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK	GENMASK(2, 0)
+
+#define USB3_TEST_RSTCTRL_HARDRESET_ODEN	BIT(9)
+#define USB3_TEST_RSTCTRL_PIPERESET_ODEN	BIT(8)
+#define USB3_TEST_RSTCTRL_HARDRESET		BIT(1)
+#define USB3_TEST_RSTCTRL_PIPERESET		BIT(0)
+#define USB3_TEST_RSTCTRL_ASSERT	\
+	(USB3_TEST_RSTCTRL_HARDRESET_ODEN | USB3_TEST_RSTCTRL_PIPERESET_ODEN | \
+	 USB3_TEST_RSTCTRL_HARDRESET | USB3_TEST_RSTCTRL_PIPERESET)
+#define USB3_TEST_RSTCTRL_RELEASE_HARDRESET	\
+	(USB3_TEST_RSTCTRL_HARDRESET_ODEN | USB3_TEST_RSTCTRL_PIPERESET_ODEN | \
+	 USB3_TEST_RSTCTRL_PIPERESET)
+#define USB3_TEST_RSTCTRL_DEASSERT	\
+	(USB3_TEST_RSTCTRL_HARDRESET_ODEN | USB3_TEST_RSTCTRL_PIPERESET_ODEN)
+#define USB3_TEST_RSTCTRL_RELEASE_OVERRIDE	(0)
+
+#define USB3_TEST_CLKCTRL_MPLLA_SSC_EN		BIT(2)
+
+#define USB3_TEST_RAMCTRL_SRAM_INIT_DONE	BIT(2)
+#define USB3_TEST_RAMCTRL_SRAM_EXT_LD_DONE	BIT(0)
+
+#define USB3_TEST_CREGCTRL_PARA_SEL		BIT(8)
+
+#define USB3_TEST_LANECONFIG0_DEFAULT		(0xd)
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
+	writel(USB3_TEST_RESET_RELEASE_OVERRIDE, base + USB3_TEST_RESET);
+}
+
+static int rzg3e_phy_usb3test_phy_init(void __iomem *base)
+{
+	int ret;
+	u32 val;
+
+	writel(USB3_TEST_CREGCTRL_PARA_SEL, base + USB3_TEST_CREGCTRL);
+	writel(USB3_TEST_RSTCTRL_ASSERT, base + USB3_TEST_RSTCTRL);
+	fsleep(20);
+
+	writel(USB3_TEST_CLKCTRL_MPLLA_SSC_EN, base + USB3_TEST_CLKCTRL);
+	writel(USB3_TEST_LANECONFIG0_DEFAULT, base + USB3_TEST_LANECONFIG0);
+	writel(USB3_TEST_RSTCTRL_RELEASE_HARDRESET, base + USB3_TEST_RSTCTRL);
+
+	ret = readl_poll_timeout_atomic(base + USB3_TEST_RAMCTRL, val,
+					val & USB3_TEST_RAMCTRL_SRAM_INIT_DONE, 1, 10000);
+	if (ret)
+		return ret;
+
+	writel(USB3_TEST_RSTCTRL_DEASSERT, base + USB3_TEST_RSTCTRL);
+	writel(USB3_TEST_RAMCTRL_SRAM_EXT_LD_DONE, base + USB3_TEST_RAMCTRL);
+	writel(USB3_TEST_RSTCTRL_RELEASE_OVERRIDE, base + USB3_TEST_RSTCTRL);
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
+	r->rstc = devm_reset_control_get_shared_deasserted(dev, NULL);
+	if (IS_ERR(r->rstc))
+		return dev_err_probe(dev, PTR_ERR(r->rstc), "failed to get deasserted reset\n");
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
