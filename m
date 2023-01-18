Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9958CC38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJwINdj9S+Ms501STyf108sOKVs/OF6sKD52kv1nINo=; b=geeQ/KOupG4V9x
	lYpturgvkD3E1bPY6y7a7jruuc33ulvmJ21VUup/EjRCo3oz1ZraKh+pO0hqAbL+ogq5IZXJMINdN
	Xf5TDFbZzNzmgKy4JFeLI8paIOCfc7bKViPcG0L0z5yt/Mrf6w7MgV5MCfGZCKbYUz3N+eTKDRNCG
	w1D93/h4BXdT+4PWS5mdG2Wh+SIYbdE2WyaHdwguSe7uD5QDC8FutIbIEK6CKM/4Q1GumWxqFZULH
	uYpJNgcEcgpDs+ad5xbAUTEKBGJc8RAzSXGeDrN2R5rtbaNvTw1w44hIJmEEnDRafMD5Ur7nRDUwc
	2BFa5/InDYd7CG9Ap+ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwi1-00GMwM-Vc; Wed, 18 Jan 2023 00:53:46 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhx-00GMtW-Lj
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:44 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e3so23175990wru.13
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/5ShO46ItcCODQXADi0zaEWQnEHxlXkqIv58ku6QRo=;
        b=bsznOjf0tp/23GAOoBYgnEtjCPAHOc01jyK1Hhl11Hx8dSh32EgmRzRpzmaXKBscBc
         9bldT661GUJQU+bOw7qweWo93QI6cDOTWnXt3fEs5YXmFoT03tPie28omeuSfYvMh2nS
         yXHBLRFJCIO70XT3b3LHCN7xCSTQC+4R74i6T9AnWfCVaavL5hP3lLHzkCS8vLs+qpW9
         vjZ15udQ/fjD3JpiidrOrs6VTm3mb6GXUovBvwEHC/g/vqfABwXcey7fDq/EA73xRZOQ
         Gbzjq680bz/DgagvDVbSDD5bVUGWqSy0D8PLch36dHi5E68Aj84XCM6T5M+sEyKm17D6
         Vp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/5ShO46ItcCODQXADi0zaEWQnEHxlXkqIv58ku6QRo=;
        b=f+KyhSprHfJWkRY+iJCmEgPc9/nIMdq2KSsiMxwcgZYZ2QSfw4oqEBZJPbO+QG7fRI
         VeRLdEvJuhchU8Ht6i++KVKD6inHrTqGvKaHd0xnPLHkbGqmeAcGXLa3TizwtlPR5/Q3
         TPHvBCid6cnFrlvJrbltEfoXRSweaoPwE7Ys7Fo6An3FOwcvUHSgDtVo/37mwBD9HzQ8
         Kw5kQ3WPvnZ3ziCqFktWcfakJCFXt5H2vO0nSFP5Arr9bx3Yv04HJ/FLs5r6mL+FuY8v
         tRwQHCXw3sYEnOo7OnUB0Cn7R2/lYboTq7qxLMPfW4Foivfrbg7qu3XlO7LYBXXsEhSW
         HCjQ==
X-Gm-Message-State: AFqh2krap9TQ2Xk4s0ccjMdLTRe3/pm9A4O6Sd4qqoGzncSYcicyiOST
	0h1HdbNW3DHzVdBX1qif+T4qlg==
X-Google-Smtp-Source: AMrXdXtRVxVmRvBq70jcauDxLzlTcoEjML2ItPDIUuQNtHe5M0DAEvYUH8N/jLcfR8v/uCthDaZPVg==
X-Received: by 2002:a5d:6702:0:b0:2bd:e009:79cc with SMTP id o2-20020a5d6702000000b002bde00979ccmr12514951wru.53.1674003220516;
        Tue, 17 Jan 2023 16:53:40 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:40 -0800 (PST)
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
Subject: [PATCH v3 7/8] phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
Date: Wed, 18 Jan 2023 02:53:27 +0200
Message-Id: <20230118005328.2378792-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165341_757485_7AE913EC 
X-CRM114-Status: GOOD (  12.85  )
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
