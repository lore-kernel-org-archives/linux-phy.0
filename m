Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D60DFC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYn2VlZgvbQSjR2W2RSQjNxV0XLBvByLXG0C8CIOQFs=; b=mvu3e+d640ZH8T
	IPKBjxPfrNPlOukcJSWxJCsEBLqvsjp+RfzRnS1V+IHLtFe9Avyb9pXlfruresz3w0fk5zPngDp/S
	koVlI8T4MI5QywCXB1G73NnTDIdh7lLLOND3T78K51ZTj1ne4iMtp8lpDRpuVb5ulO3nt5WzSqaxS
	WlYDUMZ51a1pQ1Si4gBYm3uqhby1x5dofmV/6Q6nAXsRDHmJo4qEzGnQqPEaJv/Uvc6RYNuvYzYku
	wRZI2+58jkWY5Vm/mNiSroGvqVwVSS/Ja/TPsDQWyuVoqdawH/+VAx48nGCul6czKCnWZ8QEI+wCX
	q5+3/OqUl+fPZ81zx9ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u4-00CzDt-7r; Wed, 25 May 2022 23:59:00 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u0-00Cz5q-Go
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:58:58 +0000
Received: by mail-lf1-x129.google.com with SMTP id v8so80735lfd.8
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KCcftyvYwuNfZBmfEpRvVczMesZVUggDuSlvUb+G26U=;
        b=VwZZGx/vMeI5Cz1hqFn1SQi+emK3Rk7rNDBqWaVCKAXBB9SdstcJhYhz2EwldkKrn9
         fV9zcIBYEY+0CMXYTnuBJ+fG+SFwd4t82lt3LcEeB0ZGbFjdpht/ak/HEXRHCHVeaOmB
         L4beW5Flgi9NgfcLy/Jc5jbCTIFKftUE9VwUtWz/oRl5bg+ZEGN5/wHIoJvxEBmRBimK
         W+1+/YfJ6RNYs7Ewor3PvNsWF1hAJBFUjJUvc4LvN11vm99OoF+o0YmJnzdKssbjuxlu
         bQy0Z5Qq42PQ7iXM3T9ZQQ4cIvynEX7guBrVF/SsiqR8S2+agyoAujZqS1cxB4+862Nw
         jJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KCcftyvYwuNfZBmfEpRvVczMesZVUggDuSlvUb+G26U=;
        b=DgPrLf41CLzPgLq33EN5z3+XsczzUDyntle1mjWCLJZ7ugz9V/2kWktXcqFSCOgOSA
         I7fs1rYmTpRyUNs02e8kvpNLbtIktZ5SVPqw99kIyGxrH4I+EnDt/8ZEUy6JHP/2fiRX
         qzzztM/f09CqdAQ1AHkbOm14rIwspZJQftA7RhLPLrr5HLbxY3wWYtj+E4nXNfFUuUO9
         yXb7jJsEIz09CPLXY6+eNDobKNtTZfl2uYAAFo39jW9mPzVKg19V62anwd/zSqjnAbMr
         OEyWs+L/v984F2NRAnk5JqKKrh2ScqhuxegeZw5D4HcPoeq2ue/+hVtMVNPDv2cJ5ibJ
         EySQ==
X-Gm-Message-State: AOAM532RFiBwFQFGVBZyaxwnojPFi+xDhNwVz00rj/3QDlzBNXUxaFex
	/UMeByrhyp3Hxl5AfliiYXdjGQ==
X-Google-Smtp-Source: ABdhPJzPPYmT2tMUiM9Gf+ekKOqTeaNzUxelVaFcJv+nVfu71QSJj/vBgEdWSsy88Ao1RsM/O1KO/w==
X-Received: by 2002:a05:6512:13a4:b0:477:a28a:2280 with SMTP id p36-20020a05651213a400b00477a28a2280mr25326411lfa.689.1653523136023;
        Wed, 25 May 2022 16:58:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:58:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 12/34] phy: qcom-qmp: add QMP UFS PHY driver
Date: Thu, 26 May 2022 02:58:19 +0300
Message-Id: <20220525235841.852301-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165856_608533_FB490A57 
X-CRM114-Status: GOOD (  22.11  )
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

Add a split out QMP UFS PHY driver. No hardware support is supported,
it's just a template for now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Makefile           |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 313 ++++++++++++++++++++++++
 2 files changed, 314 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 5e805b7a530b..85152016aa5a 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
 obj-$(CONFIG_PHY_QCOM_QMP)		+= \
 	phy-qcom-qmp-lib.o \
 	phy-qcom-qmp-pcie.o \
