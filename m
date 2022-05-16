Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9608C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAvwvLHL2cnYu75K46CQ+mOBe7PZSVFKyAQ4p0vpBqM=; b=Pfe/dqciucCW2b
	StdCrFywINpMW6Msnlpux0GpfkJvOd/nny/Qo1418ifwzxbVgtxzOEL/J++40ozruNJeOjq9MENTN
	eX6pYir5OztcVfU84RrAIa0EFJ7XoVCGvcDAn1ExrcpZH73fGSaqRHUNkLGQI2WsXygD4tnECeONQ
	HeeGkB1tEdnn8CWIILVB+Mk4gH7T5W8j9YPfeOAwkhWYj6ucGqliZIO0AYm/sbvgCIE6X00V2Ddfu
	HhpQUWsRo5qrcdIxggBGkn5r4YTuMb/dSZk1i14AT7w56yZmzlQ4gJHejIIa2dUpfTOTEvriuUQRb
	olhQipAsFKGT2e6ae/3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZFj-007NyO-3c; Mon, 16 May 2022 11:51:07 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZAO-007MkP-Jw
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 11:45:41 +0000
Received: by mail-lf1-x12f.google.com with SMTP id h29so25318010lfj.2
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 04:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/5kBUv/gbq4zxUmO/7zsBRUF0PFO7IzDYBol+gvj74E=;
 b=XOh/6jge3+QPtrEBAN4UbiKs3t5Rl6Jb8/DuLbDS7Rd44dL0z91yullynNS2JSil9K
 tg7OaoeSkz2B8yPUMHbX7w89aTn+iovWjNhCKVYjS7KbD/uk+0OfStn5Vdm6aggS6UvD
 0+bhxiLuXMvPMkXH9SNlYES2Is19ApO/WCN0uqBh1P3SzGkReR6C5UfIau3m0MQJgDwS
 sYquxaIaEGKQyOGqxQCz5RUL1Ct/m7ej8Dd36/Fe1QxdWwQbWuHSCaY44eifHbi8HJ52
 kRVhdpNSQnbHT6tH37kiK2IDou/oA7dGs+O6Mx51lK9q6XF1yO42HQ5xf8rZ+S3MuJ+K
 FclQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/5kBUv/gbq4zxUmO/7zsBRUF0PFO7IzDYBol+gvj74E=;
 b=fn/ixnOlOXmoZRIGT50FA0UAtGokEc5wu3khp28+GTGr4xQ+cBHv8NGTZ7Y6Suwtbc
 FrpLbCpssG5OYJi4bsgrPnx1Dw4nSMK8yL2WSPeuX1+u/p6BptajruRsm8QYzkqFQHQr
 Ozx60q2bWzidjV4w7yPUm4qbk3A1/BGgCHZ7U8/0gDvZI2WC5ia6eslj/eNXM5Yjz0iS
 U+rcv6tSQgBM+eIHwDsM66UxLz30znUnsW11ttw8brwB33T8X76SV4NHCk8xFcHqNRJ8
 EaUAtDrO2m/+eaNZ9LdQdMR8hkFH/S04R4wVxRoEkJ5sv/6CFdkIqfjZQZDTlvTB9/Nn
 IbEA==
X-Gm-Message-State: AOAM531fqCDBLLWbMJg4h9L+uL5rlWxC6EYCufMOU8E8PKqd72Sn3B0l
 44nJ84E+R2aAAiku3EWyP3zzXg==
X-Google-Smtp-Source: ABdhPJzHAYJP6KndkkjqM/ngbPL7oLFZZqGPPpkE7zxLpxqH5tAequYqJVCxxY/2QpCOEtRlQ59x1Q==
X-Received: by 2002:a05:6512:54e:b0:473:f8c4:23e6 with SMTP id
 h14-20020a056512054e00b00473f8c423e6mr12214490lfl.293.1652701528759; 
 Mon, 16 May 2022 04:45:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125]) by smtp.gmail.com with ESMTPSA id
 r18-20020ac24d12000000b0047255d2111csm1286079lfi.75.2022.05.16.04.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 04:45:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: [RFC PATCH 1/5] phy: qcom-qmp: split combo PHY support
Date: Mon, 16 May 2022 14:45:21 +0300
Message-Id: <20220516114525.3596196-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
References: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 16 May 2022 04:51:04 -0700
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

QMP driver has slowly become the unmanageable beast with tons of corner
cases and conditions. To start cleaning up the driver split away the
latest addition - the combo USB+DP PHY driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Makefile             |    2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1289 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  285 ++++
 drivers/phy/qualcomm/phy-qcom-qmp.c       | 1610 ++-------------------
 4 files changed, 1727 insertions(+), 1459 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index e9e3b1a4dbb0..699550467891 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -5,7 +5,7 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
 obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
-obj-$(CONFIG_PHY_QCOM_QMP)		+= phy-qcom-qmp.o
+obj-$(CONFIG_PHY_QCOM_QMP)		+= phy-qcom-qmp.o phy-qcom-qmp-combo.o
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
 obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o
 obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
