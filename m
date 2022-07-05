Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DC8CCA480
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx+x7lQG7JlJuNOyyUUh5NYU/AMm2zzkzkprL0xWJ/Q=; b=RnKmH84kzjYEQi
	Xsax/s+w7qAqH2VbWNlof+YVeohXNJo+Ps53z3sH8ccFcrSWBTiWOiaTxyooxJNYKrdifPUzwky42
	KSydT4J9LwKRpcaXxWDJ4h5yx0VzMSA9kvQLF9jTyzo5LhX6tYPewLP1fl5TY6aKHqVISYlME5DLI
	Ek1yqukzS9i1/pOVomarIsixtWmE03MPEBpPONrcKiXBfscQSTDGEYNbfjpSz2nIzv89AHN+JbwPA
	nhX9cR/UwTh55ik9r5MCje3B8fTpJA46XellrXjWmLA3cULGYdiybdNlIUzf4I1PvP0jbEJPOiXxo
	m+ieF3W3DlqX69bir+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g3z-00HFaN-5o; Tue, 05 Jul 2022 10:45:51 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5f-00Gqqd-0A
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:36 +0000
Received: by mail-lj1-x231.google.com with SMTP id a39so13794440ljq.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zOKqFovIGk/dWiprqRLEOVeJxZ7tQ0KCv+tjTs7/Adk=;
        b=Iz7cG/v8enaTokragIz81bbGH+c98y6U3FCMUnfOSle5qJvH0zx/aabZnHsh4dq0gC
         PdDrNXG4/QRllxDFHgBxDca9SKBd24zuTEB6qMV+RzbJrGyTWjV7YDovc/OnEbZ+4uCL
         /3/aSQ+sAOsGNZqmSmc5pP8M1+QcGWstTYnc2VSRB3ROQHQZiq6TiBPgtB+AshqH8d5N
         MtIk6R1nWeO6+AnDHqJlTWtLrGqOlqYpMrWnv+gohpxGQZDQBr3rGLaP5TeR//1OzLHi
         WlSaVPOtR+bLb/vfeg5LWFL9Vkpxv+PKNJKbZgskpc4khks7TNMpCCPeyaVCotcaEBny
         WYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zOKqFovIGk/dWiprqRLEOVeJxZ7tQ0KCv+tjTs7/Adk=;
        b=dF73M0jHq5UF8BiG5gEFPeXr6lYRYcA35HIsq9rqbkC5z7qMYf4YQPAH8h1BRqd/Yj
         YvFV6knxMx6n+/kkdwVXwEURsnR0Nk7/z7HJKhrnGAVcfHSBv+pGb9wYSzzDL5OP/atA
         Ray4qE8guamskoh13n3u+QziLPO4N7D1YY4rWrZqCMyBNY87Vd5mbrJLZgdvQpYtw5RF
         jnYb5F58/Hm8kXChEBTxgdrmvsE/nkR0Ic4daslFOXRzGf4XR8wqESDnDWDpxASAvPW+
         xih5D8o4dJDFzjbRPmnOwjUqeXHfr3eyWR1Xr5D7pfG0jILWJS3XF45q5I8pzb4cdEFC
         ai1w==
X-Gm-Message-State: AJIora+nhHRDH3ODWSQqPtliP+YKv9FQjYM2V0L4H+3uR6EqY9wB3UHg
	xfB6SgaGw/oJzIRL6KMXhbQP/A==
X-Google-Smtp-Source: AGRyM1t1eG88iXiZz9rx8jRM7jWZd8hT6FKa00Ya0s1oL/C5qopKxiW8LykaMolHdX77D0nEIzPQPw==
X-Received: by 2002:a05:651c:b23:b0:25a:5d07:d9a8 with SMTP id b35-20020a05651c0b2300b0025a5d07d9a8mr19659095ljr.244.1657014207948;
        Tue, 05 Jul 2022 02:43:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 08/28] phy: qcom-qmp: move QSERDES registers to separate header
Date: Tue,  5 Jul 2022 12:43:00 +0300
Message-Id: <20220705094320.1313312-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024331_133152_34C8B638 
X-CRM114-Status: GOOD (  12.85  )
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

