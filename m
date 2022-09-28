Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A19BC6FA98
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX8J6gMQxuNJpGWrLnmIje5CQkRsHb4Ih5pISs0SePE=; b=i7zxbqhucH+Zlz
	qE+GhTiELCUOHun9MyA8khrkJUh0AmBYvt9FuW+qkOwyOpkzned90Yl2N+vucLq3yXPeDfJ78ojqa
	XX+1XrYGNK9KYVLbO5n7SEjeC6RJoz7ORsPlQpWlCRyfJ3LwlTA1ZVEMPIGoL/s/fdD9Wc6v6fg4e
	gd2A5ukq/yDBnRRV2Sq/pXHwzbYnR5FqVsNJp9qgdiQQmGAPnVgTZRAE/d96LqmZzBmq+JExINy3f
	uTTahypE5VAZXAH8FO683Xm0+zN6KphTxI/K7pWXcel05R3sRKug08cl1ewNcmZq2N9FgB+S+qMas
	SNylb9VBs5A+gHdyJgWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cIh-Uv; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCA-000cEG-PO
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:28 +0000
Received: by mail-lf1-x136.google.com with SMTP id u18so22514493lfo.8
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=lM73YaOk7Ye2eNHUAiU/uaRTXDAevXaPiBfAgPfz7sU=;
        b=y+uWwj+0jX1TgKw4ywyRYuXYNPvfvS00oVZ2561jOjdbS5OP8vMLlFlwBVzRnRaWga
         BIvtO3ZLjD+ZJSFguqaHQQqo11ocY/Wy1VTjwlz/lSOCq0hMhxcBK29Uf6nx5IVNSgQU
         zjRZ/XZo6iMBoMWvvCxvM+FCY7hnb5eKjneDnDW0d4lLd7qKyerzrUdzdWLDy6Ivbvsc
         c+gw8rKpYd5eHZ8e3xonbjiVAEgYp0r1KTmdFS2MGrLtRyfvFRjYi5KPj4PExrsdt05y
         ISmtTGAQ2Ne5s4sIDfksFbEsCMMQ8WaNvVLF1nX9hb3OoKamTAk9KLDLYn07L+fZVCX5
         F0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=lM73YaOk7Ye2eNHUAiU/uaRTXDAevXaPiBfAgPfz7sU=;
        b=R11wfl8PQA1GKd38/CZtkpWQidsnHJpGPH81YQZ2rs7ZPwk+U2es2ejhw8U8P4tovT
         DuVFUR+xiNtn2phxLuA4i9lJC3/ReCcLEWaNwPKCtL3U/xTdGj1LgAixqBcUrCpkdG4w
         ZbyOdDMbC3A5MvK++VqB5bTuc3+oGy581YFtrhGAoqEdfTWMMw0XCeqzY9yV7VAeWh2T
         00pg0i8lShBjidhA4IWpg5mjE9d53dWo6/0W8s6XQS3BBpV6Iphjjg1Xdd3/8RpIn+z0
         zJBwjVLGQ54W7mgisXjwQHUCILixcXP0kb8SyCrAxjCUja0tcrUPKd+SdnGHEp7kXjzx
         oYbw==
X-Gm-Message-State: ACrzQf13B88E4FgWRgjzPOUv1C9QmSH171WNQE4omaUM4Edk0VTpBwPt
	o4ZNv37YQaemsR1f+rLya/+/6aGtgOhjdQ==
X-Google-Smtp-Source: AMsMyM7aOo/mpjs+kCiTH5ywyIukeD8EngtQUJCy+8AN146MGB48Mz85Rxdw8AinpcgPvVxXNSTnFw==
X-Received: by 2002:ac2:4c50:0:b0:49a:3768:da81 with SMTP id o16-20020ac24c50000000b0049a3768da81mr106417lfk.247.1664406622925;
        Wed, 28 Sep 2022 16:10:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 09/18] phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate header
Date: Thu, 29 Sep 2022 02:10:05 +0300
Message-Id: <20220928231014.455201-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161026_846098_86A7BBC2 
X-CRM114-Status: GOOD (  14.56  )
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
index 738ec1e49ec6..e9c04b88f541 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -259,15 +259,15 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
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
index 26274e3c0cf9..e6f327acbf19 100644
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
