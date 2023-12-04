Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9293EC10DC1
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1H7AutP3KCBSHJwQ4oxfQHNbwH+SDuIc6j3Dtxyn2F8=; b=w/0XoVf+5bh6NR
	+OQZqfCjDTXsj+L0gG9ctC1ucbDPgM/Z6iHRqoaApsS+mnNlX7VXgXJJIZDSwkHxK2CElLrSx/4Hc
	z+iyGW2FXsCVepb+BR1HAhwiza8TsmRZFMIbE16FHL0eIZDQM/hwsth9Xq9AFdUd5u8DOPphFWxG6
	JzrnrPIvczfZVZ91kmAWPJv+MqRtRnCIDTrdzXkPxP33Y6n71u3W7aKf4HaUtiWztJvosWMzRz21R
	1AmhlT1738shl8qgwSE1Oo0sf5c9VJhmjEaQLKekbpHGZtaZBLcjm+ioJ+hUjQIivH5v5GDjZTXS1
	cMCDFJ6kOqcy8Y3Sk0iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8gB-004OzC-10;
	Mon, 04 Dec 2023 13:08:07 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g7-004OrF-2w
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:05 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40bd5eaa66cso28245945e9.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695280; x=1702300080; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUks0VPbd9cYN7vszIiBuJ+mQVO4/oWNE01Kkc+iAPE=;
        b=o6NoEYDjoQW0FzjjbhPO6sXo4de4vo0g6bVxKFMHrcxRRRf87JkqtjYqRjK4BiHEcQ
         bPH4NSWbgtEZnRykm+e8TaoXnguOMbo3HcwCCWxUR0VZJYlncyuTjspGU6R5fDofjqDA
         WjYQOVzgOQOXZAW2GnFFjdLkbxtFKnCbiE6MSJ8NP/oTDDFxOZamH52R6NxznRF9nJKe
         62s4GhmACt4A+qO4jt3gurLkUq6WY4Q3ZkixRzj0zVZkBnAQg7DuneOqmFRSXC8eL90V
         ofSQGrBVGgJXczybwLB1Bru1CpOiFSOTw1rOUoJVka82dYnrPDch9OLjqtCFpOcSQSXz
         6vdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695280; x=1702300080;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HUks0VPbd9cYN7vszIiBuJ+mQVO4/oWNE01Kkc+iAPE=;
        b=M0eVkXQJcGMUZ0Lm24XzIW2czIEBuBvyXr5j3q4vYkTEp1iKmAkS61Km6DC2/dOdE+
         MlagAkgdAlr9OFBNFqgb8lSRiBiWLiD5XSlCydCtPy8qrnrk/9683aXeFwo4DB6N0HtT
         C1fr/yk0vVPfyqn0qZwKWEPRfq7NpUl9NDue+B+ltzf0oNDWKAQkgppjVBJnp4oyp0HB
         5wADCdKfHDfb+RDAt7d3FPl9JCuxWGIUKSZaRyspM+7zJO2M0V1f1cyOCkC4PneNu+aj
         11f1F1fsKFABMER+mfwZktVZBhsSy1sm2CctfLUu9/UaZQn9pZNKihRRkMDvkyaEoqgX
         piHg==
X-Gm-Message-State: AOJu0YykPpov6djLAM6wbpaQSAERP8SKrpLZ2sL4iK8h+z1sxjSWfnFj
	gnDBI2Wlot5orAEZKdwrh5jD0Q==
X-Google-Smtp-Source: AGHT+IFM0QwwCk8522Vl3t4aRbxd9Q+q4yyucz746KxdgT4MpgGYyFNAZFhvVp/Nwh8zfZev+tmAwA==
X-Received: by 2002:a7b:c857:0:b0:40b:5e59:ccad with SMTP id c23-20020a7bc857000000b0040b5e59ccadmr423442wml.142.1701695279957;
        Mon, 04 Dec 2023 05:07:59 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:59 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:39 +0200
