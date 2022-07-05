Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 466ACC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ukzTeuYcRIFILB3WIg2D7VfdM1RLJSMKVyQai4TcNg=; b=m06WublXwOSn05
	2VB54NFV+VU3ZihPwXBltsKhyysPFoNxuIKkK8j4T/J/KAnc0NJ9it0Vkw36E7YUxM99Y+hlDPMUT
	q77zKvYC4Zq5Pc7Rn30QNqeGBClVvzDFLxhjE0ibS9dOAYmwxbiSRCTRU0TaqWUWGY0+94ErqE0L0
	L7glW0zNEWPBjBiYO+lNoQofoBtP1Auq2GN+ViN0OYRZUOe0JAOPGSOpI/YVuNhuwln4ZB1de3lW/
	tnKU4s2sSVEFJ/YiFsB1/cX/oVra8Ja1zdSDjus4vxUsQycZryYDGLeLN5AJCQOB86xFhQPfJ6xMG
	m6CvbZFntctUT31LJclA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fef-00H7us-M0; Tue, 05 Jul 2022 10:19:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOa-00H219-05
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SFiyKRqhuTNMazS9vTjba+gcY3WzJK2u75qhYmy0m7k=; b=LOUspM9iaUlJhOTAso46Y3rJWx
	nrhc4PB72Z95QZKhS2pWmuCvZDFW6jDGtTkTgQr/W91OLoJFO2qnkS5hngFRkunheX5no8i5G1jT+
	Is6esMy2LHjrfJ8deL5j+6CFzJHOUWggKf9I4CZxsCZ2EPwms5jUT5iAnWQ0X8LzP9MqIRIhLfRUc
	0lFEigHYlE2n3JV2fyy+GQCWYqYTrhh7y6fGndYo0ofsogbFaUTbVqSOID7mtuhlC8+nBNVwAm3M0
	s7RXZ6EoHIFPc5UW4clv5Y6fvMiO3hkyK+I8ekQ8/kh+4S+YF6pC9do3ywLMTLFNi5EkfZYkOhbvA
	pLLpnFIg==;
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5q-00HUxL-1B
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:46 +0000
Received: by mail-lf1-x12c.google.com with SMTP id y16so19568828lfb.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SFiyKRqhuTNMazS9vTjba+gcY3WzJK2u75qhYmy0m7k=;
        b=O1WzRn10W6HuDneptEcsxD6+oji6yoNsFidHCAtn+9eoQjomAbs3XfGAN/8SOz9Max
         zKoE4dKe1+T5mZ6BSl+dWtN3H6/BRh0Yvdwh9/r0XciVa5YrYKp9pXBCaQW1sl2hfDlI
         s20O9e96w2a0vaOqiOFX1OXarfH6iJrWtj2SIxG2vxjoAuPeMzxoAV6Vjc7x678u0LOH
         aVTgFJ69O1lNp7p6M9SOnswcVbKjz3Efkrh3yZ8uWsxW/FXfS/vIS5QJhCexuzBkGT5h
         XqYu9AaWn3uPbusm0YeGtEKTIYiAxlKDvKvUszHXZ+/62wI+1h5dyURDCQ+cksOa/Iy6
         3gNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SFiyKRqhuTNMazS9vTjba+gcY3WzJK2u75qhYmy0m7k=;
        b=UQRBiXS0ABo587Ynxk63zd+PcWGlGsQjhFDmgnFqJuMEuaGckUEYHHg6lVOtQXdm3a
         U3/lfsjrN85seuarh5C+KM74NKCNudutI9MtUykMmTWSPbHRMDGGCt8uRE15TbWhCP3c
         fqXTwQDE3v/ztNBaJ6pQzKgtCWIfILd7AR6VveY8OXu0FIXooRCevbO7IxMBc2TjZpmV
         dnAARmq+GxUQRn31HQL5+VQYV5fPgQMkG4T05X6c/lXaVrlBWLoVU1SohQzPhppdXGVD
         /WJ5XpmEFa6uzN5zx8qE5AioBiJnOuXGCOSWE/5l2oED49gWpCFlNvlo+7xk/Zhdk1sE
         ckSg==
