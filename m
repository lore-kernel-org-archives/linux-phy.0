Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 340B6C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCRzxHIHodc23R2SXZhp/k3ejXFwOuaHLUM9B7X/974=; b=vdIqJ4jTZ3M+h5
	ZiFmeRbUESBcdR3RtZIUNZkypmt4RpuxAd6vUHQ78oq7wfyAR7jk1rIGvMARxL2KVXppbOQ2dUEFq
	92H5CcuoXFTi7bfezM3x3AklC+KCzvU/X6HMdKjtZ7P6gS3aijJz2BKMEZqOTzhf7GsrQm8gbc/sq
	PLCJYcRHJDJye9X7JI2bDZplFwEQ0etUL3sWPiK+scU7E2Q5EndypegJrfT/g5pH9ajqiEM97/Uaj
	8B/0ihZOBmeoxJ3hvh86eNxPl4h118pidrXI1tQdhxCZ8M12SFK3Vmdfubq8g+DfmAe5C3akUmDQN
	9vwJniukIk3jduDB+A/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk14-009Utv-K7; Fri, 10 Jun 2022 19:09:54 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk11-009UjP-Ea
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:53 +0000
Received: by mail-lj1-x22c.google.com with SMTP id h23so143015ljl.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JlgKlwRAIh6z/Ina4P2+HNN0zu9VC9y9zZhbFp4feFA=;
        b=X35PRZ7gvDS2eOmCFWSSMUd/1Hk0FoBPBCe8NDiHBhsi3PX3uCm2WTNkQCDE3T39zQ
         /t0fQXdJ9jc8j1wcTqguJwQ0xJRT79mOyNYWvxLSdYtFvRdaS1AODw+qcU+PxnV823f5
         skeC3Rsx+BmXfvXXPwFMrtobf1w79SaSacqE80QviEslLDF+RjZsnK8ae52nuil2B3RS
         oq5wW0HZPXbM6pdHusG2wpSmo5jQje5m6sqkJM22J2ztISHGl8wXVZmcNYm/o+/lNu7Y
         olQ0dAYcutNhUr5KDkcVTsDjtcInS6Q+Y+JmyFO80+QPG1cY7ceNcmw4Ug1UMzWI0b4M
         NrJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JlgKlwRAIh6z/Ina4P2+HNN0zu9VC9y9zZhbFp4feFA=;
        b=NrTKQT+kGL9au+8X4kTGSb17KXbIkwK5u5jNUYwF3XnmPKAwVZnxIiqmiSqDM+Qgzf
         Afktxubj8tYmlbBjENDY+ZwadcJTAmAGFJRWdxkRQ2FhbD4Uyb9QAxjbLLbCQIb6lG3c
         AGs8iMWfC7+MQ891p9iduhO8f56eUr81GbDTLBJApSPpLIuv171gdc+QQeALzcfX1aut
         rU4OcV8pakeObJMFd0P5ZJiZnI/cYkWUHEmTrFxh0gFs9exyZbtQsci82Dd7HNfFHYc7
         Pe2jRbMULT6IZhP4oPlWo5w+kbpMRSMoyZoe+C2oxXR/UysAjQvuOukPPi42LIvqyK76
         zKTQ==
X-Gm-Message-State: AOAM532JjFKPReNGOcdFk+e+23MLcHK/l9a7ESDWcFJjEkrqpdrG9CH2
	d60ttNu/c7CZ7nvf36rPq1M52Q==
X-Google-Smtp-Source: ABdhPJxn4g/MGv1czzqAAr8k7M3ymQXLNg9KwmkwnDf+Em//N6gXtLJXQERyJi76DVcPA25gs/9Z1w==
X-Received: by 2002:a2e:9113:0:b0:255:a3e6:93cb with SMTP id m19-20020a2e9113000000b00255a3e693cbmr12724481ljg.312.1654888190828;
        Fri, 10 Jun 2022 12:09:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 14/28] phy: qcom-qmp: move PCS V3 registers to separate headers
Date: Fri, 10 Jun 2022 22:09:11 +0300
Message-Id: <20220610190925.3670081-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120951_550523_0447C7FF 
X-CRM114-Status: GOOD (  13.13  )
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

Move PCS V3 registers to the separate headers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h   | 17 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h    | 71 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 73 +------------------
 3 files changed, 91 insertions(+), 70 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h
