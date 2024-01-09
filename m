Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B5FC47422
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UY6rDZqW6n8MsWd0m9+KCrWb9uoSHiHOyr3ZBdEA1qI=; b=GBcVAbEB2+OKAh
	f5p3iG0lzk8kqDJ9UlUq0cpBiaVmUds7t2Nza9BCpwmeKdE36NiR5HjXlq0+Y0UCDc9r7N3herNKA
	8emmfemZ0XpRawX4gLwNfJa12U6gYwkkXqNEUjGnoakcWmJjrYTrY7ISAHedE4BUIHaQfKhm/Xkjt
	Yn/w5G7tyQi8tsQPQEmCYQ6Xy8pAJoJF4aYvugGY+2gCbc0zxLbEB7S3HVNRe2beLUXsbM3oHqxCE
	ro7xEIsFRwq2vMBUIrXLX+gn5qjVdL0LxHh3aoOdFwUFaUFCrjqF4eU7K2aXzRbgaIrtQ/R/jg9Vc
	DQoDdi0XJKDnCVcazJug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PZ-006kt0-1Z;
	Tue, 09 Jan 2024 03:04:17 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PU-006knu-03
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:14 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2cd64022164so3147321fa.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769448; x=1705374248; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5iiDSHHZJieX628EZfrPfd+agKupJDCTMl1PcX1Hko=;
        b=D+GXEezmNTqMoJeb0K9ElTVau5gOxZVL0yEt7mVQDSijoCxApLBsvW+vjSdJo3U9rL
         +6Ik23nca99qR+iQSmBrU1W3MXNTH2Srs81HEDqGEXwblcwYzZM54SgZET/60VeS5F7d
         oF5TUafyohbTQUpKHgnMaZsb8h1ZkQ0DooSg90AB8J8GlSOpMK85Rf99lHetRcq/qcVw
         ehpe6aIbkrMPLkY8imXEvcDgsQocTEi7v12ENpdlwFiMv9L1H9T4TowO5dmAiBG3XXR9
         gVtoWk+AKTofhOnga+pq4s9tAMnTiym1TnSi4e1hmOvE4KF8ZfOdsMXNJpb1Nh1cH387
         1wIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769448; x=1705374248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v5iiDSHHZJieX628EZfrPfd+agKupJDCTMl1PcX1Hko=;
        b=br7n5wAFJXOHhtviF4EKbsRiSjrTNRCPSRPJGHmE12PPBVWbSqBQx3iXA7z4kie/aP
         QvqQnuIJP9M7txLU+6QfjQn+dN2RpnFZrr0LikJFLu7/KiFF8gGTyxTa5TfR1Lc1jfd0
         d8bMEdDjKZPVsB2RHHgcSfWyHFzs0N0VN15DA24RITWiJyo3RDzx/e7DPZAQJQhHjjBK
         ROrctrydZ/gr/RBQjY6tnq9hPCqJ1KG8M9fMgOCHzxq7OD25OuHtMYci1FPB84RhUl9O
         Pm2oar2OjemUHbG+TQM4736RU48ZotZClOtEHxkGOv3i0ZI6G7K981SUnddP0FmZzsjm
         y0BA==
X-Gm-Message-State: AOJu0YyUPpEUEr5ThSMoA/OKRH2xA9O180eLEsPKU5Zeaqg+Nf9KaQ7r
	QCM0PRAO9UEsChobVJkbZnz9pWLo5ec3Cw==
X-Google-Smtp-Source: AGHT+IHyz7l8zPXgecUhOsg5rev7El8tjPxENDdJ53PBI2NTC1dWZAr3V1B/OZ15ykrWHZqq0dGfgg==
X-Received: by 2002:a2e:808e:0:b0:2cd:a2e:fba6 with SMTP id i14-20020a2e808e000000b002cd0a2efba6mr2176871ljg.11.1704769448197;
        Mon, 08 Jan 2024 19:04:08 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:04:06 +0200
Subject: [PATCH 8/8] phy: qcom: sgmii-eth: move PCS registers to separate
 header
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-8-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=7598;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DJDDkfWKXJvRaZJvE3fW57O1HFp0QUs9QFg7/6fIpIo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlnLehvYAyQ8wy0pmX5MGKsfwA0iB3eCQYkPBtX
 L9rrUb3LgeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oQAKCRCLPIo+Aiko
 1Z6CB/0SUfJZOX3pI+kapCCdChXsugPzX/ykV1Bm6wjSy5wuqgMSqmQMW4TyfHjBGh67uhpvLJT
 kEjCwM+xhT7aXQhV657lPZyFDnNR1esVW0osIUiqyzOmPGMNLSc9CkF1Go3w6dc5dv/T9CqFnR6
 bdBfZnLukdtFddRz2HW7U5ifSQhzTN2CFiVX2Nhye7bl4lydX/LHRSmnFs3ZcuaAbSXu+8KHn39
 RD4PJQE5DuQcsUQ9EirwiGd9S8ejRb6mFZhkN0XGzPKQlhAbd7P2TmVsWONJNmT3LxM0mFMMY7V
 94UUsJTOQlHAZxSXvZ1z//Ul/7HJhW0hhAqOpPgJMFCc+e9K
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190412_056197_7F96E0F1 
X-CRM114-Status: GOOD (  13.03  )
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

