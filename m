Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB75EC636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS4KPTEgkg2duNtps/t5frvG6d1dCRQUueF7vt7gepI=; b=0oekhf1RpKcKSb
	WLF3k/uHRlhbb49jxTnaH68ggfykKgf7VSE+z/UaGEIkeH5H0WkRA/yR5ObpjCg+6s0RbHmlfOCj5
	2UA6qsTurmkUVDJ6utd38TZhdMR9WsTLLV1oVef4jJw8pOjxigRG/75hudGyBj1fOib6btKKFpar1
	FBSX0FMiGc38+x4Pdi3Ysr7Cq/VI7dMTxUnSCg7gEOVW3/fJvqhpK/cJ8Qvsyp7+/DW4A3HUtZmsS
	j37hmfbu/fZD74xHxE3Gh1OmCp7PffnRvA14q2T5YV7awok8kVsxl2c+69aZvuYpa4gjoxMZ8wu28
	MXTNQ2Ua7zeZJekvIMcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs5-00FpFA-Ce; Thu, 02 Feb 2023 12:39:21 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs2-00FpDR-EV
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:19 +0000
Received: by mail-wr1-x42a.google.com with SMTP id r2so1569498wrv.7
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=evUJ0BtoNRLcEsnJaspA/+zDJwRp6qkKXdDbMhL86e8=;
        b=wlxcgVWXHVHFw9GecNk4NSKCVYJD5dqGFF+5Ve3xgjIjyKLoC8F29rrBkJafs1kPyc
         kCy6RTxldArmPEhYyh5LUcEC8ZGpErmE2M02N4YKTheDLaZpR9px0/gyAakfHt8WAgAZ
         rALfSg5GH5uG8nXc1rreWTX6uPpIYxwJn3evkvh3sXsu9HKZzzztRgBfSmhMFBpZ4ocE
         xI0HmrKd4rlhwmGTsfwWQhlgPtRkQT2R68lMYBo+wpMYjZRPIFLcWaXjD1Fe9hi7DwkA
         stw6jmE1CvsSw0FgOQhxoC2ob9lrwzWR7iUcU9QPsXLJPsEP1RIdXXw+4NQYxqn1LBwE
         XKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=evUJ0BtoNRLcEsnJaspA/+zDJwRp6qkKXdDbMhL86e8=;
        b=GKluYsoSqOeUiYl+y8S4klRB4IxUQkweSNMtnOfCJbidOYw/HTyXhYmTCiAc0U8W44
         JLwIJQJpS2xQwfFNPs/pj988Q7Lj0SjLFSxd7Ih0oFtphgAx6kjwWDakpEfNgY+jgQdt
         x8s6t4CHir9iLJvF3ArdHMtOwEv34X/zUNz3SvHu30N6NNQ0G2UVnqQJn9aprEB8RWeP
         PurDZKf+syB+hUikNXPDxj13MUK4rknWvlTVC7JT1pwlwmnx9FbC8QH9g5cxGulK0rak
         uhAevH0htz/CDgWKDw8VpY/U1+qYqQXrB82rI3QTybAbQ/PojpBiUSsYxr9VT1D6WiKP
         nFHQ==
X-Gm-Message-State: AO0yUKWQ3qek84aaCXrF2nd7WplcDzcrVGzfwMwbcqHSVivk6ARyiG3C
	YHnU2i72CQOyCqeeDyV47M1KMg==
X-Google-Smtp-Source: AK7set85GUUjRUYmEqmwQnKBLNmpTMfWaYic9nHqjxfxe5BH59qaaDiBCiprZrA5NB9nxaBw3GLiHg==
X-Received: by 2002:a05:6000:613:b0:2bf:c319:d1d8 with SMTP id bn19-20020a056000061300b002bfc319d1d8mr6094995wrb.42.1675341557292;
        Thu, 02 Feb 2023 04:39:17 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:16 -0800 (PST)
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
Subject: [PATCH v6 04/12] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Thu,  2 Feb 2023 14:38:54 +0200
Message-Id: <20230202123902.3831491-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043918_503900_09778986 
X-CRM114-Status: GOOD (  13.63  )
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

The v5 of this patch is:
https://lore.kernel.org/all/20230124124714.3087948-5-abel.vesa@linaro.org/

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
