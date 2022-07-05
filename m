Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CA16CCA48B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfXg2YRpMdAR5iuGs3Zk1oXRBgK/DnphYz6iyELcoqA=; b=ClAmKrro6YJZbn
	S4w3hT90kSxiNLC8IEhm+TUOOGkI8lB9WFeFpacqATOxzgy5rK23fTrT1GwxUTvbxHwrRY6Ye0JpN
	V1Ou6dVCzocGozIDqtbjOCf3Avgmr/zDHwfcF+qe5A68uXLEOuxvyX4ElqIx76aNLY6kblvW8AK//
	c4QtMOCYTmuQf1mEh0RVOu46MiCHXHCzZqHGO9cmSeusCFNZMPJ7HWFc7w08CZYBhUSWDMEiekQiv
	AMOCkbjCCbo4yrRCMxncwvcnRD1i6MJ1Oa0MPxrkDFtdGjM3uDUjYBXzy7NSGcu7cpBM9ONjPjUtV
	gnketaxrRs1S5iUf+eQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g41-00HFeX-Gt; Tue, 05 Jul 2022 10:45:53 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5m-00Gqmt-Lp
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:41 +0000
Received: by mail-lf1-x12f.google.com with SMTP id f39so19624763lfv.3
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iGyDqd78yecegUSX/ayldySTMMUmKflthJqYkGSzxHo=;
        b=prjWTHqfk94IJ63eI8l0ZzZz5SkF7RWrFYDATXUqeP/E2bqwtBXsXCdvsO3AG9iXrB
         /8iGGkIXmbupD8vrkrBQWtGZOc6wyvFJvBl6MXeZWZVzPloEK3JquZbrKFofgMKlMJ90
         NO0Zl5/ibczC9GOi0e8YkUN3VRdTKGIiDlQfuUK0NGYfJRscHAMOeFbcXCCrWatndaEV
         1IeGzacUGm4P3NCNw3beRgT3hszXBnfJnNrkTDudqCu/cAGUvY6jj3F5oyqtoGOanEMU
         fBfMThHv6tdL79EDJ/qGr0alc9/i5HsWFyA8keVUORHnPZuczbORcBX6AGQqwX53qGr8
         T/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iGyDqd78yecegUSX/ayldySTMMUmKflthJqYkGSzxHo=;
        b=bGIo7KBfY41nQA0tVo2enzxoRJODdoPb9jhHmJssdZuq6h7eviAbsAoZ93WFCRRxKV
         UnQBrbG0y/lQVL9OAzBXQAcEHUTDKYEC4bkLDDH7AjCL5oVPYoL+zdk9d07TABZ/DP9l
         vM1Pp+AlfZ7mISuGvsJ5edwpeq/6Qk77vbuFY+5Q2E8WU5CXxnvB/lQqLJA7ou14cav9
         gsrmgpGEKApOKSTrtltZOYYg5HkKm6gVNRbUKGzlQh7c/YS0F51DbhZ+dXHFZCR/MofW
         juxI8ECUzJsMwMSXB48iqXB2gIB+KQSmPR2fYxts8bLe9I2mMy8XbZzGsNBuuAYGXiY8
         uwBg==
X-Gm-Message-State: AJIora8LlCXN4TtPkmU7OVSlWsjlPMxL0cVmGCQj6E4WrHtSOc5OvmhJ
	O3At9BbU3RAGhHxZ8KvtH+cHWg==
X-Google-Smtp-Source: AGRyM1s9Y5jZ+nCAf20TRnEj2snM9NuMvCTKFhFiSntmTFLCa7uFukZEsX720MhSTZ946deEWwWvUA==
X-Received: by 2002:ac2:5bc1:0:b0:47f:7f73:53ee with SMTP id u1-20020ac25bc1000000b0047f7f7353eemr22592541lfn.311.1657014218166;
        Tue, 05 Jul 2022 02:43:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 20/28] phy: qcom-qmp: split PCS_UFS V3 symbols to separate header
Date: Tue,  5 Jul 2022 12:43:12 +0300
Message-Id: <20220705094320.1313312-21-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024338_783075_97F50DC6 
X-CRM114-Status: GOOD (  16.78  )
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