Move QSERDES V2 registers to the separate header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   |  83 +++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  |  44 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 112 +-----------------
 3 files changed, 130 insertions(+), 109 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
new file mode 100644
index 000000000000..9dfa80263707
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
@@ -0,0 +1,83 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_H_
+#define QCOM_PHY_QMP_QSERDES_COM_H_
+
+/* Only for QMP V2 PHY - QSERDES COM registers */
+#define QSERDES_COM_BG_TIMER				0x00c
+#define QSERDES_COM_SSC_EN_CENTER			0x010
+#define QSERDES_COM_SSC_ADJ_PER1			0x014
+#define QSERDES_COM_SSC_ADJ_PER2			0x018
+#define QSERDES_COM_SSC_PER1				0x01c
+#define QSERDES_COM_SSC_PER2				0x020
+#define QSERDES_COM_SSC_STEP_SIZE1			0x024
+#define QSERDES_COM_SSC_STEP_SIZE2			0x028
+#define QSERDES_COM_BIAS_EN_CLKBUFLR_EN			0x034
+#define QSERDES_COM_CLK_ENABLE1				0x038
+#define QSERDES_COM_SYS_CLK_CTRL			0x03c
+#define QSERDES_COM_SYSCLK_BUF_ENABLE			0x040
+#define QSERDES_COM_PLL_IVCO				0x048
+#define QSERDES_COM_LOCK_CMP1_MODE0			0x04c
+#define QSERDES_COM_LOCK_CMP2_MODE0			0x050
+#define QSERDES_COM_LOCK_CMP3_MODE0			0x054
+#define QSERDES_COM_LOCK_CMP1_MODE1			0x058
+#define QSERDES_COM_LOCK_CMP2_MODE1			0x05c
+#define QSERDES_COM_LOCK_CMP3_MODE1			0x060
+#define QSERDES_COM_BG_TRIM				0x070
+#define QSERDES_COM_CLK_EP_DIV				0x074
+#define QSERDES_COM_CP_CTRL_MODE0			0x078
+#define QSERDES_COM_CP_CTRL_MODE1			0x07c
+#define QSERDES_COM_PLL_RCTRL_MODE0			0x084
+#define QSERDES_COM_PLL_RCTRL_MODE1			0x088
+#define QSERDES_COM_PLL_CCTRL_MODE0			0x090
+#define QSERDES_COM_PLL_CCTRL_MODE1			0x094
+#define QSERDES_COM_BIAS_EN_CTRL_BY_PSM			0x0a8
+#define QSERDES_COM_SYSCLK_EN_SEL			0x0ac
+#define QSERDES_COM_RESETSM_CNTRL			0x0b4
+#define QSERDES_COM_RESETSM_CNTRL2			0x0b8
+#define QSERDES_COM_RESTRIM_CTRL			0x0bc
+#define QSERDES_COM_RESCODE_DIV_NUM			0x0c4
+#define QSERDES_COM_LOCK_CMP_EN				0x0c8
+#define QSERDES_COM_LOCK_CMP_CFG			0x0cc
+#define QSERDES_COM_DEC_START_MODE0			0x0d0
+#define QSERDES_COM_DEC_START_MODE1			0x0d4
+#define QSERDES_COM_DIV_FRAC_START1_MODE0		0x0dc
+#define QSERDES_COM_DIV_FRAC_START2_MODE0		0x0e0
+#define QSERDES_COM_DIV_FRAC_START3_MODE0		0x0e4
+#define QSERDES_COM_DIV_FRAC_START1_MODE1		0x0e8
+#define QSERDES_COM_DIV_FRAC_START2_MODE1		0x0ec
+#define QSERDES_COM_DIV_FRAC_START3_MODE1		0x0f0
+#define QSERDES_COM_INTEGLOOP_INITVAL			0x100
+#define QSERDES_COM_INTEGLOOP_GAIN0_MODE0		0x108
+#define QSERDES_COM_INTEGLOOP_GAIN1_MODE0		0x10c
+#define QSERDES_COM_INTEGLOOP_GAIN0_MODE1		0x110
+#define QSERDES_COM_INTEGLOOP_GAIN1_MODE1		0x114
+#define QSERDES_COM_VCO_TUNE_CTRL			0x124
+#define QSERDES_COM_VCO_TUNE_MAP			0x128
+#define QSERDES_COM_VCO_TUNE1_MODE0			0x12c
+#define QSERDES_COM_VCO_TUNE2_MODE0			0x130
+#define QSERDES_COM_VCO_TUNE1_MODE1			0x134
+#define QSERDES_COM_VCO_TUNE2_MODE1			0x138
+#define QSERDES_COM_VCO_TUNE_INITVAL1			0x13c
+#define QSERDES_COM_VCO_TUNE_INITVAL2			0x140
+#define QSERDES_COM_VCO_TUNE_TIMER1			0x144
+#define QSERDES_COM_VCO_TUNE_TIMER2			0x148
+#define QSERDES_COM_BG_CTRL				0x170
+#define QSERDES_COM_CLK_SELECT				0x174
+#define QSERDES_COM_HSCLK_SEL				0x178
+#define QSERDES_COM_CORECLK_DIV				0x184
+#define QSERDES_COM_CORE_CLK_EN				0x18c
+#define QSERDES_COM_C_READY_STATUS			0x190
+#define QSERDES_COM_CMN_CONFIG				0x194
+#define QSERDES_COM_SVS_MODE_CLK_SEL			0x19c
+#define QSERDES_COM_DEBUG_BUS0				0x1a0
+#define QSERDES_COM_DEBUG_BUS1				0x1a4
+#define QSERDES_COM_DEBUG_BUS2				0x1a8
+#define QSERDES_COM_DEBUG_BUS3				0x1ac
+#define QSERDES_COM_DEBUG_BUS_SEL			0x1b0
+#define QSERDES_COM_CORECLK_DIV_MODE1			0x1bc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
new file mode 100644
index 000000000000..583098a88b65
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_H_
+
+/* Only for QMP V2 PHY - TX registers */
+#define QSERDES_TX_EMP_POST1_LVL			0x018
+#define QSERDES_TX_SLEW_CNTL				0x040
+#define QSERDES_TX_RES_CODE_LANE_OFFSET			0x054
+#define QSERDES_TX_DEBUG_BUS_SEL			0x064
+#define QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN	0x068
+#define QSERDES_TX_LANE_MODE				0x094
+#define QSERDES_TX_RCV_DETECT_LVL_2			0x0ac
+
+/* Only for QMP V2 PHY - RX registers */
+#define QSERDES_RX_UCDR_SO_GAIN_HALF			0x010
+#define QSERDES_RX_UCDR_SO_GAIN				0x01c
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_HALF		0x030
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER		0x034
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_EIGHTH		0x038
+#define QSERDES_RX_UCDR_SVS_SO_GAIN			0x03c
+#define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		0x040
+#define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	0x048
+#define QSERDES_RX_RX_TERM_BW				0x090
+#define QSERDES_RX_RX_EQ_GAIN1_LSB			0x0c4
+#define QSERDES_RX_RX_EQ_GAIN1_MSB			0x0c8
+#define QSERDES_RX_RX_EQ_GAIN2_LSB			0x0cc
+#define QSERDES_RX_RX_EQ_GAIN2_MSB			0x0d0
+#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d8
+#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3		0x0dc
+#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4		0x0e0
+#define QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x108
+#define QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x10c
+#define QSERDES_RX_SIGDET_ENABLES			0x110
+#define QSERDES_RX_SIGDET_CNTRL				0x114
+#define QSERDES_RX_SIGDET_LVL				0x118
+#define QSERDES_RX_SIGDET_DEGLITCH_CNTRL		0x11c
+#define QSERDES_RX_RX_BAND				0x120
+#define QSERDES_RX_RX_INTERFACE_MODE			0x12c
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index b2aeace96c09..6a24d61098e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -6,6 +6,9 @@
 #ifndef QCOM_PHY_QMP_H_
 #define QCOM_PHY_QMP_H_
 