new file mode 100644
index 000000000000..cc6f7ede6d74
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -0,0 +1,1289 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2022, Linaro Ltd., All rights reserved
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+
+#include <dt-bindings/phy/phy.h>
+
+#include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-lib.h"
+
+struct qmp_phy_dp_clks {
+	struct qmp_phy *qphy;
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
+};
+
+struct qmp_phy_combo_cfg {
+	const struct qmp_phy_cfg *usb_cfg;
+	const struct qmp_phy_cfg *dp_cfg;
+};
+
+static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy)
+{
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	/* Turn on BIAS current for PHY/PLL */
+	writel(QSERDES_V3_COM_BIAS_EN | QSERDES_V3_COM_BIAS_EN_MUX |
+	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL,
+	       qphy->serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
+
+	writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN |
+	       DP_PHY_PD_CTL_LANE_2_3_PWRDN | DP_PHY_PD_CTL_PLL_PWRDN |
+	       DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	writel(QSERDES_V3_COM_BIAS_EN |
+	       QSERDES_V3_COM_BIAS_EN_MUX | QSERDES_V3_COM_CLKBUF_R_EN |
+	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL |
+	       QSERDES_V3_COM_CLKBUF_RX_DRIVE_L,
+	       qphy->serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
+
+	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG0);
+	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
+	writel(0x24, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
+	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG3);
+	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG4);
+	writel(0x26, qphy->pcs + QSERDES_DP_PHY_AUX_CFG5);
+	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG6);
+	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG7);
+	writel(0xbb, qphy->pcs + QSERDES_DP_PHY_AUX_CFG8);
+	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG9);
+	qphy->dp_aux_cfg = 0;
+
+	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
+	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
+	       PHY_AUX_REQ_ERR_MASK,
+	       qphy->pcs + QSERDES_V3_DP_PHY_AUX_INTERRUPT_MASK);
+}
+
+static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
+	{ 0x00, 0x0c, 0x15, 0x1a },
+	{ 0x02, 0x0e, 0x16, 0xff },
+	{ 0x02, 0x11, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff }
+};
+
+static const u8 qmp_dp_v3_voltage_swing_hbr3_hbr2[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 qmp_dp_v3_pre_emphasis_hbr_rbr[4][4] = {
+	{ 0x00, 0x0c, 0x14, 0x19 },
+	{ 0x00, 0x0b, 0x12, 0xff },
+	{ 0x00, 0x0b, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff }
+};
+
+static const u8 qmp_dp_v3_voltage_swing_hbr_rbr[4][4] = {
+	{ 0x08, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static int qcom_qmp_phy_configure_dp_swing(struct qmp_phy *qphy,
+		unsigned int drv_lvl_reg, unsigned int emp_post_reg)
+{
+	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
+	unsigned int v_level = 0, p_level = 0;
+	u8 voltage_swing_cfg, pre_emphasis_cfg;
+	int i;
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (dp_opts->link_rate <= 2700) {
+		voltage_swing_cfg = qmp_dp_v3_voltage_swing_hbr_rbr[v_level][p_level];
+		pre_emphasis_cfg = qmp_dp_v3_pre_emphasis_hbr_rbr[v_level][p_level];
+	} else {
+		voltage_swing_cfg = qmp_dp_v3_voltage_swing_hbr3_hbr2[v_level][p_level];
+		pre_emphasis_cfg = qmp_dp_v3_pre_emphasis_hbr3_hbr2[v_level][p_level];
+	}
+
+	/* TODO: Move check to config check */
+	if (voltage_swing_cfg == 0xFF && pre_emphasis_cfg == 0xFF)
+		return -EINVAL;
+
+	/* Enable MUX to use Cursor values from these registers */
+	voltage_swing_cfg |= DP_PHY_TXn_TX_DRV_LVL_MUX_EN;
+	pre_emphasis_cfg |= DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN;
+
+	writel(voltage_swing_cfg, qphy->tx + drv_lvl_reg);
+	writel(pre_emphasis_cfg, qphy->tx + emp_post_reg);
+	writel(voltage_swing_cfg, qphy->tx2 + drv_lvl_reg);
+	writel(pre_emphasis_cfg, qphy->tx2 + emp_post_reg);
+
+	return 0;
+}
+
+static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy)
+{
+	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
+	u32 bias_en, drvr_en;
+
+	if (qcom_qmp_phy_configure_dp_swing(qphy,
+				QSERDES_V3_TX_TX_DRV_LVL,
+				QSERDES_V3_TX_TX_EMP_POST1_LVL) < 0)
+		return;
+
+	if (dp_opts->lanes == 1) {
+		bias_en = 0x3e;
+		drvr_en = 0x13;
+	} else {
+		bias_en = 0x3f;
+		drvr_en = 0x10;
+	}
+
+	writel(drvr_en, qphy->tx + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(bias_en, qphy->tx + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+	writel(drvr_en, qphy->tx2 + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(bias_en, qphy->tx2 + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+}
+
+static bool qcom_qmp_phy_configure_dp_mode(struct qmp_phy *qphy)
+{
+	u32 val;
+	bool reverse = false;
+
+	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
+
+	/*
+	 * TODO: Assume orientation is CC1 for now and two lanes, need to
+	 * use type-c connector to understand orientation and lanes.
+	 *
+	 * Otherwise val changes to be like below if this code understood
+	 * the orientation of the type-c cable.
+	 *
+	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC2)
+	 *	val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
+	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC1)
+	 *	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
+	 * if (orientation == ORIENTATION_CC2)
+	 *	writel(0x4c, qphy->pcs + QSERDES_V3_DP_PHY_MODE);
+	 */
+	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
+	writel(val, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	writel(0x5c, qphy->pcs + QSERDES_DP_PHY_MODE);
+
+	return reverse;
+}
+
+static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy)
+{
+	const struct qmp_phy_dp_clks *dp_clks = qphy->dp_clks;
+	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
+	u32 phy_vco_div, status;
+	unsigned long pixel_freq;
+
+	qcom_qmp_phy_configure_dp_mode(qphy);
+
+	writel(0x05, qphy->pcs + QSERDES_V3_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qphy->pcs + QSERDES_V3_DP_PHY_TX2_TX3_LANE_CTL);
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		phy_vco_div = 0x1;
+		pixel_freq = 1620000000UL / 2;
+		break;
+	case 2700:
+		phy_vco_div = 0x1;
+		pixel_freq = 2700000000UL / 2;
+		break;
+	case 5400:
+		phy_vco_div = 0x2;
+		pixel_freq = 5400000000UL / 4;
+		break;
+	case 8100:
+		phy_vco_div = 0x0;
+		pixel_freq = 8100000000UL / 6;
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+	writel(phy_vco_div, qphy->pcs + QSERDES_V3_DP_PHY_VCO_DIV);
+
+	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
+	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
+
+	writel(0x04, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
+	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x05, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x09, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	writel(0x20, qphy->serdes + QSERDES_V3_COM_RESETSM_CNTRL);
+
+	if (readl_poll_timeout(qphy->serdes + QSERDES_V3_COM_C_READY_STATUS,
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	if (readl_poll_timeout(qphy->pcs + QSERDES_V3_DP_PHY_STATUS,
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	writel(0x18, qphy->pcs + QSERDES_DP_PHY_CFG);
+	udelay(2000);
+	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	return readl_poll_timeout(qphy->pcs + QSERDES_V3_DP_PHY_STATUS,
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000);
+}
+
+/*
+ * We need to calibrate the aux setting here as many times
+ * as the caller tries
+ */
+static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy)
+{
+	static const u8 cfg1_settings[] = { 0x13, 0x23, 0x1d };
+	u8 val;
+
+	qphy->dp_aux_cfg++;
+	qphy->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
+	val = cfg1_settings[qphy->dp_aux_cfg];
+
+	writel(val, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
+
+	return 0;
+}
+
+static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy)
+{
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x17, qphy->serdes + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
+
+	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG0);
+	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
+	writel(0xa4, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
+	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG3);
+	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG4);
+	writel(0x26, qphy->pcs + QSERDES_DP_PHY_AUX_CFG5);
+	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG6);
+	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG7);
+	writel(0xb7, qphy->pcs + QSERDES_DP_PHY_AUX_CFG8);
+	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG9);
+	qphy->dp_aux_cfg = 0;
+
+	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
+	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
+	       PHY_AUX_REQ_ERR_MASK,
+	       qphy->pcs + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
+}
+
+static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy)
+{
+	/* Program default values before writing proper values */
+	writel(0x27, qphy->tx + QSERDES_V4_TX_TX_DRV_LVL);
+	writel(0x27, qphy->tx2 + QSERDES_V4_TX_TX_DRV_LVL);
+
+	writel(0x20, qphy->tx + QSERDES_V4_TX_TX_EMP_POST1_LVL);
+	writel(0x20, qphy->tx2 + QSERDES_V4_TX_TX_EMP_POST1_LVL);
+
+	qcom_qmp_phy_configure_dp_swing(qphy,
+			QSERDES_V4_TX_TX_DRV_LVL,
+			QSERDES_V4_TX_TX_EMP_POST1_LVL);
+}
+
+static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy)
+{
+	const struct qmp_phy_dp_clks *dp_clks = qphy->dp_clks;
+	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
+	u32 phy_vco_div, status;
+	unsigned long pixel_freq;
+	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
+	bool reverse;
+
+	writel(0x0f, qphy->pcs + QSERDES_V4_DP_PHY_CFG_1);
+
+	reverse = qcom_qmp_phy_configure_dp_mode(qphy);
+
+	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
+	writel(0xa4, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
+
+	writel(0x05, qphy->pcs + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qphy->pcs + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		phy_vco_div = 0x1;
+		pixel_freq = 1620000000UL / 2;
+		break;
+	case 2700:
+		phy_vco_div = 0x1;
+		pixel_freq = 2700000000UL / 2;
+		break;
+	case 5400:
+		phy_vco_div = 0x2;
+		pixel_freq = 5400000000UL / 4;
+		break;
+	case 8100:
+		phy_vco_div = 0x0;
+		pixel_freq = 8100000000UL / 6;
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+	writel(phy_vco_div, qphy->pcs + QSERDES_V4_DP_PHY_VCO_DIV);
+
+	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
+	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
+
+	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x05, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
+	writel(0x09, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	writel(0x20, qphy->serdes + QSERDES_V4_COM_RESETSM_CNTRL);
+
+	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_C_READY_STATUS,
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_CMN_STATUS,
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_CMN_STATUS,
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	/*
+	 * At least for 7nm DP PHY this has to be done after enabling link
+	 * clock.
+	 */
+
+	if (dp_opts->lanes == 1) {
+		bias0_en = reverse ? 0x3e : 0x15;
+		bias1_en = reverse ? 0x15 : 0x3e;
+		drvr0_en = reverse ? 0x13 : 0x10;
+		drvr1_en = reverse ? 0x10 : 0x13;
+	} else if (dp_opts->lanes == 2) {
+		bias0_en = reverse ? 0x3f : 0x15;
+		bias1_en = reverse ? 0x15 : 0x3f;
+		drvr0_en = 0x10;
+		drvr1_en = 0x10;
+	} else {
+		bias0_en = 0x3f;
+		bias1_en = 0x3f;
+		drvr0_en = 0x10;
+		drvr1_en = 0x10;
+	}
+
+	writel(drvr0_en, qphy->tx + QSERDES_V4_TX_HIGHZ_DRVR_EN);
+	writel(bias0_en, qphy->tx + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
+	writel(drvr1_en, qphy->tx2 + QSERDES_V4_TX_HIGHZ_DRVR_EN);
+	writel(bias1_en, qphy->tx2 + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
+
+	writel(0x18, qphy->pcs + QSERDES_DP_PHY_CFG);
+	udelay(2000);
+	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
+
+	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	writel(0x0a, qphy->tx + QSERDES_V4_TX_TX_POL_INV);
+	writel(0x0a, qphy->tx2 + QSERDES_V4_TX_TX_POL_INV);
+
+	writel(0x27, qphy->tx + QSERDES_V4_TX_TX_DRV_LVL);
+	writel(0x27, qphy->tx2 + QSERDES_V4_TX_TX_DRV_LVL);
+
+	writel(0x20, qphy->tx + QSERDES_V4_TX_TX_EMP_POST1_LVL);
+	writel(0x20, qphy->tx2 + QSERDES_V4_TX_TX_EMP_POST1_LVL);
+
+	return 0;
+}
+
+/*
+ * We need to calibrate the aux setting here as many times
+ * as the caller tries
+ */
+static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy)
+{
+	static const u8 cfg1_settings[] = { 0x20, 0x13, 0x23, 0x1d };
+	u8 val;
+
+	qphy->dp_aux_cfg++;
+	qphy->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
+	val = cfg1_settings[qphy->dp_aux_cfg];
+
+	writel(val, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
+
+	return 0;
+}
+
+static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= 0x00,
+	[QPHY_START_CTRL]		= 0x08,
+	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
+};
+
+static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= 0x00,
+	[QPHY_START_CTRL]		= 0x44,
+	[QPHY_PCS_STATUS]		= 0x14,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x308,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x314,
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x37),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_ENABLE1, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_BUF_ENABLE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_CONFIG, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORE_CLK_EN, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CP_CTRL_MODE0, 0x06),
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_rbr[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x6f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr2[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x8c),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr3[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x2a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x08),
+};
+
+static const struct qmp_phy_init_tbl qmp_v3_dp_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_INTERFACE_SELECT, 0x3d),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_CLKBUF_ENABLE, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RESET_TSYNC_EN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRAN_DRVR_EMP_EN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_INTERFACE_MODE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_BAND, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_POL_INV, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_DRV_LVL, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_EMP_POST1_LVL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x07),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_ENABLE1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_BUF_ENABLE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORE_CLK_EN, 0x1f),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_rbr[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x6f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x04),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr2[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x8c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr3[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x2a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
+};
+
+static const struct qmp_phy_init_tbl qmp_v4_dp_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_VMODE_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_INTERFACE_SELECT, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_CLKBUF_ENABLE, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RESET_TSYNC_EN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_INTERFACE_MODE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_BAND, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_POL_INV, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_DRV_LVL, 0x2a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_EMP_POST1_LVL, 0x20),
+};
+
+/* list of clocks required by phy */
+static const char * const qmp_v3_phy_clk_l[] = {
+	"aux", "cfg_ahb", "ref", "com_aux",
+};
+
+static const char * const qmp_v4_phy_clk_l[] = {
+	"aux", "ref_clk_src", "ref", "com_aux",
+};
+
+/* list of resets */
+static const char * const sc7180_usb3phy_reset_l[] = {
+	"phy",
+};
+
+static const char * const msm8996_usb3phy_reset_l[] = {
+	"phy", "common",
+};
+
+/* list of regulators */
+static const char * const qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll",
+};
+
+static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
+	.tx_tbl			= qmp_v3_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v3_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v3_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v3_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr3),
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= sc7180_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+
+	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v3_dp_phy_calibrate,
+};
+
+static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
+	.usb_cfg		= &sc7180_usb3phy_cfg,
+	.dp_cfg			= &sc7180_dpphy_cfg,
+};
+
+static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
+	.tx_tbl			= qmp_v4_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= sc7180_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+
+	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+};
+
+static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
+	.usb_cfg		= &sm8150_usb3phy_cfg,
+	.dp_cfg			= &sc8180x_dpphy_cfg,
+};
+
+static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
+	.tx_tbl			= qmp_v4_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
+
+	.clk_list		= qmp_v4_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+
+	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+};
+
+static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
+	.usb_cfg		= &sm8250_usb3phy_cfg,
+	.dp_cfg			= &sm8250_dpphy_cfg,
+};
+
+static int qcom_qmp_phy_dp_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+
+	memcpy(&qphy->dp_opts, dp_opts, sizeof(*dp_opts));
+	if (qphy->dp_opts.set_voltages) {
+		cfg->configure_dp_tx(qphy);
+		qphy->dp_opts.set_voltages = 0;
+	}
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_calibrate(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+
+	if (cfg->calibrate_dp_phy)
+		return cfg->calibrate_dp_phy(qphy);
+
+	return 0;
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
+	const struct qmp_phy *qphy;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_pixel_hw);
+	qphy = dp_clks->qphy;
+	dp_opts = &qphy->dp_opts;
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
+	const struct qmp_phy *qphy;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_link_hw);
+	qphy = dp_clks->qphy;
+	dp_opts = &qphy->dp_opts;
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
+static void phy_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+static int phy_dp_clks_register(struct device *dev, struct qmp_phy *qphy,
+				struct device_node *np)
+{
+	struct clk_init_data init = { };
+	struct qmp_phy_dp_clks *dp_clks;
+	char name[64];
+	int ret;
+
+	dp_clks = devm_kzalloc(dev, sizeof(*dp_clks), GFP_KERNEL);
+	if (!dp_clks)
+		return -ENOMEM;
+
+	dp_clks->qphy = qphy;
+	qphy->dp_clks = dp_clks;
+
+	snprintf(name, sizeof(name), "%s::link_clk", dev_name(dev));
+	init.ops = &qcom_qmp_dp_link_clk_ops;
+	init.name = name;
+	dp_clks->dp_link_hw.init = &init;
+	ret = devm_clk_hw_register(dev, &dp_clks->dp_link_hw);
+	if (ret)
+		return ret;
+
+	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(dev));
+	init.ops = &qcom_qmp_dp_pixel_clk_ops;
+	init.name = name;
+	dp_clks->dp_pixel_hw.init = &init;
+	ret = devm_clk_hw_register(dev, &dp_clks->dp_pixel_hw);
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
+	return devm_add_action_or_reset(dev, phy_clk_release_provider, np);
+}
+
+static int qcom_qmp_phy_dp_serdes_init(struct qmp_phy *qphy)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *serdes = qphy->serdes;
+	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
+
+	qcom_qmp_phy_serdes_init(qphy);
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		qcom_qmp_phy_configure(serdes, cfg->regs,
+				       cfg->serdes_tbl_rbr,
+				       cfg->serdes_tbl_rbr_num);
+		break;
+	case 2700:
+		qcom_qmp_phy_configure(serdes, cfg->regs,
+				       cfg->serdes_tbl_hbr,
+				       cfg->serdes_tbl_hbr_num);
+		break;
+	case 5400:
+		qcom_qmp_phy_configure(serdes, cfg->regs,
+				       cfg->serdes_tbl_hbr2,
+				       cfg->serdes_tbl_hbr2_num);
+		break;
+	case 8100:
+		qcom_qmp_phy_configure(serdes, cfg->regs,
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
+static int qcom_qmp_phy_dp_init(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	int ret;
+	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
+
+	ret = qcom_qmp_phy_com_init(qphy);
+	if (ret)
+		return ret;
+
+	cfg->dp_aux_init(qphy);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_power_on(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	int ret;
+
+	qcom_qmp_phy_dp_serdes_init(qphy);
+
+	ret = clk_prepare_enable(qphy->pipe_clk);
+	if (ret) {
+		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
+		return ret;
+	}
+
+	qcom_qmp_phy_lanes_init(phy);
+
+	/* Configure special DP tx tunings */
+	cfg->configure_dp_tx(qphy);
+
+	cfg->configure_dp_phy(qphy);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_power_off(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	clk_disable_unprepare(qphy->pipe_clk);
+
+	/* Assert DP PHY power down */
+	writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_exit(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	qcom_qmp_phy_com_exit(qphy);
+
+	return 0;
+}
+
+static int qcom_qmp_phy_dp_set_mode(struct phy *phy,
+				    enum phy_mode mode, int submode)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	qphy->mode = mode;
+
+	return 0;
+}
+
+static const struct phy_ops qcom_qmp_phy_dp_ops = {
+	.init		= qcom_qmp_phy_dp_init,
+	.configure	= qcom_qmp_phy_dp_configure,
+	.power_on	= qcom_qmp_phy_dp_power_on,
+	.calibrate	= qcom_qmp_phy_dp_calibrate,
+	.power_off	= qcom_qmp_phy_dp_power_off,
+	.exit		= qcom_qmp_phy_dp_exit,
+	.set_mode	= qcom_qmp_phy_dp_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+static int qcom_qmp_combo_phy_probe(struct platform_device *pdev)
+{
+	struct qcom_qmp *qmp;
+	struct device *dev = &pdev->dev;
+	struct device_node *child;
+	struct phy_provider *phy_provider;
+	void __iomem *usb_serdes;
+	void __iomem *dp_com = NULL;
+	void __iomem *dp_serdes = NULL;
+	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
+	const struct qmp_phy_cfg *usb_cfg = NULL;
+	const struct qmp_phy_cfg *dp_cfg = NULL;
+	int id;
+	int ret;
+
+	/* Get the specific init parameters of QMP phy */
+	combo_cfg = of_device_get_match_data(dev);
+	if (!combo_cfg)
+		return -EINVAL;
+
+	usb_cfg = combo_cfg->usb_cfg;
+
+	/* per PHY serdes; usually located at base address */
+	usb_serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(usb_serdes))
+		return PTR_ERR(usb_serdes);
+
+	/* per PHY dp_com; if PHY has dp_com control block */
+	if (usb_cfg->has_phy_dp_com_ctrl) {
+		dp_com = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(dp_com))
+			return PTR_ERR(dp_com);
+	}
+
+	/* Only two serdes for combo PHY */
+	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(dp_serdes))
+		return PTR_ERR(dp_serdes);
+
+	dp_cfg = combo_cfg->dp_cfg;
+
+	ret = qcom_qmp_phy_common_init(pdev, usb_cfg, 2);
+	if (ret)
+		return ret;
+
+	qmp = dev_get_drvdata(dev);
+	qmp->dp_com = dp_com;
+
+	id = 0;
+	for_each_available_child_of_node(dev->of_node, child) {
+		if (of_node_name_eq(child, "dp-phy")) {
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_create(dev, child, id, dp_serdes, dp_cfg,
+						  &qcom_qmp_phy_dp_ops);
+			if (ret) {
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
+				goto err_node_put;
+			}
+
+			ret = phy_dp_clks_register(dev, qmp->phys[id], child);
+			if (ret) {
+				dev_err(qmp->dev,
+					"failed to register DP clock source\n");
+				goto err_node_put;
+			}
+		} else if (of_node_name_eq(child, "usb3-phy")) {
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_create(dev, child, id, usb_serdes, usb_cfg,
+						  &qcom_qmp_phy_gen_ops);
+			if (ret) {
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
+				goto err_node_put;
+			}
+
+			ret = qcom_qmp_phy_pipe_clk_register(qmp, child);
+			if (ret) {
+				dev_err(qmp->dev,
+					"failed to register pipe clock source\n");
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
+	of_node_put(child);
+	pm_runtime_disable(dev);
+	return ret;
+}
+
+static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
+	{
+		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
+		.data = &sc7180_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_qmp_combo_phy_of_match_table);
+
+static struct platform_driver qcom_qmp_combo_phy_driver = {
+	.probe		= qcom_qmp_combo_phy_probe,
+	.driver = {
+		.name	= "qcom-qmp-combo-phy",
+		.pm	= &qcom_qmp_phy_pm_ops,
+		.of_match_table = qcom_qmp_combo_phy_of_match_table,
+	},
+};
+
+module_platform_driver(qcom_qmp_combo_phy_driver);
+
+MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
+MODULE_DESCRIPTION("Qualcomm QMP combo USB+DP PHY driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-lib.h b/drivers/phy/qualcomm/phy-qcom-qmp-lib.h
new file mode 100644
index 000000000000..aa9c3653fd56
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-lib.h
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2022, Linaro Ltd., All rights reserved
+ */
+
+#ifndef QCOM_PHY_QMP_LIB_H_
+#define QCOM_PHY_QMP_LIB_H_
+
+struct qmp_phy_init_tbl {
+	unsigned int offset;
+	unsigned int val;
+	/*
+	 * register part of layout ?
+	 * if yes, then offset gives index in the reg-layout
+	 */
+	bool in_layout;
+	/*
+	 * mask of lanes for which this register is written
+	 * for cases when second lane needs different values
+	 */
+	u8 lane_mask;
+};
+
+#define QMP_PHY_INIT_CFG(o, v)		\
+	{				\
+		.offset = o,		\
+		.val = v,		\
+		.lane_mask = 0xff,	\
+	}
+
+#define QMP_PHY_INIT_CFG_L(o, v)	\
+	{				\
+		.offset = o,		\
+		.val = v,		\
+		.in_layout = true,	\
+		.lane_mask = 0xff,	\
+	}
+
+#define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
+	{				\
+		.offset = o,		\
+		.val = v,		\
+		.lane_mask = l,		\
+	}
+
+/* set of registers with offsets different per-PHY */
+enum qphy_reg_layout {
+	/* Common block control registers */
+	QPHY_COM_SW_RESET,
+	QPHY_COM_POWER_DOWN_CONTROL,
+	QPHY_COM_START_CONTROL,
+	QPHY_COM_PCS_READY_STATUS,
+	/* PCS registers */
+	QPHY_PLL_LOCK_CHK_DLY_TIME,
+	QPHY_FLL_CNTRL1,
+	QPHY_FLL_CNTRL2,
+	QPHY_FLL_CNT_VAL_L,
+	QPHY_FLL_CNT_VAL_H_TOL,
+	QPHY_FLL_MAN_CODE,
+	QPHY_SW_RESET,
+	QPHY_START_CTRL,
+	QPHY_PCS_READY_STATUS,
+	QPHY_PCS_STATUS,
+	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
+	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
+	QPHY_PCS_POWER_DOWN_CONTROL,
+	/* PCS_MISC registers */
+	QPHY_PCS_MISC_TYPEC_CTRL,
+	/* Keep last to ensure regs_layout arrays are properly initialized */
+	QPHY_LAYOUT_SIZE
+};
+
+struct qmp_phy;
+
+/* struct qmp_phy_cfg - per-PHY initialization config */
+struct qmp_phy_cfg {
+	/* phy-type - PCIE/UFS/USB */
+	unsigned int type;
+	/* number of lanes provided by phy */
+	int nlanes;
+
+	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	const struct qmp_phy_init_tbl *serdes_tbl;
+	int serdes_tbl_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_sec;
+	int serdes_tbl_num_sec;
+	const struct qmp_phy_init_tbl *tx_tbl;
+	int tx_tbl_num;
+	const struct qmp_phy_init_tbl *tx_tbl_sec;
+	int tx_tbl_num_sec;
+	const struct qmp_phy_init_tbl *rx_tbl;
+	int rx_tbl_num;
+	const struct qmp_phy_init_tbl *rx_tbl_sec;
+	int rx_tbl_num_sec;
+	const struct qmp_phy_init_tbl *pcs_tbl;
+	int pcs_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_tbl_sec;
+	int pcs_tbl_num_sec;
+	const struct qmp_phy_init_tbl *pcs_misc_tbl;
+	int pcs_misc_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
+	int pcs_misc_tbl_num_sec;
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
+	int (*configure_dp_phy)(struct qmp_phy *qphy);
+	void (*configure_dp_tx)(struct qmp_phy *qphy);
+	int (*calibrate_dp_phy)(struct qmp_phy *qphy);
+	void (*dp_aux_init)(struct qmp_phy *qphy);
+
+	/* clock ids to be requested */
+	const char * const *clk_list;
+	int num_clks;
+	/* resets to be requested */
+	const char * const *reset_list;
+	int num_resets;
+	/* regulators to be requested */
+	const char * const *vreg_list;
+	int num_vregs;
+
+	/* array of registers with different offsets */
+	const unsigned int *regs;
+
+	unsigned int start_ctrl;
+	unsigned int pwrdn_ctrl;
+	unsigned int mask_com_pcs_ready;
+	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
+	unsigned int phy_status;
+
+	/* true, if PHY has a separate PHY_COM control block */
+	bool has_phy_com_ctrl;
+	/* true, if PHY has a reset for individual lanes */
+	bool has_lane_rst;
+	/* true, if PHY needs delay after POWER_DOWN */
+	bool has_pwrdn_delay;
+	/* power_down delay in usec */
+	int pwrdn_delay_min;
+	int pwrdn_delay_max;
+
+	/* true, if PHY has a separate DP_COM control block */
+	bool has_phy_dp_com_ctrl;
+	/* true, if PHY has secondary tx/rx lanes to be configured */
+	bool is_dual_lane_phy;
+
+	/* true, if PCS block has no separate SW_RESET register */
+	bool no_pcs_sw_reset;
+};
+
+/**
+ * struct qmp_phy - per-lane phy descriptor
+ *
+ * @phy: generic phy
+ * @cfg: phy specific configuration
+ * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
+ * @tx: iomapped memory space for lane's tx
+ * @rx: iomapped memory space for lane's rx
+ * @pcs: iomapped memory space for lane's pcs
+ * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
+ * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
+ * @pcs_misc: iomapped memory space for lane's pcs_misc
+ * @pipe_clk: pipe clock
+ * @index: lane index
+ * @qmp: QMP phy to which this lane belongs
+ * @lane_rst: lane's reset controller
+ * @mode: current PHY mode
+ * @dp_aux_cfg: Display port aux config
+ * @dp_opts: Display port optional config
+ * @dp_clks: Display port clocks
+ */
+struct qmp_phy {
+	struct phy *phy;
+	const struct qmp_phy_cfg *cfg;
+	void __iomem *serdes;
+	void __iomem *tx;
+	void __iomem *rx;
+	void __iomem *pcs;
+	void __iomem *tx2;
+	void __iomem *rx2;
+	void __iomem *pcs_misc;
+	struct clk *pipe_clk;
+	unsigned int index;
+	struct qcom_qmp *qmp;
+	struct reset_control *lane_rst;
+	enum phy_mode mode;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	struct qmp_phy_dp_clks *dp_clks;
+};
+
+/**
+ * struct qcom_qmp - structure holding QMP phy block attributes
+ *
+ * @dev: device
+ * @dp_com: iomapped memory space for phy's dp_com control block
+ *
+ * @clks: array of clocks required by phy
+ * @resets: array of resets required by phy
+ * @vregs: regulator supplies bulk data
+ *
+ * @phys: array of per-lane phy descriptors
+ * @phy_mutex: mutex lock for PHY common block initialization
+ * @init_count: phy common block initialization count
+ * @ufs_reset: optional UFS PHY reset handle
+ */
+struct qcom_qmp {
+	struct device *dev;
+	void __iomem *dp_com;
+
+	struct clk_bulk_data *clks;
+	struct reset_control **resets;
+	struct regulator_bulk_data *vregs;
+
+	struct qmp_phy **phys;
+
+	struct mutex phy_mutex;
+	int init_count;
+
+	struct reset_control *ufs_reset;
+};
+
+extern const struct qmp_phy_cfg sc7180_usb3phy_cfg;
+extern const struct qmp_phy_cfg sm8150_usb3phy_cfg;
+extern const struct qmp_phy_cfg sm8250_usb3phy_cfg;
+
+extern const struct phy_ops qcom_qmp_phy_gen_ops;
+
+extern const struct dev_pm_ops qcom_qmp_phy_pm_ops;
+
+int qcom_qmp_phy_common_init(struct platform_device *pdev, const struct qmp_phy_cfg *cfg,
+			     int expected_phys);
+void qcom_qmp_phy_serdes_init(struct qmp_phy *qphy);
+void qcom_qmp_phy_lanes_init(struct phy *phy);
+int qcom_qmp_phy_com_init(struct qmp_phy *qphy);
+int qcom_qmp_phy_com_exit(struct qmp_phy *qphy);
+
+int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
+			void __iomem *serdes, const struct qmp_phy_cfg *cfg,
+			const struct phy_ops *ops);
+
+int qcom_qmp_phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np);
+
+static inline void qcom_qmp_phy_configure_lane(void __iomem *base,
+					const unsigned int *regs,
+					const struct qmp_phy_init_tbl tbl[],
+					int num,
+					u8 lane_mask)
+{
+	int i;
+	const struct qmp_phy_init_tbl *t = tbl;
+
+	if (!t)
+		return;
+
+	for (i = 0; i < num; i++, t++) {
+		if (!(t->lane_mask & lane_mask))
+			continue;
+
+		if (t->in_layout)
+			writel(t->val, base + regs[t->offset]);
+		else
+			writel(t->val, base + t->offset);
+	}
+}
+
+static inline void qcom_qmp_phy_configure(void __iomem *base,
+				   const unsigned int *regs,
+				   const struct qmp_phy_init_tbl tbl[],
+				   int num)
+{
+	qcom_qmp_phy_configure_lane(base, regs, tbl, num, 0xff);
+}
+
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index c7309e981bfb..07fc8c4ec8fc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -23,6 +23,7 @@
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-lib.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
@@ -76,71 +77,6 @@
 /* Define the assumed distance between lanes for underspecified device trees. */
 #define QMP_PHY_LEGACY_LANE_STRIDE		0x400
 
-struct qmp_phy_init_tbl {
-	unsigned int offset;
-	unsigned int val;
-	/*
-	 * register part of layout ?
-	 * if yes, then offset gives index in the reg-layout
-	 */
-	bool in_layout;
-	/*
-	 * mask of lanes for which this register is written
-	 * for cases when second lane needs different values
-	 */
-	u8 lane_mask;
-};
-
-#define QMP_PHY_INIT_CFG(o, v)		\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.lane_mask = 0xff,	\
-	}
-
-#define QMP_PHY_INIT_CFG_L(o, v)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.in_layout = true,	\
-		.lane_mask = 0xff,	\
-	}
-
-#define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.lane_mask = l,		\
-	}
-
-/* set of registers with offsets different per-PHY */
-enum qphy_reg_layout {
-	/* Common block control registers */
-	QPHY_COM_SW_RESET,
-	QPHY_COM_POWER_DOWN_CONTROL,
-	QPHY_COM_START_CONTROL,
-	QPHY_COM_PCS_READY_STATUS,
-	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
-	QPHY_SW_RESET,
-	QPHY_START_CTRL,
-	QPHY_PCS_READY_STATUS,
-	QPHY_PCS_STATUS,
-	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
-	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
-	QPHY_PCS_POWER_DOWN_CONTROL,
-	/* PCS_MISC registers */
-	QPHY_PCS_MISC_TYPEC_CTRL,
-	/* Keep last to ensure regs_layout arrays are properly initialized */
-	QPHY_LAYOUT_SIZE
-};
-
 static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x00,
 	[QPHY_PCS_READY_STATUS]		= 0x168,