Several registers defined in the PCS V3 namespace in reality belong to
the PCS_UFS V3 register space. Move them to the separate header and
rename them to explicitly mention PCS_UFS. While we are at it, correct
one register in the msm8998_usb3_pcs_tbl table to use PCS register name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h | 18 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h     |  8 --------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c        | 16 ++++++++--------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c        |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp.h            |  1 +
 5 files changed, 28 insertions(+), 17 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
new file mode 100644
index 000000000000..ba1ea29d2884
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V3_H_
+#define QCOM_PHY_QMP_PCS_UFS_V3_H_
+
+#define QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x02c
+#define QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x034
+#define QPHY_V3_PCS_UFS_RX_SYM_RESYNC_CTRL		0x134
+#define QPHY_V3_PCS_UFS_RX_MIN_HIBERN8_TIME		0x138
+#define QPHY_V3_PCS_UFS_RX_SIGDET_CTRL1			0x13c
+#define QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2			0x140
+#define QPHY_V3_PCS_UFS_TX_MID_TERM_CTRL1		0x1bc
+#define QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1		0x1c4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
index 0b023df19126..ac13f2989a73 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
@@ -14,8 +14,6 @@
 #define QPHY_V3_PCS_TXMGN_V3				0x018
 #define QPHY_V3_PCS_TXMGN_V4				0x01c
 #define QPHY_V3_PCS_TXMGN_LS				0x020
-#define QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL		0x02c
-#define QPHY_V3_PCS_TX_SMALL_AMP_DRV_LVL		0x034
 #define QPHY_V3_PCS_TXDEEMPH_M6DB_V0			0x024
 #define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0			0x028
 #define QPHY_V3_PCS_TXDEEMPH_M6DB_V1			0x02c
@@ -53,15 +51,9 @@
 #define QPHY_V3_PCS_FLL_CNT_VAL_L			0x0cc
 #define QPHY_V3_PCS_FLL_CNT_VAL_H_TOL			0x0d0
 #define QPHY_V3_PCS_FLL_MAN_CODE			0x0d4
-#define QPHY_V3_PCS_RX_SYM_RESYNC_CTRL			0x134
-#define QPHY_V3_PCS_RX_MIN_HIBERN8_TIME			0x138
-#define QPHY_V3_PCS_RX_SIGDET_CTRL1			0x13c
-#define QPHY_V3_PCS_RX_SIGDET_CTRL2			0x140
 #define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1a8
 #define QPHY_V3_PCS_OSC_DTCT_ACTIONS			0x1ac
 #define QPHY_V3_PCS_SIGDET_CNTRL			0x1b0
-#define QPHY_V3_PCS_TX_MID_TERM_CTRL1			0x1bc
-#define QPHY_V3_PCS_MULTI_LANE_CTRL1			0x1c4
 #define QPHY_V3_PCS_RX_SIGDET_LVL			0x1d8
 #define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
 #define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index bfe5f562bcd0..701b03a13b17 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -389,14 +389,14 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_CTRL2, 0x6e),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL, 0x0a),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_SMALL_AMP_DRV_LVL, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SYM_RESYNC_CTRL, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_MID_TERM_CTRL1, 0x43),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_CTRL1, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_MIN_HIBERN8_TIME, 0x9a),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_MULTI_LANE_CTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2, 0x6e),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SYM_RESYNC_CTRL, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL1, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_MIN_HIBERN8_TIME, 0x9a),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
 static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 40ac61bcadac..aa7e193f2206 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -634,7 +634,7 @@ static const struct qmp_phy_init_tbl msm8998_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_LS, 0x6b),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V1, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1, 0x0d),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V2, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2, 0x0d),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index cdbbcf6b5686..b139c8af5e8b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -26,6 +26,7 @@
 
 #include "phy-qcom-qmp-pcs-v3.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-ufs-v3.h"
 
 #include "phy-qcom-qmp-pcs-v4.h"
 #include "phy-qcom-qmp-pcs-pcie-v4.h"
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