+#include "phy-qcom-qmp-qserdes-com.h"
+#include "phy-qcom-qmp-qserdes-txrx.h"
+
 /* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
 
 #define QSERDES_PLL_BG_TIMER				0x00c
@@ -64,115 +67,6 @@
 #define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
 #define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
 
-/* Only for QMP V2 PHY - QSERDES COM registers */
-#define QSERDES_COM_BG_TIMER				0x00c
-#define QSERDES_COM_SSC_EN_CENTER			0x010
-#define QSERDES_COM_SSC_ADJ_PER1			0x014
-#define QSERDES_COM_SSC_ADJ_PER2			0x018
-#define QSERDES_COM_SSC_PER1				0x01c
-#define QSERDES_COM_SSC_PER2				0x020
-#define QSERDES_COM_SSC_STEP_SIZE1			0x024
-#define QSERDES_COM_SSC_STEP_SIZE2			0x028
-#define QSERDES_COM_BIAS_EN_CLKBUFLR_EN			0x034
-#define QSERDES_COM_CLK_ENABLE1				0x038
-#define QSERDES_COM_SYS_CLK_CTRL			0x03c
-#define QSERDES_COM_SYSCLK_BUF_ENABLE			0x040
-#define QSERDES_COM_PLL_IVCO				0x048
-#define QSERDES_COM_LOCK_CMP1_MODE0			0x04c
-#define QSERDES_COM_LOCK_CMP2_MODE0			0x050
-#define QSERDES_COM_LOCK_CMP3_MODE0			0x054
-#define QSERDES_COM_LOCK_CMP1_MODE1			0x058
-#define QSERDES_COM_LOCK_CMP2_MODE1			0x05c
-#define QSERDES_COM_LOCK_CMP3_MODE1			0x060
-#define QSERDES_COM_BG_TRIM				0x070
-#define QSERDES_COM_CLK_EP_DIV				0x074
-#define QSERDES_COM_CP_CTRL_MODE0			0x078
-#define QSERDES_COM_CP_CTRL_MODE1			0x07c
-#define QSERDES_COM_PLL_RCTRL_MODE0			0x084
-#define QSERDES_COM_PLL_RCTRL_MODE1			0x088
-#define QSERDES_COM_PLL_CCTRL_MODE0			0x090
-#define QSERDES_COM_PLL_CCTRL_MODE1			0x094
-#define QSERDES_COM_BIAS_EN_CTRL_BY_PSM			0x0a8
-#define QSERDES_COM_SYSCLK_EN_SEL			0x0ac
-#define QSERDES_COM_RESETSM_CNTRL			0x0b4
-#define QSERDES_COM_RESETSM_CNTRL2			0x0b8
-#define QSERDES_COM_RESTRIM_CTRL			0x0bc
-#define QSERDES_COM_RESCODE_DIV_NUM			0x0c4
-#define QSERDES_COM_LOCK_CMP_EN				0x0c8
-#define QSERDES_COM_LOCK_CMP_CFG			0x0cc
-#define QSERDES_COM_DEC_START_MODE0			0x0d0
-#define QSERDES_COM_DEC_START_MODE1			0x0d4
-#define QSERDES_COM_DIV_FRAC_START1_MODE0		0x0dc
-#define QSERDES_COM_DIV_FRAC_START2_MODE0		0x0e0
-#define QSERDES_COM_DIV_FRAC_START3_MODE0		0x0e4
-#define QSERDES_COM_DIV_FRAC_START1_MODE1		0x0e8
-#define QSERDES_COM_DIV_FRAC_START2_MODE1		0x0ec
-#define QSERDES_COM_DIV_FRAC_START3_MODE1		0x0f0
-#define QSERDES_COM_INTEGLOOP_INITVAL			0x100
-#define QSERDES_COM_INTEGLOOP_GAIN0_MODE0		0x108
-#define QSERDES_COM_INTEGLOOP_GAIN1_MODE0		0x10c
-#define QSERDES_COM_INTEGLOOP_GAIN0_MODE1		0x110
-#define QSERDES_COM_INTEGLOOP_GAIN1_MODE1		0x114
-#define QSERDES_COM_VCO_TUNE_CTRL			0x124
-#define QSERDES_COM_VCO_TUNE_MAP			0x128
-#define QSERDES_COM_VCO_TUNE1_MODE0			0x12c
-#define QSERDES_COM_VCO_TUNE2_MODE0			0x130
-#define QSERDES_COM_VCO_TUNE1_MODE1			0x134
-#define QSERDES_COM_VCO_TUNE2_MODE1			0x138
-#define QSERDES_COM_VCO_TUNE_INITVAL1			0x13c
-#define QSERDES_COM_VCO_TUNE_INITVAL2			0x140
-#define QSERDES_COM_VCO_TUNE_TIMER1			0x144
-#define QSERDES_COM_VCO_TUNE_TIMER2			0x148
-#define QSERDES_COM_BG_CTRL				0x170
-#define QSERDES_COM_CLK_SELECT				0x174
-#define QSERDES_COM_HSCLK_SEL				0x178
-#define QSERDES_COM_CORECLK_DIV				0x184
-#define QSERDES_COM_CORE_CLK_EN				0x18c
-#define QSERDES_COM_C_READY_STATUS			0x190
-#define QSERDES_COM_CMN_CONFIG				0x194
-#define QSERDES_COM_SVS_MODE_CLK_SEL			0x19c
-#define QSERDES_COM_DEBUG_BUS0				0x1a0
-#define QSERDES_COM_DEBUG_BUS1				0x1a4
-#define QSERDES_COM_DEBUG_BUS2				0x1a8
-#define QSERDES_COM_DEBUG_BUS3				0x1ac
-#define QSERDES_COM_DEBUG_BUS_SEL			0x1b0
-#define QSERDES_COM_CORECLK_DIV_MODE1			0x1bc
-
-/* Only for QMP V2 PHY - TX registers */
-#define QSERDES_TX_EMP_POST1_LVL			0x018
-#define QSERDES_TX_SLEW_CNTL				0x040
-#define QSERDES_TX_RES_CODE_LANE_OFFSET			0x054
-#define QSERDES_TX_DEBUG_BUS_SEL			0x064
-#define QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN	0x068
-#define QSERDES_TX_LANE_MODE				0x094
-#define QSERDES_TX_RCV_DETECT_LVL_2			0x0ac
-
-/* Only for QMP V2 PHY - RX registers */
-#define QSERDES_RX_UCDR_SO_GAIN_HALF			0x010
-#define QSERDES_RX_UCDR_SO_GAIN				0x01c
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_HALF		0x030
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER		0x034
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_EIGHTH		0x038
-#define QSERDES_RX_UCDR_SVS_SO_GAIN			0x03c
-#define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		0x040
-#define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	0x048
-#define QSERDES_RX_RX_TERM_BW				0x090
-#define QSERDES_RX_RX_EQ_GAIN1_LSB			0x0c4
-#define QSERDES_RX_RX_EQ_GAIN1_MSB			0x0c8
-#define QSERDES_RX_RX_EQ_GAIN2_LSB			0x0cc
-#define QSERDES_RX_RX_EQ_GAIN2_MSB			0x0d0
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d8
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3		0x0dc
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4		0x0e0
-#define QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x108
-#define QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x10c
-#define QSERDES_RX_SIGDET_ENABLES			0x110
-#define QSERDES_RX_SIGDET_CNTRL				0x114
-#define QSERDES_RX_SIGDET_LVL				0x118
-#define QSERDES_RX_SIGDET_DEGLITCH_CNTRL		0x11c
-#define QSERDES_RX_RX_BAND				0x120
-#define QSERDES_RX_RX_INTERFACE_MODE			0x12c
-
 /* Only for QMP V2 PHY - PCS registers */
 #define QPHY_V2_PCS_POWER_DOWN_CONTROL				0x04
 #define QPHY_V2_PCS_TXDEEMPH_M6DB_V0				0x24
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
