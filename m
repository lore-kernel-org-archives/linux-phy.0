Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90603C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myi2XNXkCgoIM78n89WEJFydRCCuopcUh1TKq/uQ6ms=; b=D5qOh3h/i6QTtC
	InKs2NoE6LoX1oQe30cjXqPl4Xq/GOGhBvleE90aeXsEscObk79jhAOau8I9hx9F5SKHdJ8n4GcjB
	bEZZ9SroB/FiKufp9EJcglVXHpFOSZ1RsRVsepi5IzIabUd63vtScObptB+41PEXCF2Fpl/mFvaai
	NKeND3gAqL/u65z2g3ZK358BdHY9UL3LFgmNVtysOGFBKAucnG0Fkwdb3edH3OdbnwE1iPsgPbsZ2
	FK0rrSgmU2Rov0L8dXHnFd2BDMQxU41wUo28kc+dsUZ1CeXsULBX5BFm96Qya2wFtKa3HVz3QjgCz
	wSjF4y5eDEeli4Ck3oEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sXt-1E; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED0-008sQ0-TZ
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:36 +0000
Received: by mail-lj1-x22c.google.com with SMTP id s10so4473434ljp.5
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=9+3+gDkO1P/t8FNjLc9iU10bIa+0fL4nXPeK3VaPHxE=;
        b=aMTmMPhBFSV5riprGwMVbgp22Kr25TTjYiIf1y/pZ/MDXrsSxIUlSxk6o2ptPVzkpo
         w5giACsS4c51ZgC0zInS/enJAWd4lNJE+GWnPN+2P5vPA06yKP3BrRU6S4Blg8ZyfVZK
         pYkw2f7xCldtNn++Dgvxuj76PJwNE3VVjw2ycjH6GgbEwJaN99DjhihTuSawoJW5NDUc
         4hY0gNsxTOypfJ8JqlqYT6RUYnR1gkptJZyV1wtPesZ3EgernoLk5LgMNqyIXDsUppZ4
         PXpNwmIj4mUKSZp+FrgIqBVLpIlhcnA3yofxqOWZ92Dj+yyq1sNlWOH/RHMh7NnoKQwC
         wTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=9+3+gDkO1P/t8FNjLc9iU10bIa+0fL4nXPeK3VaPHxE=;
        b=ev+hX8h1v5Bv4zCHsDZ42FjFrMN7zaf72BT8PI6yBvvs8r3HfGrP682lsvEO/7NByd
         6EIYPhOMfPwJg6yjfb2qRm0nasJQnI50Yng/AXNKVhHbYLxXlNVrXaKFcYuROzwESUeK
         44JBxiyPTnwGb1a/xLTu5mZub0SJ+oZTQda4kjUk8ZlmQjww0pB/NBg/kIEMn921DedJ
         iSD82iM7Gm2a6jsGP89+IMesYC+svxq1datUux4P/Gk+2ir0XPkOKQdUu/heZz0fSdJL
         QqSVGr5iEgp/gDkNROplMCUkDPj3N+b9/q2U1JyzGnQLAlB0fgbsQHIzQYkVN9zFEs90
         9h4g==
X-Gm-Message-State: ACrzQf3Q5DuKuaeFZ6jON1yHbAI12+Eu7npRSskpmg4jR+Tj2tP9ZmbL
	EIQrol34TPPEYfj5r0XWPJYr4c3IfrX8yQ==
X-Google-Smtp-Source: AMsMyM5wPRGoZEol0UzGkJWgZkXm9ifzd2ikGpmWDl8w5OCUABWG+wZYgB6wXNmjMM+g9CY5BCqB2w==
X-Received: by 2002:a2e:8704:0:b0:26d:c3d6:4994 with SMTP id m4-20020a2e8704000000b0026dc3d64994mr111165lji.96.1664537370968;
        Fri, 30 Sep 2022 04:29:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 04/12] phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate header
Date: Fri, 30 Sep 2022 14:29:18 +0300
Message-Id: <20220930112926.638543-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042934_986445_E67DF20F 
X-CRM114-Status: GOOD (  14.63  )
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
index e28c45ab74ea..d447d68ea817 100644
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
