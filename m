Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8F0C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpWjL4tZenMpqxy8UGnmsl3Az1vlsUPWnQ1be8ePCl8=; b=uVA0BNjxwJyyNE
	jtJqW7sxYm2Kap0qb4cOHkq/coqSIRD6/G6m5gQSYJ0fY4/1F8aSIyUoEVzGaAxbK+ZwgjIIO40Ng
	/Ex1UqoYTYeJsihp+NYRJejEpE2HY7R/d8h+PXZNaR0wBF8RpFo0Z889elJzgpQJbN9/tW+WOhz3B
	Ebav6oXzYJk57GOEW1yFRBJUZXo+ufwRduc3abf8btWBDo+l88mmOrKz5y+Fu3HwimsHkXmWAcf7m
	6vAzVN2wWgj0LeY/3Err/mEe2ZNpfeGIvQkv7olPeEqxrJIgWkswmJt3K21wxPFVO5qTL33Tb41Sn
	m0U8UPyaRn6Fpzp72cOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0v-009UqD-Tb; Fri, 10 Jun 2022 19:09:45 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0s-009Ujl-8v
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:44 +0000
Received: by mail-lj1-x22c.google.com with SMTP id c30so115344ljr.9
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d7CuEUzPLQxbs5/KWPT5RNINsovdm/Sk7PKgWq5SZ9M=;
        b=EKHtKIBJ2DGI3Tuk31V06MPFievuoK3btPO31wcPAZPsVMqM5uQT7k5Zuga8Qq1J51
         MCxSGmtxmE1bgBBkWhYRa0a3FMy8a2E/UiA0F/96x95noHX2K7mjHYITHegTYeskurLJ
         LBuWvSwRLGfLLpMEL/DXp9XIZ78SCZ0FMJcp/mFU9CWm8lvmRl6v+Zl4kIJBllangWbF
         iVFc1fkh1DuuHUCKNmqWsmN/Wz/dkYQ/ipENn4BjexFspPpZ+Rx5nC7LXBQsQasadyE3
         QSzO5gsOyVBU51vKTkwju9/oYw0u1wxdxhqqf3nLIHLvjkHAPFrXA1/+3JCMBOLk8uwV
         DyhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d7CuEUzPLQxbs5/KWPT5RNINsovdm/Sk7PKgWq5SZ9M=;
        b=Ysr5rTiREQjDSd3Dro8NaDQmRLT6T9FQSqYvw6OrOpgOsxX0IRG1OH9jOGEDEAN+vk
         JAj4ZqRdh6BHRkdP4x8BXQ6wq8aKq2LSlh6vFCfNWUd/lDp/P8+N+DG4cg2iQQY3sRJ/
         6BkS5Lh2Zd+rszdgkE+QBKHo7cG882/aZ8TZWbcMGmT/GgM5mC3ud13PsJHGbncMUeAi
         cNY7EWH14VxHI73lk9SzlyY1Ajg6naA7ExpykQqaGNlO53WYBdUVCGFvQbMHIVXiOxH9
         HQ2v2oEZXOO1rfAgTOnfc2UvEQ2E144jJCzzSGlSyiUfpKh6fT/XiSXUrpvH2jQR9ihP
         GOPw==
X-Gm-Message-State: AOAM532IUuRaA0BcQaCdUjrdWDL+0a9JugvOdmyZ2JZ+fIkmQQ/nfR/2
	Iz9F0/cR/FookFZc0lLcyyNIWQ==
X-Google-Smtp-Source: ABdhPJzaQo945s+6QRu+99oNGD43ppqOO4OG4U8YfD4cqwjgml9he/X5vF8EepFHQV4NqeELdyZVsQ==
X-Received: by 2002:a2e:9195:0:b0:255:7b9c:31fa with SMTP id f21-20020a2e9195000000b002557b9c31famr22215448ljg.394.1654888181725;
        Fri, 10 Jun 2022 12:09:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 09/28] phy: qcom-qmp: move QSERDES V3 registers to separate headers
Date: Fri, 10 Jun 2022 22:09:06 +0300
Message-Id: <20220610190925.3670081-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120942_390319_42FF3482 
X-CRM114-Status: GOOD (  13.33  )
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