@@ -1094,88 +1030,6 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x06),
 };
 
-static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SVS_MODE_CLK_SEL, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x37),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_ENABLE1, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_BUF_ENABLE, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_CONFIG, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORECLK_DIV_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_CTRL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORE_CLK_EN, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_CCTRL_MODE0, 0x36),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CP_CTRL_MODE0, 0x06),
-};
-
-static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_rbr[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x6f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
-};
-
-static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
-};
-
-static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr2[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x8c),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x00),
-};
-
-static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_hbr3[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x2a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x08),
-};
-
-static const struct qmp_phy_init_tbl qmp_v3_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_INTERFACE_SELECT, 0x3d),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_CLKBUF_ENABLE, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RESET_TSYNC_EN, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRAN_DRVR_EMP_EN, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_INTERFACE_MODE, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_BAND, 0x4),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_POL_INV, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_DRV_LVL, 0x38),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_EMP_POST1_LVL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x07),
-};
-
 static const struct qmp_phy_init_tbl qmp_v3_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
@@ -2063,86 +1917,6 @@ static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
-static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SVS_MODE_CLK_SEL, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x3b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_ENABLE1, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_BUF_ENABLE, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_CTRL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x17),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORE_CLK_EN, 0x1f),
-};
-
-static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_rbr[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x6f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x04),
-};
-
-static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
-};
-
-static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr2[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x8c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
-};
-
-static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl_hbr3[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x69),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x2a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x08),
-};
-
-static const struct qmp_phy_init_tbl qmp_v4_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_VMODE_CTRL1, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_INTERFACE_SELECT, 0x3b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_CLKBUF_ENABLE, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RESET_TSYNC_EN, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_INTERFACE_MODE, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x11),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x11),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_BAND, 0x4),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_POL_INV, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_DRV_LVL, 0x2a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TX_EMP_POST1_LVL, 0x20),
-};
-
 static const struct qmp_phy_init_tbl sc8180x_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