X-Gm-Message-State: AJIora8HOhGvmaVED89jVPD9VaWB2SS+N3qycQSnED1MOsyftmn43jLH
	FMWYyYJCcCN4JG4t8GDIQjGQew==
X-Google-Smtp-Source: AGRyM1vIpIRbrj0gGuP4UbafHZsLGq4ClWaTcL1jmhvxoo7DrlMa3mSCVwuxL8fmL47s6lHWEZF9bQ==
X-Received: by 2002:a19:4316:0:b0:481:484c:404c with SMTP id q22-20020a194316000000b00481484c404cmr19931257lfa.559.1657014216496;
        Tue, 05 Jul 2022 02:43:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 18/28] phy: qcom-qmp: split allegedly 4.20 and 5.20 TX/RX registers
Date: Tue,  5 Jul 2022 12:43:10 +0300
Message-Id: <20220705094320.1313312-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104342_744617_C909C3A0 
X-CRM114-Status: GOOD (  13.51  )
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

Split registers definitions belonging allegedly to 4.20 and 5.20 QMP
PHYs. They are used for the PCIe QMP PHYs, which have no good open
source reference.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy-qcom-qmp-qserdes-txrx-v4_20.h         | 43 +++++++++
 .../phy-qcom-qmp-qserdes-txrx-v5_20.h         | 60 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 88 +------------------
 3 files changed, 105 insertions(+), 86 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4_20.h
new file mode 100644
index 000000000000..114570f3017f
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4_20.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V4_20_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V4_20_H_
+
+/* Only for QMP V4_20 PHY - TX registers */
+#define QSERDES_V4_20_TX_LANE_MODE_1			0x88
+#define QSERDES_V4_20_TX_LANE_MODE_2			0x8c
+#define QSERDES_V4_20_TX_LANE_MODE_3			0x90
+#define QSERDES_V4_20_TX_VMODE_CTRL1			0xc4
+#define QSERDES_V4_20_TX_PI_QEC_CTRL			0xe0
+
+/* Only for QMP V4_20 PHY - RX registers */
+#define QSERDES_V4_20_RX_FO_GAIN_RATE2			0x008
+#define QSERDES_V4_20_RX_UCDR_PI_CONTROLS		0x058
+#define QSERDES_V4_20_RX_AUX_DATA_TCOARSE_TFINE		0x0ac
+#define QSERDES_V4_20_RX_DFE_3				0x110
+#define QSERDES_V4_20_RX_DFE_DAC_ENABLE1		0x134
+#define QSERDES_V4_20_RX_DFE_DAC_ENABLE2		0x138
+#define QSERDES_V4_20_RX_VGA_CAL_CNTRL2			0x150
+#define QSERDES_V4_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x178
+#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B1		0x1c8
+#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B2		0x1cc
+#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B3		0x1d0
+#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B4		0x1d4
+#define QSERDES_V4_20_RX_RX_MODE_RATE2_B0		0x1d8
+#define QSERDES_V4_20_RX_RX_MODE_RATE2_B1		0x1dc
+#define QSERDES_V4_20_RX_RX_MODE_RATE2_B2		0x1e0
+#define QSERDES_V4_20_RX_RX_MODE_RATE2_B3		0x1e4
+#define QSERDES_V4_20_RX_RX_MODE_RATE2_B4		0x1e8
+#define QSERDES_V4_20_RX_RX_MODE_RATE3_B0		0x1ec
+#define QSERDES_V4_20_RX_RX_MODE_RATE3_B1		0x1f0
+#define QSERDES_V4_20_RX_RX_MODE_RATE3_B2		0x1f4
+#define QSERDES_V4_20_RX_RX_MODE_RATE3_B3		0x1f8
+#define QSERDES_V4_20_RX_RX_MODE_RATE3_B4		0x1fc
+#define QSERDES_V4_20_RX_PHPRE_CTRL			0x200
+#define QSERDES_V4_20_RX_DFE_CTLE_POST_CAL_OFFSET	0x20c
+#define QSERDES_V4_20_RX_MARG_COARSE_CTRL2		0x23c
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h
new file mode 100644
index 000000000000..86c01104799e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V5_20_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V5_20_H_
+
+/* Only for QMP V5_20 PHY - TX registers */
+#define QSERDES_V5_20_TX_RES_CODE_LANE_OFFSET_TX	0x30
+#define QSERDES_V5_20_TX_RES_CODE_LANE_OFFSET_RX	0x34
+#define QSERDES_V5_20_TX_LANE_MODE_1			0x78
+#define QSERDES_V5_20_TX_LANE_MODE_2			0x7c
+
+/* Only for QMP V5_20 PHY - RX registers */
+#define QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE2		0x008
+#define QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE3		0x00c
+#define QSERDES_V5_20_RX_UCDR_PI_CONTROLS		0x020
+#define QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_0_1	0x02c
+#define QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_2_3	0x030
+#define QSERDES_V5_20_RX_RX_IDAC_SAOFFSET		0x07c
+#define QSERDES_V5_20_RX_DFE_3				0x090
+#define QSERDES_V5_20_RX_DFE_DAC_ENABLE1		0x0b4
+#define QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1		0x0c4
+#define QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2		0x0c8
+#define QSERDES_V5_20_RX_VGA_CAL_MAN_VAL		0x0dc
+#define QSERDES_V5_20_RX_GM_CAL				0x0ec
+#define QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4		0x108
+#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1		0x164
+#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2		0x168
+#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3		0x16c
+#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5		0x174
+#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6		0x178
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B0		0x17c
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B1		0x180
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B2		0x184
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B3		0x188
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B4		0x18c
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B5		0x190
+#define QSERDES_V5_20_RX_RX_MODE_RATE2_B6		0x194
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B0		0x198
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B1		0x19c
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B2		0x1a0
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B3		0x1a4
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B4		0x1a8
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B5		0x1ac
+#define QSERDES_V5_20_RX_RX_MODE_RATE3_B6		0x1b0
+#define QSERDES_V5_20_RX_PHPRE_CTRL			0x1b4
+#define QSERDES_V5_20_RX_DFE_CTLE_POST_CAL_OFFSET	0x1c0
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE210	0x1f4
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE3	0x1f8
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE210	0x1fc
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE3	0x200
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE210	0x204
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE3	0x208
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH4_RATE3	0x210
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3	0x218
+#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3	0x220
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 59510d927fec..1f8684c87c06 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -14,9 +14,11 @@
 
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-txrx-v4.h"
+#include "phy-qcom-qmp-qserdes-txrx-v4_20.h"
 
 #include "phy-qcom-qmp-qserdes-com-v5.h"
 #include "phy-qcom-qmp-qserdes-txrx-v5.h"