Follow the example of the rest of the QMP PHY drivers and move SGMII PCS
registers to a separate header file.

Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h | 20 +++++++++
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 64 +++++++++++----------------
 2 files changed, 47 insertions(+), 37 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
new file mode 100644
index 000000000000..4d8c962f5e0f
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_SGMII_H_
+#define QCOM_PHY_QMP_PCS_SGMII_H_
+
+#define QPHY_PCS_PHY_START				0x000
+#define QPHY_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_PCS_SW_RESET				0x008
+#define QPHY_PCS_LINE_RESET_TIME			0x00c
+#define QPHY_PCS_TX_LARGE_AMP_DRV_LVL			0x020
+#define QPHY_PCS_TX_SMALL_AMP_DRV_LVL			0x028
+#define QPHY_PCS_PCS_READY_STATUS			0x094
+#define QPHY_PCS_TX_MID_TERM_CTRL1			0x0d8
+#define QPHY_PCS_TX_MID_TERM_CTRL2			0x0dc
+#define QPHY_PCS_SGMII_MISC_CTRL8			0x118
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 233f9b70c673..5b1c82459c12 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -11,6 +11,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
+#include "phy-qcom-qmp-pcs-sgmii.h"
 #include "phy-qcom-qmp-qserdes-com-v5.h"
 #include "phy-qcom-qmp-qserdes-txrx-v5.h"
 
@@ -19,17 +20,6 @@
 #define QSERDES_TX					0x400
 #define QSERDES_PCS					0xc00
 
-#define QSERDES_PCS_PHY_START				(QSERDES_PCS + 0x0)
-#define QSERDES_PCS_POWER_DOWN_CONTROL			(QSERDES_PCS + 0x4)
-#define QSERDES_PCS_SW_RESET				(QSERDES_PCS + 0x8)
-#define QSERDES_PCS_LINE_RESET_TIME			(QSERDES_PCS + 0xc)
-#define QSERDES_PCS_TX_LARGE_AMP_DRV_LVL		(QSERDES_PCS + 0x20)
-#define QSERDES_PCS_TX_SMALL_AMP_DRV_LVL		(QSERDES_PCS + 0x28)
-#define QSERDES_PCS_TX_MID_TERM_CTRL1			(QSERDES_PCS + 0xd8)
-#define QSERDES_PCS_TX_MID_TERM_CTRL2			(QSERDES_PCS + 0xdc)
-#define QSERDES_PCS_SGMII_MISC_CTRL8			(QSERDES_PCS + 0x118)
-#define QSERDES_PCS_PCS_READY_STATUS			(QSERDES_PCS + 0x94)
-
 #define QSERDES_COM_C_READY				BIT(0)
 #define QSERDES_PCS_READY				BIT(0)
 #define QSERDES_PCS_SGMIIPHY_READY			BIT(7)
@@ -43,8 +33,8 @@ struct qcom_dwmac_sgmii_phy_data {
 
 static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
 {
-	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
-	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_POWER_DOWN_CONTROL, 0x01);
 
 	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
 	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
@@ -118,21 +108,21 @@ static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
 	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
 	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
 
-	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
-	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
-	regmap_write(regmap, QSERDES_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
-	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL1, 0x83);
-	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
-	regmap_write(regmap, QSERDES_PCS_SGMII_MISC_CTRL8, 0x0C);
-	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_LINE_RESET_TIME, 0x0C);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL1, 0x83);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL8, 0x0C);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
 
-	regmap_write(regmap, QSERDES_PCS_PHY_START, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
 }
 
 static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
 {
-	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
-	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_POWER_DOWN_CONTROL, 0x01);
 
 	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
 	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
@@ -206,15 +196,15 @@ static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
 	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
 	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
 
-	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
-	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
-	regmap_write(regmap, QSERDES_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
-	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL1, 0x83);
-	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
-	regmap_write(regmap, QSERDES_PCS_SGMII_MISC_CTRL8, 0x8C);
-	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_LINE_RESET_TIME, 0x0C);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL1, 0x83);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL8, 0x8C);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
 
-	regmap_write(regmap, QSERDES_PCS_PHY_START, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
 }
 
 static inline int
@@ -251,14 +241,14 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	}
 
 	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
-					     QSERDES_PCS_PCS_READY_STATUS,
+					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
 					     QSERDES_PCS_READY)) {
 		dev_err(dev, "PCS_READY timed-out");
 		return -ETIMEDOUT;
 	}
 
 	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
-					     QSERDES_PCS_PCS_READY_STATUS,
+					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
 					     QSERDES_PCS_SGMIIPHY_READY)) {
 		dev_err(dev, "SGMIIPHY_READY timed-out");
 		return -ETIMEDOUT;
@@ -285,11 +275,11 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
 
-	regmap_write(data->regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
-	regmap_write(data->regmap, QSERDES_PCS_SW_RESET, 0x01);
+	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
+	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
 	udelay(100);
-	regmap_write(data->regmap, QSERDES_PCS_SW_RESET, 0x00);
-	regmap_write(data->regmap, QSERDES_PCS_PHY_START, 0x01);
+	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
+	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
 
 	clk_disable_unprepare(data->refclk);
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
