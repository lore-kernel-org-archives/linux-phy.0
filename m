Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F37ECC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ikLIEY42sqfvr8ODAd6MgkgLJDt8PYSuGrFgbKyvhc=; b=dHLUl+E6WWnMvL
	WqIYH6qThiEgjPqhm6VT2uwASa0QCSslRbKQZoYrOkiJ4wa1udFLbhrBKLrH4XajgH6e187TeRBXA
	lxT7pKLkQkOGRMN4ap7IXjjnw/mfewH0DUTkV7a/c1lu+TBpO5AZYDyVqIPSS14V8ovqRa4JqmAZt
	z79wweTlSFA+z6a59eUkgnhmQdtCRNCDbRqix6FhAsLc8FpKhjEPHUrFswpdbslOM0Eu63/9S8+wG
	1tUn5aGXAa4+hiPYXen/hcZ+pgS86Wcx69YnXIANqNaYBz420Qp+B4HSaA0m3Xb0jDUgl700ssFqK
	c3aD+Lfrb1mv1yhn2jCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ui-00CzMn-Bc; Wed, 25 May 2022 23:59:40 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ug-00CzMH-Vo
	for linux-phy@bombadil.infradead.org; Wed, 25 May 2022 23:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rw5ybzDlU0IduLY2d7ak/sBtTHyHZwT03BmjeFPj9AA=; b=IotiwZxaEEcm4xo5rYp3ZpnEE2
	sFkm1f1sFTfAMcjFs0XksE1rPoe2Jfn96cKddO28awnbsCcIKKBs/9rmOgJPO4solMVTX4z91xv30
	Q8ZpXfKvK6cijIGABJt7T1hGS28vz/bq5fD6K+JLqX85KHIIuPQAVXcRlr6vs/KfYBQfXW0c3wVsb
	iLEVK3qaSQ2IGfGgsbf8EibZ6xKMOETJzDhGtNqpPtaZ4Q3SMWk5Jod3eN2kmwBj+zE1yYcKCRts2
	tAmqifI535inkJYmNiJqHcGb9KNibV/qVMaDjNOlbmZh5f4xUrzkWUVyKA+isScRZm5Zqi/8IDt4s
	y/L0xkAw==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uS-001kvn-06
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:36 +0000
Received: by mail-lj1-x236.google.com with SMTP id 27so174310ljw.0
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rw5ybzDlU0IduLY2d7ak/sBtTHyHZwT03BmjeFPj9AA=;
        b=krxay/9LFgO89Yy8+yrs9WOfcDcCRtnpo2AxlhfOxYnuhQWVfXCsB8xyTru5dsAXyx
         4EezOE3QOj/+SdBLTUOSpHNgvQ33UewVm9xBRz9rCWEbG5Q02uKJQooHPpZpPl2IBU3Q
         KJ84xyQua23WiKEvwh/mNs/HpWdyHHN+1ziDpHQiYAkfe/BvOBQ6MGv427RbsbKhUt2T
         XNVlZC/qczeSAU639XBiU/P6m6zOD6x9YFEYUHzXermKUg3v9WW3rlYnXOzNKaxoC1xQ
         lFNa4T4q+eyXVMRX0wa9uR4F13sBlLqOOKqdHKM586ZLSZNz0v3wx9c6J8xNgURaPiBV
         jRxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rw5ybzDlU0IduLY2d7ak/sBtTHyHZwT03BmjeFPj9AA=;
        b=pdwYgqiG5EZK0en4aZQtfRKTxtzXdPXj5ci8DR7GtubSQRTVspmCcO70l7YvRG6nFF
         gvYUU/8m1IUUuamYQX2v63pEyxyoohayOOdnk4Bg8gaTM0Y6hex+mQyDiUwjppQUCqW8
         JwQkXv4fsr7ppQwTBOLCE0aBV34OCwrfwlJjUNBSTR6b4BgYVb12R82yRNe5a2FVBGVu
         seGtEkqRHbAXU3RKhf51cPMhQFWUawkrYM4sYvo5YQS2NNHHO2C87KiGYIIFiunrJ+ga
         dMKmBpByrfoEhFaFDBev6BmbRqJ9AmQERKlaNZp00FZADbmCCGNLWGLd+DKphmMkIsAR
         cD3Q==