+#include "phy-qcom-qmp-qserdes-txrx-v5_20.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
@@ -108,14 +110,6 @@
 
 #define QSERDES_V3_DP_PHY_STATUS			0x0c0
 
-
-/* Only for QMP V4_20 PHY - TX registers */
-#define QSERDES_V4_20_TX_LANE_MODE_1			0x88
-#define QSERDES_V4_20_TX_LANE_MODE_2			0x8c
-#define QSERDES_V4_20_TX_LANE_MODE_3			0x90
-#define QSERDES_V4_20_TX_VMODE_CTRL1			0xc4
-#define QSERDES_V4_20_TX_PI_QEC_CTRL			0xe0
-
 /* Only for QMP V4 PHY - DP PHY registers */
 #define QSERDES_V4_DP_PHY_CFG_1				0x014
 #define QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK		0x054
@@ -127,33 +121,6 @@
 #define QSERDES_V4_DP_PHY_AUX_INTERRUPT_STATUS		0x0d8
 #define QSERDES_V4_DP_PHY_STATUS			0x0dc
 
-/* Only for QMP V4_20 PHY - RX registers */
-#define QSERDES_V4_20_RX_FO_GAIN_RATE2			0x008
-#define QSERDES_V4_20_RX_UCDR_PI_CONTROLS		0x058
-#define QSERDES_V4_20_RX_AUX_DATA_TCOARSE_TFINE		0x0ac
-#define QSERDES_V4_20_RX_DFE_3				0x110
-#define QSERDES_V4_20_RX_DFE_DAC_ENABLE1		0x134
-#define QSERDES_V4_20_RX_DFE_DAC_ENABLE2		0x138
-#define QSERDES_V4_20_RX_VGA_CAL_CNTRL2			0x150
-#define QSERDES_V4_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x178
-#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B1		0x1c8
-#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B2		0x1cc
-#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B3		0x1d0
-#define QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B4		0x1d4
-#define QSERDES_V4_20_RX_RX_MODE_RATE2_B0		0x1d8
-#define QSERDES_V4_20_RX_RX_MODE_RATE2_B1		0x1dc
-#define QSERDES_V4_20_RX_RX_MODE_RATE2_B2		0x1e0
-#define QSERDES_V4_20_RX_RX_MODE_RATE2_B3		0x1e4
-#define QSERDES_V4_20_RX_RX_MODE_RATE2_B4		0x1e8
-#define QSERDES_V4_20_RX_RX_MODE_RATE3_B0		0x1ec
-#define QSERDES_V4_20_RX_RX_MODE_RATE3_B1		0x1f0
-#define QSERDES_V4_20_RX_RX_MODE_RATE3_B2		0x1f4
-#define QSERDES_V4_20_RX_RX_MODE_RATE3_B3		0x1f8
-#define QSERDES_V4_20_RX_RX_MODE_RATE3_B4		0x1fc
-#define QSERDES_V4_20_RX_PHPRE_CTRL			0x200
-#define QSERDES_V4_20_RX_DFE_CTLE_POST_CAL_OFFSET	0x20c
-#define QSERDES_V4_20_RX_MARG_COARSE_CTRL2		0x23c
-
 /* Only for QMP V4_20 PHY - USB/PCIe PCS registers */
 #define QPHY_V4_20_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_V4_20_PCS_EQ_CONFIG2			0x1d8
