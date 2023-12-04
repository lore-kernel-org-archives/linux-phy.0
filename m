Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3751DC4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ7g9WMySkKIJu4bzFMTOczYBzI87V+wLJlhQTGUbn0=; b=VlgSrHDKEPnFZ/
	EXp6aAQa/IPSE6CpXxcjK/GLOBnGjqUco3Izh7UTkJ7e0a6wwExv/dyOLKBkOWT3Wf2Ygl/xig4Gt
	WAdhIaAW6Nt4GMUJbSp1krlZFGYWFlktk+0oo2xlXSw5p5iJk4e/84gQqjdM7F5nvniStwCr5uIHg
	mklSIVniPNR1+sLzMZ0baw3dO/MHQ9XSO4Hr1s7o+Fn4/8KDfxz7iAXxH7Q3ggT1zzWrSVcIpzTo3
	9iMVePSXFtEEcIuLtjH+fl+fo8tprp8LXY3nX+UbrJi2vWPVBZOi/R1IJmDnPsaev9aLSIT7oO+c2
	Z/eQafdlNNP1W2yaSTBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g9-004OxZ-2h;
	Mon, 04 Dec 2023 13:08:05 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g6-004Osb-2W
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:04 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b479ec4a3so44072995e9.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695281; x=1702300081; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V8/wN9bVDO/fT20ixO2JSLBwr82UnvTKWcapBaXM3F4=;
        b=PNaStpnr33uB6qPyEpRb766HNEwOmJ3k4z5lz97S1oQcH/KsU0ndmppO5nFKzt5Ip2
         lDS/khEsJD/Jj/RR2gVoDnP2iibWaprhfsaw6UD0BUWpE1tsDKUY6HFayX9lG9EW2qQZ
         XEX9r0C+XQmMgguytbYSbpwyis5rQukwmgccictFMS0fYNF3EouSOmRq4ob7q2MlsjYl
         7QbKvveRcEHdcyNGDtOAlkLjdVEhb8qbDNt+r0X0RKua+wn+llb4TWt+OPouS1LcOt9o
         RdVArNS0b7dkkg/Jed6G13btqWEJ3I25gKl20PXpY+/S0RxxwKhuCFfsR0qU/NLUTyRN
         hbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695281; x=1702300081;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V8/wN9bVDO/fT20ixO2JSLBwr82UnvTKWcapBaXM3F4=;
        b=KvutRfdZzkTTr/LJe/Vn0VhJXbZ5mqvchiYdwgzZn5t0zOYohm9xWVttp8zhRToYf1
         SJnVT7HAIFrHMC1HMP2lkLGYmE/fA4MfbZDsRcJSM8NWetrMTBRN2rvZR34dClfqxzJ7
         SKrdAiDn34/FW6CWm0IMDY8MsK1lb/gjdmF5nuMv4juRi41vUfACeAQ72f8hK+3s7tZN
         rDDJ8YEEVkO3nfSa0N04jhmt4YBEpm2JdRtu9KkRLV4s3zhp6D4I7NYi/NUjyD+jWoT2
         uq+PQ/kncTYe0+VjWqgn9q+WFWbGuj2ayGQ8KA+3lAmg+GBWaJNboWuQ0Q9TrQ8K/xTZ
         mFXw==
X-Gm-Message-State: AOJu0Yw6no7VYmgOxyEjiYtjZGnd1tGRMYFFntRR+yp7jq3vrJ8+bxSG
	DBnPQmHMiPaLQblJ/BraPXVd4Q==
X-Google-Smtp-Source: AGHT+IGMHdhbuGPecflZBTUfmHubu9TYXaV9juwkLdp562K9OLSvK7kIuiTPaL0q9Tvs7zvDkHPeug==
X-Received: by 2002:a05:600c:1c0f:b0:40b:2b3d:9f45 with SMTP id j15-20020a05600c1c0f00b0040b2b3d9f45mr2992488wms.14.1701695281231;
        Mon, 04 Dec 2023 05:08:01 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:08:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:40 +0200
