Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0ED9C678D6
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKzH5iuAA+CcmuBpHIhkR90JQlGRlY17ItTFREOMhUk=; b=hkKcK/WNKyvP8I
	c9TjX7XRsmRG+d/otGV2YiDUHuFfhcQZdFtPn1/G2K6KPTtcNoM3Dw6B7FQ66CiZvpu4KPxmRbUi3
	JCp9SR84ABWJFdvbfcEfeYKE+0xFUfYlUBnR851/2IoWrk7XQxwBb2Us1BHs52TausBFITb6aquVt
	CFWopASeTT2DiEyrvmi6flT5CfIC42opYK87Kn29xK5PUWOLlpEQ6LblO1BuUnO9WsYQQeEqrsInA
	8cNwtCxhsK2tIKIfDr9+tPfpixAPvxv8m75tbMudt0Xt+9DxA2WFFmYJMDKHIhY9J6qAlagNf+BYZ
	UO4jyQbR/C3z/Mqpu+Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXi-005EGO-0p; Thu, 19 Jan 2023 14:05:26 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXY-005E8M-UE
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:22 +0000
Received: by mail-wm1-x334.google.com with SMTP id m15so1614270wms.4
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QyeL13YZKrFZSeb2gDbbHxN4JX31WKlESF/rHFow7sE=;
        b=ZRKip5HVUdnjlhj+OzcBXkF9F4RKUdb08F2ztKFvoylRckf8ggAXeIZ1QKkeFYnDSz
         qMlJ7CHRZuJEzk5VvE9SZpxKz+0lPlrIOd1ZxaXs0EUxE/ma65aPqyWGjvTVvNyPvjCR
         pmVC6zwKLe0/Fdqt3SovGMatgXWBzkCdcB4FHYnCCC7nWkVZGATZSact/cozycSOlBH4
         Xvv2Jdrb8Ja86ZtkOrUzC3+ShwgmF5nQQEgrr4SOwnaUwWgJz3JE4QaQ67KYDMWgxNjN
         nxxrOQbeK/2/Dh5WKh0lqRpCEjjeJD6ktWLtwGvo2/qJnOB7cr1BLXH21we9AyxLBHd+
         cD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QyeL13YZKrFZSeb2gDbbHxN4JX31WKlESF/rHFow7sE=;
        b=atjGLHMdOGwyUEIWxhvAJk4OZQycwFq6dyoldZyPHH7Q1wEhGR4PE2FHXtj1xRniw5
         NOvjJDcqzrXjhxe/lP1/bCM5g2ctUX/Lz6jRsuwYMNAjqKf9xc1IZPBy9I7z4Gkfwa11
         UmBO7AXCiHwOtR19e0GelF9W0hmOdpgHapKY2O761of9YijIWznuXSJZvF7jhwKtE4eT
         sEUNCuX4xSwK17h5BZp/y5a28nXlC9NPbVQGuDfJEloP6renNFWWVT95ipgqc64kuwXO
         F2AsgcYJ/OjeZDW849VJLiPB3/g2tfxS1tsaSILR5ZecUhkocLvaadhxBB4pxuHyMBI+
         vejQ==
X-Gm-Message-State: AFqh2krB9o2WOC1J1Ngu7EjWq6QFNRW3nuXZtVidwghIKkAXamY4T41+
	ZFeFz3Lvn27WiD+lGQ3xl0IMPA==
X-Google-Smtp-Source: AMrXdXub8fPxVZHqC/c1o/KGHIoo28vr5rZznO/eOHmKkx1NBHFoAto40rKERcZeMapqzaHLWD0RMQ==
X-Received: by 2002:a05:600c:a690:b0:3d5:64bf:ccb8 with SMTP id ip16-20020a05600ca69000b003d564bfccb8mr10321074wmb.12.1674137113049;
        Thu, 19 Jan 2023 06:05:13 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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
Subject: [PATCH v4 04/12] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Thu, 19 Jan 2023 16:04:45 +0200
Message-Id: <20230119140453.3942340-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060518_606543_1BEE064D 
X-CRM114-Status: GOOD (  13.27  )
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

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v3 of this patchset is:
https://lore.kernel.org/all/20230118005328.2378792-1-abel.vesa@linaro.org/

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
index 21727e90fad1..d4ca38f31e3f 100644
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
