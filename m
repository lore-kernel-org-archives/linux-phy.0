Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E2BFCCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5XM8VYsiJKCZiROeAJwj0yAS7DlmZNcG8fPAWlFhQI=; b=sJK2l/OweD0zgR
	/BspmYSXQV/kGbQTIwAV7NpCPoH3GfYcvWBL1mpkBb8hjYIyC80M6U5ylmgxsQs1/q4C54hXpYVu0
	xHjYVCYUV+oY/pvXxhxqQvrLQcdT/dspAJu6z51cM2tvBW+umMXKJhvVrPNcll/G9wCmWvvoVokKX
	8Otg2T+OW2psx5RMuFo8KLbk3GDNASUlbqoy9du6uptZhvDKuy6w+8SV03Zf16Kk/XMZAxIAGuKBq
	MmDjjNemFnOkqNTAp1qXANnWWbgTJpmKzBVd3PPic6xgdP8qGVp/q7qWb0ll0iOnQev5VYv/xmYaH
	1DREEJM0XuL6WdW5SnMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1D-009Uxd-Gm; Fri, 10 Jun 2022 19:10:03 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1B-009Ukn-20
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:02 +0000
Received: by mail-lj1-x229.google.com with SMTP id y29so123401ljd.7
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zTacZksMLpAzZJjhBVlztlmdxJeCS5tK2Hgp6yk013U=;
        b=MMo+ucKrWIJMmWjKHuQwPcEaPP8k5ntViFG3YPxYBEqdJg8wedohhiD4vWQ/n+yfUl
         hJwzx9NMtt3nLg65olV6AMukpmLY9tQj3U5DL8Q5t7Fw05rV8NIyDeamBjGt1zAYW/ns
         tYPUO7w2auh2GYEl5m12iD2alWJ2XK3p/5dQmb1f0lL4XqQ9UnSFlWyu7xcmGFEorJtv
         1enw8dIA1ScaC4KBSZ9D3NCwgtQbb+BjarvmaVA5UD+qGx59R6PLw6XBIAiBOCNu/TIW
         OCKog6xL3RjqyDEM9ySLsNKGWIo3+O//gyR22ZzvnAf3vVBNXJRPZuqD+v1gP7zsrxjr
         X9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zTacZksMLpAzZJjhBVlztlmdxJeCS5tK2Hgp6yk013U=;
        b=1AbMbqhlqwimh/Wa8mWlGZuqWwvcLfxCp91tK64X/ijZri8MD6rjNBVMmZQzDQQBBM
         6eOorrQ1cXNkf4rU/bnWJMdBYNIdXWUnt5AEwnaMGWCdUKTvIncai2Z4h5R3g7CiZpTZ
         M1o6JfxIvxSsEzgpMb6riTyDCGA+4P1xkHm/zL9P7TDCcgfLQN5V3vEI8gmHOu7JZAIM
         O+Tp9xjyFVhyGYK25Ly+FYcqKsFtdbcPArGw4XXNEr1yYw/K8HTWdhITUEEntW995paF
         TmOX0rybSFkjgi9GUwUG9swYB6sSApJgJAo1/f7sF0cA8+suzehwcoPtZ0uYY/T1z5yV
         E6mg==
X-Gm-Message-State: AOAM531VvLcz8mTl4m586yyde8X1JgbohGV7crcRCcvREkFgwbizvD8a
	DPe0f6nw10anSigcGrJkQNxJWw==
X-Google-Smtp-Source: ABdhPJxV9ItQBjW2WiX4DOi8Fuv5+gJejjDn5vcu6UMR6AALH4nZModTfjLXKyktpzCOi6yTpPkUBQ==
X-Received: by 2002:a2e:bd84:0:b0:255:42f9:a8f4 with SMTP id o4-20020a2ebd84000000b0025542f9a8f4mr37758559ljq.266.1654888200566;
        Fri, 10 Jun 2022 12:10:00 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 20/28] phy: qcom-qmp: split PCS_UFS V3 symbols to separate header
Date: Fri, 10 Jun 2022 22:09:17 +0300
Message-Id: <20220610190925.3670081-21-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121001_116153_AC9606E8 
X-CRM114-Status: GOOD (  16.87  )
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
index fd169daffb02..98c6b5c8e2fc 100644
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
