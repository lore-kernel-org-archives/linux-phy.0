Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5BDEC61D97
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhB9yjQx1igF+yLhxcRmzftFU4pYTfmSnGIBvxmSwfw=; b=DK1jgvqHZuyabw
	PAydAMlgwF5PF4CS+LQiHRo6ZPJit8DU0WTtAIUcspswwzqm5bOW6PHix2Dl3TcTUSobsEQck4RYF
	bXm5lALFEMrFAQCkrWHuu564Wdt+2C1oIfDG2LEr2AdTbO8Gsaq9wkW9SWlbztruMzAo9m3Vycqn5
	nqx8VxGQki69kwc7uFVAiwUECik0RFoEdLz3iTnp9/V40WZNtf5UlqSnZ4j9aweIWx3dQgZ5cAB5r
	q311EgfdssTy3izIF651nh5Cy+WWpacxBXraLVEfB8/4m3EykS+rzH+YSz/tJ997sNLLg8RVSEkYJ
	esWm9K2G1hbBj9ENY56w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi3-003n1I-6f; Tue, 24 Jan 2023 12:47:31 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIhz-003mxP-RM
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:29 +0000
Received: by mail-wr1-x429.google.com with SMTP id t18so944220wro.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOLdX2IXRYTY20PyypvesYgDylYTyEHt8E13Ale0psg=;
        b=oxspeLDR04fqlrwSXywsGdmEyJeGSm2u2YCoo3GXNTKRJhQRsjQJnOrGDuYF3yiGEU
         MGBonIdq0ztoEQ35WwCJ9dZQ4pXMn9snl/yrMu39PWKMdbLRHfB4IullJJZKhciGyTG+
         xWa5FA0FFN88PgKuexOQi19d0sYtwNI3DbZG3nWXKwRCgKNIaSIhhF8DDW52R75CFvWz
         /csSoJEEoc1z28nmHQq1nEfMa/tqFKRoafQ9Q5pYgKsk2AV4/9EpN8lsA5i85IAPkaV/
         pYBCDWDJ2PPqL3IWpYQnrXU1uGeCRv+tTuKMC20vUPk/ZWNK7DZ48f9MexXeqqwiMUVU
         7K3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JOLdX2IXRYTY20PyypvesYgDylYTyEHt8E13Ale0psg=;
        b=znFXkkDenhwVDkC84Yik/mmW/ePej17ZFmd1tdOXei3QS6G3jh2lDuJs2McZ9+PdfE
         59J/3lY7qOnSHT/NT25rFXkw6tRCkIHIb+/MeHpqPX38LT3AIslq5v5pnz42SX7jYYx9
         joF8qVW1Z1Yt2ASf6mkDwFhxUYTxnygF/2DxQmfQjY3YWeO1CkI2XCeG2MARhQ6od1qc
         HWdagdknBHO5Q2RMgmLb9fUdf6OvxovrEkfLhChkCIn+A4fBOG9ZZz32MGORbti1ISQv
         d1oOqRlU17kKJDgWV/3jAQQ/mnSb3p57ia9SZy57MCSxTVMq5lpiyiBAHnnUvUkdpdIO
         7qNA==
X-Gm-Message-State: AFqh2krf9xwLSRIw8rihrD+o145kJoLw//RDrU7Jx9a+07BdJW1V61lU
	rChFd+X9sfiAa2z3X3/Z6iJtcw==
X-Google-Smtp-Source: AMrXdXvvRscGs12UD+a6fDNv9NbNKbc//UYfn5z3qtzp1W1rYe0btKKDyr3kKlMo5NrQXeQQzUDXXQ==
X-Received: by 2002:a05:6000:1049:b0:242:15d6:1a75 with SMTP id c9-20020a056000104900b0024215d61a75mr22177709wrx.66.1674564444108;
        Tue, 24 Jan 2023 04:47:24 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:23 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 02/12] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Tue, 24 Jan 2023 14:47:04 +0200
Message-Id: <20230124124714.3087948-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044727_903247_FE1D62EC 
X-CRM114-Status: GOOD (  13.59  )
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

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-3-abel.vesa@linaro.org/

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