Subject: [PATCH v2 5/7] phy: qcom-qmp: qserdes-com: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-5-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5077; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4NLR4VFQwo4+fX7UwBPIiMq13lp/lzmGWpiGVxHOxcA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8l1+QvRIvoYU4BHdmt5lsW9MqdkS82wkNOD
 I/RF6dwMoOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PJQAKCRAbX0TJAJUV
 VvE8D/4kT2ifTcIAdfsBcf+LM4L0G7TndZkVJox9hn3jld3QtHxxah4jSkGFk1Q0E1Qw+Wn7tPG
 olswtGk47KAQFpB64L/0mnsSg6ORQwBEP9tvnvQ+suuieuEsDdR1rtHsP/iultNPMgpurjYeicF
 ByMhP48WgJWI0gxnha9weMMs8bdNfaTvlZpwWG/Oo6klSE0PjjSkUcJZ2vfpkU3laX/apLxJIYi
 dn5V6M8eweTEKy7tdc+dgJO+3LXLOq5YTxp62DCZmd3CCVAqMdLoCjkm1M6+H2DARbgpK8KivTG
 ZZN/wwSJChMx/+VnYCj/ijR2UqrtRCXOxcJ7aU/Chst54tIrbKnhL2oXZjYLadsKgst3M7jXrB4
 zpr7MNuFqr7bASZRsnTUybt2vDDrJCvCcX2TDKXWYpd0H/X4jSJzitNEdEHdf8T5LzEh2pj1hUG
 XoSOIg8Xti7l4ImK/n/Sx+YIp+8HGggOcQuiUFeGoWIixqOhAYB1dHssiIrVdGAHqACgJlq85AA
 8FKHt6irlVilmm9NG+XYsrbuOO0Jem3Qc54ZcF6nHl3oJI+NRrDa/Pzx6wJPWl9wZaWYNlwkunW
 KVT8bw6g+p7corClfaSg89oZHQu65qJHZ/tC3baIg3IiUxOaTmxVGznoDJbISe74SHxpyOefUeX
 UTNHCkAhTWyTDmw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050803_972035_8FFDA62A 
X-CRM114-Status: GOOD (  10.89  )
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

