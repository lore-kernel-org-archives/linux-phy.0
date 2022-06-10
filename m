Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 117F2C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cXaHk9SJs5P0Yacf75NH6IezjBE3Y5SFL6xnhxY3Gg=; b=WV84cUe4bmpyBl
	C3M0MFONNMee4jXjnMlPuVtEWeBE/2Dz7XZZooLoPOplpRj24lvTl2Wrg0YWKddz80nzpzDVr4dAD
	p6oQG2eoVmqHB+C8TGLxZgCs6kVd9EG2wdIAO/sUAJt2SgfwzPeL63c9z3Yrx4v1eN6MVzFGaO9+K
	9ehqpImCPcnlgtxIeNG7JGDLjwl4LyBV4ApUbcUT0P/D4KRTIy01yRsX7GjJB7ZTgEo1iniGAILnr
	rZLYHpWxgrRwRwTVrIpYNgMMwE8n8NAZPhgN48joFDW4C5cbEh3q4+y7ito3FZFFPON5bcImL22tp
	Z8/z2wuvQeqzDqUsm10Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk12-009Usy-HI; Fri, 10 Jun 2022 19:09:52 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0z-009UlD-Oc
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:51 +0000
Received: by mail-lj1-x229.google.com with SMTP id m25so105538lji.11
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vO5kMCLoocFQhwYevseik9XMf7ZqUBB1Y4tGgw7R1Eg=;
        b=Lw8MQwmSgXpUJo070o8/D9UNWeOV9gqDwmW7UwTwfsVeD34N1fH/KjWtTsYT6rHbLI
         NQyOYh/2/J7WgSSCgqeF/VyoQzy2ATLbD7Ik2F5ZIeh8ypeJ/ItcheekbXNdu0U3DTCs
         G13G7SmukBOtEpQEAETzSeUkJ8dyKfxJ7/QXdwGlnhRIyk6eJX1l+ppgwlfMUMV3XElz
         WQsgtShid94TAzgV2B2x5wAgKNPcEY9TIaJKSYOhy2uDBCJxOkS6RwZeuGETjlnA1t2I
         2p3A/Gx0pDDDQfr+JGM89GpwswYmRBCRG1qIp8PBP5R0VAd5G6rvPQcTLg08e0c0Hmxx
         atMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vO5kMCLoocFQhwYevseik9XMf7ZqUBB1Y4tGgw7R1Eg=;
        b=537wJgqMb8Pg4iGlwcenBnQVH0O5gGGAKf6tZx2V2b+mOlDzdr/mjPJ9Liud7MlU1b
         mPUWXo98QXNJFrG13yDInXMnXhzozYEBc4AmarCYNx1CAZ/DbNo+GBHSL8Ya2W4DHoqt
         i1c9KpKZXBcSeNvYdO4ItZroaFE3BxXFhPpBC55L1IpB2KNP9Cls1iyhVEFsGSP9NF4+
         z6TzpsZYK2Kd9Z+VPgqqsxhUJscDOgMHi+H4wa/PNYVBHlatKIM/x4G8vcG6xc2F9FWY
         2h1Yt+IJL3LclxyuHUf5/CkkMHSjUpVkwXIFIdkRJD149Wdq7QR0SAW6tqHZAscdZZ4I
         LuNg==
X-Gm-Message-State: AOAM531KNYZuvCsDKsJWpiuLtl5Jx4ij1fmM9S6KX7PY0EkhRlGf2PEG
	21FmJT1DqTkoroDYHxFnYSxSbA==
X-Google-Smtp-Source: ABdhPJyIXDEcuRDqVS3pRtvbi7HRyXvXS/s5axRw31Vn1w/4eir8PbZEGPVR1NKZtWrWZqdqyrGzAA==
X-Received: by 2002:a05:651c:158c:b0:250:a23d:2701 with SMTP id h12-20020a05651c158c00b00250a23d2701mr62851726ljq.475.1654888189221;
        Fri, 10 Jun 2022 12:09:49 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 13/28] phy: qcom-qmp: move PCS V2 registers to separate header
Date: Fri, 10 Jun 2022 22:09:10 +0300
Message-Id: <20220610190925.3670081-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120949_816412_1D287C78 
X-CRM114-Status: GOOD (  12.46  )
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
