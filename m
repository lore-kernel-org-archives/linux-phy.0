Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F72C636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOv14seyyxVPL+mJOlgx+igKEojNFVCfzju4Kp6RRe8=; b=hmMsGztQp9H/LO
	P2Shs1+GrjB9V17I9Dx6LSqjWt5aK962tz4K464NVJh31/fDKKchC4UcCUrX/OdAX4huIbrv15eLX
	7cGgB0NtbFKZUsSGUux6HGe2ctAoUeypqITuTT1Sm+S6n3zaGPmcSlGkQVPsKGipuq/a2L89ydm5K
	WHoZ1CyPVBLq/a8Lm+yhuO3Dwlv+6FXV63fBgH0owIkI7BAeSj975PBIN40xuERu/AH4JtkiX4vx/
	6KU9/px3vBFQBCPOTiT53KsHTp5YRfNjKIn+mabIKY6IPVmzbi1s5IX9tqGIseqTKiLzWVYiPX6ko
	ommjoYw+lezBkn/8DLMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs8-00FpIg-Qm; Thu, 02 Feb 2023 12:39:24 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs5-00FpD5-V2
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:23 +0000
Received: by mail-wr1-x435.google.com with SMTP id r2so1569399wrv.7
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBMDlVycO88mk4Wf22jm8g0+L2Ufy3vv+GvtkJwrjQU=;
        b=hqlKJZ/XDnAGNvA277xfk9yQ3k1iXev0ehEqfLPZLaFhdihS9FWNqdmE/HEnFjb6Zg
         133k+ycYe9pGig4HDIbT4kb9fbhuD7Tufz6Io3VSRjqSsqRVEe4RDAEAJgnDEdkqYBUh
         H9ySG/MBuy3dV4p5/LG85+MY93mxFOrgFPNOnO+HqBzf9vIrsz/CWz1fyuSlHNdAGDka
         yX9X6GihatDIhWnLBQXdhfK5BDBs3atPF0Jwmr3d6OtwjasS4ZzOEUfFDtYy1jICR6Dg
         YbKPKUJx9qNQbJfrxrkbzAeUG4pPhR5DeQbQCqrGUGhDQwdZsnLCX+EcSw9Zht4GkPAT
         ozHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBMDlVycO88mk4Wf22jm8g0+L2Ufy3vv+GvtkJwrjQU=;
        b=ja8IRbxsUYPtHzFgMS9R/VsZRJwV1i2kb4coQiwL21CSVEvdpa9rc0JEHbsWgP/hCf
         hT7n5x8C5cGXMDiZzE0Pt0ap8xXcuVAZ/SeLIZwK7V/lz3JSsy8QHEvRiowj3niG08tb
         PldHmMfTw3JpQm2w486TySJgODH7OWkR7ahJnuhfFPxYt2B8sFtwrnfYm8XoCcpaGQtC
         ttskU2DEebVZ7AsoWSHSVVItwzS6keVFx/Id5CYuDSic+XKyBwHbA0HHFQcWLtaj+lFt
         XErV2vkDkg500SvxS1SXhmhZAPCjKcqp+RMOOiUp5om4zbJClmdxcQ/sSy+3BJNfrBI4
         qDAw==
X-Gm-Message-State: AO0yUKV4r266Tzz2X1ZG8UzS9P4HGsftQ7kfKwUD8UatZtXBDWFruXq1
	GyxG9VLNSqeVD3/y83o8eBs1IA==
X-Google-Smtp-Source: AK7set8TdQenHIIRITgNdybZLunqgxLiXVKAWN2ckD/8JqgLmNIP+/1q10q1NJADzZkS26T8v7KC1w==
X-Received: by 2002:a05:6000:10f:b0:2bf:bf36:1604 with SMTP id o15-20020a056000010f00b002bfbf361604mr5143028wrx.35.1675341555811;
        Thu, 02 Feb 2023 04:39:15 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:15 -0800 (PST)
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
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v6 03/12] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Thu,  2 Feb 2023 14:38:53 +0200
Message-Id: <20230202123902.3831491-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043922_022549_5AD38315 
X-CRM114-Status: GOOD (  13.24  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
PCIE g4x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v5 of this patch is:
https://lore.kernel.org/all/20230124124714.3087948-4-abel.vesa@linaro.org/

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


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h | 18 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 20 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
new file mode 100644
index 000000000000..9c3f1e4950e6
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_20_H_
+#define QCOM_PHY_QMP_PCS_V6_20_H_
+
+/* Only for QMP V6_20 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_20_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_V6_20_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_V6_20_PCS_COM_ELECIDLE_DLY_SEL		0x1b8
+#define QPHY_V6_20_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_V6_20_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_V6_20_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_V6_20_PCS_EQ_CONFIG5			0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 80e3b5c860b6..760de4c76e5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -40,6 +40,8 @@
 
 #include "phy-qcom-qmp-pcs-v6.h"
 
+#include "phy-qcom-qmp-pcs-v6_20.h"
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
