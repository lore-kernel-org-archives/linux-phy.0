Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEA5C677F1
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcbEFuTSSOK+F8GWdU1t57XYRTDoLESxHagBiNVvoCY=; b=fAGUsEsziFcmdE
	kWbBP0Aj3nEeyBUcLa1N59C8bko/axPQMz3kZpIgq4TgGspUsCqG53B3fr+ISxPtecJYjaNuO6nOD
	n12SBg1CfrOXnRdWBGQ6QI7/bwckeAE643Y2Ge7b3Hztt88KBBmDMzPVePM343crU8jA4e8+ecF2v
	CLbAdnOQIB5bxaM4zBgt2kRN9zwTcVMWFSf5yN80s+uhqGha4vsn+d8mwugJ3pi8ab6wmxkF8lGwE
	PbROSPYp2NLlRFR1kBXYng7+rGTs45zAWy7lU+LIzyXr7VG93cbUyH7G/XIn0zrtmqIRrY0lSzmYm
	SA0NGnJGW7bZ9V0zbrHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTh-00GLkG-Pv; Wed, 18 Jan 2023 00:38:57 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTd-00GLgn-BK
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso587697wmb.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aJbCLNImI9LXSbsqFxABvt6t5tPg6gbPY4B/5o0nEw=;
        b=HudhzkXBQWW83l7EYUdJr0Y2d8LTf8yKwLNcudJrsioiuufXV0lD23oab0h/Ip4L4E
         g1dIQV6ANl2jthUSfQaubod+U426X8sO4a72b7Ql/ey6w7JE79KhY+D4Em0pjr2ZjbrI
         i0bJ0jW7qP5hnotuzUs30G/qF84YnByvMb0OqkON7vok6dRbkd5utfWMUK1K72Qzaa0L
         eMzXaIddvHW/GLgPJHkQ+zcq4yLQYTVuHS/24nrb9vohc3Vv5H5gToaIIE6xIIbFlZsn
         v2VDmh9/FGZX2F7q3LxD6wggrreGrky1/s5EIsq6JkLLz/QNk7bHP4bVbvrfF96olEYj
         qgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aJbCLNImI9LXSbsqFxABvt6t5tPg6gbPY4B/5o0nEw=;
        b=P4oEDbr8rcKrG0l8P0vRiJABUT1MCxyti7QY7T3ADQLav6AIY3w1B0fVwV+CP7Dps9
         V6xU0Vd2G4sR1hIuF7jjKh70QZmMOG6JjLzPeAWRFO9D9ae8N114rzzCAQWKxKcNPBq6
         QsD+D53PceRA9qOoPUPNCMSv+ExyRdrGdHszGfSG/psKytzh4reke+IxyxqkD5Qx+8hf
         oVNMNG7m20xSWW7GNspMDKVCDME6ibFLSdZ3+PkOhww8eBjKwn7ULSIphSMFOMRrKH+W
         PbRWrqwoZUQaBJsq/yWr+k7aC1iy3WsGMdDIyB9Co+a1kjc8lWkQ/7oaCVAnqjawqQUx
         zacA==
X-Gm-Message-State: AFqh2kqcIt4J0crpDAWrDaxcJ9pYwHq4e5b9cUhc3TFGeJUAGbrtF+LX
	xqwey2rmOKCQQ+6NkjvIK9EkRA==
X-Google-Smtp-Source: AMrXdXsFN7nfJnEj6H/mGba/NLDYNDSULEOa4lvBBggmpGz6tMrGjCUfw3ksWaHU5xzhjYnBopz7kA==
X-Received: by 2002:a05:600c:4347:b0:3da:fc2c:cda8 with SMTP id r7-20020a05600c434700b003dafc2ccda8mr4780307wme.6.1674002325710;
        Tue, 17 Jan 2023 16:38:45 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:45 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 2/7] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Wed, 18 Jan 2023 02:38:29 +0200
Message-Id: <20230118003834.2330028-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163853_453024_ED6AC292 
X-CRM114-Status: GOOD (  12.91  )
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
---
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
