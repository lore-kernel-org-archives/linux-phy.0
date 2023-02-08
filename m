Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F63C636D7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ec8+V3gF8kL8dgGWoBQEU+qnpedMZwu0qUdWuhUdhmI=; b=c/eNpIbKZy9nLR
	BFEq9YGBvsRPWniqm4jBpgSjMIPVEgM9ZgeRz57xHvCY68+R4t5yNTy9/E11l96naGqF5j/pAXTyt
	eJYHtamBbt9/6xDW5UcPLh3uncHHYf5BaPl5tAgm364TbP1QU2L8o67bHH3UZV9NLgLpGAjF9phLK
	DZ0swRv27zoUeyS3HyOlrpQC2dE+UlfEocD/Yits39h9TCkE1UPPdVAjtEcvk/xf70QYT476hpwnb
	5rIBH0IVDlcIb8bjVaQ04ejgqONy/P1Ts20YY9NACK4PZ+9TE/nkU0PKnyGxPZUTbvh33oHPnp3TA
	pw0nES0dZNYynuwX15Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokb-00GXTm-UL; Wed, 08 Feb 2023 18:00:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokZ-00GXRK-4i
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso2059253wms.5
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/2ULfqaWtAXZsjMHKgQGvS+d3WjfdWm7pm2QzT86+1Q=;
        b=JAcWPyMrT1gIswMyagFQ8OSbzsFQR168lSLRwRMsHBc8jR9PaoOrLOD8dVvifSaoYl
         qvDJv7JhIjUg4URX6LiyhQLY/6JZt5hNFn4OUnCiBP8yA/r9abJCIhYK4+rBSlyDOyhO
         OYWxij1CvgaJiMH8E76Q5k3Bf7T36cL+o3KFdc8MycLfAPRjSkDWoWoavY/IUb6xB1SR
         d/Y41/zi2xLLrBona7QSfMpFmEJsKfclUJBGvF1gETvV4+kVu943dLWqfONQ/2amtBNR
         eeBFDvFBfIRLFET7OskmjV/BXTIbH6WtYG1um0p1ImUmQFcWSBe9YqDgjOiX9RO1pnns
         fOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/2ULfqaWtAXZsjMHKgQGvS+d3WjfdWm7pm2QzT86+1Q=;
        b=GVAtBROT99GZ++J9RRTqzsnq6k+6L6PASu6tpsiSIfAtqx2wKy40BVck68y1tIndvo
         FpN6/vUNtGYY2uxUTQvnM6bH1zD9Tzq22xTFqQQ9ONeNanEWNfjdk80enH/L+Qchn25v
         0bI9nHQFYatq93OaVJdK/RZFjIq7WeHKhmxCbcokYv3GvTthHa8V3snNwKcgcUZ4Gwze
         B3TPMg4OsYFKTdFypumMiczroanPoQ/YRS7dT3xk+GLOB8luF0m/AyZSdEd1qtJ44Po+
         BuUtIcdxAus9RwkHeFUZC70CBmO/fKVpSQixfD8GquM3ueXu06nnhKelgzW8N6hMOuSg
         OylA==
X-Gm-Message-State: AO0yUKUujE0ZpA5/WDehYYC3P05f/O1rKlf68TyXm2rqDkcww4uRerFd
	s4+qPq5nRo+OyC6c5B+yLfo5HA==
X-Google-Smtp-Source: AK7set8W0N68Y8OoOwDpG/GwtUos2odmIiJjsigJPt1vMtKkbI1POjZam2roD3GAVdHdZ2fSH2xwKw==
X-Received: by 2002:a05:600c:19d1:b0:3e0:15b:47b3 with SMTP id u17-20020a05600c19d100b003e0015b47b3mr7486577wmq.32.1675879253472;
        Wed, 08 Feb 2023 10:00:53 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:52 -0800 (PST)
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
Subject: [PATCH v9 04/11] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Wed,  8 Feb 2023 20:00:13 +0200
Message-Id: <20230208180020.2761766-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100055_203927_CD270D5B 
X-CRM114-Status: GOOD (  12.95  )
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
UFS and PCIE g3x2. Add the new PCS PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-5-abel.vesa@linaro.org/

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

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 0e7aaff2ecfd..05b59f261999 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -29,6 +29,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v4_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
+#include "phy-qcom-qmp-pcs-pcie-v6.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
new file mode 100644
index 000000000000..91e70002eb47
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V6_H_
+
+/* Only for QMP V6 PHY - PCIE have different offsets than V5 */
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2	0x0c
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4	0x14
+#define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
+#define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
+
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
