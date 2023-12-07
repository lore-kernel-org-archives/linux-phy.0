Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3F9C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynK8oiNne6Od+6goIRYEqfRebf/liGL6Dicaqc1u5OY=; b=T21CHRk7E3wLOF
	z2C83/pX3bh9ov5xPu85aEAAUWAyEMhEu87vAmczEekmZiSmBzC5LluPxWOQM5S6tHTpSnfp6pMit
	FIrvqDF2Wq03q1yRnx6S0t6V4WU13Qik0a8inY/sEH1A0g/aDfkbdHRgI/76oKEGHJBbiCGCVhqqg
	3T5JR59spFLUSQm63nGFkmGKTycStgRQLT/q2redwsKsdDtCrrRDACgw1jCKfjdwwWlwMULUVbNK9
	iH5q60uTdcYdjS++6gHZ3VD9RTTwz5GRNWzQsrS/5QGyk855IbG/nr3ZdI3c9LJTwtnBPP+6yMtN1
	Rl9kLh8w69L8bLMSGkIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM0-00ClcQ-0a;
	Thu, 07 Dec 2023 12:19:44 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLx-00Cla7-1R
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:42 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a1f47f91fc0so30382166b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951578; x=1702556378; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGHV88NHoP25qmFC88bijzEotkjq5kSrfnrsf5gnWnU=;
        b=iiwrM+4qTW2jjwcFuTB5BpAWHrssnGOEctUfLv6VZiZVZa3oqF718d2/kqIBXCF26D
         IBOEZ5FNEbbfagQXmNYG1JxPM4UTas32JRZO/zzqyXjGdDeSrKCQ84vqarkqhjYRZZ3a
         9gXZ40Le3ek1JKJzqEM7foY/Os5pIONtVpW2LdVx9nTzrOPXaWNd3d/4IeI/q8qas+UU
         q7Y6+RF3/1oYHSbQyJmgVccsQEmbSHkVKQePtLpVdkQQgyOeYqlWjMpsE6XzmiAEWBAX
         TlvrbgWHOI24bXaKUofmz7/K1hQiNfL4adzqP9hCYwiZqhW52fHMHa7hGbqyaGn9oqQC
         Suhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951578; x=1702556378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fGHV88NHoP25qmFC88bijzEotkjq5kSrfnrsf5gnWnU=;
        b=X588BIomuG8wvWZoZSENPmpkAm6tZX0+qobmlvAJn3spHJoj3wkWtV9aBOy4FGaQMI
         aV3pNyDkIP1BDrAGllbos1S65ln503SLWqt5bowMnPxaujbJX0R/WEoyKARSAh0sPeRh
         cKlboB+hvFjk3gzllDGJ1i/uy7x96HyWamg/gvy/58/TAlrtOyvzLJgC7d81wq21VxOg
         HsCquXYFOdsIwLjw2c8xkVh6XnKMp9lqy2ljL4SXOs7c+wvcOKyF98q7iF2xodTEivOB
         MB0SyGs3nWJLcCfbEdLpBmcL66LSAWxQuoosgVBEQfTiotThYvlebSoXZ5X8SUdlZp2S
         D4Rg==
X-Gm-Message-State: AOJu0YxuWl1iXnjcx2D1zmptP51v/OK6Iwp4ssYR/qihTP5J3R+om4Vr
	rD4xK3y/GTLcWNlmYypypdbSCg==
X-Google-Smtp-Source: AGHT+IFnTNxL6mh9XIHt4yGAmG86ARKFNFDsH5YoLZO8tS2u5z0k4nEFYqklzW7NXB11j3XKRnCRNA==
X-Received: by 2002:a17:907:7190:b0:9c3:e66e:2006 with SMTP id zv16-20020a170907719000b009c3e66e2006mr1235143ejb.9.1701951578651;
        Thu, 07 Dec 2023 04:19:38 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:38 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:12 +0200
Subject: [PATCH v3 3/7] phy: qcom-qmp: pcs: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-3-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2265; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Ge9uHoDuXXvAQ55h+Et8Z8vF4p7+wEMKdaHgdMwEqGk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhPfy4psDwYMoLc3DyHe+itq1ML0mzViRBit
 o0rlPBGk3OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4TwAKCRAbX0TJAJUV
 VmL1D/0WeT+S8R8U4i6vg8xjGyNRgBnA4s1WFpuYFKmUOrqyfPkBs84o/+D82xusp/RzemSy5eo
 SuRaHtH9fQr33m2Phe1d4PL12ggWJOCTkvbMalx22cOY9zuTvmJ4gatyCHsDW/2ldI0JWuTW17y
 sYCkdc2TalFLJ9sQwo0jKOhUZng1+j0I1VR02sVricz+A4KtDVtxcT6GxnNWNaEw7Y9blCyWDYT
 5szs0492ExTBQubamm/2zwF9JlO4HZRIRahY85L0UOc99jl/Mdje1oXpgYE9BSTlkUN7BOZwCjM
 RlqZM4DZyPc6UeKQmmzqtdg3mSYRI3MJtyMi+plSJTmnIn+E1lM+oim84AMQ3xY7EbeTXHCXgk1
 ua2BpbaBB+S+bD8ElVdGl4714PSDalUblXWB/NdRExGC3sPJSd0A1HMBwDFVVnUPl9yoax4rwPS
 nTLLj+dU7Ip1HZts2WlJD6W++o6QYeFDoCAZl8SXx+IyThOTeJE04Tt+TKdKosscpmLz47e8w7F
 +U48kLyMG+By8W3nuxmn8wMjeylS6fWIT+VHLLwkCRg9/XZIZs9GYoENpK/VOy5o16claG0/jSy
 L8WjpBSWzo8pUD59SxsWx5EeRBQfA3NI+pXSAftsYiUeOgtIyUrfOJnuKHYpgVySEpgm/04hf+r
 VKbxPGS5HluFI+Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041941_486658_2659A70B 
X-CRM114-Status: GOOD (  10.02  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h | 32 ++++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
new file mode 100644
index 000000000000..c7759892ed2e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V7_H_
+#define QCOM_PHY_QMP_PCS_V7_H_
+
+/* Only for QMP V7 PHY - USB/PCIe PCS registers */
+#define QPHY_V7_PCS_SW_RESET			0x000
+#define QPHY_V7_PCS_PCS_STATUS1			0x014
+#define QPHY_V7_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V7_PCS_START_CONTROL		0x044
+#define QPHY_V7_PCS_POWER_STATE_CONFIG1		0x090
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG1		0x0c4
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG2		0x0c8
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG3		0x0cc
+#define QPHY_V7_PCS_LOCK_DETECT_CONFIG6		0x0d8
+#define QPHY_V7_PCS_REFGEN_REQ_CONFIG1		0x0dc
+#define QPHY_V7_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
+#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
+#define QPHY_V7_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V7_PCS_CDR_RESET_TIME		0x1b0
+#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG1	0x1c0
+#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG2	0x1c4
+#define QPHY_V7_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_V7_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_V7_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V7_PCS_EQ_CONFIG5			0x1ec
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
