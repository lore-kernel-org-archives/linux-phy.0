Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E18FE732C0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79K2ySm8PzqbQxKblW8xxhGBbXdziVtuIqIups0yr0I=; b=hR0l/b9V4MnKia
	uPxkX6brjROHlhKYxYLgeGju+4AHqSAo/+sbU09alt6OqSqB7QCODoqdc6W/w2DxC7UWqKxSNaNBO
	v1Dh85S7yST9HbZRU2eTpucj+tz84fjRH/fzr8SjcL2ouLC2M7pWBfL134k8XBCwR/Z7QSkjWOd3Q
	uIaV3McZ4kxQ8reOm7Ai6E93NwTTHK3s6KW1wwnB6MhC0FTlBXgdy979c3dOxZLQ+hLcAKpuuhjR5
	kU2RlWLmYPQFZhUXu9YsRgCxs5RCS8xemiY3EZfmUhVOuMnKBmGXpKLQomeBPGkrBe54radN5FAn4
	KIGkeR3CdXQDR1WWA+1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0b-0038UN-1f;
	Thu, 28 Sep 2023 11:16:41 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0W-0038PU-1u
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:38 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50307759b65so20730535e87.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899794; x=1696504594; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7fKi5WIxwX5ZmNAvm8rVeCk+5FnbCELjzvHYUfJmkU=;
        b=F8wfKEbdtSOoTBC81A3kGpBPiOvfyin4SgNarqop99dIfcPeva74V2tccTQ311Zsmk
         /IVKuTqp9MalztAIO7U4Gvtd9+k9zZnvhsnJN//2FnSQU1ZajQvYDVrUHKhjgDK20vtd
         ilchcnCtnUrFFvcRoSICf75/DwYMYTR310eMyagep0j6mm2u6khmtK1zx40fH7QI4D2H
         jvV4UGA0lmue0XDT2ruvUrkKLElEJgpElBTBzkFQuDvV0ErYeO7v/y8WW3DNvzb5AvUI
         3zdiLRYYrsIkxXYbviMgcTI8qyeLI10IJ8S/nLTN2ps1L5sw22hGZve5zKhia4niVa/P
         nysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899794; x=1696504594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7fKi5WIxwX5ZmNAvm8rVeCk+5FnbCELjzvHYUfJmkU=;
        b=IreAEvUVIRR0nQi01KGMKATMEMcGw1M5SqesH+VIaUu8KI8TiDkwphGgZbhrfzng1G
         dULd41papQkAKSQwqTrbhmHmB8t0bJ1+csNt0JVAIUWhXEKQIrfj0HYYHiblOM5M8DBK
         LJvno/a0GGSyCWKRZYetZAJjLhSkWWOz6AH81hbdrTa9V9NYB51zQUJyHiiFPkq1jvlt
         W7uWc2uGeO/qSpYQfgmlK8q8wvgwlWrERCJQJ4/Ziyr7+i1xtpA7Cn0eN04y5Dop9ykE
         ++bpIbb3TxBK/1XlpYVwO6KuesFlF9oX+zcJSDfDYLvjoTpOuiqM4KmNBDmZ3wZ+Ht+R
         KMBw==
X-Gm-Message-State: AOJu0YweePpChfEEwHdv5PgZQ2gHgBh8qpfthhnPBNhkeXfZTOzujLEr
	XJniN3KRHEGLR1j30VVMCSWXqw==
X-Google-Smtp-Source: AGHT+IE90kxoRUpzk/sWNgYNbmcNadcNWLeaqvjzXrliCW2jT2RJ3Qlabv65kQhxmrcR4pGuzcr3sA==
X-Received: by 2002:a05:6512:32cb:b0:500:9a67:d40e with SMTP id f11-20020a05651232cb00b005009a67d40emr1118908lfg.60.1695899793707;
        Thu, 28 Sep 2023 04:16:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 03/15] phy: qcom: apq8064-sata: extract UNI PLL register defines
Date: Thu, 28 Sep 2023 14:16:17 +0300
Message-Id: <20230928111630.1217419-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041636_670668_ABE35582 
X-CRM114-Status: GOOD (  11.56  )
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

The "uni" PLL is shared between several PHYS: APQ8064's SATA,
MSM8974/APQ8084 HDMI, MSM8916 DSI, MSM8974/APQ8084 DSI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 23 +-------------
 drivers/phy/qualcomm/phy-qcom-uniphy.h       | 32 ++++++++++++++++++++
 2 files changed, 33 insertions(+), 22 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy.h

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index 3642a5d4f2f3..e29836d7b734 100644
--- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
+++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
@@ -15,28 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 
-/* PHY registers */
-#define UNIPHY_PLL_REFCLK_CFG		0x000
-#define UNIPHY_PLL_PWRGEN_CFG		0x014
-#define UNIPHY_PLL_GLB_CFG		0x020
-#define UNIPHY_PLL_SDM_CFG0		0x038
-#define UNIPHY_PLL_SDM_CFG1		0x03C
-#define UNIPHY_PLL_SDM_CFG2		0x040
-#define UNIPHY_PLL_SDM_CFG3		0x044
-#define UNIPHY_PLL_SDM_CFG4		0x048
-#define UNIPHY_PLL_SSC_CFG0		0x04C
-#define UNIPHY_PLL_SSC_CFG1		0x050
-#define UNIPHY_PLL_SSC_CFG2		0x054
-#define UNIPHY_PLL_SSC_CFG3		0x058
-#define UNIPHY_PLL_LKDET_CFG0		0x05C
-#define UNIPHY_PLL_LKDET_CFG1		0x060
-#define UNIPHY_PLL_LKDET_CFG2		0x064
-#define UNIPHY_PLL_CAL_CFG0		0x06C
-#define UNIPHY_PLL_CAL_CFG8		0x08C
-#define UNIPHY_PLL_CAL_CFG9		0x090
-#define UNIPHY_PLL_CAL_CFG10		0x094
-#define UNIPHY_PLL_CAL_CFG11		0x098
-#define UNIPHY_PLL_STATUS		0x0C0
+#include "phy-qcom-uniphy.h"
 
 #define SATA_PHY_SER_CTRL		0x100
 #define SATA_PHY_TX_DRIV_CTRL0		0x104
diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
new file mode 100644
index 000000000000..d8be32b5317c
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2014, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef PHY_QCOM_UNIPHY_H
+#define PHY_QCOM_UNIPHY_H
+
+/* PHY registers */
+#define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_SDM_CFG0		0x038
+#define UNIPHY_PLL_SDM_CFG1		0x03c
+#define UNIPHY_PLL_SDM_CFG2		0x040
+#define UNIPHY_PLL_SDM_CFG3		0x044
+#define UNIPHY_PLL_SDM_CFG4		0x048
+#define UNIPHY_PLL_SSC_CFG0		0x04c
+#define UNIPHY_PLL_SSC_CFG1		0x050
+#define UNIPHY_PLL_SSC_CFG2		0x054
+#define UNIPHY_PLL_SSC_CFG3		0x058
+#define UNIPHY_PLL_LKDET_CFG0		0x05c
+#define UNIPHY_PLL_LKDET_CFG1		0x060
+#define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG8		0x08c
+#define UNIPHY_PLL_CAL_CFG9		0x090
+#define UNIPHY_PLL_CAL_CFG10		0x094
+#define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_STATUS		0x0c0
+
+#endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
