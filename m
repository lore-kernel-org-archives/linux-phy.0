Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 271DCC4167E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1cNJSLK44ieKbxWZNZwyPtZmDnUcj9rlC7dSKZjpb4=; b=trXOt8NN8ctomX
	TQ3Yw7S7eT19biXMgL6eDbHpjKSKVbJPZPiO1nLMILG06czW+yU4jHVQGvTgNouddZjc5VRjJyID5
	Ty3CXG4+3R18tSjbUyvc5Lrt8wVR4SpRJc2/R6srh1gw//myHTvoShxNlS+c2usq6o5ABZ07elUxS
	urI6U9rxbK0fSC7IB7actKGWzB6M0dhHxponAG/0XYNytQ1/k6u/qfuVON+XHDpv+oDNaT7cwIaqV
	G1XlDYB92RRNOFQBAWyPBJiJkb4utpqpi2vauf7arzy27KSp7A4b0D9YIqiEyS9pFGpUOPrrTglrs
	3DrrGt1YPE0PXMLuqScQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHz-008mGu-8z; Thu, 10 Nov 2022 19:32:39 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8b-008fdf-EY
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:00 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a15so2059688ljb.7
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BHDXCEc9yM1hAdhh26DgWQ6QnhN+zY09vjuUUwzdXI=;
        b=DigvrI/JuvwhrVswqn2QTh0i3bytQXypFnvEVK163zU8nrZuOJ/9JUchLfxTOp5yR5
         yEUvhud1Fg6sBDiy0f8RcYAv24bQLyngGXdJx5JC1v+12DUSYYSx7qRTXfMA+PXF4XVC
         IR4GXVTh/UGarD4TPaifW0fv7Q9oBpmpoeukVharWiHUrWPE2CWZ1Ju2tHq5N/qGVh49
         CGnkkX+SDjH5LPGHAV6q5mW8ewHqzKgwCaof+tE5yuADJRp/PVjT3HKPoiBml33bSwcf
         hFHev+4xxKxCydnz3+qNUZgwQduUxzhNgcrmNr6mH+tqkxMS3s6rwk52oA0Rcj7SyAcR
         FjGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BHDXCEc9yM1hAdhh26DgWQ6QnhN+zY09vjuUUwzdXI=;
        b=fjVT+NNo41XzEkOGIBQBswipqi9Ilc/qJsf0k1JrHhk25NBOczy9NriQTjSKe/Y4Yh
         HAXBjRVbBnopp0/eufnBiXQXmPJHSf/nERLx8qITkhq32ygXgkD3l0r6qJF1z3I1oIRg
         hEq6JMUDXL5mZYcC1cadRXa7y6awOwYpr1u5TE4TkON571JT7JypUGE9EYyRBhX7iC/k
         sRB0AMGsx/Ai+3R/4EAIWJL/J/uY61O487n6xVzEEVvde09h6j4wed3LMJrKDd3yl9fS
         9CO1qhI0VWPwRlURzXA2+72XCQVOUdYqhqHffktfpKJ4ydtm77MEASuQLk9ZRoKPvplS
         DWPA==
X-Gm-Message-State: ACrzQf2FVfeJ5NlRK3/FRBDIY5K4zxveA6+UYr97aI0TRRVZVDSVu1sS
	kaGRvz7vNyRC1TRF0uFm1S+aPQ==
X-Google-Smtp-Source: AMsMyM69fj7nDpaTmjwctl7AKCpnalTGpxlj8CDwKT+KX2r8AQ9X+e44SFnct0r7qfZPgkocT/xVmg==
X-Received: by 2002:a2e:9096:0:b0:26d:d392:2f2e with SMTP id l22-20020a2e9096000000b0026dd3922f2emr9634925ljg.375.1668108173459;
        Thu, 10 Nov 2022 11:22:53 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 06/13] phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate header
Date: Thu, 10 Nov 2022 22:22:41 +0300
Message-Id: <20221110192248.873973-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112257_538900_1DA0E3C8 
X-CRM114-Status: GOOD (  14.33  )
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

Follow other QMP headers, split and rename UFS-specific PCS registers to
ease comparing regs differences.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h    | 20 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    | 11 ----------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 18 ++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 4 files changed, 30 insertions(+), 20 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
new file mode 100644
index 000000000000..af870669a904
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V2_H_
+#define QCOM_PHY_QMP_PCS_UFS_V2_H_
+
+#define QPHY_V2_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x034
+#define QPHY_V2_PCS_UFS_TX_LARGE_AMP_POST_EMP_LVL	0x038
+#define QPHY_V2_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x03c
+#define QPHY_V2_PCS_UFS_TX_SMALL_AMP_POST_EMP_LVL	0x040
+
+#define QPHY_V2_PCS_UFS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
+#define QPHY_V2_PCS_UFS_RX_SYM_RESYNC_CTRL			0x13c
+#define QPHY_V2_PCS_UFS_RX_MIN_HIBERN8_TIME			0x140
+#define QPHY_V2_PCS_UFS_RX_SIGDET_CTRL2			0x148
+#define QPHY_V2_PCS_UFS_RX_PWM_GEAR_BAND			0x154
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index 2624a1ec3e73..431e9148b8d0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -12,10 +12,6 @@
 #define QPHY_V2_PCS_START_CONTROL			0x008
 #define QPHY_V2_PCS_TXDEEMPH_M6DB_V0			0x024
 #define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0			0x028
-#define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL		0x034
-#define QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL		0x038
-#define QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL		0x03c
-#define QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL		0x040
 #define QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE		0x054
 #define QPHY_V2_PCS_RX_IDLE_DTCT_CNTRL			0x058
 #define QPHY_V2_PCS_POWER_STATE_CONFIG1			0x060
@@ -32,13 +28,6 @@
 #define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
 #define QPHY_V2_PCS_FLL_CNT_VAL_H_TOL			0x0cc
 #define QPHY_V2_PCS_FLL_MAN_CODE			0x0d0
-
-/* UFS only ? */
-#define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
-#define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL			0x13c
-#define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
-#define QPHY_V2_PCS_RX_SIGDET_CTRL2			0x148
-#define QPHY_V2_PCS_RX_PWM_GEAR_BAND			0x154
 #define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
 #define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
 #define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 78d7daf34667..9a425be05ac2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -244,15 +244,15 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_PWM_GEAR_BAND, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_CTRL2, 0x6d),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP, 0x28),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SYM_RESYNC_CTRL, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL, 0x12),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_PWM_GEAR_BAND, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_MIN_STALL_NOCONFIG_TIME_CAP, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_SYM_RESYNC_CTRL, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_TX_LARGE_AMP_POST_EMP_LVL, 0x12),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_TX_SMALL_AMP_POST_EMP_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
 };
 
 static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 29a48f0436d2..60c52a55f119 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
+#include "phy-qcom-qmp-pcs-ufs-v2.h"
 
 #include "phy-qcom-qmp-pcs-v3.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