new file mode 100644
index 000000000000..a45bd301bc9e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_MISC_V3_H_
+#define QCOM_PHY_QMP_PCS_MISC_V3_H_
+
+/* Only for QMP V3 PHY - PCS_MISC registers */
+#define QPHY_V3_PCS_MISC_CLAMP_ENABLE			0x0c
+#define QPHY_V3_PCS_MISC_OSC_DTCT_CONFIG2		0x2c
+#define QPHY_V3_PCS_MISC_PCIE_INT_AUX_CLK_CONFIG1	0x44
+#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG2		0x54
+#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG4		0x5c
+#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG5		0x60
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
new file mode 100644
index 000000000000..0b023df19126
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V3_H_
+#define QCOM_PHY_QMP_PCS_V3_H_
+
+/* Only for QMP V3 PHY - PCS registers */
+#define QPHY_V3_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_V3_PCS_TXMGN_V0				0x00c
+#define QPHY_V3_PCS_TXMGN_V1				0x010
+#define QPHY_V3_PCS_TXMGN_V2				0x014
+#define QPHY_V3_PCS_TXMGN_V3				0x018
+#define QPHY_V3_PCS_TXMGN_V4				0x01c
+#define QPHY_V3_PCS_TXMGN_LS				0x020
+#define QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL		0x02c
+#define QPHY_V3_PCS_TX_SMALL_AMP_DRV_LVL		0x034
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_V0			0x024
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0			0x028
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_V1			0x02c
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1			0x030
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_V2			0x034
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2			0x038
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_V3			0x03c
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V3			0x040
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_V4			0x044
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V4			0x048
+#define QPHY_V3_PCS_TXDEEMPH_M6DB_LS			0x04c
+#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_LS			0x050
+#define QPHY_V3_PCS_ENDPOINT_REFCLK_DRIVE		0x054
+#define QPHY_V3_PCS_RX_IDLE_DTCT_CNTRL			0x058
+#define QPHY_V3_PCS_RATE_SLEW_CNTRL			0x05c
+#define QPHY_V3_PCS_POWER_STATE_CONFIG1			0x060
+#define QPHY_V3_PCS_POWER_STATE_CONFIG2			0x064
+#define QPHY_V3_PCS_POWER_STATE_CONFIG4			0x06c
+#define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L		0x070
+#define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H		0x074
+#define QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L			0x078
+#define QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H			0x07c
+#define QPHY_V3_PCS_LOCK_DETECT_CONFIG1			0x080
+#define QPHY_V3_PCS_LOCK_DETECT_CONFIG2			0x084
+#define QPHY_V3_PCS_LOCK_DETECT_CONFIG3			0x088
+#define QPHY_V3_PCS_TSYNC_RSYNC_TIME			0x08c
+#define QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
+#define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
+#define QPHY_V3_PCS_PLL_LOCK_CHK_DLY_TIME		0x0a8
+#define QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK		0x0b0
+#define QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME		0x0b8
+#define QPHY_V3_PCS_RXEQTRAINING_RUN_TIME		0x0bc
+#define QPHY_V3_PCS_FLL_CNTRL1				0x0c4
+#define QPHY_V3_PCS_FLL_CNTRL2				0x0c8
+#define QPHY_V3_PCS_FLL_CNT_VAL_L			0x0cc
+#define QPHY_V3_PCS_FLL_CNT_VAL_H_TOL			0x0d0
+#define QPHY_V3_PCS_FLL_MAN_CODE			0x0d4
+#define QPHY_V3_PCS_RX_SYM_RESYNC_CTRL			0x134
+#define QPHY_V3_PCS_RX_MIN_HIBERN8_TIME			0x138
+#define QPHY_V3_PCS_RX_SIGDET_CTRL1			0x13c
+#define QPHY_V3_PCS_RX_SIGDET_CTRL2			0x140
+#define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1a8
+#define QPHY_V3_PCS_OSC_DTCT_ACTIONS			0x1ac
+#define QPHY_V3_PCS_SIGDET_CNTRL			0x1b0
+#define QPHY_V3_PCS_TX_MID_TERM_CTRL1			0x1bc
+#define QPHY_V3_PCS_MULTI_LANE_CTRL1			0x1c4
+#define QPHY_V3_PCS_RX_SIGDET_LVL			0x1d8
+#define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
+#define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
+#define QPHY_V3_PCS_REFGEN_REQ_CONFIG1			0x20c
+#define QPHY_V3_PCS_REFGEN_REQ_CONFIG2			0x210
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 1bb57d1563c3..1290c62a16fe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -22,6 +22,9 @@
 
 #include "phy-qcom-qmp-pcs-v2.h"
 
+#include "phy-qcom-qmp-pcs-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v3.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
@@ -46,76 +49,6 @@
 # define DP_PHY_TXn_TX_DRV_LVL_MASK			0x001f
 # define DP_PHY_TXn_TX_DRV_LVL_MUX_EN			0x0020
 
