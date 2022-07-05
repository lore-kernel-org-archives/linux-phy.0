Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC0EC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bTt3svWDSCWHclEZF2rSZazRXgBN1MIgAG0cSGRGCo=; b=NcmGvJh63cZnmH
	cDmHOQjmXbjXHf3b/TOgT4IyZ/cw7OwYSResX5Y29wPN7ymwuAzS6KJDqT9rylzZzG1CtefjSc3a5
	LPwv3mzdkD3dGB/DBUhRN31NxHAMODoBk5j7Yi9K9jcf4NAK7KAR51dk8PqIkn4Ngowf/4dNQ/JRo
	PMW6Dubs8SC/sJjusSTIeiSaaHkzDDlcKip/TUVtx2jxW3lHvUESP81fENPaYVxwnc6P9wwIj7L/q
	QiXKeWAqqsldN2j91UjUePW5zL7lETEA1FRk6qqWMHa/47RNeHG34ICIv5KltXYB7+zwuY/sBqPpf
	duodoQyYOERVMIaWzcsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g40-00HFcA-6p; Tue, 05 Jul 2022 10:45:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5i-00Gqtc-HL
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:39 +0000
Received: by mail-lf1-x12c.google.com with SMTP id t24so19628088lfr.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dVa7xxf/onEqP76kyKPFVLsK7w2goNqUXvjuau2wFf0=;
        b=OQGUZZH3WREX7v8BTsyIU1UmMvTp5tdzHirP0OC7hu3IRZjd3V/AcdhVow1Glp56+N
         bHYyeneAj0w25cCgUPWeFHwR9QPI8CX66FiWWtHs2sHa+mnCw2xJGzhG/hUDiTlyqW2r
         /x0gDH+IOxfYPgjqMbcfkabicPmuysMf81Zb3KnzKRerKaILZolp6OGg+nNBaVW1OQd4
         cNh1sB1H4klN1GO5BdYlUqtsNnyrVAWol7LQ/OIfq/N5AUh52OkZIJkQ8Wl3dya05w2m
         qnOWpKBo400WRjEFdrhbQB1srOCZWs1kRHbItsQO5cTG2uA3CX69V9EfyYXiWYk5mWvH
         /PlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dVa7xxf/onEqP76kyKPFVLsK7w2goNqUXvjuau2wFf0=;
        b=PC5xMlFntJRCOvycgbGC0UugDc2Zw80fqpUvQH3gcS7MGMJYxI5jzW1Fyfdr/aqyDh
         NIlCrqegK59V7wHWo5dKYNBpvKYT2C3+mi6GZVrDesOfW80c/5OmihzeEkyrQk/Vdp1F
         8PFWtBgBXJC5nxY1dXH4gqN+vxCdWE9N5RABvZBtda2V1WO47AKfcrLEs2Xmz7mrIFwS
         rPUxPXafKCT68/iDaYKouF9QsPFl9nWyb7ZhRr14jXApF+htLpwyfSBuJUyTL83NOofG
         yY1QXWILymEsbzb5BlV43MA6qOj2Y7S+EmufFBq2jnmJAf6VWtmk/YNxvXustoK1cT84
         YiLg==
X-Gm-Message-State: AJIora8TyoxaFedTNnETlLor4ls2gmW+hbOp0GQ5/BWfTk3ZyyqVZFW4
	FTIgCHQS3X2IOHebaH+5dznFeQ==
X-Google-Smtp-Source: AGRyM1v5r9iWWUu7brErfEAgHnHeQqYVe7CCXY1MQH+miMLEPCNuDtHq6+sM11WMnaRLoKI6y6mQSg==
X-Received: by 2002:ac2:4f16:0:b0:47f:9437:43c9 with SMTP id k22-20020ac24f16000000b0047f943743c9mr22615302lfr.118.1657014211407;
        Tue, 05 Jul 2022 02:43:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 12/28] phy: qcom-qmp: move QSERDES PLL registers to separate header
Date: Tue,  5 Jul 2022 12:43:04 +0300
Message-Id: <20220705094320.1313312-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024334_634226_AD1D2CD8 
X-CRM114-Status: GOOD (  12.25  )
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

Move QSERDES PLL registers to the separate header. This register set is
unique for the IPQ PCIe Gen3 PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-pll.h   | 66 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 58 +---------------
 2 files changed, 67 insertions(+), 57 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
