Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78FA9CCA480
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1VYggxS/CKCUerFo7NaZoZ4nnIT2PmAucfoLEpEBeU=; b=nQmyf+ACs7GrcI
	g2U+B2NK+9WU9rK/ZSDl74Pt4PNJBFp4VR+3pzeZv2DZtfx4CF56NerqtPewdtRvjRSdYe75YUk9p
	mAiJA1a78AJhF2g1UqvZ6uGKgDXoyoW7kyIeSwwrk+2+5cX2dzcGw7CNTcl87pmEEg1hjItjWVSfa
	0LoxL7Ap8PWdvfBi4itulxtbBlBPkfhP+mqoewcbT62U27Gb/JtUDZG2bldavL9dhCj9fdHaVCx46
	tarBPYxgBMROL2HmYh36bbhx6mC9KR3eLG+9XHvDKLCshRTGXYk0JHfeZksBEkcVSe7H8MG9WUuqf
	WPD4QXet2S36zLt6qAUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk18-009UvM-TB; Fri, 10 Jun 2022 19:09:58 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk15-009Utq-Qs
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:57 +0000
Received: by mail-lf1-x134.google.com with SMTP id y32so44242580lfa.6
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VwNvNf/fg1vH6mgfjM91FaQKXDEsvJNkyrukqfVltYE=;
        b=QevwaiUl2i4TwSUbw1/l457MY71LgO2ydYJOmFKRqD+jLqtQEiFIpiEWMyOravI8Ub
         oBjm45JUZ4Tw+7xx3bFE5twht7bm9TRiEpH0FKlZjnkXNl/o135XFQpAP60s4hNxVwbm
         i0eGtnkjBKCXBxAtNi/gHlpXDz+1ZhUEyGJGFjMUdjNsb3KUDCqUot9pDO1s0snMx39y
         6P/B3iH/jAI8+1W+LqT6jvs3QmcIPCRL6CJ5iC6rMvIhjH0/4r2rF5uyx4JNfdnulOT+
         bfQ/DY8EWpaclHMIqBlPN2xdJt4vNBFGLjZBKRh6uI5HHjzsjlKR/4MMBxMQZ0hzeCpg
         kN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VwNvNf/fg1vH6mgfjM91FaQKXDEsvJNkyrukqfVltYE=;
        b=HHp+ZmtugijNcnSM4p99YzZMEnZpSnBD9u4FaeLofpzXewbnqvUsdmkz7encpsT4f5
         e4LyffaoDxDrpjRPyesryPq2e9PG9HrqSHHFzQci7BFg5j+JGc2Lqk2U3ls7O0ko26eg
         56GjGa2ZvME11t7M1kuQ6BqzgHaKWrM1cGnDM9WbBngPAHNpBsv8RcZV+2rsG6LRm+Fa
         aVteE9ANwy7v3jEHbPAUgcOp6zKu9+BUKv3cPGXsXnWBw8w289d5jbD2eE9v4mMbfQm+
         2pCVcl6hrMg5F15AwjZN2oMNCKX54A5IO8uA8uvRxT9QvXv5jM6HeTmZZx1p+vF6OGUh
         DVuw==
X-Gm-Message-State: AOAM533EiV20r7v4TrIYppaW8+F4O0pW65V4IREWCp81dWhxaJ3cIlF3
	fFh2HGXQbGCFitVpxKH3f6gleMvNMKK+s0EA
X-Google-Smtp-Source: ABdhPJwONLRVdyWj6HY6NFe0QFfYykaMIBgbwcjxl1VIwld49/qZbG5DVC4IaE8E47I9M6AggUgmRg==
X-Received: by 2002:a05:6512:3d88:b0:479:1ad9:c007 with SMTP id k8-20020a0565123d8800b004791ad9c007mr22904101lfv.68.1654888193325;
        Fri, 10 Jun 2022 12:09:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 16/28] phy: qcom-qmp: move PCS V5 registers to separate headers
Date: Fri, 10 Jun 2022 22:09:13 +0300
Message-Id: <20220610190925.3670081-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120955_910787_2535E992 
X-CRM114-Status: GOOD (  14.07  )
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

Move PCS V5 registers to the separate headers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   | 16 +++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    | 27 ++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h    | 36 +++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h    | 17 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 63 ++-----------------
 5 files changed, 101 insertions(+), 58 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