@@ -3119,184 +2893,6 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
 };
 
-struct qmp_phy;
-
-/* struct qmp_phy_cfg - per-PHY initialization config */
-struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
-	/* number of lanes provided by phy */
-	int nlanes;
-
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
-	const struct qmp_phy_init_tbl *serdes_tbl;
-	int serdes_tbl_num;
-	const struct qmp_phy_init_tbl *serdes_tbl_sec;
-	int serdes_tbl_num_sec;
-	const struct qmp_phy_init_tbl *tx_tbl;
-	int tx_tbl_num;
-	const struct qmp_phy_init_tbl *tx_tbl_sec;
-	int tx_tbl_num_sec;
-	const struct qmp_phy_init_tbl *rx_tbl;
-	int rx_tbl_num;
-	const struct qmp_phy_init_tbl *rx_tbl_sec;
-	int rx_tbl_num_sec;
-	const struct qmp_phy_init_tbl *pcs_tbl;
-	int pcs_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_tbl_sec;
-	int pcs_tbl_num_sec;
-	const struct qmp_phy_init_tbl *pcs_misc_tbl;
-	int pcs_misc_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
-	int pcs_misc_tbl_num_sec;
-
-	/* Init sequence for DP PHY block link rates */
-	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
-	int serdes_tbl_rbr_num;
-	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
-	int serdes_tbl_hbr_num;
-	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
-	int serdes_tbl_hbr2_num;
-	const struct qmp_phy_init_tbl *serdes_tbl_hbr3;
-	int serdes_tbl_hbr3_num;
-
-	/* DP PHY callbacks */
-	int (*configure_dp_phy)(struct qmp_phy *qphy);
-	void (*configure_dp_tx)(struct qmp_phy *qphy);
-	int (*calibrate_dp_phy)(struct qmp_phy *qphy);
-	void (*dp_aux_init)(struct qmp_phy *qphy);
-
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
-	/* resets to be requested */
-	const char * const *reset_list;
-	int num_resets;
-	/* regulators to be requested */
-	const char * const *vreg_list;
-	int num_vregs;
-
-	/* array of registers with different offsets */
-	const unsigned int *regs;
-
-	unsigned int start_ctrl;
-	unsigned int pwrdn_ctrl;
-	unsigned int mask_com_pcs_ready;
-	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
-	unsigned int phy_status;
-
-	/* true, if PHY has a separate PHY_COM control block */
-	bool has_phy_com_ctrl;
-	/* true, if PHY has a reset for individual lanes */
-	bool has_lane_rst;
-	/* true, if PHY needs delay after POWER_DOWN */
-	bool has_pwrdn_delay;
-	/* power_down delay in usec */
-	int pwrdn_delay_min;
-	int pwrdn_delay_max;
-
-	/* true, if PHY has a separate DP_COM control block */
-	bool has_phy_dp_com_ctrl;
-	/* true, if PHY has secondary tx/rx lanes to be configured */
-	bool is_dual_lane_phy;
-
-	/* true, if PCS block has no separate SW_RESET register */
-	bool no_pcs_sw_reset;
-};
-
-struct qmp_phy_combo_cfg {
-	const struct qmp_phy_cfg *usb_cfg;
-	const struct qmp_phy_cfg *dp_cfg;
-};
-
-/**
- * struct qmp_phy - per-lane phy descriptor
- *
- * @phy: generic phy
- * @cfg: phy specific configuration
- * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
- * @tx: iomapped memory space for lane's tx
- * @rx: iomapped memory space for lane's rx
- * @pcs: iomapped memory space for lane's pcs
- * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
- * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
- * @pcs_misc: iomapped memory space for lane's pcs_misc
- * @pipe_clk: pipe clock
- * @index: lane index
- * @qmp: QMP phy to which this lane belongs
- * @lane_rst: lane's reset controller
- * @mode: current PHY mode
- * @dp_aux_cfg: Display port aux config
- * @dp_opts: Display port optional config
- * @dp_clks: Display port clocks
- */
-struct qmp_phy {
-	struct phy *phy;
-	const struct qmp_phy_cfg *cfg;
-	void __iomem *serdes;
-	void __iomem *tx;
-	void __iomem *rx;
-	void __iomem *pcs;
-	void __iomem *tx2;
-	void __iomem *rx2;
-	void __iomem *pcs_misc;
-	struct clk *pipe_clk;
-	unsigned int index;
-	struct qcom_qmp *qmp;
-	struct reset_control *lane_rst;
-	enum phy_mode mode;
-	unsigned int dp_aux_cfg;
-	struct phy_configure_opts_dp dp_opts;
-	struct qmp_phy_dp_clks *dp_clks;
-};
-
-struct qmp_phy_dp_clks {
-	struct qmp_phy *qphy;
-	struct clk_hw dp_link_hw;
-	struct clk_hw dp_pixel_hw;
-};
-
-/**
- * struct qcom_qmp - structure holding QMP phy block attributes
- *
- * @dev: device
- * @dp_com: iomapped memory space for phy's dp_com control block
- *
- * @clks: array of clocks required by phy
- * @resets: array of resets required by phy
- * @vregs: regulator supplies bulk data
- *
- * @phys: array of per-lane phy descriptors
- * @phy_mutex: mutex lock for PHY common block initialization
- * @init_count: phy common block initialization count
- * @ufs_reset: optional UFS PHY reset handle
- */
-struct qcom_qmp {
-	struct device *dev;
-	void __iomem *dp_com;
-
-	struct clk_bulk_data *clks;
-	struct reset_control **resets;
-	struct regulator_bulk_data *vregs;
-
-	struct qmp_phy **phys;
-
-	struct mutex phy_mutex;
-	int init_count;
-
-	struct reset_control *ufs_reset;
-};
-
-static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
-static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy);
-static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy);
-static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy);
-
-static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy);
-static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy);
-static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy);
-static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy);
-
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -3738,7 +3334,7 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 	.is_dual_lane_phy	= true,
 };
 