Subject: [PATCH v2 6/7] phy: qcom-qmp: qserdes-txrx: Add V6 N4 register
 offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-6-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3441; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mP9L6SpjvbccTHuSpfnLLqvU2TjJIjDbq/c6nbRWGbY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8mxqFzFRVpj609aNo824m4dO2D7XDmVu0TQ
 oE3S7/PiQKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PJgAKCRAbX0TJAJUV
 VnSvEACZJJyxW+F8fnfg/mEQ7/u1gyGZdebSgUfKaO+y8k1oZU61qguHffG8zKbvKmx4+CeylZX
 a9sZImVFvS0nCm0WhqSQ1SGe671FKhDNX3JPSaoXtP4mKRG/dkoy+fC2bf0GLm60JqF3SxtGt8S
 SPKiKI65pILqAEAiUC29EP6sr/asvcdQkkgHVyVNT2BtsyeRLudKrmE8LmfF5YPCB0qqbK9GTr7
 AatXhi4CYTrhOxPWS2c34Khu/MBnU4rdRFerR5jY9zrPJqS0ArE+6qctDxPiZ4ABIVAehErr+Rl
 CX7k5T+X+11hChFYyCLnM9TjenvGS+k/TMp5nTgb6rw0rP/Zqss4O5OOQ+0Fzu0EagaJT+OAMrq
 I30ALYdWyY/OSEk2f0U0DuZFBqADcbfFFyi2W3gcFFrB0dxTyx5cFPtM+I8CYxJYcZtg/TTd+R6
 8jWUFvROeoVbVW49djUPXDytB+yiNVTuml3fyQVTP6a3r6Os3oglhGa8kXIrE6/qxYXkCKCnFCr
 DvDj1Sdk/Dalmmix2GbEZlZoV5WPUeqL99koaIZpRdHSpNPL7WZ7Gl3GRDqXIVmNsApYkwHXTR2
 QZZm5B9j0855kb6J/ec1I7wT1gdHiFuGA49/IKFksw6arllGZULhmTI64dzxy/n50+YDIswkk/D
 H+gDO6W/DXuqzuQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050802_826068_06332B88 
X-CRM114-Status: GOOD (  11.30  )
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

There is a variant of V6 offsets that are different, the QMP PHY N4,
and it is found on the X1E80100 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 2 files changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
new file mode 100644
index 000000000000..a814ad11af07
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_TX	0x30
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_RX	0x34
+#define QSERDES_V6_N4_TX_LANE_MODE_1			0x78
+#define QSERDES_V6_N4_TX_LANE_MODE_2			0x7c
+#define QSERDES_V6_N4_TX_LANE_MODE_3			0x80
+
+#define QSERDES_V6_N4_RX_UCDR_FO_GAIN_RATE2		0x8
+#define QSERDES_V6_N4_RX_UCDR_SO_GAIN_RATE2		0x18
+#define QSERDES_V6_N4_RX_UCDR_PI_CONTROLS		0x20
+#define QSERDES_V6_N4_RX_IVCM_CAL_CODE_OVERRIDE		0x94
+#define QSERDES_V6_N4_RX_RX_IVCM_CAL_CTRL2		0x9c
+#define QSERDES_V6_N4_RX_RX_IVCM_POSTCAL_OFFSET		0xa0
+#define QSERDES_V6_N4_RX_DFE_3				0xb4
+#define QSERDES_V6_N4_RX_VGA_CAL_CNTRL1			0xe0
+#define QSERDES_V6_N4_RX_VGA_CAL_MAN_VAL		0xe8
+#define QSERDES_V6_N4_RX_GM_CAL				0x10c
+#define QSERDES_V6_N4_RX_SIGDET_ENABLES			0x148
+#define QSERDES_V6_N4_RX_SIGDET_CNTRL			0x14c
+#define QSERDES_V6_N4_RX_SIGDET_DEGLITCH_CNTRL		0x154
+#define QSERDES_V6_N4_RX_DFE_CTLE_POST_CAL_OFFSET	0x194
+#define QSERDES_V6_N4_RX_Q_PI_INTRINSIC_BIAS_RATE32	0x1dc
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL1			0x23c
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL2			0x240
+#define QSERDES_V6_N4_RX_UCDR_SB2_GAIN2_RATE2		0x27c
+#define QSERDES_V6_N4_RX_DFE_DAC_ENABLE1		0x298
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B0		0x2b8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B1		0x2bc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B2		0x2c0
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B3		0x2c4
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B4		0x2c8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B5		0x2cc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B6		0x2d0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B0			0x2d4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B1			0x2d8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B2			0x2dc
+#define QSERDES_V6_N4_RX_MODE_RATE2_B3			0x2e0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B4			0x2e4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B5			0x2e8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B6			0x2ec
+#define QSERDES_V6_N4_RX_RX_SUMMER_CAL_SPD_MODE		0x30c
+#define QSERDES_V6_N4_RX_RX_BKUP_CTRL1			0x310
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 3a0512c3e07a..63b3cbfcb50f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6_n4.h"
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-com-v7.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
