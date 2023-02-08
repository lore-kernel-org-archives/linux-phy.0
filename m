Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF03C64EC6
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCAmuXark/INR9g+G+2Y3PYXSpSgPIYlmek5UPG1RB8=; b=SUKy7SzJrsnYyR
	yqyJ4oum0Qes9ysFkCrpda9JDx2OSrinUUWGoYr8YSLlYCSy9lppoHUWWOGJOuY4Ag4xQUM9KyqUy
	6pbmnA45dmKGv+ZxryRFVkn3m6nuaSM7LjjCmX3lIqPUvWYqRV0BbiXFcEQWmEWvgeQ/3Hy7v54L1
	A8zsvThPFIoBwNhOFI/zQ5cF6NkpBswm4f9I9bmTP9OVApKP+5R9McpxplDO5zDOFa3Wdqkpw0+EK
	qGt+Uc99tMsWFjUlRG1D08MHHzhHHYBR3fmQFhYGNwefrsmC+W8Lewgw6JjkTjhqWT6c/u4nIRShu
	+IOPClI1e3+wgjIQNCww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokX-00GXQr-Jb; Wed, 08 Feb 2023 18:00:53 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokV-00GXPH-7f
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:52 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg26so13933650wmb.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NuslcVzm4ovVkZpIesuPA6j9ljtQBkOK1Q3oSb91/SU=;
        b=fVGhN1GCVrZm1IcBbu5zfUziHCoDF5aJlvM4pA5UE6nK2j+kOYjAndUcaCLfzsyXNp
         EdEBPk6YixeQnkXDCf6fAiDauXY94bl5Q5rolcYF71cygHoLFTERE7+jzV4dCukV3yID
         S/H9ub9MMiM1pIuraqGiH2Gf20c++x5Y+jzc1yu6Kd3sw9hFVu03y24PnDUE3DFhNGK1
         ln1fnea/yBkg7qgBBq0n9V0RufqmmqR0xD/KYzFCge+UgCefDqa1pT6pKnA4cPpz0yCU
         i1ucHcgTms6iDOXr2xpNy1yppQr5MwEDkiPaU5hiY2oN9SMlZGlM4UHQNiuuey+1d29L
         dt0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NuslcVzm4ovVkZpIesuPA6j9ljtQBkOK1Q3oSb91/SU=;
        b=V8mcS0cuM96Dp1MENxLv55xjxm007+gslNLjF67mWmvC1l0gW7sHoM0GpuLDQeRVlT
         SGyu/gmr7pBJ17/1Rk/R8LYkaqVBJL3SLMsGE1kvgEbXLJ7vNZQEyJMMx6CsZ86CxJ7b
         5TXETZ71cFju452zwB2YgsrhBp99Eh8gdh2ugA6vpAYODG3AxAOVAfalOP85MsUMts+w
         QwUzgMJuk5cHfgJvdIDrvs2/3DWoZVLWkiV/ScAW2hkSW1jEX6Lj4A8I6Y7qJ1j1Ef9j
         FChkfkC90UnSqLRTqh+HOrn2x1/+c1P2dW+u+jl6PHwpy4UkhnUEDrQPTPCMG1+6Q2Wi
         /Qwg==
X-Gm-Message-State: AO0yUKXkbvz4MEgl8KdzuW02XrMCkQ8EK9s9F6PnySPLf4tQfO71dtS7
	HgsBqwn/UwcuLHFc3mgwtSuW6Q==
X-Google-Smtp-Source: AK7set92WA+nm2emR7icl29kIXPOxUUsKGuttEnEogPdmz9+uc4MFTDQsmOZpG3c2yGKpIIRheOQXw==
X-Received: by 2002:a05:600c:a295:b0:3da:1e35:dfec with SMTP id hu21-20020a05600ca29500b003da1e35dfecmr7399010wmb.4.1675879250072;
        Wed, 08 Feb 2023 10:00:50 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:49 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v9 02/11] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Wed,  8 Feb 2023 20:00:11 +0200
Message-Id: <20230208180020.2761766-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100051_293708_60BC2C75 
X-CRM114-Status: GOOD (  13.00  )
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
UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-3-abel.vesa@linaro.org/

Changes since v8:
 * none

Changes since v7:
 * none

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 18 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
new file mode 100644
index 000000000000..18c4a3abe590
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_H_
+#define QCOM_PHY_QMP_PCS_V6_H_
+
+/* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a63a691b8372..80e3b5c860b6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -38,6 +38,8 @@
 
 #include "phy-qcom-qmp-pcs-v5_20.h"
 
+#include "phy-qcom-qmp-pcs-v6.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