new file mode 100644
index 000000000000..2e19fb3f051e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
@@ -0,0 +1,16 @@
+/* Only for QMP V5 PHY - PCS_PCIE registers */
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V5_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V5_H_
+
+/* Only for QMP V5 PHY - PCS_PCIE registers */
+#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x20
+#define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x54
+#define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
+#define QPHY_V5_PCS_PCIE_EQ_CONFIG2			0xa8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
new file mode 100644
index 000000000000..bcca23493b7e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
@@ -0,0 +1,27 @@
+/* Only for QMP V5 PHY - UFS PCS registers */
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V5_H_
+#define QCOM_PHY_QMP_PCS_UFS_V5_H_
+
+/* Only for QMP V5 PHY - UFS PCS registers */
+#define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
+#define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V5_PCS_UFS_PLL_CNTL			0x02c
+#define QPHY_V5_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
+#define QPHY_V5_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
+#define QPHY_V5_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
+#define QPHY_V5_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0b4
+#define QPHY_V5_PCS_UFS_DEBUG_BUS_CLKSEL		0x124
+#define QPHY_V5_PCS_UFS_RX_MIN_HIBERN8_TIME		0x150
+#define QPHY_V5_PCS_UFS_RX_SIGDET_CTRL1			0x154
+#define QPHY_V5_PCS_UFS_RX_SIGDET_CTRL2			0x158
+#define QPHY_V5_PCS_UFS_TX_PWM_GEAR_BAND		0x160
+#define QPHY_V5_PCS_UFS_TX_HS_GEAR_BAND			0x168
+#define QPHY_V5_PCS_UFS_TX_MID_TERM_CTRL1		0x1d8
+#define QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1		0x1e0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h
new file mode 100644
index 000000000000..73de626223ed
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V5_H_
+#define QCOM_PHY_QMP_PCS_USB_V5_H_
+
+/* Only for QMP V5 PHY - USB3 have different offsets than V4 */
+#define QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1		0x000
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x004
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x008
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x00c
+#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x010
+#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x014
+#define QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x018
+#define QPHY_V5_PCS_USB3_LFPS_TX_ECSTART		0x01c
+#define QPHY_V5_PCS_USB3_LFPS_PER_TIMER_VAL		0x020
+#define QPHY_V5_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x024
+#define QPHY_V5_PCS_USB3_LFPS_CONFIG1			0x028
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x02c
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x030
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x034
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x038
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x03c
+#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x040
+#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x044
+#define QPHY_V5_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x048
+#define QPHY_V5_PCS_USB3_ARCVR_DTCT_CM_DLY		0x04c
+#define QPHY_V5_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x050
+#define QPHY_V5_PCS_USB3_ALFPS_DEGLITCH_VAL		0x054
+#define QPHY_V5_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x058
+#define QPHY_V5_PCS_USB3_TEST_CONTROL			0x05c
+#define QPHY_V5_PCS_USB3_RXTERMINATION_DLY_SEL		0x060
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
new file mode 100644
index 000000000000..61a44519f969
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V5_H_
+#define QCOM_PHY_QMP_PCS_V5_H_
+
+/* Only for QMP V5 PHY - USB/PCIe PCS registers */
+#define QPHY_V5_PCS_REFGEN_REQ_CONFIG1			0x0dc
+#define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
+#define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
+#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
+#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 05da0725df71..9d93ae785b16 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -30,6 +30,11 @@
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 
+#include "phy-qcom-qmp-pcs-v5.h"
+#include "phy-qcom-qmp-pcs-pcie-v5.h"
+#include "phy-qcom-qmp-pcs-usb-v5.h"
+#include "phy-qcom-qmp-pcs-ufs-v5.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
@@ -334,20 +339,6 @@
 #define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3	0x218
 #define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3	0x220
 
-/* Only for QMP V5 PHY - USB/PCIe PCS registers */
-#define QPHY_V5_PCS_REFGEN_REQ_CONFIG1			0x0dc
-#define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
-#define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
-#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
-#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4
-
-/* Only for QMP V5 PHY - PCS_PCIE registers */
-#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x20
-#define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x54
-#define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
-#define QPHY_V5_PCS_PCIE_EQ_CONFIG2			0xa8
-
 /* Only for QMP V5_20 PHY - PCIe PCS registers */
 #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
@@ -356,48 +347,4 @@
 #define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
 #define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
 
-/* Only for QMP V5 PHY - UFS PCS registers */
-#define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
-#define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
-#define QPHY_V5_PCS_UFS_PLL_CNTL			0x02c
-#define QPHY_V5_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
-#define QPHY_V5_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
-#define QPHY_V5_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
-#define QPHY_V5_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0b4
-#define QPHY_V5_PCS_UFS_DEBUG_BUS_CLKSEL		0x124
-#define QPHY_V5_PCS_UFS_RX_MIN_HIBERN8_TIME		0x150
-#define QPHY_V5_PCS_UFS_RX_SIGDET_CTRL1			0x154
-#define QPHY_V5_PCS_UFS_RX_SIGDET_CTRL2			0x158
-#define QPHY_V5_PCS_UFS_TX_PWM_GEAR_BAND		0x160
-#define QPHY_V5_PCS_UFS_TX_HS_GEAR_BAND			0x168
-#define QPHY_V5_PCS_UFS_TX_MID_TERM_CTRL1		0x1d8
-#define QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1		0x1e0
-
-/* Only for QMP V5 PHY - USB3 have different offsets than V4 */
-#define QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1		0x000
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x004
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x008
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x00c
-#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x010
-#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x014
-#define QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x018
-#define QPHY_V5_PCS_USB3_LFPS_TX_ECSTART		0x01c
-#define QPHY_V5_PCS_USB3_LFPS_PER_TIMER_VAL		0x020
-#define QPHY_V5_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x024
-#define QPHY_V5_PCS_USB3_LFPS_CONFIG1			0x028
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x02c
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x030
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x034
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x038
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x03c
-#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x040
-#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x044
-#define QPHY_V5_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x048
-#define QPHY_V5_PCS_USB3_ARCVR_DTCT_CM_DLY		0x04c
-#define QPHY_V5_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x050
-#define QPHY_V5_PCS_USB3_ALFPS_DEGLITCH_VAL		0x054
-#define QPHY_V5_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x058
-#define QPHY_V5_PCS_USB3_TEST_CONTROL			0x05c
-#define QPHY_V5_PCS_USB3_RXTERMINATION_DLY_SEL		0x060
-
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