-/* Only for QMP V3 PHY - PCS registers */
-#define QPHY_V3_PCS_POWER_DOWN_CONTROL			0x004
-#define QPHY_V3_PCS_TXMGN_V0				0x00c
-#define QPHY_V3_PCS_TXMGN_V1				0x010
-#define QPHY_V3_PCS_TXMGN_V2				0x014
-#define QPHY_V3_PCS_TXMGN_V3				0x018
-#define QPHY_V3_PCS_TXMGN_V4				0x01c
-#define QPHY_V3_PCS_TXMGN_LS				0x020
-#define QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL		0x02c
-#define QPHY_V3_PCS_TX_SMALL_AMP_DRV_LVL		0x034
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_V0			0x024
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0			0x028
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_V1			0x02c
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1			0x030
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_V2			0x034
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2			0x038
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_V3			0x03c
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V3			0x040
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_V4			0x044
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_V4			0x048
-#define QPHY_V3_PCS_TXDEEMPH_M6DB_LS			0x04c
-#define QPHY_V3_PCS_TXDEEMPH_M3P5DB_LS			0x050
-#define QPHY_V3_PCS_ENDPOINT_REFCLK_DRIVE		0x054
-#define QPHY_V3_PCS_RX_IDLE_DTCT_CNTRL			0x058
-#define QPHY_V3_PCS_RATE_SLEW_CNTRL			0x05c
-#define QPHY_V3_PCS_POWER_STATE_CONFIG1			0x060
-#define QPHY_V3_PCS_POWER_STATE_CONFIG2			0x064
-#define QPHY_V3_PCS_POWER_STATE_CONFIG4			0x06c
-#define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L		0x070
-#define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H		0x074
-#define QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L			0x078
-#define QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H			0x07c
-#define QPHY_V3_PCS_LOCK_DETECT_CONFIG1			0x080
-#define QPHY_V3_PCS_LOCK_DETECT_CONFIG2			0x084
-#define QPHY_V3_PCS_LOCK_DETECT_CONFIG3			0x088
-#define QPHY_V3_PCS_TSYNC_RSYNC_TIME			0x08c
-#define QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
-#define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
-#define QPHY_V3_PCS_PLL_LOCK_CHK_DLY_TIME		0x0a8
-#define QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK		0x0b0
-#define QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME		0x0b8
-#define QPHY_V3_PCS_RXEQTRAINING_RUN_TIME		0x0bc
-#define QPHY_V3_PCS_FLL_CNTRL1				0x0c4
-#define QPHY_V3_PCS_FLL_CNTRL2				0x0c8
-#define QPHY_V3_PCS_FLL_CNT_VAL_L			0x0cc
-#define QPHY_V3_PCS_FLL_CNT_VAL_H_TOL			0x0d0
-#define QPHY_V3_PCS_FLL_MAN_CODE			0x0d4
-#define QPHY_V3_PCS_RX_SYM_RESYNC_CTRL			0x134
-#define QPHY_V3_PCS_RX_MIN_HIBERN8_TIME			0x138
-#define QPHY_V3_PCS_RX_SIGDET_CTRL1			0x13c
-#define QPHY_V3_PCS_RX_SIGDET_CTRL2			0x140
-#define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1a8
-#define QPHY_V3_PCS_OSC_DTCT_ACTIONS			0x1ac
-#define QPHY_V3_PCS_SIGDET_CNTRL			0x1b0
-#define QPHY_V3_PCS_TX_MID_TERM_CTRL1			0x1bc
-#define QPHY_V3_PCS_MULTI_LANE_CTRL1			0x1c4
-#define QPHY_V3_PCS_RX_SIGDET_LVL			0x1d8
-#define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
-#define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
-#define QPHY_V3_PCS_REFGEN_REQ_CONFIG1			0x20c
-#define QPHY_V3_PCS_REFGEN_REQ_CONFIG2			0x210
-
-/* Only for QMP V3 PHY - PCS_MISC registers */
-#define QPHY_V3_PCS_MISC_CLAMP_ENABLE			0x0c
-#define QPHY_V3_PCS_MISC_OSC_DTCT_CONFIG2		0x2c
-#define QPHY_V3_PCS_MISC_PCIE_INT_AUX_CLK_CONFIG1	0x44
-#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG2		0x54
-#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG4		0x5c
-#define QPHY_V3_PCS_MISC_OSC_DTCT_MODE2_CONFIG5		0x60
-
 /* QMP PHY - DP PHY registers */
 #define QSERDES_DP_PHY_REVISION_ID0			0x000
 #define QSERDES_DP_PHY_REVISION_ID1			0x004
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
