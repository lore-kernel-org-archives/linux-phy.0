Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB495C10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7B4XbMc8lObiZA0DRIxqLS/n97mdbxR4r23EhCvE3FA=; b=j/uD+/U+DhmI9r
	Da9t3KnNodWbzjSXE19hPTbPzQ7TZ9UMTh0FwYc33S9B2IeRAmCPcrNcvV2nj0I7DhegM98O5kFVF
	VflyA5csTVYZNY4HTuXAKllDIsWejO4NbPBdkj6TV8rpxpvThysXSDJl3wBDj/nMMF+G/2yh+pxR7
	gPN/wN0yVSGzjHquQflfL5fS9ZhN3O2WQWvi1OU2fsLmm80d9qO43BxRFsh1V23qSvMhmCp+RX412
	cvKXl25UYpkVnuMmq9k8zLKNLbYrjBFUm3s80HxUqRjjSDhfsXgJD4ojrHvGlTlWX9rDRDi0f0FsM
	64HCOguhKC/pnbdptC7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM4-00Clex-1U;
	Thu, 07 Dec 2023 12:19:48 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM1-00Clac-18
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:46 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40b595bf5d2so10291115e9.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951581; x=1702556381; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/847UUBKrJxQjcvEbcGghrvmsfONNtFOEIMLRYas9XA=;
        b=SKltvJjG7KVqxTQwepO2zLVDExJidZRbGxibVeq2zCYzhIihnVP+ul8zHzs7XeFRY4
         jS3xKAOuwF/epp3pdBsNekosST0NNClMHb3yPHenjNh9lpDY20vFxl2Ik+Fg3mEwbD7w
         wCuaLI0GqoSggfpKuR0pq2W0svRqc7hwaMFr79kt2B3fMWzO6IDP0R5t8RYoDE36d96g
         8F8nEoLgGnf2f7LgtHv/mjQEt/34XF6CxWPHzwPRQvr7m2+JpHDnH1muWEBuo1K5YYRn
         5jKwni0xpQfR0aMIdUioIc9BOFSmDhXiTXGOi718N1A9UNEzJHYLZyvE6IP6svykPxuO
         1+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951581; x=1702556381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/847UUBKrJxQjcvEbcGghrvmsfONNtFOEIMLRYas9XA=;
        b=dZSMOky81e5Q/r1lMCqmAWXB/iGoQ78Ck7s9K+ELFLte66nMH+moFLSsd+yn+wUX8d
         W1rwLNT55lrOG8WWNTVAsYf8ep5k5YWrhFD6MR+WjRf9H5OUkAUZvrVt7UTIUpEto9+t
         3Ry8aITuN+747STEfOt6HIH5cIfqtGSCRk0/9OFeFseRCN1qY6NNzOthSRpMFyQOWLWU
         exbEWvAGXZszj1O2BEEJmy3pz0yqTlXgNn5K3xC2kxiBAIW46D3DLmhL0ODQbcwKmk7r
         HxJLMFJD2b4Ck6P8vM6H3Vc9okzZPDOd8Mc9uk5JHmywpS4rPN0zCz78ki3JwyXqO1ty
         O1GA==
X-Gm-Message-State: AOJu0Yy560Prw7uIJI1Jz+aGxcJHplorEtEA++ic+PUf9G/RLJ0Tksuj
	Am4qIoRPcYXwmGjtieeQhFYlfA==
X-Google-Smtp-Source: AGHT+IGESRKR5AA2BcJOplRlThrGcNEPb7a2DM1e0LBvFzSxmhoeFJ5ZAjFbcSk8n4b8ZqkvXCe4/w==
X-Received: by 2002:a7b:c40d:0:b0:40c:2787:571e with SMTP id k13-20020a7bc40d000000b0040c2787571emr508867wmi.7.1701951580836;
        Thu, 07 Dec 2023 04:19:40 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:40 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:14 +0200
Subject: [PATCH v3 5/7] phy: qcom-qmp: qserdes-com: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-5-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5123; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=spj3SEZE9avoakL3mG/7gzlt0L9zUbhEjx52FhOjp5A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhSt3jh2LJYLeK0gHEe52rsw0BnQGkWnr3L+
 EPXPmv69r6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4UgAKCRAbX0TJAJUV
 VqdLEACOd10mVUjDZxM9rSCqgCld6oO/moT/lbW2cBemnItYIBGTD3jSU4NEC+VfCODyzDT+Ab1
 iAgCYc5PSS7R5cVLf+ZdgEq0lpcdIYjyhkpbbJMpiBgAD/8m9eqskhhMpg1s59OQ2MLy+zs6k0J
 rODzROj2P/9T2J3fnYCvaXT8YkBIESr1Iihv4qpzn+twoOSHlqwYv77tCpw52Y/mpAbeao3/o0W
 Te+eUBlKg6WETjfLaYMh9upZfw/Sxw1h49B/ukh7IaPDQCMuV/AX38Q7RCkMkDXtVmfghRmjuPr
 mK3HYM5AxHsDHd6C2GExfaePn/RcK/LTB4cFGvE1r3TcMhYjFsZfXBWkqD/R3q5fmRJqDPV+Y8I
 Afz9M+dIuslt3vRzAwuGQW89oMFeotiEzrUZ3YFpUKtaYz5sOWHc004oYGiU5PaI9wzIJeHO/8U
 hPzYFkzNFKOvOarKYpJlaeoDG/Nti4sZef4A02pBbrBfKE/LyxZjycULXP4H5q6Ws4R/9bLvpZA
 SJs1e7Mcep/hYppi+JiLfduoDpMNqGC9SwrRM2Ev3HuqWTuqaUwTb+wdcTU750mgy6tazO61Gf6
 3QsvJE/GN3a5PJl+9TjN7hU4ARv8Ua0gImXQzwqBO8PH46UnEGjsi8bu6TaN3/CDH7THeqs/v/B
 smlbyD4jFRN51QA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041945_391575_D8B1E3D3 
X-CRM114-Status: GOOD (  10.98  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 87 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 2 files changed, 89 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
new file mode 100644
index 000000000000..7430f4921477
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
@@ -0,0 +1,87 @@
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
+#define QSERDES_V7_COM_SSC_ADJ_PER1				0xc4
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