Move QSERDES V3 registers to the separate headers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../qualcomm/phy-qcom-qmp-qserdes-com-v3.h    |  86 +++++++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h   |  65 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 138 +-----------------
 3 files changed, 156 insertions(+), 133 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
new file mode 100644
index 000000000000..a61f8d36d01e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
@@ -0,0 +1,86 @@
+
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V3_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V3_H_
+
+/* Only for QMP V3 PHY - QSERDES COM registers */
+#define QSERDES_V3_COM_ATB_SEL1				0x000
+#define QSERDES_V3_COM_ATB_SEL2				0x004
+#define QSERDES_V3_COM_FREQ_UPDATE			0x008
+#define QSERDES_V3_COM_BG_TIMER				0x00c
+#define QSERDES_V3_COM_SSC_EN_CENTER			0x010
+#define QSERDES_V3_COM_SSC_ADJ_PER1			0x014
+#define QSERDES_V3_COM_SSC_ADJ_PER2			0x018
+#define QSERDES_V3_COM_SSC_PER1				0x01c
+#define QSERDES_V3_COM_SSC_PER2				0x020
+#define QSERDES_V3_COM_SSC_STEP_SIZE1			0x024
+#define QSERDES_V3_COM_SSC_STEP_SIZE2			0x028
+#define QSERDES_V3_COM_POST_DIV				0x02c
+#define QSERDES_V3_COM_POST_DIV_MUX			0x030
+#define QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN		0x034
+#define QSERDES_V3_COM_CLK_ENABLE1			0x038
+#define QSERDES_V3_COM_SYS_CLK_CTRL			0x03c
+#define QSERDES_V3_COM_SYSCLK_BUF_ENABLE		0x040
+#define QSERDES_V3_COM_PLL_EN				0x044
+#define QSERDES_V3_COM_PLL_IVCO				0x048
+#define QSERDES_V3_COM_CLK_EP_DIV			0x05c
+#define QSERDES_V3_COM_CP_CTRL_MODE0			0x060
+#define QSERDES_V3_COM_CP_CTRL_MODE1			0x064
+#define QSERDES_V3_COM_PLL_RCTRL_MODE0			0x068
+#define QSERDES_V3_COM_PLL_RCTRL_MODE1			0x06c
+#define QSERDES_V3_COM_PLL_CCTRL_MODE0			0x070
+#define QSERDES_V3_COM_PLL_CCTRL_MODE1			0x074
+#define QSERDES_V3_COM_SYSCLK_EN_SEL			0x080
+#define QSERDES_V3_COM_RESETSM_CNTRL			0x088
+#define QSERDES_V3_COM_RESETSM_CNTRL2			0x08c
+#define QSERDES_V3_COM_LOCK_CMP_EN			0x090
+#define QSERDES_V3_COM_LOCK_CMP_CFG			0x094
+#define QSERDES_V3_COM_LOCK_CMP1_MODE0			0x098
+#define QSERDES_V3_COM_LOCK_CMP2_MODE0			0x09c
+#define QSERDES_V3_COM_LOCK_CMP3_MODE0			0x0a0
+#define QSERDES_V3_COM_LOCK_CMP1_MODE1			0x0a4
+#define QSERDES_V3_COM_LOCK_CMP2_MODE1			0x0a8
+#define QSERDES_V3_COM_LOCK_CMP3_MODE1			0x0ac
+#define QSERDES_V3_COM_DEC_START_MODE0			0x0b0
+#define QSERDES_V3_COM_DEC_START_MODE1			0x0b4
+#define QSERDES_V3_COM_DIV_FRAC_START1_MODE0		0x0b8
+#define QSERDES_V3_COM_DIV_FRAC_START2_MODE0		0x0bc
+#define QSERDES_V3_COM_DIV_FRAC_START3_MODE0		0x0c0
+#define QSERDES_V3_COM_DIV_FRAC_START1_MODE1		0x0c4
+#define QSERDES_V3_COM_DIV_FRAC_START2_MODE1		0x0c8
+#define QSERDES_V3_COM_DIV_FRAC_START3_MODE1		0x0cc
+#define QSERDES_V3_COM_INTEGLOOP_INITVAL		0x0d0
+#define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0		0x0d8
+#define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0		0x0dc
+#define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE1		0x0e0
+#define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE1		0x0e4
+#define QSERDES_V3_COM_VCO_TUNE_CTRL			0x0ec
+#define QSERDES_V3_COM_VCO_TUNE_MAP			0x0f0
+#define QSERDES_V3_COM_VCO_TUNE1_MODE0			0x0f4
+#define QSERDES_V3_COM_VCO_TUNE2_MODE0			0x0f8
+#define QSERDES_V3_COM_VCO_TUNE1_MODE1			0x0fc
+#define QSERDES_V3_COM_VCO_TUNE2_MODE1			0x100
+#define QSERDES_V3_COM_VCO_TUNE_INITVAL1		0x104
+#define QSERDES_V3_COM_VCO_TUNE_INITVAL2		0x108
+#define QSERDES_V3_COM_VCO_TUNE_TIMER1			0x11c
+#define QSERDES_V3_COM_VCO_TUNE_TIMER2			0x120
+#define QSERDES_V3_COM_CLK_SELECT			0x138
+#define QSERDES_V3_COM_HSCLK_SEL			0x13c
+#define QSERDES_V3_COM_CORECLK_DIV_MODE0		0x148
+#define QSERDES_V3_COM_CORECLK_DIV_MODE1		0x14c
+#define QSERDES_V3_COM_CORE_CLK_EN			0x154
+#define QSERDES_V3_COM_C_READY_STATUS			0x158
+#define QSERDES_V3_COM_CMN_CONFIG			0x15c
+#define QSERDES_V3_COM_SVS_MODE_CLK_SEL			0x164
+#define QSERDES_V3_COM_DEBUG_BUS0			0x168
+#define QSERDES_V3_COM_DEBUG_BUS1			0x16c
+#define QSERDES_V3_COM_DEBUG_BUS2			0x170
+#define QSERDES_V3_COM_DEBUG_BUS3			0x174
+#define QSERDES_V3_COM_DEBUG_BUS_SEL			0x178
+#define QSERDES_V3_COM_CMN_MODE				0x184
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
new file mode 100644
index 000000000000..2c7238df38d7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V3_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V3_H_
+
+/* Only for QMP V3 PHY - TX registers */
+#define QSERDES_V3_TX_BIST_MODE_LANENO			0x000
+#define QSERDES_V3_TX_CLKBUF_ENABLE			0x008
+#define QSERDES_V3_TX_TX_EMP_POST1_LVL			0x00c
+#define QSERDES_V3_TX_TX_DRV_LVL			0x01c
+#define QSERDES_V3_TX_RESET_TSYNC_EN			0x024
+#define QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN		0x028
+#define QSERDES_V3_TX_TX_BAND				0x02c
+#define QSERDES_V3_TX_SLEW_CNTL				0x030
+#define QSERDES_V3_TX_INTERFACE_SELECT			0x034
+#define QSERDES_V3_TX_RES_CODE_LANE_TX			0x03c
+#define QSERDES_V3_TX_RES_CODE_LANE_RX			0x040
+#define QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX		0x044
+#define QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX		0x048
+#define QSERDES_V3_TX_DEBUG_BUS_SEL			0x058
+#define QSERDES_V3_TX_TRANSCEIVER_BIAS_EN		0x05c
+#define QSERDES_V3_TX_HIGHZ_DRVR_EN			0x060
+#define QSERDES_V3_TX_TX_POL_INV			0x064
+#define QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN	0x068
+#define QSERDES_V3_TX_LANE_MODE_1			0x08c
+#define QSERDES_V3_TX_RCV_DETECT_LVL_2			0x0a4
+#define QSERDES_V3_TX_TRAN_DRVR_EMP_EN			0x0c0
+#define QSERDES_V3_TX_TX_INTERFACE_MODE			0x0c4
+#define QSERDES_V3_TX_VMODE_CTRL1			0x0f0
+
+/* Only for QMP V3 PHY - RX registers */
+#define QSERDES_V3_RX_UCDR_FO_GAIN			0x008
+#define QSERDES_V3_RX_UCDR_SO_GAIN_HALF			0x00c
+#define QSERDES_V3_RX_UCDR_SO_GAIN			0x014
+#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN_HALF		0x024
+#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN_QUARTER		0x028
+#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN			0x02c
+#define QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN		0x030
+#define QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE	0x034
+#define QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW		0x03c
+#define QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH		0x040
+#define QSERDES_V3_RX_UCDR_PI_CONTROLS			0x044
+#define QSERDES_V3_RX_RX_TERM_BW			0x07c
+#define QSERDES_V3_RX_VGA_CAL_CNTRL1			0x0bc
+#define QSERDES_V3_RX_VGA_CAL_CNTRL2			0x0c0
+#define QSERDES_V3_RX_RX_EQ_GAIN2_LSB			0x0c8
+#define QSERDES_V3_RX_RX_EQ_GAIN2_MSB			0x0cc
+#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d4
+#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3		0x0d8
+#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4		0x0dc
+#define QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x0f8
+#define QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x0fc
+#define QSERDES_V3_RX_SIGDET_ENABLES			0x100
+#define QSERDES_V3_RX_SIGDET_CNTRL			0x104
+#define QSERDES_V3_RX_SIGDET_LVL			0x108
+#define QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL		0x10c
+#define QSERDES_V3_RX_RX_BAND				0x110
+#define QSERDES_V3_RX_RX_INTERFACE_MODE			0x11c
+#define QSERDES_V3_RX_RX_MODE_00			0x164
+#define QSERDES_V3_RX_RX_MODE_01			0x168
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 6a24d61098e7..19bbe5aa9354 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -9,6 +9,9 @@
 #include "phy-qcom-qmp-qserdes-com.h"
 #include "phy-qcom-qmp-qserdes-txrx.h"
 
