Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC0ECC4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 08:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vUfNzY5FvtzcSP5de2Vfxhs2UE+CofSaMLRmrfGYxM=; b=DGHlFN4QA4c4zR
	9ZNMwzyEfI5ORztY9z2Dy6f1nRN/PXjCT0aO7u1U5vOobPUkCSJnZp27cjWGeblDnQWIYVSm5Zi6H
	LsLjzQCdeYohrekunq/pjR2X8YGr0kxZ1UVjsbmn/MmJXGgfMCVRuMhY2LaLw/uA/wA5YjfxcMCCJ
	+FFi0DSE0pNx+E3U1QzNe6qgxEkcyhZp3fhumhmXM2JmSlqjZBm8TDq5WC+MwNe9DZ0djEAtf/6iX
	xhiWS+J+j4wkGx4dGELxt3DskiFVVJ0XNLXuLI+lxBOaN5orwKg8I97DKV/mdG5oTZkQNP88R+iHj
	1dAoqly3ByEgFGwiWqkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8xb-008oyy-BX; Wed, 02 Nov 2022 08:18:55 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8xY-008ou4-HH
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 08:18:54 +0000
Received: by mail-pl1-x62c.google.com with SMTP id y4so15880587plb.2
        for <linux-phy@lists.infradead.org>; Wed, 02 Nov 2022 01:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvETYdbc76kEW0rVObCekapqGD6Z7e93imf/1vvzFKY=;
        b=DHTsrpz8Hjy0gqmYkg8k+jHJGJabu3TzJtjtNmVVvza6+bFvIPY21jau3DuWz4eNg7
         pQhawK7BzpTAHwmjLolIhZ3Eua4JM/ODdv7v4+rrqmGs6rpGsXzV12ev54nEpz16OlOq
         lE7C/3HNI1/uioDRxWQVU4AgGiIREkQWmrGUKp9nDOECn4edbS4OKTNrm5x3TBrcz0nn
         zC22SqrT18Bh8gb5vD3RdDPvLy7/0C7SD06FIPlyr+aQV0vKwlNo2uhhSwj7fZQhUHhA
         l+vHuophjGRNqZFI0ESi8hcKRyP8SqZw1xhJw1WSi+6zEUKLWuD4pH3jlnyHft5NMM0j
         5zMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvETYdbc76kEW0rVObCekapqGD6Z7e93imf/1vvzFKY=;
        b=XQMIMrslGRaHGUrjp/AVlRsS1+x0XJzXLMq/pQhqCTgoxWdG579IIVXtpZ8m6MaBtM
         kHGRqrlYvirOlYkmVCEhTEaND3RwsEKa592oYf68xyTaJ18THuFN24H6OwbCN6xu3ms1
         XjnyQ00e1jk2JpjA90Q0ssWjYndrPN7Zo9pbw53Ss8Yi+d3Ysx4OMMeijPPiLXO99HsI
         jDnBbIxLn+InlMSebBr6HaHi9C7us40PynwSuN9IZMhjvKZoXVJliQDJK4to1m3ZC7MX
         Z/bYAyL9B0SU1/fLcMNHJIm3cuSSWuuabNLN2h4GUL6qipdeR6LZ77R7YSqc7GjaUDOo
         Pxiw==
X-Gm-Message-State: ACrzQf3zi3i3htPdxu13DJWN2WGOUuZ03HOqhFkqzgg2S41O/IFqkNk3
	3KvJAuBFqw56EH2WVkJR0/66
X-Google-Smtp-Source: AMsMyM40LpepuHXpzbdSqfp4zIzIq+yFWe+KUkhhol2oFVylhXYKiXUjPwHxcHkyyTQzLYRA+vxrmw==
X-Received: by 2002:a17:902:b944:b0:187:28c4:69a3 with SMTP id h4-20020a170902b94400b0018728c469a3mr12132052pls.134.1667377130498;
        Wed, 02 Nov 2022 01:18:50 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.178])
        by smtp.gmail.com with ESMTPSA id v18-20020a170902ca9200b00186e8526790sm7635119pld.127.2022.11.02.01.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 01:18:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/2] phy: qcom-qmp-pcie: Fix sm8450_qmp_gen4x2_pcie_pcs_tbl[] register names
Date: Wed,  2 Nov 2022 13:48:35 +0530
Message-Id: <20221102081835.41892-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102081835.41892-1-manivannan.sadhasivam@linaro.org>
References: <20221102081835.41892-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_011852_602861_B8FF2459 
X-CRM114-Status: GOOD (  15.00  )
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

sm8450_qmp_gen4x2_pcie_pcs_tbl[] contains the init sequence for PCS
registers of QMP PHY v5.20. So use the v5.20 specific register names.
Only major change is the rename of PCS_EQ_CONFIG{2/3} registers to
PCS_EQ_CONFIG{4/5}.

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* New patch

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  8 ++++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h | 14 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 3 files changed, 19 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9473f63d2c1c..71bb86c3deff 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1289,10 +1289,10 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG2, 0x16),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG3, 0x22),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_G3S2_PRE_GAIN, 0x2e),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x99),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG4, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG5, 0x22),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_RX_SIGDET_LVL, 0x99),
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
new file mode 100644
index 000000000000..9a5a20daf62c
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V5_20_H_
+#define QCOM_PHY_QMP_PCS_V5_20_H_
+
+#define QPHY_V5_20_PCS_G3S2_PRE_GAIN			0x170
+#define QPHY_V5_20_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V5_20_PCS_EQ_CONFIG4			0x1e0
+#define QPHY_V5_20_PCS_EQ_CONFIG5			0x1e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 26274e3c0cf9..29a48f0436d2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -38,6 +38,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v4_20.h"
 
 #include "phy-qcom-qmp-pcs-v5.h"
+#include "phy-qcom-qmp-pcs-v5_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
