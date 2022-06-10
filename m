Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0464CCA47B
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHN8a5wY94Ae7Zj8IaoT8TbaDo4NE+J2DqzDzsnCBwc=; b=tlpe/c+q+MER3A
	Nb1uDhlnQhgNrWbBZG4EOdmPeQFA/ew4A3nk1KY7K77xudzqEhThR7VlAmHM1PTaiNuPT0HpBMhWN
	hyXmsLs96X6qRxi8L0YXVKcCpD4zkouaBpN2Zd14pDShJUZgsHoHkCOzERUhjYy2QgoOMe1+y1DJB
	dR3j9YG6ufdVqC2p0bvBFjW5bhDTK8r3jDkFRnL73Poy1H2+zxnkPyD1VNjNf58NIDOYwFWIEExeH
	sVQRSTp5D0QgV1QArvtXc+mncKCLWWZw7Q8lEy5F6UplBCOznyBZMdWxRT3gv2aTehkdIKYLsZCQA
	sB2QYuPdONaoaudVAxew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1D-009UxX-Cq; Fri, 10 Jun 2022 19:10:03 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk19-009UpL-Mf
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:01 +0000
Received: by mail-lj1-x22c.google.com with SMTP id d19so109347lji.10
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OMhvoows2nRxYeovzopRV3kchz7EG7WvEIUgubFlpR8=;
        b=g1LWpwKMFxFiY5q2pYfR5XTLCJngDzoJ6uwVBGlsb1PydfIhKzmHe/eFkXM8PCWg44
         3p1ti2PH2wePMGTO8mAhdl0z6CEI5dLEv0izY1CYIy1PL/T0YROOcw4XvsHxf3XoxNuV
         wTdnaKw7UMa1zEW2APqFjG4rkUBXe9qsduBvdOI44WtH+AUVdRjdSE1G2r+YdxqvnVEb
         CYILLrGv6Osvfvuo5LGOqTRNh/revGA9s8gOUlTsY9+WdSnoiX1Xg8xNrO4zE776CXu3
         KTbCpJpaWCDkkrPMuDi2cCNpjzz2e4aoDYBqWoX+44WxrZvaZ+qaHjyEkcdJmXWyN/iw
         yNJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OMhvoows2nRxYeovzopRV3kchz7EG7WvEIUgubFlpR8=;
        b=iZxc8qt7X/5jE1bguwfS3Ay2SDrnqZjZXrGEe4ejENiMIztiIIr0FvDEx026EqxXxr
         arICkvydWp7PHbbh5PUOEQPrOSUqMmHpyup3q+s9uAFy0CxcnEsmM/iWw30hVxobLq0m
         DtpGhm5X4XawIP8WVF3ufTZmX2uG3i3taegPBsEj39+JdE/9jMEJ/llftrkiy3EFZf/j
         1+dz+zdG+7crTQF8U9MtEiL82tUeZaLgeFpuIgR0zKcR4RiFVfj175cW1pY1PclZCHMI
         NPtc/3L5syASLA/9/2IkhosgZpedHDOQXFbW7sRQli7myKde7xox1zanGWoIuOoFJ1qI
         2PpA==
X-Gm-Message-State: AOAM533i328iFPiWEEt5VudQbxF9OM8fO8DxYbeF4+e1EG7+yi9g0DRR
	T/z+pEfwsRrV432MOCtG28O5DQ==
X-Google-Smtp-Source: ABdhPJz6ap4U3NoJF/DQF6gD7FGYK8+rnYdTmN0/4NMrB1P6X1xOeEZfQD1POUe7Zv652Pvh/QOrAg==
X-Received: by 2002:a2e:80d8:0:b0:255:8307:1c87 with SMTP id r24-20020a2e80d8000000b0025583071c87mr19620978ljg.169.1654888199162;
        Fri, 10 Jun 2022 12:09:59 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 19/28] phy: qcom-qmp: split allegedly 4.20 and 5.20 PCS registers
Date: Fri, 10 Jun 2022 22:09:16 +0300
Message-Id: <20220610190925.3670081-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120959_759037_F6851F75 
X-CRM114-Status: GOOD (  13.39  )
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
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    | 17 ++++++++++++
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    | 17 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h | 15 +++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 27 ++++---------------
 4 files changed, 54 insertions(+), 22 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
new file mode 100644
index 000000000000..af273602998e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
+
+#define QPHY_V4_20_PCS_PCIE_EQ_CONFIG1			0x0a0
+#define QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
+#define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2		0x0fc
+#define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
+#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x824
+#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x828
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
new file mode 100644
index 000000000000..1eedf50cf9cb
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V5_20_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V5_20_H_
+
+/* Only for QMP V5_20 PHY - PCIe PCS registers */
+#define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
+#define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
+#define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
+#define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
+#define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h
new file mode 100644
index 000000000000..08c3dd115488
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V4_20_H_
+#define QCOM_PHY_QMP_PCS_V4_20_H_
+
+/* Only for QMP V4_20 PHY - USB/PCIe PCS registers */
+#define QPHY_V4_20_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V4_20_PCS_EQ_CONFIG2			0x1d8
+#define QPHY_V4_20_PCS_EQ_CONFIG4			0x1e0
+#define QPHY_V4_20_PCS_EQ_CONFIG5			0x1e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 1f8684c87c06..cdbbcf6b5686 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -32,11 +32,16 @@
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 
+#include "phy-qcom-qmp-pcs-v4_20.h"
+#include "phy-qcom-qmp-pcs-pcie-v4_20.h"
+
 #include "phy-qcom-qmp-pcs-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
 
+#include "phy-qcom-qmp-pcs-pcie-v5_20.h"
+
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
@@ -121,12 +126,6 @@
 #define QSERDES_V4_DP_PHY_AUX_INTERRUPT_STATUS		0x0d8
 #define QSERDES_V4_DP_PHY_STATUS			0x0dc
 
-/* Only for QMP V4_20 PHY - USB/PCIe PCS registers */
-#define QPHY_V4_20_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_V4_20_PCS_EQ_CONFIG2			0x1d8
-#define QPHY_V4_20_PCS_EQ_CONFIG4			0x1e0
-#define QPHY_V4_20_PCS_EQ_CONFIG5			0x1e4
-
 /* Only for QMP V4 PHY - PCS_MISC registers */
 #define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
 #define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
@@ -135,20 +134,4 @@
 #define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
 #define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
 
-#define QPHY_V4_20_PCS_PCIE_EQ_CONFIG1			0x0a0
-#define QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME		0x0f0
-#define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
-#define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2		0x0fc
-#define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
-#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x824
-#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x828
-
-/* Only for QMP V5_20 PHY - PCIe PCS registers */
-#define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
-#define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
-#define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
-#define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
-#define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
-#define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
-
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