The X1E80100 platform bumps the HW version of QMP phy to v7 for USB
and PCIE g3x2. Add the new qserdes com offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 86 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 2 files changed, 88 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
new file mode 100644
index 000000000000..9fe7326e4190
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V7_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V7_H_
+
+/* Only for QMP V7 PHY - QSERDES COM registers */
+
+#define QSERDES_V7_COM_SSC_STEP_SIZE1_MODE1			0x00
+#define QSERDES_V7_COM_SSC_STEP_SIZE2_MODE1			0x04
+#define QSERDES_V7_COM_CP_CTRL_MODE1				0x10
+#define QSERDES_V7_COM_PLL_RCTRL_MODE1				0x14
+#define QSERDES_V7_COM_PLL_CCTRL_MODE1				0x18
+#define QSERDES_V7_COM_CORECLK_DIV_MODE1			0x1c
+#define QSERDES_V7_COM_LOCK_CMP1_MODE1				0x20
+#define QSERDES_V7_COM_LOCK_CMP2_MODE1				0x24
+#define QSERDES_V7_COM_DEC_START_MODE1				0x28
+#define QSERDES_V7_COM_DEC_START_MSB_MODE1			0x2c
+#define QSERDES_V7_COM_DIV_FRAC_START1_MODE1			0x30
+#define QSERDES_V7_COM_DIV_FRAC_START2_MODE1			0x34
+#define QSERDES_V7_COM_DIV_FRAC_START3_MODE1			0x38
+#define QSERDES_V7_COM_HSCLK_SEL_1				0x3c
+#define QSERDES_V7_COM_INTEGLOOP_GAIN0_MODE1			0x40
+#define QSERDES_V7_COM_INTEGLOOP_GAIN1_MODE1			0x44
+#define QSERDES_V7_COM_VCO_TUNE1_MODE1				0x48
+#define QSERDES_V7_COM_VCO_TUNE2_MODE1				0x4c
+#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
+#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE2_MODE1		0x54
+#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE1_MODE0		0x58
+#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE2_MODE0		0x5c
+#define QSERDES_V7_COM_SSC_STEP_SIZE1_MODE0			0x60
+#define QSERDES_V7_COM_SSC_STEP_SIZE2_MODE0			0x64
+#define QSERDES_V7_COM_CP_CTRL_MODE0				0x70
+#define QSERDES_V7_COM_PLL_RCTRL_MODE0				0x74
+#define QSERDES_V7_COM_PLL_CCTRL_MODE0				0x78
+#define QSERDES_V7_COM_PLL_CORE_CLK_DIV_MODE0			0x7c
+#define QSERDES_V7_COM_LOCK_CMP1_MODE0				0x80
+#define QSERDES_V7_COM_LOCK_CMP2_MODE0				0x84
+#define QSERDES_V7_COM_DEC_START_MODE0				0x88
+#define QSERDES_V7_COM_DEC_START_MSB_MODE0			0x8c
+#define QSERDES_V7_COM_DIV_FRAC_START1_MODE0			0x90
+#define QSERDES_V7_COM_DIV_FRAC_START2_MODE0			0x94
+#define QSERDES_V7_COM_DIV_FRAC_START3_MODE0			0x98
+#define QSERDES_V7_COM_HSCLK_HS_SWITCH_SEL_1			0x9c
+#define QSERDES_V7_COM_INTEGLOOP_GAIN0_MODE0			0xa0
+#define QSERDES_V7_COM_INTEGLOOP_GAIN1_MODE0			0xa4
+#define QSERDES_V7_COM_VCO_TUNE1_MODE0				0xa8
+#define QSERDES_V7_COM_VCO_TUNE2_MODE0				0xac
+#define QSERDES_V7_COM_BG_TIMER					0xbc
+#define QSERDES_V7_COM_SSC_EN_CENTER				0xc0
+#define QSERDES_V7_COM_SSC_PER1					0xcc
+#define QSERDES_V7_COM_SSC_PER2					0xd0
+#define QSERDES_V7_COM_PLL_POST_DIV_MUX				0xd8
+#define QSERDES_V7_COM_PLL_BIAS_EN_CLK_BUFLR_EN			0xdc
+#define QSERDES_V7_COM_CLK_ENABLE1				0xe0
+#define QSERDES_V7_COM_SYS_CLK_CTRL				0xe4
+#define QSERDES_V7_COM_SYSCLK_BUF_ENABLE			0xe8
+#define QSERDES_V7_COM_PLL_IVCO					0xf4
+#define QSERDES_V7_COM_PLL_IVCO_MODE1				0xf8
+#define QSERDES_V7_COM_SYSCLK_EN_SEL				0x110
+#define QSERDES_V7_COM_RESETSM_CNTRL				0x118
+#define QSERDES_V7_COM_LOCK_CMP_EN				0x120
+#define QSERDES_V7_COM_LOCK_CMP_CFG				0x124
+#define QSERDES_V7_COM_VCO_TUNE_CTRL				0x13c
+#define QSERDES_V7_COM_VCO_TUNE_MAP				0x140
+#define QSERDES_V7_COM_VCO_TUNE_INITVAL2			0x148
+#define QSERDES_V7_COM_VCO_TUNE_MAXVAL2				0x158
+#define QSERDES_V7_COM_CLK_SELECT				0x164
+#define QSERDES_V7_COM_CORE_CLK_EN				0x170
+#define QSERDES_V7_COM_CMN_CONFIG_1				0x174
+#define QSERDES_V7_COM_SVS_MODE_CLK_SEL				0x17c
+#define QSERDES_V7_COM_CMN_MISC_1				0x184
+#define QSERDES_V7_COM_CMN_MODE					0x188
+#define QSERDES_V7_COM_PLL_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_1			0x1a4
+#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_2			0x1a8
+#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_3			0x1ac
+#define QSERDES_V7_COM_ADDITIONAL_MISC				0x1b4
+#define QSERDES_V7_COM_ADDITIONAL_MISC_2			0x1b8
+#define QSERDES_V7_COM_ADDITIONAL_MISC_3			0x1bc
+#define QSERDES_V7_COM_CMN_STATUS				0x1d0
+#define QSERDES_V7_COM_C_READY_STATUS				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 21f6a56e7ae3..3a0512c3e07a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -26,6 +26,8 @@
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
+#include "phy-qcom-qmp-qserdes-com-v7.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