X-Gm-Message-State: AOAM533bswf45h7LtndsR37JTJPczUwDwZyYaSnaLrsyXRGKEJDG4p/4
	5rxvpqzsKlAqBEsEbnB3XTU11Q==
X-Google-Smtp-Source: ABdhPJyss8lhuwNbYw6HtFBPhk391WVBXSrlofqosApD0dW6srHzOKiZRFMAQreNuZ8wYjHJxG+RMA==
X-Received: by 2002:a2e:9c43:0:b0:250:a467:400 with SMTP id t3-20020a2e9c43000000b00250a4670400mr20227937ljj.348.1653523153575;
        Wed, 25 May 2022 16:59:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:59:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 30/34] phy: qcom-qmp: add QMP combo DP+USB PHY driver
Date: Thu, 26 May 2022 02:58:37 +0300
Message-Id: <20220525235841.852301-31-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_005926_163516_F5CD4A91 
X-CRM114-Status: GOOD (  22.07  )
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

Add a split out QMP DP+USB combo PHY driver. For the USB part the USB
subdriver is reused. No hardware support is supported, it's just a
template for now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Makefile             |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 601 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |   7 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   |   8 +-
 4 files changed, 614 insertions(+), 3 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 08163d5061a4..3ec4c0f49b18 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
 obj-$(CONFIG_PHY_QCOM_QMP)		+= \