-static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
+const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
@@ -3769,46 +3365,7 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.has_phy_dp_com_ctrl	= true,
 	.is_dual_lane_phy	= true,
 };
-
-static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
-
-	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
-	.tx_tbl			= qmp_v3_dp_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
-
-	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
-	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
-	.serdes_tbl_hbr		= qmp_v3_dp_serdes_tbl_hbr,
-	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr),
-	.serdes_tbl_hbr2	= qmp_v3_dp_serdes_tbl_hbr2,
-	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr2),
-	.serdes_tbl_hbr3	= qmp_v3_dp_serdes_tbl_hbr3,
-	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr3),
-
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= sc7180_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
-	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
-
-	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v3_dp_phy_calibrate,
-};
-
-static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
-	.usb_cfg		= &sc7180_usb3phy_cfg,
-	.dp_cfg			= &sc7180_dpphy_cfg,
-};
+EXPORT_SYMBOL_GPL(sc7180_usb3phy_cfg);
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
@@ -3967,7 +3524,7 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.is_dual_lane_phy	= true,
 };
 
-static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
+const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
@@ -3999,6 +3556,7 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.has_phy_dp_com_ctrl	= true,
 	.is_dual_lane_phy	= true,
 };
+EXPORT_SYMBOL_GPL(sm8150_usb3phy_cfg);
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.type = PHY_TYPE_PCIE,
@@ -4030,46 +3588,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
-static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
-
-	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
-	.tx_tbl			= qmp_v4_dp_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
-
-	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
-	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
-	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
-	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
-	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
-	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
-	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
-	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
-
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= sc7180_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
-	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
-
-	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
-};
-
-static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
-	.usb_cfg		= &sm8150_usb3phy_cfg,
-	.dp_cfg			= &sc8180x_dpphy_cfg,
-};
-
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -4099,7 +3617,7 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
-static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
+const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
@@ -4130,6 +3648,7 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.has_phy_dp_com_ctrl	= true,
 	.is_dual_lane_phy	= true,
 };
+EXPORT_SYMBOL_GPL(sm8250_usb3phy_cfg);
 
 static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
@@ -4160,46 +3679,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
-static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
-
-	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
-	.tx_tbl			= qmp_v4_dp_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
-
-	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
-	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
-	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
-	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
-	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
-	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
-	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
-	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
-
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-
-	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
-
-	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
-};
-
-static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
-	.usb_cfg		= &sm8250_usb3phy_cfg,
-	.dp_cfg			= &sm8250_dpphy_cfg,
-};
-
 static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -4491,80 +3970,26 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.is_dual_lane_phy	= true,
 };
 
-static void qcom_qmp_phy_configure_lane(void __iomem *base,
-					const unsigned int *regs,
-					const struct qmp_phy_init_tbl tbl[],
-					int num,
-					u8 lane_mask)
-{
-	int i;
-	const struct qmp_phy_init_tbl *t = tbl;
-
-	if (!t)
-		return;
-
-	for (i = 0; i < num; i++, t++) {
-		if (!(t->lane_mask & lane_mask))
-			continue;
-
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
-	}
-}
-
-static void qcom_qmp_phy_configure(void __iomem *base,
-				   const unsigned int *regs,
-				   const struct qmp_phy_init_tbl tbl[],
-				   int num)
+void qcom_qmp_phy_serdes_init(struct qmp_phy *qphy)
 {
-	qcom_qmp_phy_configure_lane(base, regs, tbl, num, 0xff);
-}
-
-static int qcom_qmp_phy_serdes_init(struct qmp_phy *qphy)
-{
-	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
-	int ret;
 
 	qcom_qmp_phy_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
 	if (cfg->serdes_tbl_sec)
 		qcom_qmp_phy_configure(serdes, cfg->regs, cfg->serdes_tbl_sec,
 				       cfg->serdes_tbl_num_sec);
+}
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_serdes_init);
 