+#include "phy-qcom-qmp-qserdes-com-v3.h"
+#include "phy-qcom-qmp-qserdes-txrx-v3.h"
+
 /* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
 
 #define QSERDES_PLL_BG_TIMER				0x00c
@@ -105,21 +108,7 @@
 #define QPHY_V3_DP_COM_TYPEC_PWRDN_CTRL			0x14
 #define QPHY_V3_DP_COM_RESET_OVRD_CTRL			0x1c
 
-/* Only for QMP V3 PHY - QSERDES COM registers */
-#define QSERDES_V3_COM_ATB_SEL1				0x000
-#define QSERDES_V3_COM_ATB_SEL2				0x004
-#define QSERDES_V3_COM_FREQ_UPDATE			0x008
-#define QSERDES_V3_COM_BG_TIMER				0x00c
-#define QSERDES_V3_COM_SSC_EN_CENTER			0x010
-#define QSERDES_V3_COM_SSC_ADJ_PER1			0x014
-#define QSERDES_V3_COM_SSC_ADJ_PER2			0x018
-#define QSERDES_V3_COM_SSC_PER1				0x01c
-#define QSERDES_V3_COM_SSC_PER2				0x020
-#define QSERDES_V3_COM_SSC_STEP_SIZE1			0x024
-#define QSERDES_V3_COM_SSC_STEP_SIZE2			0x028
-#define QSERDES_V3_COM_POST_DIV				0x02c
-#define QSERDES_V3_COM_POST_DIV_MUX			0x030
-#define QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN		0x034
+/* QSERDES V3 COM bits */
 # define QSERDES_V3_COM_BIAS_EN				0x0001
 # define QSERDES_V3_COM_BIAS_EN_MUX			0x0002
 # define QSERDES_V3_COM_CLKBUF_R_EN			0x0004