+	phy-qcom-qmp-combo.o \
 	phy-qcom-qmp-lib.o \
 	phy-qcom-qmp-pcie.o \
 	phy-qcom-qmp-ufs.o \
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
new file mode 100644
index 000000000000..58323d475d5f
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -0,0 +1,601 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+
+#include <dt-bindings/phy/phy.h>
+
+#include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-lib.h"
+
+struct qmp_dp_phy;
+
+/* struct qmp_phy_dp_cfg - per-PHY initialization config */
+struct qmp_phy_dp_cfg {
+	struct qmp_phy_cfg base;
+
+	/* Init sequence for DP PHY block link rates */
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr3;
+	int serdes_tbl_hbr3_num;
+
+	/* DP PHY callbacks */
+	int (*configure_dp_phy)(struct qmp_dp_phy *qphy_dp);
+	void (*configure_dp_tx)(struct qmp_dp_phy *qphy_dp);
+	int (*calibrate_dp_phy)(struct qmp_dp_phy *qphy_dp);
+	void (*dp_aux_init)(struct qmp_dp_phy *qphy_dp);
+
+};
+
+struct qmp_phy_combo_cfg {
+	const struct qmp_phy_usb_cfg *usb_cfg;
+	const struct qmp_phy_dp_cfg *dp_cfg;
+};
+
+/**
+ * struct qmp_dp_phy - per-lane phy descriptor
+ *
+ * @base: base qmp_phy data
+ * @cfg: phy specific configuration
+ * @dp_aux_cfg: Display port aux config
+ * @dp_opts: Display port optional config
+ * @dp_clks: Display port clocks
+ * @dp_com: iomapped memory space for phy's dp_com control block
+ */
+struct qmp_dp_phy {
+	struct qmp_phy base;
+	const struct qmp_phy_dp_cfg *cfg;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	struct qmp_phy_dp_clks *dp_clks;
+	void __iomem *dp_com;
+};
+
+#define to_qmp_dp_phy(qphy)	container_of(qphy, struct qmp_dp_phy, base)
+
+struct qmp_phy_dp_clks {
+	struct qmp_dp_phy *qphy_dp;
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
+};
+
+static int qcom_qmp_phy_dp_serdes_init(struct qmp_dp_phy *qphy_dp)
+{
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+	void __iomem *serdes = qphy_dp->base.serdes;
+	const struct phy_configure_opts_dp *dp_opts = &qphy_dp->dp_opts;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		qcom_qmp_phy_configure(serdes, cfg->base.regs,
+				       cfg->serdes_tbl_rbr,
+				       cfg->serdes_tbl_rbr_num);
+		break;
+	case 2700:
+		qcom_qmp_phy_configure(serdes, cfg->base.regs,
+				       cfg->serdes_tbl_hbr,
+				       cfg->serdes_tbl_hbr_num);
+		break;
+	case 5400:
+		qcom_qmp_phy_configure(serdes, cfg->base.regs,
+				       cfg->serdes_tbl_hbr2,
+				       cfg->serdes_tbl_hbr2_num);
+		break;
+	case 8100:
+		qcom_qmp_phy_configure(serdes, cfg->base.regs,
+				       cfg->serdes_tbl_hbr3,
+				       cfg->serdes_tbl_hbr3_num);
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+
+	memcpy(&qphy_dp->dp_opts, dp_opts, sizeof(*dp_opts));
+	if (qphy_dp->dp_opts.set_voltages) {
+		cfg->configure_dp_tx(qphy_dp);
+		qphy_dp->dp_opts.set_voltages = 0;
+	}
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_calibrate(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+
+	if (cfg->calibrate_dp_phy)
+		return cfg->calibrate_dp_phy(qphy_dp);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_com_init(struct qmp_dp_phy *qphy_dp)
+{
+	struct qcom_qmp *qmp = qphy_dp->base.qmp;
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+	int ret;
+
+	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
+
+	mutex_lock(&qmp->phy_mutex);
+	if (qmp->init_count++) {
+		mutex_unlock(&qmp->phy_mutex);
+		return 0;
+	}
+
+	ret = qcom_qmp_phy_common_init(&qphy_dp->base, &cfg->base);
+	if (ret)
+		goto err_unlock;
+
+	qcom_qmp_phy_dp_com_init(qphy_dp->dp_com);
+
+	qcom_qmp_phy_pwrup(&qphy_dp->base, &cfg->base);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+
+err_unlock:
+	mutex_unlock(&qmp->phy_mutex);
+
+	return ret;
+}
+
+static int qcom_qmp_phy_com_exit(struct qmp_dp_phy *qphy_dp)
+{
+	struct qcom_qmp *qmp = qphy_dp->base.qmp;
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+
+	mutex_lock(&qmp->phy_mutex);
+	if (--qmp->init_count) {
+		mutex_unlock(&qmp->phy_mutex);
+		return 0;
+	}
+
+	qcom_qmp_phy_common_exit(&qphy_dp->base, &cfg->base);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_init(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+	int ret;
+	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
+
+	ret = qcom_qmp_phy_com_init(qphy_dp);
+	if (ret)
+		return ret;
+
+	cfg->dp_aux_init(qphy_dp);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_power_on(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+	const struct qmp_phy_dp_cfg *cfg = qphy_dp->cfg;
+	void __iomem *serdes = qphy_dp->base.serdes;
+	void __iomem *tx = qphy_dp->base.tx;
+	void __iomem *rx = qphy_dp->base.rx;
+
+	qcom_qmp_phy_configure(serdes, cfg->base.regs,
+			cfg->base.serdes_tbl, cfg->base.serdes_tbl_num);
+
+	qcom_qmp_phy_dp_serdes_init(qphy_dp);
+
+	/* Tx, Rx, and PCS configurations */
+	qcom_qmp_phy_configure_lane(tx, cfg->base.regs,
+				    cfg->base.tx_tbl, cfg->base.tx_tbl_num, 1);
+
+	/* Configuration for other LANE for USB-DP combo PHY */
+	if (cfg->base.is_dual_lane_phy)
+		qcom_qmp_phy_configure_lane(qphy_dp->base.tx2, cfg->base.regs,
+					    cfg->base.tx_tbl, cfg->base.tx_tbl_num, 2);
+
+	/* Configure special DP tx tunings */
+	cfg->configure_dp_tx(qphy_dp);
+
+	qcom_qmp_phy_configure_lane(rx, cfg->base.regs,
+				    cfg->base.rx_tbl, cfg->base.rx_tbl_num, 1);
+
+	if (cfg->base.is_dual_lane_phy)
+		qcom_qmp_phy_configure_lane(qphy_dp->base.rx2, cfg->base.regs,
+					    cfg->base.rx_tbl, cfg->base.rx_tbl_num, 2);
+
+	/* Configure link rate, swing, etc. */
+	cfg->configure_dp_phy(qphy_dp);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_power_off(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+
+	/* Assert DP PHY power down */
+	writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy_dp->base.pcs + QSERDES_DP_PHY_PD_CTL);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_exit(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_dp_phy *qphy_dp = to_qmp_dp_phy(qphy);
+
+	qcom_qmp_phy_com_exit(qphy_dp);
+
+	return 0;
+}
+
+static void phy_dp_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+/*
+ * Display Port PLL driver block diagram for branch clocks
+ *
+ *              +------------------------------+
+ *              |         DP_VCO_CLK           |
+ *              |                              |
+ *              |    +-------------------+     |
+ *              |    |   (DP PLL/VCO)    |     |
+ *              |    +---------+---------+     |
+ *              |              v               |
+ *              |   +----------+-----------+   |
+ *              |   | hsclk_divsel_clk_src |   |
+ *              |   +----------+-----------+   |
+ *              +------------------------------+
+ *                              |
+ *          +---------<---------v------------>----------+
+ *          |                                           |
+ * +--------v----------------+                          |
+ * |    dp_phy_pll_link_clk  |                          |
+ * |     link_clk            |                          |
+ * +--------+----------------+                          |
+ *          |                                           |
+ *          |                                           |
+ *          v                                           v
+ * Input to DISPCC block                                |
+ * for link clk, crypto clk                             |
+ * and interface clock                                  |
+ *                                                      |
+ *                                                      |
+ *      +--------<------------+-----------------+---<---+
+ *      |                     |                 |
+ * +----v---------+  +--------v-----+  +--------v------+
+ * | vco_divided  |  | vco_divided  |  | vco_divided   |
+ * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
+ * |              |  |              |  |               |
+ * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
+ * +-------+------+  +-----+--------+  +--------+------+
+ *         |                 |                  |
+ *         v---->----------v-------------<------v
+ *                         |
+ *              +----------+-----------------+
+ *              |   dp_phy_pll_vco_div_clk   |
+ *              +---------+------------------+
+ *                        |
+ *                        v
+ *              Input to DISPCC block
+ *              for DP pixel clock
+ *
+ */
+static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
+						struct clk_rate_request *req)
+{
+	switch (req->rate) {
+	case 1620000000UL / 2:
+	case 2700000000UL / 2:
+	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static unsigned long
+qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	const struct qmp_phy_dp_clks *dp_clks;
+	const struct qmp_dp_phy *qphy_dp;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_pixel_hw);
+	qphy_dp = dp_clks->qphy_dp;
+	dp_opts = &qphy_dp->dp_opts;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		return 1620000000UL / 2;
+	case 2700:
+		return 2700000000UL / 2;
+	case 5400:
+		return 5400000000UL / 4;
+	case 8100:
+		return 8100000000UL / 6;
+	default:
+		return 0;
+	}
+}
+
+static const struct clk_ops qcom_qmp_dp_pixel_clk_ops = {
+	.determine_rate = qcom_qmp_dp_pixel_clk_determine_rate,
+	.recalc_rate = qcom_qmp_dp_pixel_clk_recalc_rate,
+};
+
+static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
+					       struct clk_rate_request *req)
+{
+	switch (req->rate) {
+	case 162000000:
+	case 270000000:
+	case 540000000:
+	case 810000000:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static unsigned long
+qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	const struct qmp_phy_dp_clks *dp_clks;
+	const struct qmp_dp_phy *qphy_dp;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_link_hw);
+	qphy_dp = dp_clks->qphy_dp;
+	dp_opts = &qphy_dp->dp_opts;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 5400:
+	case 8100:
+		return dp_opts->link_rate * 100000;
+	default:
+		return 0;
+	}
+}
+
+static const struct clk_ops qcom_qmp_dp_link_clk_ops = {
+	.determine_rate = qcom_qmp_dp_link_clk_determine_rate,
+	.recalc_rate = qcom_qmp_dp_link_clk_recalc_rate,
+};
+
+static struct clk_hw *
+qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct qmp_phy_dp_clks *dp_clks = data;
+	unsigned int idx = clkspec->args[0];
+
+	if (idx >= 2) {
+		pr_err("%s: invalid index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (idx == 0)
+		return &dp_clks->dp_link_hw;
+
+	return &dp_clks->dp_pixel_hw;
+}
+
+static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_dp_phy *qphy_dp,
+				struct device_node *np)
+{
+	struct clk_init_data init = { };
+	struct qmp_phy_dp_clks *dp_clks;
+	char name[64];
+	int ret;
+
+	dp_clks = devm_kzalloc(qmp->dev, sizeof(*dp_clks), GFP_KERNEL);
+	if (!dp_clks)
+		return -ENOMEM;
+
+	dp_clks->qphy_dp = qphy_dp;
+	qphy_dp->dp_clks = dp_clks;
+
+	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
+	init.ops = &qcom_qmp_dp_link_clk_ops;
+	init.name = name;
+	dp_clks->dp_link_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_link_hw);
+	if (ret)
+		return ret;
+
+	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
+	init.ops = &qcom_qmp_dp_pixel_clk_ops;
+	init.name = name;
+	dp_clks->dp_pixel_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_pixel_hw);
+	if (ret)
+		return ret;
+
+	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, dp_clks);
+	if (ret)
+		return ret;
+
+	/*
+	 * Roll a devm action because the clock provider is the child node, but
+	 * the child node is not actually a device.
+	 */
+	return devm_add_action_or_reset(qmp->dev, phy_dp_clk_release_provider, np);
+}
+
+static const struct phy_ops qcom_qmp_phy_dp_ops = {
+	.init		= qcom_qmp_phy_dp_init,
+	.configure	= qcom_qmp_phy_dp_configure,
+	.power_on	= qcom_qmp_phy_dp_power_on,
+	.calibrate	= qcom_qmp_phy_dp_calibrate,
+	.power_off	= qcom_qmp_phy_dp_power_off,
+	.exit		= qcom_qmp_phy_dp_exit,
+	.set_mode	= qcom_qmp_phy_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+static
+int qcom_qmp_phy_dp_create(struct device *dev, struct device_node *np, int id,
+			void __iomem *serdes, void __iomem *dp_com, const struct qmp_phy_dp_cfg *cfg)
+{
+	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct qmp_dp_phy *qphy_dp;
+	int ret;
+
+	qphy_dp = devm_kzalloc(dev, sizeof(*qphy_dp), GFP_KERNEL);
+	if (!qphy_dp)
+		return -ENOMEM;
+
+	qphy_dp->cfg = cfg;
+	qphy_dp->dp_com = dp_com;
+
+	ret = qcom_qmp_phy_init(dev, np, &qphy_dp->base, serdes, &cfg->base);
+	if (ret)
+		return ret;
+
+	ret = qcom_qmp_phy_setup(dev, np, id, &qphy_dp->base, &qcom_qmp_phy_dp_ops);
+	if (ret)
+		return ret;
+
+	ret = phy_dp_clks_register(qmp, qphy_dp, np);
+	if (ret) {
+		dev_err(qmp->dev,
+				"failed to register DP clock source\n");
+		return ret;
+	}
+	return 0;
+}
+
+static const struct of_device_id qcom_qmp_phy_combo_of_match_table[] = {
+	{ }
+};
+
+static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *child;
+	struct phy_provider *phy_provider;
+	void __iomem *usb_serdes;
+	void __iomem *dp_com;
+	void __iomem *dp_serdes;
+	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
+	const struct qmp_phy_usb_cfg *usb_cfg = NULL;
+	const struct qmp_phy_dp_cfg *dp_cfg = NULL;
+	int id;
+	int ret;
+
+	/* Get the specific init parameters of QMP phy */
+	combo_cfg = of_device_get_match_data(dev);
+	if (!combo_cfg)
+		return -EINVAL;
+
+	usb_cfg = combo_cfg->usb_cfg;
+	dp_cfg = combo_cfg->dp_cfg;
+
+	ret = qcom_qmp_phy_common_probe(pdev, &dp_cfg->base, 2);
+	if (ret)
+		return ret;
+
+	/* per PHY serdes; usually located at base address */
+	usb_serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(usb_serdes))
+		return PTR_ERR(usb_serdes);
+
+	dp_com = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(dp_com))
+		return PTR_ERR(dp_com);
+
+	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(dp_serdes))
+		return PTR_ERR(dp_serdes);
+
+	id = 0;
+	for_each_available_child_of_node(dev->of_node, child) {
+		if (of_node_name_eq(child, "dp-phy")) {
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_dp_create(dev, child, id, dp_serdes, dp_com, dp_cfg);
+			if (ret) {
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
+				goto err_node_put;
+			}
+		} else if (of_node_name_eq(child, "usb3-phy")) {
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_usb_create(dev, child, id, usb_serdes, dp_com, usb_cfg);
+			if (ret) {
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
+				goto err_node_put;
+			}
+		}
+
+		id++;
+	}
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (!IS_ERR(phy_provider))
+		dev_info(dev, "Registered Qcom-QMP phy\n");
+	else
+		pm_runtime_disable(dev);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+
+err_node_put:
+	pm_runtime_disable(dev);
+	of_node_put(child);
+	return ret;
+}
+
+static struct platform_driver qcom_qmp_phy_combo_driver = {
+	.probe		= qcom_qmp_phy_combo_probe,
+	.driver = {
+		.name	= "qcom-qmp-phy-combo",
+		.pm	= &qcom_qmp_phy_usb_pm_ops,
+		.of_match_table = qcom_qmp_phy_combo_of_match_table,
+	},
+};
+
+module_platform_driver(qcom_qmp_phy_combo_driver);
+
+MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
+MODULE_DESCRIPTION("Qualcomm QMP combo/DP PHY driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-lib.h b/drivers/phy/qualcomm/phy-qcom-qmp-lib.h
index f79ece5d80e9..5a68b117dbbe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-lib.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-lib.h
@@ -297,4 +297,11 @@ int qcom_qmp_phy_setup(struct device *dev, struct device_node *np, int id,
 struct platform_device;
 int qcom_qmp_phy_common_probe(struct platform_device *pdev, const struct qmp_phy_cfg *cfg, int expected_phys);
 
+struct qmp_phy_usb_cfg;
+int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
+			void __iomem *serdes, void __iomem *dp_com, const struct qmp_phy_usb_cfg *cfg);
+
+extern const struct phy_ops qcom_qmp_phy_usb_ops;
+extern const struct dev_pm_ops qcom_qmp_phy_usb_pm_ops;
+
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ea47580cf9bc..84ffc2aaf349 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2026,14 +2026,14 @@ static int __maybe_unused qcom_qmp_phy_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static const struct phy_ops qcom_qmp_phy_usb_ops = {
+const struct phy_ops qcom_qmp_phy_usb_ops = {
 	.init		= qcom_qmp_phy_usb_enable,
 	.exit		= qcom_qmp_phy_usb_disable,
 	.set_mode	= qcom_qmp_phy_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-static int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
+int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, void __iomem *dp_com, const struct qmp_phy_usb_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2084,6 +2084,7 @@ static int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, i
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_usb_create);
 
 static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 	{
@@ -2145,10 +2146,11 @@ static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 };
 MODULE_DEVICE_TABLE(of, qcom_qmp_phy_usb_of_match_table);
 
-static const struct dev_pm_ops qcom_qmp_phy_usb_pm_ops = {
+const struct dev_pm_ops qcom_qmp_phy_usb_pm_ops = {
 	SET_RUNTIME_PM_OPS(qcom_qmp_phy_runtime_suspend,
 			   qcom_qmp_phy_runtime_resume, NULL)
 };
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_usb_pm_ops);
 
 static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
