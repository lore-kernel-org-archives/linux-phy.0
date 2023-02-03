Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8527C63797
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXpKEoOHq5cipxGPoW+gmPuof6HyZP0OwTATNWUWkZc=; b=guCgMiG/YN4mTI
	jKEvhQpbHm1k6l4/lEFxGPRaFbTCn6kzRBCfmnAxrbOHY6ITATxIwidUzTyOFRy8Izu2zi2yN5rVc
	WDHH5ww/5wY2xy+0HtlAnQT/o3pwC+/KgWOMlUw83w+8wviOnsAETutOQeqaNh3EVCt0S9/H6lawQ
	9rbGH8dmzdyS7AUhOLdcMtez2114bwzdlfIpKqPFHIk/V85Gs97rFNY+0OSzBB9X6kn19sb8RBqWt
	7rR74UyW0gPSbcUFxYwm4FVMOoi1ZtsYu0kIv8VblbFZD4u6RK6T3utFpn5uEOp6BdFGXaM1xmJ0T
	Yg9tPZVyOheM24aXtuGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH4-000yxr-AM; Fri, 03 Feb 2023 08:18:22 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH0-000yur-Ig
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:20 +0000
Received: by mail-wm1-x32c.google.com with SMTP id q8so3232102wmo.5
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pySYIDhMctXxHKmkvLwbxw7XeNzgPQ7plnVzA+pnk7w=;
        b=UyeOIY2ulfX4s8MxKA2N1KnZzA57Y6AKcdOJUxLynMHNHSHmxlaAmK4csOpDvE07DQ
         01UetPsoELhfcsr1T1BY+InvcS+xQZ0sm+tAE0CCmm4bvBeSPjP9raZT5/pW+CAaBKvW
         G2O0h2TWPmb1zOYP2Jj105iE2RXEZrWQnw3jRhsUJd1kd7hd8viDvk+3D556Vr6IDKWw
         vHbJ0fkUgwfX8ExF/wHL+1EY5wGVX5sfzpId4IVMPd1ffonJRl/geaN1EVAJCSvoGgdT
         JiX7Q1G9Cz596dXutOgxCih/XcZR6WYUzm8i4T0TeuL88mPkoeZkwBMjurVyYlNH8fqW
         cd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pySYIDhMctXxHKmkvLwbxw7XeNzgPQ7plnVzA+pnk7w=;
        b=75cbcytAq+cFOJbCpGhA47Jfy8Jg8K2yj4gN3nJjtMh8J+C8dRvet9uMdk69ylAbSq
         G78PKLOZSOEc6xhGqNJGZb6Ijrb9S2xLWHydL1t3PRcotCUg8hJSBCG7fjXZ8xoAdHiR
         r/IQKsR5MHwpPjnJbwAXtRAX0ejhqBx4sg8iE5nbDMUqXq2MXIdlaDrb2skgJ1v+tpJE
         Z13u143GE/irajob6IVYK6fy0N0sqCX7gZjbr06ofpMGm60zylCDHwPIhoew7QSVL6uT
         H53nqUd/mDznd9EIlb3zto/GYnArDmfNbLo7pL6rJ2EIF8hRJFUmI5ACA2p/YYZ0tcB4
         WOHw==
X-Gm-Message-State: AO0yUKU5ecYt7gpU/xBFwZ+W/pSroz/RfpqJyJWk7Ba8YBr2h/t5SmOJ
	DVsoyL7Rd0PY+vicTJWRwGyKuA==
X-Google-Smtp-Source: AK7set+eiG0o1BLpAcJZIg7O75j9ncTQC52lt542ekk7hxtzm0rNz+S8Fl8uIimhXRTiUX3GL63OEA==
X-Received: by 2002:a05:600c:1d86:b0:3da:1f6a:7b36 with SMTP id p6-20020a05600c1d8600b003da1f6a7b36mr10705197wms.0.1675412297081;
        Fri, 03 Feb 2023 00:18:17 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:16 -0800 (PST)
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
Subject: [PATCH v7 03/12] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Fri,  3 Feb 2023 10:17:58 +0200
Message-Id: <20230203081807.2248625-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001818_634580_DAB11B69 
X-CRM114-Status: GOOD (  12.74  )
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

The v6 of this patch is:
https://lore.kernel.org/all/20230202123902.3831491-4-abel.vesa@linaro.org/

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
