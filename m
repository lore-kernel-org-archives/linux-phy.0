Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66022C61DAB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWqp+wg0U4UpfeJhfJjDq7fR0JRPMkh+azXlRe4Dh4M=; b=GSMP3XHYAMrotW
	XiHJr2GLpf2dgMcs/7Uo6vDDM6F7qjTQFG8Xh0MQVa8JktBXAfR4rRIYogrxCMdxTkrfv500SjM5+
	4LvXcBo1XleoyH3pUeIaX82g91y+zJZjD1zXP+Ko5IKhOOwW2l+6luFjJppR8uQtIo256r8i0ouKM
	vJ2aBLLLwd+685ZUn75pVb2G73G/Y9oi+gyx7OP3uBH03ntlUpw4VMUdU6fPxFnlGW2YJJeUJEQjx
	BoazGRpLzucstvMw3hv2lZV+rvlbxCh0pIPRbFtuYOH9nf77WQtqQQG+JHiUVaIvrl4Ah2jRIxDoY
	4cfORtmXwDcn7skQGIrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5i-001O0v-0R;
	Wed, 22 Nov 2023 10:04:18 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5e-001NxY-2z
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:16 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-543c3756521so8975738a12.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647452; x=1701252252; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gs74nhLMj2XOqoIIaz5J8r/tU6tBKU967K+bEMRbRRU=;
        b=EPPYePpxXzFF4x/Qq2rCI22/kMa3Nou/tQ3j0hfO+MhzLboR1fNFMssT3/8NtqYlT/
         DX5PpxxAhL1UqVB+x5DoqNmjinqQ+u/HlUOLxl8EQe790bqDDQslzlBO6UJ5TleGavgj
         T/5se7P+B4hO3yYvb3zoeINDrXUpJzLg5F3gIEVaAWds35oDo6cyh6YSxKK8eHxcMEMm
         WSt+YcbFXAmlmqYyx3NHaxTLjn822dqkhvM2XF/ZSNZm/rx4BqbPLT0+9pdN3mcoMN7E
         ORUY/7JWV82akV2jQeRICyOGTk8Wp/+z8DKy63rbMFAd5R+g+oqXLKaVGiGEyNeOYak6
         p5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647452; x=1701252252;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gs74nhLMj2XOqoIIaz5J8r/tU6tBKU967K+bEMRbRRU=;
        b=ryUHbnl0kFAWhURu+4HvtR6z14kIikdeSE0w2qmwu0VMl48Zb+JmR+kwR0lIpiKKzu
         Ha1slPx8MdW7qBt9NZF5DiH2odBIaz2j0kbhRT+H8yMjFLgvpwBjb/b2c+kWe3NYo3xO
         NWUqbkVl7oZczJoKIgUu0nmH8D7StfL0AAVSPS63V5gxw0QsAyeY/W+AvHFs0W7FhA80
         ZokaGqGVnq2qL7QNOK2eGiKoNmhZnmh130M6Ftxstr7aHxo5D37uMSLD2NrG+c5wfmWQ
         KLYZEgBOCjMiqpmvpa1/xQmuArf0GpCnFAHsKijjF1XPSL1zHMyDPXfDPTohc5GCs9E4
         yGRQ==
X-Gm-Message-State: AOJu0YwB7Ve8ZFUJ8Mywjfjyf7+g3Bm2auJraxTDjW/9cSUnnj65p9Qn
	77mYPZm8tOmE4o/LgooEWQtVOg==
X-Google-Smtp-Source: AGHT+IGnBXCwpSo+QICY+RaccJY5aUjpMqdtRI6/hjX3SMiQ4RSSW786T+VXtRLYu6339Vvn6DfjHQ==
X-Received: by 2002:aa7:d40b:0:b0:53f:1067:4b94 with SMTP id z11-20020aa7d40b000000b0053f10674b94mr1210582edq.18.1700647452250;
        Wed, 22 Nov 2023 02:04:12 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:11 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:55 +0200
Subject: [PATCH 3/7] phy: qcom-qmp: pcs: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-3-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2052; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=V6EysvvuNt83o5PfcG1W4aH/vaCeWPRnMZtIEulp950=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdIRxZOW/+70Z5s06jRtjlJ09B49/GOfiwYNc
 kl5f3P2mjeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SEQAKCRAbX0TJAJUV
 VknCEACCqDgG7NxNoVuO/sYZzX/QZidYFsUkcz7CsL6TxJSkbrvnHPCJECALRaJRFHb4kYJjIhn
 jZiUV7Dq+6q1BEQH6mnCL9hwDngSTk4URxZDb5OkYfSegsX45DtVmd9qU4Pg2HU63xrRYullRxP
 T0DLPOoWfg44cPPA+YfGpLTPhnTllKoJJcA/N8N61WLpMLdi0EMseQD96cBRNFQ3T+lhZG3CXqg
 RbH4jFoBgWobY9aTe7LjZEMA2FuVlhHqMkLYMMYPVSHzUdiR/QNyL5l4ycQ7u8SdBfuSqf8eCIi
 Eg6DHF8ymw2Ag+1BdnjRtizvHDzUVZsESHDOwIfag1d4Aa3k0UU6XGpPbKmVvH/hWMzT0tvQ/U2
 gsAsUwnEmQKoNpg4jmyFmaCLcuFCuKIeRoTmRxABY5X4GZ6HCcLx/JyV0y6elg6BQla2eYTzTWO
 ixTRDysYRhOadnRTiw2FMVaGgVD6bGlozSvtxzP2bE9wrkuq5m2EgXj6iZQO4PwKoj/TGyLBZ/o
 JTLbt4io6oiDMKh1y+YMxOikcQDcL+0M2B0xfLDVSecuWGnG3qKCSy4fhDanHYdseBovZ/tKx30
 xrAAUZLfoDY6Pi0hl8ee4ByhC2/G0fV6L29sWRnbW/yvWJfswFOfOBWXZULkaFO/peOErJDdLCe
 SztoX4WzawHFGTA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020414_966300_5751D3A6 
X-CRM114-Status: GOOD (  10.07  )
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

The X1E80100 platform bumps the HW version of QMP phy to v7 for USB,
and PCIe. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h | 28 ++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 30 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
new file mode 100644
index 000000000000..520f28d802f6
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V7_H_
+#define QCOM_PHY_QMP_PCS_V7_H_
+
+/* Only for QMP V6 PHY - USB/PCIe PCS registers */
+
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG1			0xc4
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG2			0xc8
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG3			0xcc
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG6			0xd8
+#define QPHY_V7_PCS_REFGEN_REQ_CONFIG1			0xdc
+#define QPHY_V7_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_V7_PCS_RATE_SLEW_CNTRL1			0x198
+#define QPHY_V7_PCS_RX_CONFIG				0x1b0
+#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_V7_PCS_PCS_TX_RX_CONFIG			0x1d0
+#define QPHY_V7_PCS_EQ_CONFIG1				0x1dc
+#define QPHY_V7_PCS_EQ_CONFIG2				0x1e0
+#define QPHY_V7_PCS_EQ_CONFIG5				0x1ec
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 71f063f4a56e..21f6a56e7ae3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -44,6 +44,8 @@
 
 #include "phy-qcom-qmp-pcs-v6_20.h"
 
+#include "phy-qcom-qmp-pcs-v7.h"
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