@@ -127,130 +116,13 @@
 # define QSERDES_V3_COM_EN_SYSCLK_TX_SEL		0x0010
 # define QSERDES_V3_COM_CLKBUF_RX_DRIVE_L		0x0020
 # define QSERDES_V3_COM_CLKBUF_RX_DRIVE_R		0x0040
-#define QSERDES_V3_COM_CLK_ENABLE1			0x038
-#define QSERDES_V3_COM_SYS_CLK_CTRL			0x03c
-#define QSERDES_V3_COM_SYSCLK_BUF_ENABLE		0x040
-#define QSERDES_V3_COM_PLL_EN				0x044
-#define QSERDES_V3_COM_PLL_IVCO				0x048
-#define QSERDES_V3_COM_LOCK_CMP1_MODE0			0x098
-#define QSERDES_V3_COM_LOCK_CMP2_MODE0			0x09c
-#define QSERDES_V3_COM_LOCK_CMP3_MODE0			0x0a0
-#define QSERDES_V3_COM_LOCK_CMP1_MODE1			0x0a4
-#define QSERDES_V3_COM_LOCK_CMP2_MODE1			0x0a8
-#define QSERDES_V3_COM_LOCK_CMP3_MODE1			0x0ac
-#define QSERDES_V3_COM_CLK_EP_DIV			0x05c
-#define QSERDES_V3_COM_CP_CTRL_MODE0			0x060
-#define QSERDES_V3_COM_CP_CTRL_MODE1			0x064
-#define QSERDES_V3_COM_PLL_RCTRL_MODE0			0x068
-#define QSERDES_V3_COM_PLL_RCTRL_MODE1			0x06c
-#define QSERDES_V3_COM_PLL_CCTRL_MODE0			0x070
-#define QSERDES_V3_COM_PLL_CCTRL_MODE1			0x074
-#define QSERDES_V3_COM_SYSCLK_EN_SEL			0x080
-#define QSERDES_V3_COM_RESETSM_CNTRL			0x088
-#define QSERDES_V3_COM_RESETSM_CNTRL2			0x08c
-#define QSERDES_V3_COM_LOCK_CMP_EN			0x090
-#define QSERDES_V3_COM_LOCK_CMP_CFG			0x094
-#define QSERDES_V3_COM_DEC_START_MODE0			0x0b0
-#define QSERDES_V3_COM_DEC_START_MODE1			0x0b4
-#define QSERDES_V3_COM_DIV_FRAC_START1_MODE0		0x0b8
-#define QSERDES_V3_COM_DIV_FRAC_START2_MODE0		0x0bc
-#define QSERDES_V3_COM_DIV_FRAC_START3_MODE0		0x0c0
-#define QSERDES_V3_COM_DIV_FRAC_START1_MODE1		0x0c4
-#define QSERDES_V3_COM_DIV_FRAC_START2_MODE1		0x0c8
-#define QSERDES_V3_COM_DIV_FRAC_START3_MODE1		0x0cc
-#define QSERDES_V3_COM_INTEGLOOP_INITVAL		0x0d0
-#define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0		0x0d8
-#define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0		0x0dc
-#define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE1		0x0e0
-#define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE1		0x0e4
-#define QSERDES_V3_COM_VCO_TUNE_CTRL			0x0ec
-#define QSERDES_V3_COM_VCO_TUNE_MAP			0x0f0
-#define QSERDES_V3_COM_VCO_TUNE1_MODE0			0x0f4
-#define QSERDES_V3_COM_VCO_TUNE2_MODE0			0x0f8
-#define QSERDES_V3_COM_VCO_TUNE1_MODE1			0x0fc
-#define QSERDES_V3_COM_VCO_TUNE2_MODE1			0x100
-#define QSERDES_V3_COM_VCO_TUNE_INITVAL1		0x104
-#define QSERDES_V3_COM_VCO_TUNE_INITVAL2		0x108
-#define QSERDES_V3_COM_VCO_TUNE_TIMER1			0x11c
-#define QSERDES_V3_COM_VCO_TUNE_TIMER2			0x120
-#define QSERDES_V3_COM_CLK_SELECT			0x138
-#define QSERDES_V3_COM_HSCLK_SEL			0x13c
-#define QSERDES_V3_COM_CORECLK_DIV_MODE0		0x148
-#define QSERDES_V3_COM_CORECLK_DIV_MODE1		0x14c
-#define QSERDES_V3_COM_CORE_CLK_EN			0x154
-#define QSERDES_V3_COM_C_READY_STATUS			0x158
-#define QSERDES_V3_COM_CMN_CONFIG			0x15c
-#define QSERDES_V3_COM_SVS_MODE_CLK_SEL			0x164
-#define QSERDES_V3_COM_DEBUG_BUS0			0x168
-#define QSERDES_V3_COM_DEBUG_BUS1			0x16c
-#define QSERDES_V3_COM_DEBUG_BUS2			0x170
-#define QSERDES_V3_COM_DEBUG_BUS3			0x174
-#define QSERDES_V3_COM_DEBUG_BUS_SEL			0x178
-#define QSERDES_V3_COM_CMN_MODE				0x184
 
