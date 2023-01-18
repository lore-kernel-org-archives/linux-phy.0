Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 328E1C38159
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJwINdj9S+Ms501STyf108sOKVs/OF6sKD52kv1nINo=; b=G03IwsATGX5Wsc
	rHjzkrWZbEpIXcXkfngCZmTnPCojG1oNJL4B3tevCw4dgzAxQdKcQryymu+mCY0a7n2dApuEzqar9
	7kj+8aCFBA7uP9qSqQovpA6ibrWguSr/nQ4XE2B3xMKpS2A8oV9WhtfGHJp1/v03PwfOLip9jUVgs
	9hAs5cwfjd63DmLEI6s76c+8nUyjNQ8AvARgUmif6hQ8S4EcgUPeYdKajbZKPbd97GNKxU1GsC2Nr
	ErGReqAQKphYLscCN77q6d3ZVQj5t3F90Ioo5+CQRPpjMmO1ZumBbvlQcicGbck8SK8q4S7yNKSPq
	xwk8WhhAQ0Pf23jyG+Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTh-00GLk4-KG; Wed, 18 Jan 2023 00:38:57 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTc-00GLgw-5l
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso359861wmc.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/5ShO46ItcCODQXADi0zaEWQnEHxlXkqIv58ku6QRo=;
        b=kU/K5+JwUdEK2iix5VXebSNJeEunE419mSZO7R5AZS6MO0uk/lZwYnVcHHuTJmLHVR
         QnJys09TZHq84MkDlWf0f0qfK+jp/NrN7K3NITnQfd0wFGX87XQchr+a2AnR53PaON3R
         RZ3EnKcHCOJ7Mp0OVYSAS8yboz6vdJMVgH8vfh6+8q9xndSB69v8lOSmQsEBRcdxPO0N
         rgEifvOO1HPJHYLO3FrNZAniQq5nSxvIPj2m1nYnsoIhS7JWF7LOxePIthie8O7R/e+e
         83Hcil86ajQSXbzXZ8xwrfbS+9FeHmLMb0Bi0BIhebqxx09wWjdP7aASKy1LSaw3dKZ7
         oC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/5ShO46ItcCODQXADi0zaEWQnEHxlXkqIv58ku6QRo=;
        b=G+pWWIDwppqaXLjQqAhH5a7rv3+QsNmLcTQDSnDy8eksZd+CMocG5OLCJ+ttt3/fZZ
         2RrgJn55z8S5huB0e7XXIn2Osv+8lCoKGuNX7+fsYe6IxhW0bX/5TIImOjKGzhquCdhz
         /IibZX1OGnlRK3C9TvPSGPv8Syv17FJ3grMRJ94rnDPaSod3OFuwrzepmb95TwObQejs
         qNcXTks8Ef06ezHnNWw+MukTC7D10dYh9C/TyAIEENLHZJKb5bqnFLRPptI2/CiVfjzg
         m/fm/PCJoaDY2GARqAjjlQhLM9iZ51JILCv0LzrkxMtvefZTawiuSVliPyoY0GIFkCs6
         mXeA==
X-Gm-Message-State: AFqh2krACkiJb6q0/upxh61HdoCAQc5UFc3r+SAC3McyP09CunFW1VS7
	z4fVqgxtotRZ7AE9vH3N7pBVKw==
X-Google-Smtp-Source: AMrXdXvqBdtfYnIYDTkkaelatA2CNWHw5sRu/pO2D2acw5bLqHCpSn5p/nfwRGgm03A4XbIrI4rCRg==
X-Received: by 2002:a05:600c:4f83:b0:3db:eab:a600 with SMTP id n3-20020a05600c4f8300b003db0eaba600mr1798656wmq.7.1674002330992;
        Tue, 17 Jan 2023 16:38:50 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:50 -0800 (PST)
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
Subject: [PATCH v2 6/7] phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
Date: Wed, 18 Jan 2023 02:38:33 +0200
Message-Id: <20230118003834.2330028-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163852_237302_AC1E6980 
X-CRM114-Status: GOOD (  12.73  )
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
PCIE g4x2. Add the new lane shared PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         | 32 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
new file mode 100644
index 000000000000..86d7d796d5d7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+#define QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+
+#define QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL			0xa0
+#define QSERDES_V6_LN_SHRD_RX_Q_EN_RATES			0xb0
+#define QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1			0xb4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1		0xc4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2		0xc8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B0			0xd4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B1			0xd8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B2			0xdc
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B3			0xe0
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B4			0xe4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B5			0xe8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B6			0xec
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE210	0xf0
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE3		0xf4
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE210	0xf8
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE3		0xfc
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE210	0x100
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE3		0x104
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH4_RATE3		0x10c
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH5_RATE3		0x114
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3		0x11c
+#define QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE		0x128
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index e5974e6caf51..148663ee713a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