-	if (cfg->type == PHY_TYPE_DP) {
-		switch (dp_opts->link_rate) {
-		case 1620:
-			qcom_qmp_phy_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_rbr,
-					       cfg->serdes_tbl_rbr_num);
-			break;
-		case 2700:
-			qcom_qmp_phy_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr,
-					       cfg->serdes_tbl_hbr_num);
-			break;
-		case 5400:
-			qcom_qmp_phy_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr2,
-					       cfg->serdes_tbl_hbr2_num);
-			break;
-		case 8100:
-			qcom_qmp_phy_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr3,
-					       cfg->serdes_tbl_hbr3_num);
-			break;
-		default:
-			/* Other link rates aren't supported */
-			return -EINVAL;
-		}
-	}
-
+static int qcom_qmp_phy_com_ready(struct qmp_phy *qphy)
+{
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *serdes = qphy->serdes;
+	int ret;
 
 	if (cfg->has_phy_com_ctrl) {
 		void __iomem *status;
@@ -4589,484 +4014,7 @@ static int qcom_qmp_phy_serdes_init(struct qmp_phy *qphy)
 	return 0;
 }
 
-static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy)
-{
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-
-	/* Turn on BIAS current for PHY/PLL */
-	writel(QSERDES_V3_COM_BIAS_EN | QSERDES_V3_COM_BIAS_EN_MUX |
-	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL,
-	       qphy->serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
-
-	writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_LANE_0_1_PWRDN |
-	       DP_PHY_PD_CTL_LANE_2_3_PWRDN | DP_PHY_PD_CTL_PLL_PWRDN |
-	       DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-
-	writel(QSERDES_V3_COM_BIAS_EN |
-	       QSERDES_V3_COM_BIAS_EN_MUX | QSERDES_V3_COM_CLKBUF_R_EN |
-	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL |
-	       QSERDES_V3_COM_CLKBUF_RX_DRIVE_L,
-	       qphy->serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
-
-	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG0);
-	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0x24, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
-	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG3);
-	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG4);
-	writel(0x26, qphy->pcs + QSERDES_DP_PHY_AUX_CFG5);
-	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG6);
-	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG7);
-	writel(0xbb, qphy->pcs + QSERDES_DP_PHY_AUX_CFG8);
-	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG9);
-	qphy->dp_aux_cfg = 0;
-
-	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
-	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
-	       PHY_AUX_REQ_ERR_MASK,
-	       qphy->pcs + QSERDES_V3_DP_PHY_AUX_INTERRUPT_MASK);
-}
-
-static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
-	{ 0x00, 0x0c, 0x15, 0x1a },
-	{ 0x02, 0x0e, 0x16, 0xff },
-	{ 0x02, 0x11, 0xff, 0xff },
-	{ 0x04, 0xff, 0xff, 0xff }
-};
-
-static const u8 qmp_dp_v3_voltage_swing_hbr3_hbr2[4][4] = {
-	{ 0x02, 0x12, 0x16, 0x1a },
-	{ 0x09, 0x19, 0x1f, 0xff },
-	{ 0x10, 0x1f, 0xff, 0xff },
-	{ 0x1f, 0xff, 0xff, 0xff }
-};
-
-static const u8 qmp_dp_v3_pre_emphasis_hbr_rbr[4][4] = {
-	{ 0x00, 0x0c, 0x14, 0x19 },
-	{ 0x00, 0x0b, 0x12, 0xff },
-	{ 0x00, 0x0b, 0xff, 0xff },
-	{ 0x04, 0xff, 0xff, 0xff }
-};
-
-static const u8 qmp_dp_v3_voltage_swing_hbr_rbr[4][4] = {
-	{ 0x08, 0x0f, 0x16, 0x1f },
-	{ 0x11, 0x1e, 0x1f, 0xff },
-	{ 0x19, 0x1f, 0xff, 0xff },
-	{ 0x1f, 0xff, 0xff, 0xff }
-};
-
-static int qcom_qmp_phy_configure_dp_swing(struct qmp_phy *qphy,
-		unsigned int drv_lvl_reg, unsigned int emp_post_reg)
-{
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
-	unsigned int v_level = 0, p_level = 0;
-	u8 voltage_swing_cfg, pre_emphasis_cfg;
-	int i;
-
-	for (i = 0; i < dp_opts->lanes; i++) {
-		v_level = max(v_level, dp_opts->voltage[i]);
-		p_level = max(p_level, dp_opts->pre[i]);
-	}
-
-	if (dp_opts->link_rate <= 2700) {
-		voltage_swing_cfg = qmp_dp_v3_voltage_swing_hbr_rbr[v_level][p_level];
-		pre_emphasis_cfg = qmp_dp_v3_pre_emphasis_hbr_rbr[v_level][p_level];
-	} else {
-		voltage_swing_cfg = qmp_dp_v3_voltage_swing_hbr3_hbr2[v_level][p_level];
-		pre_emphasis_cfg = qmp_dp_v3_pre_emphasis_hbr3_hbr2[v_level][p_level];
-	}
-
-	/* TODO: Move check to config check */
-	if (voltage_swing_cfg == 0xFF && pre_emphasis_cfg == 0xFF)
-		return -EINVAL;
-
-	/* Enable MUX to use Cursor values from these registers */
-	voltage_swing_cfg |= DP_PHY_TXn_TX_DRV_LVL_MUX_EN;
-	pre_emphasis_cfg |= DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN;
-
-	writel(voltage_swing_cfg, qphy->tx + drv_lvl_reg);
-	writel(pre_emphasis_cfg, qphy->tx + emp_post_reg);
-	writel(voltage_swing_cfg, qphy->tx2 + drv_lvl_reg);
-	writel(pre_emphasis_cfg, qphy->tx2 + emp_post_reg);
-
-	return 0;
-}
-
-static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy)
-{
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
-	u32 bias_en, drvr_en;
-
-	if (qcom_qmp_phy_configure_dp_swing(qphy,
-				QSERDES_V3_TX_TX_DRV_LVL,
-				QSERDES_V3_TX_TX_EMP_POST1_LVL) < 0)
-		return;
-
-	if (dp_opts->lanes == 1) {
-		bias_en = 0x3e;
-		drvr_en = 0x13;
-	} else {
-		bias_en = 0x3f;
-		drvr_en = 0x10;
-	}
-
-	writel(drvr_en, qphy->tx + QSERDES_V3_TX_HIGHZ_DRVR_EN);
-	writel(bias_en, qphy->tx + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
-	writel(drvr_en, qphy->tx2 + QSERDES_V3_TX_HIGHZ_DRVR_EN);
-	writel(bias_en, qphy->tx2 + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
-}
-
-static bool qcom_qmp_phy_configure_dp_mode(struct qmp_phy *qphy)
-{
-	u32 val;
-	bool reverse = false;
-
-	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
-
-	/*
-	 * TODO: Assume orientation is CC1 for now and two lanes, need to
-	 * use type-c connector to understand orientation and lanes.
-	 *
-	 * Otherwise val changes to be like below if this code understood
-	 * the orientation of the type-c cable.
-	 *
-	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC2)
-	 *	val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
-	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC1)
-	 *	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
-	 * if (orientation == ORIENTATION_CC2)
-	 *	writel(0x4c, qphy->pcs + QSERDES_V3_DP_PHY_MODE);
-	 */
-	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
-	writel(val, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-
-	writel(0x5c, qphy->pcs + QSERDES_DP_PHY_MODE);
-
-	return reverse;
-}
-
-static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy)
-{
-	const struct qmp_phy_dp_clks *dp_clks = qphy->dp_clks;
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
-	u32 phy_vco_div, status;
-	unsigned long pixel_freq;
-
-	qcom_qmp_phy_configure_dp_mode(qphy);
-
-	writel(0x05, qphy->pcs + QSERDES_V3_DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, qphy->pcs + QSERDES_V3_DP_PHY_TX2_TX3_LANE_CTL);
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-		phy_vco_div = 0x1;
-		pixel_freq = 1620000000UL / 2;
-		break;
-	case 2700:
-		phy_vco_div = 0x1;
-		pixel_freq = 2700000000UL / 2;
-		break;
-	case 5400:
-		phy_vco_div = 0x2;
-		pixel_freq = 5400000000UL / 4;
-		break;
-	case 8100:
-		phy_vco_div = 0x0;
-		pixel_freq = 8100000000UL / 6;
-		break;
-	default:
-		/* Other link rates aren't supported */
-		return -EINVAL;
-	}
-	writel(phy_vco_div, qphy->pcs + QSERDES_V3_DP_PHY_VCO_DIV);
-
-	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
-
-	writel(0x04, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
-	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x05, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x09, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	writel(0x20, qphy->serdes + QSERDES_V3_COM_RESETSM_CNTRL);
-
-	if (readl_poll_timeout(qphy->serdes + QSERDES_V3_COM_C_READY_STATUS,
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	if (readl_poll_timeout(qphy->pcs + QSERDES_V3_DP_PHY_STATUS,
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	writel(0x18, qphy->pcs + QSERDES_DP_PHY_CFG);
-	udelay(2000);
-	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	return readl_poll_timeout(qphy->pcs + QSERDES_V3_DP_PHY_STATUS,
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000);
-}
-
-/*
- * We need to calibrate the aux setting here as many times
- * as the caller tries
- */
-static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy)
-{
-	static const u8 cfg1_settings[] = { 0x13, 0x23, 0x1d };
-	u8 val;
-
-	qphy->dp_aux_cfg++;
-	qphy->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
-	val = cfg1_settings[qphy->dp_aux_cfg];
-
-	writel(val, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
-
-	return 0;
-}
-
-static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy)
-{
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-
-	/* Turn on BIAS current for PHY/PLL */
-	writel(0x17, qphy->serdes + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
-
-	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG0);
-	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0xa4, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
-	writel(0x00, qphy->pcs + QSERDES_DP_PHY_AUX_CFG3);
-	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG4);
-	writel(0x26, qphy->pcs + QSERDES_DP_PHY_AUX_CFG5);
-	writel(0x0a, qphy->pcs + QSERDES_DP_PHY_AUX_CFG6);
-	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG7);
-	writel(0xb7, qphy->pcs + QSERDES_DP_PHY_AUX_CFG8);
-	writel(0x03, qphy->pcs + QSERDES_DP_PHY_AUX_CFG9);
-	qphy->dp_aux_cfg = 0;
-
-	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
-	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
-	       PHY_AUX_REQ_ERR_MASK,
-	       qphy->pcs + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
-}
-
-static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy)
-{
-	/* Program default values before writing proper values */
-	writel(0x27, qphy->tx + QSERDES_V4_TX_TX_DRV_LVL);
-	writel(0x27, qphy->tx2 + QSERDES_V4_TX_TX_DRV_LVL);
-
-	writel(0x20, qphy->tx + QSERDES_V4_TX_TX_EMP_POST1_LVL);
-	writel(0x20, qphy->tx2 + QSERDES_V4_TX_TX_EMP_POST1_LVL);
-
-	qcom_qmp_phy_configure_dp_swing(qphy,
-			QSERDES_V4_TX_TX_DRV_LVL,
-			QSERDES_V4_TX_TX_EMP_POST1_LVL);
-}
-
-static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy)
-{
-	const struct qmp_phy_dp_clks *dp_clks = qphy->dp_clks;
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
-	u32 phy_vco_div, status;
-	unsigned long pixel_freq;
-	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
-	bool reverse;
-
-	writel(0x0f, qphy->pcs + QSERDES_V4_DP_PHY_CFG_1);
-
-	reverse = qcom_qmp_phy_configure_dp_mode(qphy);
-
-	writel(0x13, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0xa4, qphy->pcs + QSERDES_DP_PHY_AUX_CFG2);
-
-	writel(0x05, qphy->pcs + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, qphy->pcs + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-		phy_vco_div = 0x1;
-		pixel_freq = 1620000000UL / 2;
-		break;
-	case 2700:
-		phy_vco_div = 0x1;
-		pixel_freq = 2700000000UL / 2;
-		break;
-	case 5400:
-		phy_vco_div = 0x2;
-		pixel_freq = 5400000000UL / 4;
-		break;
-	case 8100:
-		phy_vco_div = 0x0;
-		pixel_freq = 8100000000UL / 6;
-		break;
-	default:
-		/* Other link rates aren't supported */
-		return -EINVAL;
-	}
-	writel(phy_vco_div, qphy->pcs + QSERDES_V4_DP_PHY_VCO_DIV);
-
-	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
-
-	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x05, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x01, qphy->pcs + QSERDES_DP_PHY_CFG);
-	writel(0x09, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	writel(0x20, qphy->serdes + QSERDES_V4_COM_RESETSM_CNTRL);
-
-	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_C_READY_STATUS,
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_CMN_STATUS,
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qphy->serdes + QSERDES_V4_COM_CMN_STATUS,
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	/*
-	 * At least for 7nm DP PHY this has to be done after enabling link
-	 * clock.
-	 */
-
-	if (dp_opts->lanes == 1) {
-		bias0_en = reverse ? 0x3e : 0x15;
-		bias1_en = reverse ? 0x15 : 0x3e;
-		drvr0_en = reverse ? 0x13 : 0x10;
-		drvr1_en = reverse ? 0x10 : 0x13;
-	} else if (dp_opts->lanes == 2) {
-		bias0_en = reverse ? 0x3f : 0x15;
-		bias1_en = reverse ? 0x15 : 0x3f;
-		drvr0_en = 0x10;
-		drvr1_en = 0x10;
-	} else {
-		bias0_en = 0x3f;
-		bias1_en = 0x3f;
-		drvr0_en = 0x10;
-		drvr1_en = 0x10;
-	}
-
-	writel(drvr0_en, qphy->tx + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias0_en, qphy->tx + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
-	writel(drvr1_en, qphy->tx2 + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias1_en, qphy->tx2 + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
-
-	writel(0x18, qphy->pcs + QSERDES_DP_PHY_CFG);
-	udelay(2000);
-	writel(0x19, qphy->pcs + QSERDES_DP_PHY_CFG);
-
-	if (readl_poll_timeout(qphy->pcs + QSERDES_V4_DP_PHY_STATUS,
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	writel(0x0a, qphy->tx + QSERDES_V4_TX_TX_POL_INV);
-	writel(0x0a, qphy->tx2 + QSERDES_V4_TX_TX_POL_INV);
-
-	writel(0x27, qphy->tx + QSERDES_V4_TX_TX_DRV_LVL);
-	writel(0x27, qphy->tx2 + QSERDES_V4_TX_TX_DRV_LVL);
-
-	writel(0x20, qphy->tx + QSERDES_V4_TX_TX_EMP_POST1_LVL);
-	writel(0x20, qphy->tx2 + QSERDES_V4_TX_TX_EMP_POST1_LVL);
-
-	return 0;
-}
-
-/*
- * We need to calibrate the aux setting here as many times
- * as the caller tries
- */
-static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy)
-{
-	static const u8 cfg1_settings[] = { 0x20, 0x13, 0x23, 0x1d };
-	u8 val;
-
-	qphy->dp_aux_cfg++;
-	qphy->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
-	val = cfg1_settings[qphy->dp_aux_cfg];
-
-	writel(val, qphy->pcs + QSERDES_DP_PHY_AUX_CFG1);
-
-	return 0;
-}
-
-static int qcom_qmp_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
-{
-	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-
-	memcpy(&qphy->dp_opts, dp_opts, sizeof(*dp_opts));
-	if (qphy->dp_opts.set_voltages) {
-		cfg->configure_dp_tx(qphy);
-		qphy->dp_opts.set_voltages = 0;
-	}
-
-	return 0;
-}
-
-static int qcom_qmp_dp_phy_calibrate(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-
-	if (cfg->calibrate_dp_phy)
-		return cfg->calibrate_dp_phy(qphy);
-
-	return 0;
-}
-
-static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
+int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -5160,8 +4108,9 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_com_init);
 
-static int qcom_qmp_phy_com_exit(struct qmp_phy *qphy)
+int qcom_qmp_phy_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -5195,6 +4144,7 @@ static int qcom_qmp_phy_com_exit(struct qmp_phy *qphy)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_com_exit);
 
 static int qcom_qmp_phy_init(struct phy *phy)
 {
@@ -5235,41 +4185,15 @@ static int qcom_qmp_phy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (cfg->type == PHY_TYPE_DP)
-		cfg->dp_aux_init(qphy);
-
 	return 0;
 }
 
-static int qcom_qmp_phy_power_on(struct phy *phy)
+void qcom_qmp_phy_lanes_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *tx = qphy->tx;
 	void __iomem *rx = qphy->rx;
-	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
-	void __iomem *status;
-	unsigned int mask, val, ready;
-	int ret;
-
-	qcom_qmp_phy_serdes_init(qphy);
-
-	if (cfg->has_lane_rst) {
-		ret = reset_control_deassert(qphy->lane_rst);
-		if (ret) {
-			dev_err(qmp->dev, "lane%d reset deassert failed\n",
-				qphy->index);
-			return ret;
-		}
-	}
-
-	ret = clk_prepare_enable(qphy->pipe_clk);
-	if (ret) {
-		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
-		goto err_reset_lane;
-	}
 
 	/* Tx, Rx, and PCS configurations */
 	qcom_qmp_phy_configure_lane(tx, cfg->regs,
@@ -5288,10 +4212,6 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 						    cfg->tx_tbl_num_sec, 2);
 	}
 
-	/* Configure special DP tx tunings */
-	if (cfg->type == PHY_TYPE_DP)
-		cfg->configure_dp_tx(qphy);
-
 	qcom_qmp_phy_configure_lane(rx, cfg->regs,
 				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
 	if (cfg->rx_tbl_sec)
@@ -5307,16 +4227,45 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 						    cfg->rx_tbl_num_sec, 2);
 	}
 