+	phy-qcom-qmp-ufs.o \
 	phy-qcom-qmp.o
 
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
new file mode 100644
index 000000000000..5136b161a372
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+#include <dt-bindings/phy/phy.h>
+
+#include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-lib.h"
+
+struct qmp_ufs_phy;
+
+/* struct qmp_phy_ufs_cfg - per-PHY initialization config */
+struct qmp_phy_ufs_cfg {
+	struct qmp_phy_cfg base;
+
+	/* true, if PCS block has no separate SW_RESET register */
+	bool no_pcs_sw_reset;
+};
+
+/**
+ * struct qmp_ufs_phy - per-lane phy descriptor
+ *
+ * @base: base qmp_phy data
+ * @cfg: phy specific configuration
+ * @ufs_reset: optional UFS PHY reset handle
+ */
+struct qmp_ufs_phy {
+	struct qmp_phy base;
+	const struct qmp_phy_ufs_cfg *cfg;
+	struct reset_control *ufs_reset;
+};
+
+#define to_qmp_ufs_phy(qphy)	container_of(qphy, struct qmp_ufs_phy, base)
+
+static int qcom_qmp_phy_com_init(struct qmp_ufs_phy *qphy_ufs)
+{
+	struct qcom_qmp *qmp = qphy_ufs->base.qmp;
+	const struct qmp_phy_ufs_cfg *cfg = qphy_ufs->cfg;
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
+	ret = qcom_qmp_phy_common_init(&qphy_ufs->base, &cfg->base);
+	if (ret)
+		goto err_unlock;
+
+	qcom_qmp_phy_pwrup(&qphy_ufs->base, &cfg->base);
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
+static int qcom_qmp_phy_com_exit(struct qmp_ufs_phy *qphy_ufs)
+{
+	struct qcom_qmp *qmp = qphy_ufs->base.qmp;
+	const struct qmp_phy_ufs_cfg *cfg = qphy_ufs->cfg;
+
+	mutex_lock(&qmp->phy_mutex);
+	if (--qmp->init_count) {
+		mutex_unlock(&qmp->phy_mutex);
+		return 0;
+	}
+
+	reset_control_assert(qphy_ufs->ufs_reset);
+
+	qcom_qmp_phy_common_exit(&qphy_ufs->base, &cfg->base);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_ufs_init(struct qmp_ufs_phy *qphy_ufs)
+{
+	struct qcom_qmp *qmp = qphy_ufs->base.qmp;
+	const struct qmp_phy_ufs_cfg *cfg = qphy_ufs->cfg;
+	int ret;
+
+	if (!cfg->no_pcs_sw_reset)
+		return 0;
+
+	/*
+	 * Get UFS reset, which is delayed until now to avoid a
+	 * circular dependency where UFS needs its PHY, but the PHY
+	 * needs this UFS reset.
+	 */
+	if (!qphy_ufs->ufs_reset) {
+		qphy_ufs->ufs_reset =
+			devm_reset_control_get_exclusive(qmp->dev,
+							 "ufsphy");
+
+		if (IS_ERR(qphy_ufs->ufs_reset)) {
+			ret = PTR_ERR(qphy_ufs->ufs_reset);
+			dev_err(qmp->dev,
+				"failed to get UFS reset: %d\n",
+				ret);
+
+			qphy_ufs->ufs_reset = NULL;
+			return ret;
+		}
+	}
+
+	ret = reset_control_assert(qphy_ufs->ufs_reset);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int qcom_qmp_phy_ufs_power_on(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_ufs_phy *qphy_ufs = to_qmp_ufs_phy(qphy);
+	const struct qmp_phy_ufs_cfg *cfg = qphy_ufs->cfg;
+	void __iomem *serdes = qphy_ufs->base.serdes;
+	void __iomem *tx = qphy_ufs->base.tx;
+	void __iomem *rx = qphy_ufs->base.rx;
+	void __iomem *pcs = qphy_ufs->base.pcs;
+	int ret;
+
+	qcom_qmp_phy_configure(serdes, cfg->base.regs,
+			cfg->base.serdes_tbl, cfg->base.serdes_tbl_num);
+
+	/* Tx, Rx, and PCS configurations */
+	qcom_qmp_phy_configure_lane(tx, cfg->base.regs,
+				    cfg->base.tx_tbl, cfg->base.tx_tbl_num, 1);
+
+	/* Configuration for other LANE for USB-DP combo PHY */
+	if (cfg->base.is_dual_lane_phy)
+		qcom_qmp_phy_configure_lane(qphy_ufs->base.tx2, cfg->base.regs,
+					    cfg->base.tx_tbl, cfg->base.tx_tbl_num, 2);
+
+	qcom_qmp_phy_configure_lane(rx, cfg->base.regs,
+				    cfg->base.rx_tbl, cfg->base.rx_tbl_num, 1);
+
+	if (cfg->base.is_dual_lane_phy)
+		qcom_qmp_phy_configure_lane(qphy_ufs->base.rx2, cfg->base.regs,
+					    cfg->base.rx_tbl, cfg->base.rx_tbl_num, 2);
+
+	qcom_qmp_phy_configure(pcs, cfg->base.regs, cfg->base.pcs_tbl, cfg->base.pcs_tbl_num);
+
+	ret = reset_control_deassert(qphy_ufs->ufs_reset);
+	if (ret)
+		return ret;
+
+	return qcom_qmp_phy_power_on(qphy, &cfg->base, !cfg->no_pcs_sw_reset);
+}
+
+static int qcom_qmp_phy_ufs_power_off(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_ufs_phy *qphy_ufs = to_qmp_ufs_phy(qphy);
+	const struct qmp_phy_ufs_cfg *cfg = qphy_ufs->cfg;
+
+	qcom_qmp_phy_power_off(qphy, &cfg->base, !cfg->no_pcs_sw_reset);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_ufs_enable(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_ufs_phy *qphy_ufs = to_qmp_ufs_phy(qphy);
+	int ret;
+
+	ret = qcom_qmp_phy_ufs_init(qphy_ufs);
+	if (ret)
+		return ret;
+
+	ret = qcom_qmp_phy_com_init(qphy_ufs);
+	if (ret)
+		return ret;
+
+	ret = qcom_qmp_phy_ufs_power_on(phy);
+	if (ret)
+		qcom_qmp_phy_com_exit(qphy_ufs);
+
+	return ret;
+}
+
+static int qcom_qmp_phy_ufs_disable(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_ufs_phy *qphy_ufs = to_qmp_ufs_phy(qphy);
+	int ret;
+
+	ret = qcom_qmp_phy_ufs_power_off(phy);
+	if (ret)
+		return ret;
+	return qcom_qmp_phy_com_exit(qphy_ufs);
+}
+
+static const struct phy_ops qcom_qmp_ufs_ops = {
+	.power_on	= qcom_qmp_phy_ufs_enable,
+	.power_off	= qcom_qmp_phy_ufs_disable,
+	.set_mode	= qcom_qmp_phy_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+static
+int qcom_qmp_phy_ufs_create(struct device *dev, struct device_node *np, int id,
+			void __iomem *serdes, const struct qmp_phy_ufs_cfg *cfg)
+{
+	struct qmp_ufs_phy *qphy_ufs;
+	int ret;
+
+	qphy_ufs = devm_kzalloc(dev, sizeof(*qphy_ufs), GFP_KERNEL);
+	if (!qphy_ufs)
+		return -ENOMEM;
+
+	qphy_ufs->cfg = cfg;
+
+	ret = qcom_qmp_phy_init(dev, np, &qphy_ufs->base, serdes, &cfg->base);
+	if (ret)
+		return ret;
+
+	ret = qcom_qmp_phy_setup(dev, np, id, &qphy_ufs->base, &qcom_qmp_ufs_ops);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static const struct of_device_id qcom_qmp_phy_ufs_of_match_table[] = {
+	{ },
+};
+MODULE_DEVICE_TABLE(of, qcom_qmp_phy_ufs_of_match_table);
+
+static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *child;
+	struct phy_provider *phy_provider;
+	void __iomem *serdes;
+	const struct qmp_phy_ufs_cfg *cfg;
+	int id;
+	int ret;
+
+	/* Get the specific init parameters of QMP phy */
+	cfg = of_device_get_match_data(dev);
+	if (!cfg)
+		return -EINVAL;
+
+	/* per PHY serdes; usually located at base address */
+	serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(serdes))
+		return PTR_ERR(serdes);
+
+	ret = qcom_qmp_phy_common_probe(pdev, &cfg->base, cfg->base.nlanes);
+	if (ret)
+		return ret;
+
+	id = 0;
+	for_each_available_child_of_node(dev->of_node, child) {
+		/* Create per-lane phy */
+		ret = qcom_qmp_phy_ufs_create(dev, child, id, serdes, cfg);
+		if (ret) {
+			dev_err(dev, "failed to create lane%d phy, %d\n",
+				id, ret);
+			goto err_node_put;
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
+static struct platform_driver qcom_qmp_phy_ufs_driver = {
+	.probe		= qcom_qmp_phy_ufs_probe,
+	.driver = {
+		.name	= "qcom-qmp-phy-ufs",
+		.of_match_table = qcom_qmp_phy_ufs_of_match_table,
+	},
+};
+
+module_platform_driver(qcom_qmp_phy_ufs_driver);
+
+MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
+MODULE_DESCRIPTION("Qualcomm QMP UFS PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