new file mode 100644
index 000000000000..ad326e301a3a
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_PLL_H_
+#define QCOM_PHY_QMP_QSERDES_PLL_H_
+
+/* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
+#define QSERDES_PLL_BG_TIMER				0x00c
+#define QSERDES_PLL_SSC_PER1				0x01c
+#define QSERDES_PLL_SSC_PER2				0x020
+#define QSERDES_PLL_SSC_STEP_SIZE1_MODE0		0x024
+#define QSERDES_PLL_SSC_STEP_SIZE2_MODE0		0x028
+#define QSERDES_PLL_SSC_STEP_SIZE1_MODE1		0x02c
+#define QSERDES_PLL_SSC_STEP_SIZE2_MODE1		0x030
+#define QSERDES_PLL_BIAS_EN_CLKBUFLR_EN			0x03c
+#define QSERDES_PLL_CLK_ENABLE1				0x040
+#define QSERDES_PLL_SYS_CLK_CTRL			0x044
+#define QSERDES_PLL_SYSCLK_BUF_ENABLE			0x048
+#define QSERDES_PLL_PLL_IVCO				0x050
+#define QSERDES_PLL_LOCK_CMP1_MODE0			0x054
+#define QSERDES_PLL_LOCK_CMP2_MODE0			0x058
+#define QSERDES_PLL_LOCK_CMP1_MODE1			0x060
+#define QSERDES_PLL_LOCK_CMP2_MODE1			0x064
+#define QSERDES_PLL_BG_TRIM				0x074
+#define QSERDES_PLL_CLK_EP_DIV_MODE0			0x078
+#define QSERDES_PLL_CLK_EP_DIV_MODE1			0x07c
+#define QSERDES_PLL_CP_CTRL_MODE0			0x080
+#define QSERDES_PLL_CP_CTRL_MODE1			0x084
+#define QSERDES_PLL_PLL_RCTRL_MODE0			0x088
+#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08c
+#define QSERDES_PLL_PLL_CCTRL_MODE0			0x090
+#define QSERDES_PLL_PLL_CCTRL_MODE1			0x094
+#define QSERDES_PLL_BIAS_EN_CTRL_BY_PSM			0x0a4
+#define QSERDES_PLL_SYSCLK_EN_SEL			0x0a8
+#define QSERDES_PLL_RESETSM_CNTRL			0x0b0
+#define QSERDES_PLL_LOCK_CMP_EN				0x0c4
+#define QSERDES_PLL_DEC_START_MODE0			0x0cc
+#define QSERDES_PLL_DEC_START_MODE1			0x0d0
+#define QSERDES_PLL_DIV_FRAC_START1_MODE0		0x0d8
+#define QSERDES_PLL_DIV_FRAC_START2_MODE0		0x0dc
+#define QSERDES_PLL_DIV_FRAC_START3_MODE0		0x0e0
+#define QSERDES_PLL_DIV_FRAC_START1_MODE1		0x0e4
+#define QSERDES_PLL_DIV_FRAC_START2_MODE1		0x0e8
+#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0ec
+#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE0		0x100
+#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE0		0x104
+#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE1		0x108
+#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE1		0x10c
+#define QSERDES_PLL_VCO_TUNE_MAP			0x120
+#define QSERDES_PLL_VCO_TUNE1_MODE0			0x124
+#define QSERDES_PLL_VCO_TUNE2_MODE0			0x128
+#define QSERDES_PLL_VCO_TUNE1_MODE1			0x12c
+#define QSERDES_PLL_VCO_TUNE2_MODE1			0x130
+#define QSERDES_PLL_VCO_TUNE_TIMER1			0x13c
+#define QSERDES_PLL_VCO_TUNE_TIMER2			0x140
+#define QSERDES_PLL_CLK_SELECT				0x16c
+#define QSERDES_PLL_HSCLK_SEL				0x170
+#define QSERDES_PLL_CORECLK_DIV				0x17c
+#define QSERDES_PLL_CORE_CLK_EN				0x184
+#define QSERDES_PLL_CMN_CONFIG				0x18c
+#define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
+#define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 50a663bb0f2f..07e281c818b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -18,63 +18,7 @@
 #include "phy-qcom-qmp-qserdes-com-v5.h"
 #include "phy-qcom-qmp-qserdes-txrx-v5.h"
 
-/* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
-
-#define QSERDES_PLL_BG_TIMER				0x00c
-#define QSERDES_PLL_SSC_PER1				0x01c
-#define QSERDES_PLL_SSC_PER2				0x020
-#define QSERDES_PLL_SSC_STEP_SIZE1_MODE0		0x024
-#define QSERDES_PLL_SSC_STEP_SIZE2_MODE0		0x028
-#define QSERDES_PLL_SSC_STEP_SIZE1_MODE1		0x02c
-#define QSERDES_PLL_SSC_STEP_SIZE2_MODE1		0x030
-#define QSERDES_PLL_BIAS_EN_CLKBUFLR_EN			0x03c
-#define QSERDES_PLL_CLK_ENABLE1				0x040
-#define QSERDES_PLL_SYS_CLK_CTRL			0x044
-#define QSERDES_PLL_SYSCLK_BUF_ENABLE			0x048
-#define QSERDES_PLL_PLL_IVCO				0x050
-#define QSERDES_PLL_LOCK_CMP1_MODE0			0x054
-#define QSERDES_PLL_LOCK_CMP2_MODE0			0x058
-#define QSERDES_PLL_LOCK_CMP1_MODE1			0x060
-#define QSERDES_PLL_LOCK_CMP2_MODE1			0x064
-#define QSERDES_PLL_BG_TRIM				0x074
-#define QSERDES_PLL_CLK_EP_DIV_MODE0			0x078
-#define QSERDES_PLL_CLK_EP_DIV_MODE1			0x07c
-#define QSERDES_PLL_CP_CTRL_MODE0			0x080
-#define QSERDES_PLL_CP_CTRL_MODE1			0x084
-#define QSERDES_PLL_PLL_RCTRL_MODE0			0x088
-#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08c
-#define QSERDES_PLL_PLL_CCTRL_MODE0			0x090
-#define QSERDES_PLL_PLL_CCTRL_MODE1			0x094
-#define QSERDES_PLL_BIAS_EN_CTRL_BY_PSM			0x0a4
-#define QSERDES_PLL_SYSCLK_EN_SEL			0x0a8
-#define QSERDES_PLL_RESETSM_CNTRL			0x0b0
-#define QSERDES_PLL_LOCK_CMP_EN				0x0c4
-#define QSERDES_PLL_DEC_START_MODE0			0x0cc
-#define QSERDES_PLL_DEC_START_MODE1			0x0d0
-#define QSERDES_PLL_DIV_FRAC_START1_MODE0		0x0d8
-#define QSERDES_PLL_DIV_FRAC_START2_MODE0		0x0dc
-#define QSERDES_PLL_DIV_FRAC_START3_MODE0		0x0e0
-#define QSERDES_PLL_DIV_FRAC_START1_MODE1		0x0e4
-#define QSERDES_PLL_DIV_FRAC_START2_MODE1		0x0e8
-#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0ec
-#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE0		0x100
-#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE0		0x104
-#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE1		0x108
-#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE1		0x10c
-#define QSERDES_PLL_VCO_TUNE_MAP			0x120
-#define QSERDES_PLL_VCO_TUNE1_MODE0			0x124
-#define QSERDES_PLL_VCO_TUNE2_MODE0			0x128
-#define QSERDES_PLL_VCO_TUNE1_MODE1			0x12c
-#define QSERDES_PLL_VCO_TUNE2_MODE1			0x130
-#define QSERDES_PLL_VCO_TUNE_TIMER1			0x13c
-#define QSERDES_PLL_VCO_TUNE_TIMER2			0x140
-#define QSERDES_PLL_CLK_SELECT				0x16c
-#define QSERDES_PLL_HSCLK_SEL				0x170
-#define QSERDES_PLL_CORECLK_DIV				0x17c
-#define QSERDES_PLL_CORE_CLK_EN				0x184
-#define QSERDES_PLL_CMN_CONFIG				0x18c
-#define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
-#define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
+#include "phy-qcom-qmp-qserdes-pll.h"
 
 /* Only for QMP V2 PHY - PCS registers */
 #define QPHY_V2_PCS_POWER_DOWN_CONTROL				0x04
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