-	/* Configure link rate, swing, etc. */
-	if (cfg->type == PHY_TYPE_DP) {
-		cfg->configure_dp_phy(qphy);
-	} else {
-		qcom_qmp_phy_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
-		if (cfg->pcs_tbl_sec)
-			qcom_qmp_phy_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
-					       cfg->pcs_tbl_num_sec);
+}
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_lanes_init);
+
+static int qcom_qmp_phy_power_on(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_misc = qphy->pcs_misc;
+	void __iomem *status;
+	unsigned int mask, val, ready;
+	int ret;
+
+	qcom_qmp_phy_serdes_init(qphy);
+	qcom_qmp_phy_com_ready(qphy);
+
+	if (cfg->has_lane_rst) {
+		ret = reset_control_deassert(qphy->lane_rst);
+		if (ret) {
+			dev_err(qmp->dev, "lane%d reset deassert failed\n",
+				qphy->index);
+			return ret;
+		}
 	}
 
+	ret = clk_prepare_enable(qphy->pipe_clk);
+	if (ret) {
+		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
+		goto err_reset_lane;
+	}
+
+	qcom_qmp_phy_lanes_init(phy);
+
+	qcom_qmp_phy_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	if (cfg->pcs_tbl_sec)
+		qcom_qmp_phy_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
+				       cfg->pcs_tbl_num_sec);
+
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
 		goto err_disable_pipe_clk;
@@ -5337,30 +4286,29 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
 
-	if (cfg->type != PHY_TYPE_DP) {
-		/* Pull PHY out of reset state */
-		if (!cfg->no_pcs_sw_reset)
-			qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-		/* start SerDes and Phy-Coding-Sublayer */
-		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
-
-		if (cfg->type == PHY_TYPE_UFS) {
-			status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
-			mask = PCS_READY;
-			ready = PCS_READY;
-		} else {
-			status = pcs + cfg->regs[QPHY_PCS_STATUS];
-			mask = cfg->phy_status;
-			ready = 0;
-		}
+	/* Pull PHY out of reset state */
+	if (!cfg->no_pcs_sw_reset)
+		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	/* start SerDes and Phy-Coding-Sublayer */
+	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
-		ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
-					 PHY_INIT_COMPLETE_TIMEOUT);
-		if (ret) {
-			dev_err(qmp->dev, "phy initialization timed-out\n");
-			goto err_disable_pipe_clk;
-		}
+	if (cfg->type == PHY_TYPE_UFS) {
+		status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
+		mask = PCS_READY;
+		ready = PCS_READY;
+	} else {
+		status = pcs + cfg->regs[QPHY_PCS_STATUS];
+		mask = cfg->phy_status;
+		ready = 0;
 	}
+
+	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+				 PHY_INIT_COMPLETE_TIMEOUT);
+	if (ret) {
+		dev_err(qmp->dev, "phy initialization timed-out\n");
+		goto err_disable_pipe_clk;
+	}
+
 	return 0;
 
 err_disable_pipe_clk:
@@ -5379,25 +4327,20 @@ static int qcom_qmp_phy_power_off(struct phy *phy)
 
 	clk_disable_unprepare(qphy->pipe_clk);
 
-	if (cfg->type == PHY_TYPE_DP) {
-		/* Assert DP PHY power down */
-		writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-	} else {
-		/* PHY reset */
-		if (!cfg->no_pcs_sw_reset)
-			qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	/* PHY reset */
+	if (!cfg->no_pcs_sw_reset)
+		qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-		/* stop SerDes and Phy-Coding-Sublayer */
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+	/* stop SerDes and Phy-Coding-Sublayer */
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
-		/* Put PHY into POWER DOWN state: active low */
-		if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-			qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				     cfg->pwrdn_ctrl);
-		} else {
-			qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
-					cfg->pwrdn_ctrl);
-		}
+	/* Put PHY into POWER DOWN state: active low */
+	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
+		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			     cfg->pwrdn_ctrl);
+	} else {
+		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+				cfg->pwrdn_ctrl);
 	}
 
 	return 0;
@@ -5637,7 +4580,7 @@ static void phy_clk_release_provider(void *res)
  *    clk  |   +-------+   |                   +-----+
  *         +---------------+
  */
-static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
+int qcom_qmp_phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_init_data init = { };
@@ -5673,216 +4616,15 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 	 */
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_pipe_clk_register);
 
