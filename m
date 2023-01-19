Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79111C00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+PDOBH/Y0aV2d7VZQi307Fc/pe1KybsxWZSS7Cs1u4=; b=e0mdqeDP5d5Ijx
	H1ldFEqKvNZkICJiGNvXVPpmqPdkmslLKmiQCNcLQVUYgAJiuX/El7AQVfbVXpnjiLLEELAdvQnGL
	lJEh3sIu3chzo9RKDTZUe0xJvn3IuBz2m4iZ8ZH3Xbd1BjazdR8nN+DQIImdBHphE2xlB/L7CXxtT
	45tkTuzVJ/68bI8LqVri/r0pLf5iF7tIb8Zu5yHU733wLttMMg1vVbsRWTZUYHMAgvK5M2qq2bJOo
	e92j6FZCN7mJvx64kYuHI4G8i0hGi4Pep0dzvYCpIUoDk7f0SDl6bA6dTKQZTDsUPRL9Ts9oDkM5r
	6/3K7nTwatd/yP743b0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXc-005EBe-Cr; Thu, 19 Jan 2023 14:05:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXU-005E6G-Uc
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:14 +0000
Received: by mail-wm1-x32d.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso3069156wmb.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GOIoWRNHI+rYZ+DVnhtpkSO69WHP+Q1MqP6xsLa+kYU=;
        b=uOvfLofkcKgWN0xCAwairA4VXU8jV4BD8zP9TCt5B1XRYqGZIps1ij2YXSkPrd+4OX
         VRgWMPQSU6AteqmCLzYAGQCEPuDUNjlkNR9rqcGbBOgQkuD+0rqBdWRTNjIRdY7oywAm
         baPdb4VdzXgNlFRFUfPESE10sCMzQy9JOsYDW1vcc5EViU1c+soXPSRsaEXUUvlOknMg
         FGkDygcMOpp/pqvJRlMvb5gE6rCK0kCKADtOoLi8/Zx/A1AIBiiLTWyRqj2kSih+NFx+
         WPFEvHeu08/C5kRPljj/5Z/5V0qy+PNjQx3vhIEAXxmQLvj4KtOh6pdOnPrX4gZ3Dodj
         1R5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GOIoWRNHI+rYZ+DVnhtpkSO69WHP+Q1MqP6xsLa+kYU=;
        b=6rFetarjcVbgLnNWDEElIzyIX8f3HsMz69J0piRJtMjddL/nCV7i1UvDLCzhbKMjsT
         U3Je0VhbClqpLSof87ByRiIMcT7bLrNF9x3A3om00eRXhj+QdgNjm99cqkjun+rQI3cC
         3aeA/V4q+LtOayFjpnXWjccMpMAHS/TNTCKLmMBDo/rlW9TZJ0Vk1MeZUeuUaOAj7zqT
         u/X0UOAK60KB/ta4YRssiCqXu+9ehAPHRWWBqrZhmCH5AQFYiAO4hUKfzyhWJSPc9vka
         p0vaROKmRg2He56NnH/V4MNoISZcN6wT6Evq5axoHezaaTdqy9SEIKNZA1tyEg5DPxVW
         MV+g==
X-Gm-Message-State: AFqh2krrvU1BPJT3zues1BJeiwET5PkMlctehSio2CraSG1OYCI06Jih
	4VoK5WakJxmrtbKPI1tVNuOC+Q==
X-Google-Smtp-Source: AMrXdXsnPUMo/sexU8Gq1PheYSHXShwr12MGoc0M684KpqET1x8fqD/uwkmoPv6CbWEzMWF51UIuHA==
X-Received: by 2002:a1c:7415:0:b0:3da:fd07:1e3 with SMTP id p21-20020a1c7415000000b003dafd0701e3mr9995528wmc.22.1674137109797;
        Thu, 19 Jan 2023 06:05:09 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:08 -0800 (PST)
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
Subject: [PATCH v4 02/12] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Thu, 19 Jan 2023 16:04:43 +0200
Message-Id: <20230119140453.3942340-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060513_279160_3E9349A6 
X-CRM114-Status: GOOD (  13.21  )
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

The v3 of this patchset is:
https://lore.kernel.org/all/20230118005328.2378792-1-abel.vesa@linaro.org/

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
