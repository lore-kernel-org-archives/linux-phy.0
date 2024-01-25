Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF39C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UY6rDZqW6n8MsWd0m9+KCrWb9uoSHiHOyr3ZBdEA1qI=; b=xeA9xTvBojAmOp
	IWCICJhyg/Ozuub+bO85LMInWIR6+MS8tTRm/i+TrD0msD8s/mHvU2bQSwV2k66aQ8WDXBeJvEa9p
	oD7AYtwfUTjuWxMINNnf/YkPNZ8NFlioj2F9aTjOC2UiFtLqSqN1fTcUj0HxlYR8ImGib/99XUibX
	5iJGnagNXZGoC50Ie8ZF324XVDS7NarAEG3AQCtw3aQuf+PkRs0qpsFl10TFcSYUiI6i+LD16cGyh
	nRAiIb3rVny7dYrNy2jLzFkOZGSFrHWT2iPdUG9F7mmsIxW9ucCZmhdcEqF5Mnbr990lvcbxgAvKx
	k1uXs56D0xy4Oo26xEWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93x-00000002RVN-3EKe;
	Thu, 25 Jan 2024 23:23:13 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93q-00000002RQa-26Mt
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:07 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-510218ab26fso1191162e87.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224984; x=1706829784; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5iiDSHHZJieX628EZfrPfd+agKupJDCTMl1PcX1Hko=;
        b=OJxLP6O3octedn7M4OU0Km9SwHrl/1TQCt0IPus5PBhnErG1uDmyPQu8+xNdXNNMiY
         aZHGg5qjsVW3gpXv23CrvFPd6hqta8pQOeabeHOVXK9xHExQAg9EihvfmlPr3/GSz3D6
         7SABgn4jO/MnoWaAZczkFYkXOBciRFnu90M1zF2OvHQdqZGGb93HuMk6+o4W9GuQrfUu
         C6V2KnDltUdQ9tmOxOvLb6ddvrF5O0otHaU64BFllzRXVVlcJZfmMyxxnhscvZ/9mN4W
         QuoGCAo2mDE3DwAox0yga3SHycliYcFlLAz0oceC5RtB/8gVFL2jrl6sjMEmYanau/eB
         kAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224984; x=1706829784;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v5iiDSHHZJieX628EZfrPfd+agKupJDCTMl1PcX1Hko=;
        b=A+iLUFUBLUtb8Cb9dhIH4M1U48iF54Uhb7dUvLC9zXtQqngrSvZDmSqoduwvBtVoDx
         rxCmiux9cVI7hs+E+N+wKWk9YY15bKDCtS85h1nh7xEANaCfK1DhidD61jw0humI0F4n
         oO0HRDjz6O65BhYjcNSy6fIvaOKdTRExvoa4DipxGLnLCAi7EhjVEpIoBOxU6AKzF1qJ
         +UGddoWgSKRs1cCgRgcwExSdrh+n74ga3tNTpNEPMcnGA2TtyO96GvV02NRk5ndQ2Z99
         4oXzzfazV9ti4xFPalBCTwdApe0QAuJlC8o0NiG+TDg3fA6grWA+5PwBu87ACWg+kA0c
         5x3A==
X-Gm-Message-State: AOJu0YxLACybbvk8fmvT2jxMG6uE/9fq7QsNW2DvGyukI2HWANRJnmrk
	QnU3HH/F0/ptj7ThA6kX06vJpwKGrncw2dGiUpE7j+QKBF7TaD4SWw++2ySWe9AXF5o811DBDHT
	b
X-Google-Smtp-Source: AGHT+IEGayCEF4rpwfmKDsp84tEGMAl2KaEMiJnDvaMD5DI5BQmpf+JZfWbnlQO6JVb5mc6B7PcDiw==
X-Received: by 2002:a19:910a:0:b0:50e:d416:1698 with SMTP id t10-20020a19910a000000b0050ed4161698mr537519lfd.49.1706224983566;
        Thu, 25 Jan 2024 15:23:03 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:23:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 01:22:42 +0200
Subject: [PATCH v2 8/8] phy: qcom: sgmii-eth: move PCS registers to
 separate header
MIME-Version: 1.0
Message-Id: <20240126-phy-qmp-merge-common-v2-8-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
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
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+qmtwGTT3F/sAxxjLhqKO/06/HTbxG717JmPLpZO2dXi
 NTjVp/VnYzGLAyMXAyyYoosPgUtU2M2JYd92DG1HmYQKxPIFAYuTgGYiLUdB0PnvLO2ehc3bbrN
 tyl9X+jHmzaHTCTud9+//vrRXXPD5qcd2bHZgRrdTMpiKq9tNGdIiSS2n+X+zrKxlGtb8wxZDb3
 OF9Xz/4QteZUnqCf9bd1Z5s4P2scY2aJLrFQMJ2dPOLbmxsbXYj1qyrddLwv8UE4IVzpyXm7hC+
 eNVr9mSDYrG768322zZX6Lg2fCxoutbZv7u9UZQv1/y6VypB/V9fq0/vmqvNmeJ67z5v6RmFHC5
 KkSPbvphmFJ7RdPuzusF9UV/1WohxVkvJoquans+E32uzNaZcXlDV7JmDMzZ/8SSLmuI/zeOVYx
 da3B/akLnjSw+4k11huJ8lVIXU9q7K5dX3nl3ZwN+YuYAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152306_595819_525CFFA9 
X-CRM114-Status: GOOD (  13.12  )
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