-/*
- * Display Port PLL driver block diagram for branch clocks
- *
- *              +------------------------------+
- *              |         DP_VCO_CLK           |
- *              |                              |
- *              |    +-------------------+     |
- *              |    |   (DP PLL/VCO)    |     |
- *              |    +---------+---------+     |
- *              |              v               |
- *              |   +----------+-----------+   |
- *              |   | hsclk_divsel_clk_src |   |
- *              |   +----------+-----------+   |
- *              +------------------------------+
- *                              |
- *          +---------<---------v------------>----------+
- *          |                                           |
- * +--------v----------------+                          |
- * |    dp_phy_pll_link_clk  |                          |
- * |     link_clk            |                          |
- * +--------+----------------+                          |
- *          |                                           |
- *          |                                           |
- *          v                                           v
- * Input to DISPCC block                                |
- * for link clk, crypto clk                             |
- * and interface clock                                  |
- *                                                      |
- *                                                      |
- *      +--------<------------+-----------------+---<---+
- *      |                     |                 |
- * +----v---------+  +--------v-----+  +--------v------+
- * | vco_divided  |  | vco_divided  |  | vco_divided   |
- * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
- * |              |  |              |  |               |
- * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
- * +-------+------+  +-----+--------+  +--------+------+
- *         |                 |                  |
- *         v---->----------v-------------<------v
- *                         |
- *              +----------+-----------------+
- *              |   dp_phy_pll_vco_div_clk   |
- *              +---------+------------------+
- *                        |
- *                        v
- *              Input to DISPCC block
- *              for DP pixel clock
- *
- */
-static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
-						struct clk_rate_request *req)
-{
-	switch (req->rate) {
-	case 1620000000UL / 2:
-	case 2700000000UL / 2:
-	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
-		return 0;
-	default:
-		return -EINVAL;
-	}
-}
-
-static unsigned long
-qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
-{
-	const struct qmp_phy_dp_clks *dp_clks;
-	const struct qmp_phy *qphy;
-	const struct phy_configure_opts_dp *dp_opts;
-
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_pixel_hw);
-	qphy = dp_clks->qphy;
-	dp_opts = &qphy->dp_opts;
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-		return 1620000000UL / 2;
-	case 2700:
-		return 2700000000UL / 2;
-	case 5400:
-		return 5400000000UL / 4;
-	case 8100:
-		return 8100000000UL / 6;
-	default:
-		return 0;
-	}
-}
-
-static const struct clk_ops qcom_qmp_dp_pixel_clk_ops = {
-	.determine_rate = qcom_qmp_dp_pixel_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_pixel_clk_recalc_rate,
-};
-
-static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
-					       struct clk_rate_request *req)
-{
-	switch (req->rate) {
-	case 162000000:
-	case 270000000:
-	case 540000000:
-	case 810000000:
-		return 0;
-	default:
-		return -EINVAL;
-	}
-}
-
-static unsigned long
-qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
-{
-	const struct qmp_phy_dp_clks *dp_clks;
-	const struct qmp_phy *qphy;
-	const struct phy_configure_opts_dp *dp_opts;
-
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_link_hw);
-	qphy = dp_clks->qphy;
-	dp_opts = &qphy->dp_opts;
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-	case 2700:
-	case 5400:
-	case 8100:
-		return dp_opts->link_rate * 100000;
-	default:
-		return 0;
-	}
-}
-
-static const struct clk_ops qcom_qmp_dp_link_clk_ops = {
-	.determine_rate = qcom_qmp_dp_link_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_link_clk_recalc_rate,
-};
-
-static struct clk_hw *
-qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
-{
-	struct qmp_phy_dp_clks *dp_clks = data;
-	unsigned int idx = clkspec->args[0];
-
-	if (idx >= 2) {
-		pr_err("%s: invalid index %u\n", __func__, idx);
-		return ERR_PTR(-EINVAL);
-	}
-
-	if (idx == 0)
-		return &dp_clks->dp_link_hw;
-
-	return &dp_clks->dp_pixel_hw;
-}
-
-static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
-				struct device_node *np)
-{
-	struct clk_init_data init = { };
-	struct qmp_phy_dp_clks *dp_clks;
-	char name[64];
-	int ret;
-
-	dp_clks = devm_kzalloc(qmp->dev, sizeof(*dp_clks), GFP_KERNEL);
-	if (!dp_clks)
-		return -ENOMEM;
-
-	dp_clks->qphy = qphy;
-	qphy->dp_clks = dp_clks;
-
-	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_link_clk_ops;
-	init.name = name;
-	dp_clks->dp_link_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_link_hw);
-	if (ret)
-		return ret;
-
-	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_pixel_clk_ops;
-	init.name = name;
-	dp_clks->dp_pixel_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_pixel_hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, dp_clks);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
-static const struct phy_ops qcom_qmp_phy_gen_ops = {
+const struct phy_ops qcom_qmp_phy_gen_ops = {
 	.init		= qcom_qmp_phy_enable,
 	.exit		= qcom_qmp_phy_disable,
 	.set_mode	= qcom_qmp_phy_set_mode,
 	.owner		= THIS_MODULE,
 };
-
-static const struct phy_ops qcom_qmp_phy_dp_ops = {
-	.init		= qcom_qmp_phy_init,
-	.configure	= qcom_qmp_dp_phy_configure,
-	.power_on	= qcom_qmp_phy_power_on,
-	.calibrate	= qcom_qmp_dp_phy_calibrate,
-	.power_off	= qcom_qmp_phy_power_off,
-	.exit		= qcom_qmp_phy_exit,
-	.set_mode	= qcom_qmp_phy_set_mode,
-	.owner		= THIS_MODULE,
-};
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_gen_ops);
 
 static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
 	.power_on	= qcom_qmp_phy_enable,
@@ -5896,14 +4638,13 @@ static void qcom_qmp_reset_control_put(void *data)
 	reset_control_put(data);
 }
 
-static
 int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+			void __iomem *serdes, const struct qmp_phy_cfg *cfg,
+			const struct phy_ops *ops)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	const struct phy_ops *ops;
 	char prop_name[MAX_PROP_NAME];
 	int ret;
 
@@ -5996,13 +4737,6 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 			return ret;
 	}
 
-	if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
-		ops = &qcom_qmp_pcie_ufs_ops;
-	else if (cfg->type == PHY_TYPE_DP)
-		ops = &qcom_qmp_phy_dp_ops;
-	else
-		ops = &qcom_qmp_phy_gen_ops;
-
 	generic_phy = devm_phy_create(dev, np, ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
@@ -6018,6 +4752,7 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_create);
 
 static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	{
@@ -6050,9 +4785,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc7180-qmp-usb3-phy",
 		.data = &sc7180_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
-		/* It's a combo phy */
 	}, {
 		.compatible = "qcom,sc8180x-qmp-pcie-phy",
 		.data = &sc8180x_pciephy_cfg,
@@ -6065,9 +4797,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
-		/* It's a combo phy */
 	}, {
 		.compatible = "qcom,sdm845-qhp-pcie-phy",
 		.data = &sdm845_qhp_pciephy_cfg,
@@ -6107,9 +4836,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8250-qmp-usb3-phy",
 		.data = &sm8250_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
-		/* It's a combo phy */
 	}, {
 		.compatible = "qcom,sm8250-qmp-usb3-uni-phy",
 		.data = &sm8250_usb3_uniphy_cfg,
@@ -6160,41 +4886,18 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 };
 MODULE_DEVICE_TABLE(of, qcom_qmp_phy_of_match_table);
 
-static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
-	{
-		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
-		.data = &sc7180_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
-		.data = &sm8250_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
-		.data = &sc8180x_usb3dpphy_cfg,
-	},
-	{ }
-};
-
-static const struct dev_pm_ops qcom_qmp_phy_pm_ops = {
+const struct dev_pm_ops qcom_qmp_phy_pm_ops = {
 	SET_RUNTIME_PM_OPS(qcom_qmp_phy_runtime_suspend,
 			   qcom_qmp_phy_runtime_resume, NULL)
 };
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_pm_ops);
 
-static int qcom_qmp_phy_probe(struct platform_device *pdev)
+int qcom_qmp_phy_common_init(struct platform_device *pdev, const struct qmp_phy_cfg *cfg,
+			     int expected_phys)
 {
 	struct qcom_qmp *qmp;
 	struct device *dev = &pdev->dev;
-	struct device_node *child;
-	struct phy_provider *phy_provider;
-	void __iomem *serdes;
-	void __iomem *usb_serdes;
-	void __iomem *dp_serdes = NULL;
-	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
-	const struct qmp_phy_cfg *cfg = NULL;
-	const struct qmp_phy_cfg *usb_cfg = NULL;
-	const struct qmp_phy_cfg *dp_cfg = NULL;
-	int num, id, expected_phys;
+	int num;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -6204,47 +4907,6 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
-	cfg = of_device_get_match_data(dev);
-	if (!cfg) {
-		const struct of_device_id *match;
-
-		match = of_match_device(qcom_qmp_combo_phy_of_match_table, dev);
-		if (!match)
-			return -EINVAL;
-
-		combo_cfg = match->data;
-		if (!combo_cfg)
-			return -EINVAL;
-
-		usb_cfg = combo_cfg->usb_cfg;
-		cfg = usb_cfg; /* Setup clks and regulators */
-	}
-
-	/* per PHY serdes; usually located at base address */
-	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(serdes))
-		return PTR_ERR(serdes);
-
-	/* per PHY dp_com; if PHY has dp_com control block */
-	if (combo_cfg || cfg->has_phy_dp_com_ctrl) {
-		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
-		if (IS_ERR(qmp->dp_com))
-			return PTR_ERR(qmp->dp_com);
-	}
-
-	if (combo_cfg) {
-		/* Only two serdes for combo PHY */
-		dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-		if (IS_ERR(dp_serdes))
-			return PTR_ERR(dp_serdes);
-
-		dp_cfg = combo_cfg->dp_cfg;
-		expected_phys = 2;
-	} else {
-		expected_phys = cfg->nlanes;
-	}
-
 	mutex_init(&qmp->phy_mutex);
 
 	ret = qcom_qmp_phy_clk_init(dev, cfg);
@@ -6280,18 +4942,57 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
+	return 0;
+}
+EXPORT_SYMBOL_GPL(qcom_qmp_phy_common_init);
+
+static int qcom_qmp_phy_probe(struct platform_device *pdev)
+{
+	struct qcom_qmp *qmp;
+	struct device *dev = &pdev->dev;
+	struct device_node *child;
+	struct phy_provider *phy_provider;
+	void __iomem *serdes;
+	void __iomem *dp_com = NULL;
+	const struct qmp_phy_cfg *cfg = NULL;
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
+	/* per PHY dp_com; if PHY has dp_com control block */
+	if (cfg->has_phy_dp_com_ctrl) {
+		dp_com = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(dp_com))
+			return PTR_ERR(dp_com);
+	}
+
+	ret = qcom_qmp_phy_common_init(pdev, cfg, cfg->nlanes);
+	if (ret)
+		return ret;
+
+	qmp = dev_get_drvdata(dev);
+	qmp->dp_com = dp_com;
+
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
-		if (of_node_name_eq(child, "dp-phy")) {
-			cfg = dp_cfg;
-			serdes = dp_serdes;
-		} else if (of_node_name_eq(child, "usb3-phy")) {
-			cfg = usb_cfg;
-			serdes = usb_serdes;
-		}
+		const struct phy_ops *ops;
+
+		if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
+			ops = &qcom_qmp_pcie_ufs_ops;
+		else
+			ops = &qcom_qmp_phy_gen_ops;
 
 		/* Create per-lane phy */
-		ret = qcom_qmp_phy_create(dev, child, id, serdes, cfg);
+		ret = qcom_qmp_phy_create(dev, child, id, serdes, cfg, ops);
 		if (ret) {
 			dev_err(dev, "failed to create lane%d phy, %d\n",
 				id, ret);
@@ -6303,19 +5004,12 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
 		 * See function description to see details of this pipe clock.
 		 */
 		if (cfg->type == PHY_TYPE_USB3 || cfg->type == PHY_TYPE_PCIE) {
-			ret = phy_pipe_clk_register(qmp, child);
+			ret = qcom_qmp_phy_pipe_clk_register(qmp, child);
 			if (ret) {
 				dev_err(qmp->dev,
 					"failed to register pipe clock source\n");
 				goto err_node_put;
 			}
-		} else if (cfg->type == PHY_TYPE_DP) {
-			ret = phy_dp_clks_register(qmp, qmp->phys[id], child);
-			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register DP clock source\n");
-				goto err_node_put;
-			}
 		}
 		id++;
 	}
@@ -6329,8 +5023,8 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	pm_runtime_disable(dev);
 	of_node_put(child);
+	pm_runtime_disable(dev);
 	return ret;
 }
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
