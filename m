Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E6AC67871
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hx0n87FxysLLUaLqSZAEmFo/fiKS8sS6Z3HXQlF5Vv4=; b=SavzwOx9ZPqluI
	26cFb258IbvQCT28EQVAKlydFmyLBKx1STxrL1nf1yZinXswQsgOnFedePcTm/L+fRPWV3SwcTalp
	I73jcqO1M5zS2EhI1Jpe+Uwl/p2fhWZJVz1c7JDoxJw2Qt8ivad90XZLJEHhC2gF+0yCul4/tUgNc
	XzLSFFAQ5zzZRpj9Op04g6z3mrXH3QdVgpBtGQtl5xciuTve9eU5dHaMEdF62liaa+HtjKB9QDIMH
	OJqEXewhkoiRM4Kvyhsd871n35vGj7bOl8YC56RK2AecTS6iVufpbjNHASTzZ7qTRnUrS77xbI4ft
	tCwzhaGx7QhdSgHRyPlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHM-00F5eP-5D; Thu, 12 Jan 2023 13:06:00 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHH-00F5cE-AK
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 13:05:59 +0000
Received: by mail-ej1-x629.google.com with SMTP id hw16so32736419ejc.10
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 05:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJ/mTXQzhcbmtYl61/SWMZwrJiioaNH6gMen5Egc8ws=;
        b=CfRewCXnuCDeIUhq37X8RTuau+IyK1TTOF2nQVez00YgVFARF3bxNYE8027O8IqVwF
         Wp/jBxoP7hMNVD+jYudr/M4RmkZT+feXk2lbQJRn5tRruHMvPCeoVumyAEastIUDwluS
         1vtWkB++4i63LmvBAFeJ0oLM8BsQ/DLNq9+X01zOyHwe2D1AX137uSAoRKOuoV4f6OkC
         DVjS+0S/MUy9gnzE0iW1t8vJn1rQDwCAY6lnQ6lzPcjXee5VxrhUUrSpwVRmQfnWeK6G
         ZID5yCOnJCbWhQdd34w/VTNqzZxtr2i9ujdDDWKO6MO7bGy9WybftusDhDdsNEvlW+Yp
         ns/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJ/mTXQzhcbmtYl61/SWMZwrJiioaNH6gMen5Egc8ws=;
        b=uzoqAodq3x1bGLoP968RFM6DXSD5nicw7rgX7qoDSSdNa7+OxfqLruQJIxp3r4tRCS
         sV6UPhGly8aKMoPiMUCbK3LRZOgN+pkDaBNauYdcX6a4eTe4NKnZgtCRQjreOn7MtWkt
         6O2fUhJtl5LmP/DezkdMZUws10EhfOTb1SfdxKR3baR+2xdJq45AhJpceZQb9w1yhzwD
         LOOlHX8j/Fev4S7VmzP/AoHo5rxrGA4RaE3F5GJ0Kglk+XgMwdf1SCVzy5ZhUfOZYbUy
         FVBKAA/wnAajvKL9oDbLZPz3ISS8LzJegRokl5fPkQ6J2KaDSwqdlgzr8QaZIQQQS8B5
         p5bQ==
X-Gm-Message-State: AFqh2ko2HDp5jdYT+JGxE+c/3WkD05lhYGBX6JSCy3mXAs8WdYEAedMc
	VYHUCPTwM322XJTgcc2rsfHZng==
X-Google-Smtp-Source: AMrXdXsdHeOyTAwSssYmtpVXWaH8n3Zv+dvIbEogyBpuLR+LqOjz3+5YDiWQFjakOoc8Dxlg1ffc2w==
X-Received: by 2002:a17:906:eb94:b0:841:df6e:a325 with SMTP id mh20-20020a170906eb9400b00841df6ea325mr63748651ejb.9.1673528753286;
        Thu, 12 Jan 2023 05:05:53 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906318b00b0078d3f96d293sm7427668ejy.30.2023.01.12.05.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:05:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/6] phy: qcom-qmp: qserdes-com: Add v6 register offsets