@@ -176,57 +143,6 @@
 #define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x824
 #define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x828
 
-/* Only for QMP V5_20 PHY - TX registers */
-#define QSERDES_V5_20_TX_RES_CODE_LANE_OFFSET_TX	0x30
-#define QSERDES_V5_20_TX_RES_CODE_LANE_OFFSET_RX	0x34
-#define QSERDES_V5_20_TX_LANE_MODE_1			0x78
-#define QSERDES_V5_20_TX_LANE_MODE_2			0x7c
-
-/* Only for QMP V5_20 PHY - RX registers */
-#define QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE2		0x008
-#define QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE3		0x00c
-#define QSERDES_V5_20_RX_UCDR_PI_CONTROLS		0x020
-#define QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_0_1	0x02c
-#define QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_2_3	0x030
-#define QSERDES_V5_20_RX_RX_IDAC_SAOFFSET		0x07c
-#define QSERDES_V5_20_RX_DFE_3				0x090
-#define QSERDES_V5_20_RX_DFE_DAC_ENABLE1		0x0b4
-#define QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1		0x0c4
-#define QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2		0x0c8
-#define QSERDES_V5_20_RX_VGA_CAL_MAN_VAL		0x0dc
-#define QSERDES_V5_20_RX_GM_CAL				0x0ec
-#define QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4		0x108
-#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1		0x164
-#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2		0x168
-#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3		0x16c
-#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5		0x174
-#define QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6		0x178
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B0		0x17c
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B1		0x180
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B2		0x184
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B3		0x188
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B4		0x18c
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B5		0x190
-#define QSERDES_V5_20_RX_RX_MODE_RATE2_B6		0x194
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B0		0x198
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B1		0x19c
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B2		0x1a0
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B3		0x1a4
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B4		0x1a8
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B5		0x1ac
-#define QSERDES_V5_20_RX_RX_MODE_RATE3_B6		0x1b0
-#define QSERDES_V5_20_RX_PHPRE_CTRL			0x1b4
-#define QSERDES_V5_20_RX_DFE_CTLE_POST_CAL_OFFSET	0x1c0
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE210	0x1f4
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE3	0x1f8
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE210	0x1fc
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE3	0x200
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE210	0x204
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE3	0x208
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH4_RATE3	0x210
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3	0x218
-#define QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3	0x220
-
 /* Only for QMP V5_20 PHY - PCIe PCS registers */
 #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