-/* Only for QMP V3 PHY - TX registers */
-#define QSERDES_V3_TX_BIST_MODE_LANENO			0x000
-#define QSERDES_V3_TX_CLKBUF_ENABLE			0x008
-#define QSERDES_V3_TX_TX_EMP_POST1_LVL			0x00c
+/* QSERDES V3 TX bits */
 # define DP_PHY_TXn_TX_EMP_POST1_LVL_MASK		0x001f
 # define DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN		0x0020
-
-#define QSERDES_V3_TX_TX_DRV_LVL			0x01c
 # define DP_PHY_TXn_TX_DRV_LVL_MASK			0x001f
 # define DP_PHY_TXn_TX_DRV_LVL_MUX_EN			0x0020
 
-#define QSERDES_V3_TX_RESET_TSYNC_EN			0x024
-#define QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN		0x028
-
-#define QSERDES_V3_TX_TX_BAND				0x02c
-#define QSERDES_V3_TX_SLEW_CNTL				0x030
-#define QSERDES_V3_TX_INTERFACE_SELECT			0x034
-#define QSERDES_V3_TX_RES_CODE_LANE_TX			0x03c
-#define QSERDES_V3_TX_RES_CODE_LANE_RX			0x040
-#define QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX		0x044
-#define QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX		0x048
-#define QSERDES_V3_TX_DEBUG_BUS_SEL			0x058
-#define QSERDES_V3_TX_TRANSCEIVER_BIAS_EN		0x05c
-#define QSERDES_V3_TX_HIGHZ_DRVR_EN			0x060
-#define QSERDES_V3_TX_TX_POL_INV			0x064
-#define QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN	0x068
-#define QSERDES_V3_TX_LANE_MODE_1			0x08c
-#define QSERDES_V3_TX_RCV_DETECT_LVL_2			0x0a4
-#define QSERDES_V3_TX_TRAN_DRVR_EMP_EN			0x0c0
-#define QSERDES_V3_TX_TX_INTERFACE_MODE			0x0c4
-#define QSERDES_V3_TX_VMODE_CTRL1			0x0f0
-
-/* Only for QMP V3 PHY - RX registers */
-#define QSERDES_V3_RX_UCDR_FO_GAIN			0x008
-#define QSERDES_V3_RX_UCDR_SO_GAIN_HALF			0x00c
-#define QSERDES_V3_RX_UCDR_SO_GAIN			0x014
-#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN_HALF		0x024
-#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN_QUARTER		0x028
-#define QSERDES_V3_RX_UCDR_SVS_SO_GAIN			0x02c
-#define QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN		0x030
-#define QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE	0x034
-#define QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW		0x03c
-#define QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH		0x040
-#define QSERDES_V3_RX_UCDR_PI_CONTROLS			0x044
-#define QSERDES_V3_RX_RX_TERM_BW			0x07c
-#define QSERDES_V3_RX_VGA_CAL_CNTRL1			0x0bc
-#define QSERDES_V3_RX_VGA_CAL_CNTRL2			0x0c0
-#define QSERDES_V3_RX_RX_EQ_GAIN2_LSB			0x0c8
-#define QSERDES_V3_RX_RX_EQ_GAIN2_MSB			0x0cc
-#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d4
-#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3		0x0d8
-#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4		0x0dc
-#define QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x0f8
-#define QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x0fc
-#define QSERDES_V3_RX_SIGDET_ENABLES			0x100
-#define QSERDES_V3_RX_SIGDET_CNTRL			0x104
-#define QSERDES_V3_RX_SIGDET_LVL			0x108
-#define QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL		0x10c
-#define QSERDES_V3_RX_RX_BAND				0x110
-#define QSERDES_V3_RX_RX_INTERFACE_MODE			0x11c
-#define QSERDES_V3_RX_RX_MODE_00			0x164
-#define QSERDES_V3_RX_RX_MODE_01			0x168
-
 /* Only for QMP V3 PHY - PCS registers */
 #define QPHY_V3_PCS_POWER_DOWN_CONTROL			0x004
 #define QPHY_V3_PCS_TXMGN_V0				0x00c
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