Date: Thu, 12 Jan 2023 15:05:38 +0200
Message-Id: <20230112130542.1399921-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112130542.1399921-1-abel.vesa@linaro.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_050555_376307_569759F8 
X-CRM114-Status: GOOD (  13.86  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new qserdes com offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    | 82 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 +
 2 files changed, 84 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
new file mode 100644
index 000000000000..0fdfeec98d36
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V6_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V6_H_
+
+/* Only for QMP V6 PHY - QSERDES COM registers */
+
+#define QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1			0x00
+#define QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1			0x04
+#define QSERDES_V6_COM_CP_CTRL_MODE1				0x10
+#define QSERDES_V6_COM_PLL_RCTRL_MODE1				0x14
+#define QSERDES_V6_COM_PLL_CCTRL_MODE1				0x18
+#define QSERDES_V6_COM_CORECLK_DIV_MODE1			0x1c
+#define QSERDES_V6_COM_LOCK_CMP1_MODE1				0x20
+#define QSERDES_V6_COM_LOCK_CMP2_MODE1				0x24
+#define QSERDES_V6_COM_DEC_START_MODE1				0x28
+#define QSERDES_V6_COM_DEC_START_MSB_MODE1			0x2c
+#define QSERDES_V6_COM_DIV_FRAC_START1_MODE1			0x30
+#define QSERDES_V6_COM_DIV_FRAC_START2_MODE1			0x34
+#define QSERDES_V6_COM_DIV_FRAC_START3_MODE1			0x38
+#define QSERDES_V6_COM_HSCLK_SEL_1				0x3c
+#define QSERDES_V6_COM_VCO_TUNE1_MODE1				0x48
+#define QSERDES_V6_COM_VCO_TUNE2_MODE1				0x4c
+#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
+#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1		0x54
+#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0		0x58
+#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0		0x5c
+#define QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0			0x60
+#define QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0			0x64
+#define QSERDES_V6_COM_CP_CTRL_MODE0				0x70
+#define QSERDES_V6_COM_PLL_RCTRL_MODE0				0x74
+#define QSERDES_V6_COM_PLL_CCTRL_MODE0				0x78
+#define QSERDES_V6_COM_PLL_CORE_CLK_DIV_MODE0			0x7c
+#define QSERDES_V6_COM_LOCK_CMP1_MODE0				0x80
+#define QSERDES_V6_COM_LOCK_CMP2_MODE0				0x84
+#define QSERDES_V6_COM_DEC_START_MODE0				0x88
+#define QSERDES_V6_COM_DEC_START_MSB_MODE0			0x8c
+#define QSERDES_V6_COM_DIV_FRAC_START1_MODE0			0x90
+#define QSERDES_V6_COM_DIV_FRAC_START2_MODE0			0x94
+#define QSERDES_V6_COM_DIV_FRAC_START3_MODE0			0x98
+#define QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1			0x9c
+#define QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE0			0xa0
+#define QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE0			0xa4
+#define QSERDES_V6_COM_VCO_TUNE1_MODE0				0xa8
+#define QSERDES_V6_COM_VCO_TUNE2_MODE0				0xac
+#define QSERDES_V6_COM_BG_TIMER					0xbc
+#define QSERDES_V6_COM_SSC_EN_CENTER				0xc0
+#define QSERDES_V6_COM_SSC_PER1					0xcc
+#define QSERDES_V6_COM_SSC_PER2					0xd0
+#define QSERDES_V6_COM_PLL_POST_DIV_MUX				0xd8
+#define QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN			0xdc
+#define QSERDES_V6_COM_CLK_ENABLE1				0xe0
+#define QSERDES_V6_COM_SYS_CLK_CTRL				0xe4
+#define QSERDES_V6_COM_SYSCLK_BUF_ENABLE			0xe8
+#define QSERDES_V6_COM_PLL_IVCO					0xf4
+#define QSERDES_V6_COM_SYSCLK_EN_SEL				0x110
+#define QSERDES_V6_COM_RESETSM_CNTRL				0x118
+#define QSERDES_V6_COM_LOCK_CMP_EN				0x120
+#define QSERDES_V6_COM_LOCK_CMP_CFG				0x124
+#define QSERDES_V6_COM_VCO_TUNE_CTRL				0x13c
+#define QSERDES_V6_COM_VCO_TUNE_MAP				0x140
+#define QSERDES_V6_COM_VCO_TUNE_INITVAL2			0x148
+#define QSERDES_V6_COM_CLK_SELECT				0x164
+#define QSERDES_V6_COM_CORE_CLK_EN				0x170
+#define QSERDES_V6_COM_CMN_CONFIG_1				0x174
+#define QSERDES_V6_COM_SVS_MODE_CLK_SEL				0x17c
+#define QSERDES_V6_COM_CMN_MISC_1				0x184
+#define QSERDES_V6_COM_CMN_MODE					0x188
+#define QSERDES_V6_COM_PLL_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1			0x1a4
+#define QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2			0x1a8
+#define QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3			0x1ac
+#define QSERDES_V6_COM_ADDITIONAL_MISC				0x1b4
+#define QSERDES_V6_COM_ADDITIONAL_MISC_2			0x1b8
+#define QSERDES_V6_COM_ADDITIONAL_MISC_3			0x1bc
+#define QSERDES_V6_COM_CMN_STATUS				0x1d0
+#define QSERDES_V6_COM_C_READY_STATUS				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 29a48f0436d2..70b3bf7e5e37 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -21,6 +21,8 @@
 #include "phy-qcom-qmp-qserdes-txrx-v5_20.h"
 #include "phy-qcom-qmp-qserdes-txrx-v5_5nm.h"
 
+#include "phy-qcom-qmp-qserdes-com-v6.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
