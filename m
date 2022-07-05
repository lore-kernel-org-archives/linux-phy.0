Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02973CCA487
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cXaHk9SJs5P0Yacf75NH6IezjBE3Y5SFL6xnhxY3Gg=; b=rV/7ftq9UDbnkJ
	KIdgqUbvn2R4XQGZ3eYUOOeOz3sK8dZGTiaAljbtcixMqXYfka8SD3Nvw70+m48dRrHflERX7KjOH
	Gv5yPi7UZb4WUDWvFZmDZ6T84DfQGsmmb44C/sSrIrbAZiDFPDrv07zo3TjgFdvkQXSI63wKEKBVG
	+i5Lkn4c+gWRNi28AbIsl4kGZ4THLdF0FXiURd/DbMmM6QvOjEj3P2eCopTi+YMjdOYvT3AKzCnqq
	LvQNGNiWnv+kjlUJUxaB0AZfFZ6dJhNCtEku/EVJXf7U83OgXY1ixP4Up30V1aSXHcex445jHex3U
	Qi1BrybK/KR9aafBLNaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g40-00HFcT-Ct; Tue, 05 Jul 2022 10:45:52 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5i-00GquK-7p
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:38 +0000
Received: by mail-lf1-x131.google.com with SMTP id m18so1145315lfg.10
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vO5kMCLoocFQhwYevseik9XMf7ZqUBB1Y4tGgw7R1Eg=;
        b=xwtlgwwGv42A/NQuoUR7HAewYmgG1jSmf7H29uR3Q9vk8Ilebag4Cq2slGAsEnTmwR
         8HD1qJrTPss9ZAZxbIKKvi35KR2/tPdhxyZO6gX/UHOyNiE59FkEzoQuyTcA+6ctZKkr
         RT8kPC339vplBqHmSDS6HZcezoZMbcgxhX+dbQ3O/ruL2KdnjPBXkfkgP6QVOCAtWCG+
         h2qWuUeZY7a7Ecrgx1nRQRuGy9XFs84t5QlZWCpS11gb1BlI5Ey9a0TfElhUv7j/OUPG
         hvBC+FZGN9DXHHbKTjKE79M9pPdpY1feN9ZUvVUrN6pvVA/vIOmYuU/j1dc+yCbSaUGI
         KsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vO5kMCLoocFQhwYevseik9XMf7ZqUBB1Y4tGgw7R1Eg=;
        b=Aml+my/xcWjsI7uJ6V7kBE9Pwt332UOa5vw4MQM0fB/JEvZNBH63KuPFgFoEfQcaO1
         IoiF17hUr+C1MF/SlIvgJc1wTdUR77D/srg1ZpW4TojcQERboX+y2P/Q5joi1IVjrEdG
         ryzttULzjJF+KYdI5DesJv6LlvXazWQ2d8lXf1FpfiYlBCqWsbgOnxFgG0FC874zL9Qq
         FryhKBBVFp4FfrA47lmn2TX9LDmYAb0NjSW8L/zFPEiOhhHYITDfyV+voRZXrkWoYy5H
         UNJf789aTBILFMt+ZoPd0FWDvZdlEC4OhU3Z2RtavTxCpZwWOyC+DhV19z/1krLVZ5Do
         pgcw==
X-Gm-Message-State: AJIora/FmMXPCOXF95WMnXPFBIA3JtMnjqQx0yW8Vs4U9i0+h5to26la
	ejb/YWBFM2u84mcH1ESuMAmQsA==
X-Google-Smtp-Source: AGRyM1s3o8cviL35OoLo73H2Fg8Fb7HIQxQDzq3Uf9UicSmlF4SGB3tXH7RTx+LG/g7c/6nAiA7GNw==
X-Received: by 2002:a05:6512:261f:b0:480:fd2b:23c8 with SMTP id bt31-20020a056512261f00b00480fd2b23c8mr22479662lfb.434.1657014212212;
        Tue, 05 Jul 2022 02:43:32 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 13/28] phy: qcom-qmp: move PCS V2 registers to separate header
Date: Tue,  5 Jul 2022 12:43:05 +0300
Message-Id: <20220705094320.1313312-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024334_354540_325F5858 
X-CRM114-Status: GOOD (  12.06  )
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

Move PCS V2 registers to the separate header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h | 38 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        | 29 +----------------
 2 files changed, 39 insertions(+), 28 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
new file mode 100644
index 000000000000..3fc3c0562d16
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V2_H_
+#define QCOM_PHY_QMP_PCS_V2_H_
+
+/* Only for QMP V2 PHY - PCS registers */
+#define QPHY_V2_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_V2_PCS_TXDEEMPH_M6DB_V0			0x024
+#define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0			0x028
+#define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL		0x034
+#define QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL		0x038
+#define QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL		0x03c
+#define QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL		0x040
+#define QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE		0x054
+#define QPHY_V2_PCS_RX_IDLE_DTCT_CNTRL			0x058
+#define QPHY_V2_PCS_POWER_STATE_CONFIG1			0x060
+#define QPHY_V2_PCS_POWER_STATE_CONFIG2			0x064
+#define QPHY_V2_PCS_POWER_STATE_CONFIG4			0x06c
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG1			0x080
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG2			0x084
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x088
+#define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
+#define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
+#define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
+#define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL			0x13c
+#define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
+#define QPHY_V2_PCS_RX_SIGDET_CTRL2			0x148
+#define QPHY_V2_PCS_RX_PWM_GEAR_BAND			0x154
+#define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
+#define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
+#define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
+#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
+#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 07e281c818b1..1bb57d1563c3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -20,34 +20,7 @@
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-/* Only for QMP V2 PHY - PCS registers */
-#define QPHY_V2_PCS_POWER_DOWN_CONTROL				0x04
-#define QPHY_V2_PCS_TXDEEMPH_M6DB_V0				0x24
-#define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0				0x28
-#define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL			0x34
-#define QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL			0x38
-#define QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL			0x3c
-#define QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL			0x40
-#define QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE			0x54
-#define QPHY_V2_PCS_RX_IDLE_DTCT_CNTRL				0x58
-#define QPHY_V2_PCS_POWER_STATE_CONFIG1			0x60
-#define QPHY_V2_PCS_POWER_STATE_CONFIG2			0x64
-#define QPHY_V2_PCS_POWER_STATE_CONFIG4			0x6c
-#define QPHY_V2_PCS_LOCK_DETECT_CONFIG1			0x80
-#define QPHY_V2_PCS_LOCK_DETECT_CONFIG2			0x84
-#define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x88
-#define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0xa0
-#define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK			0xa4
-#define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP		0xcc
-#define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL				0x13c
-#define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
-#define QPHY_V2_PCS_RX_SIGDET_CTRL2				0x148
-#define QPHY_V2_PCS_RX_PWM_GEAR_BAND				0x154
-#define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1a8
-#define QPHY_V2_PCS_OSC_DTCT_ACTIONS				0x1ac
-#define QPHY_V2_PCS_RX_SIGDET_LVL				0x1d8
-#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1dc
-#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1e0
+#include "phy-qcom-qmp-pcs-v2.h"
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
