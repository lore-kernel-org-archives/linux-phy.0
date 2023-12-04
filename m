Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A350EC10F04
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41pYaLFyasTUqTuIj0Q8rgkjxO5xSRR/GQg3FD2oOUU=; b=atafy6/M5Wv/xy
	D6/TkdKcKiKSuqL1wiX09iN4+Ob0iaigTwDkS2ySUl5SL4LqTOXjzD4tpypip8KQ2MBuumAKcoDZa
	yplqzTU1c+YYOJI8DX8JAjGVQDxnxv0O1UEhPeiFlF1ezeQ/T4O+pwbA9ZYvYWKFsd6n4GFiurVXP
	ELpg+gkhbBHu2z8hoomTIThjc7ZD8NCaxMHYj1C7uw9KKdbrP8I7EjrTLzwcprHqdbUhH+LJsi8LP
	feu97L/ySI8c1QXH8ubNFtRMJzGU2Ljyc/L1aCGwIEFdu/oQds+hl4CiqyntGpyCm6uNW8U2GwBiC
	J+RvsLlB5S0ye/TCTIQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g6-004Ot9-0u;
	Mon, 04 Dec 2023 13:08:02 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g2-004OnT-1z
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:00 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40859dee28cso44268255e9.0
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695277; x=1702300077; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYTIUUHiytME6HHkOk4RzGB1GaR7pCi9XLlIPgVcPvw=;
        b=wtbqE5Ll6Cqr7vSEshC1t7pZKGxUcO83206mTPq+kuATpq+XYPLXeDu0wZSang9wD3
         CA4/gJ2Y5ZGp/a5UawuZEIYmyBJp7zJddrRc/O/RVyzcJH53zuLxvE28n2fxnDwEd4LP
         jcR5CSuAMT2O+pmYDW5n8SwjkQt+9YTsz++hGsyljPBu96ZAvh3vimvM34Iqq9OaxT5g
         r+TO+JHzYp6xArlyra7xWyelHGN1PKdffajEldnsv7SRxczjZ6MFmJYFlVsn76Jh5JYz
         T4wRthWp5XUBGjM+NhRmV2m2U8o39ZHUzIceLEUolthui9zN/WBGLs5Gu6HOe25It5p7
         smaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695277; x=1702300077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYTIUUHiytME6HHkOk4RzGB1GaR7pCi9XLlIPgVcPvw=;
        b=s1rvYGdFcZtaPhZjxVrtoDfY0v5rt3GDAU0ECX3F6mY8jWJJdxCrCEff5qotQwvNWt
         TTJrUhjl3eS9up+VSFJJHXYZOkMzYrcQCPL13L5U4f/pOjf4HTRP5iPFAKGU1g7oR6gv
         00my9VSBPV5sYwMA0Pu1B/CqQci79u+p1FpE3gOR9HQxMkoJwaWMkPW9q57oe3hEkCi4
         nH1ImLtGG3VGoLNAv2OPz1yiAyo3RVYLxCxk7UTh3roI9s39Rm+fy4DHvnFFPCUGqq2l
         ++PuVrPk6J9bdbbMOC2283PCZEzfkUi8w4jbp/yMzd3hJ5B727R7givNN16iVEkLZa34
         0qmg==
X-Gm-Message-State: AOJu0Yx4Ky+21OKYRamW0hpT1tWEfLLoQr2PX8Xkn5gb3qieL0hWpGRS
	z7lx4HOd2UmmJNVZAWPPPiUKNg==
X-Google-Smtp-Source: AGHT+IGHEbLxB7kwJD+HY8ANZui0bV7DQgbo04InN4Q1iJFmQjtR8eL3vuUo0zkI8axsqPuKTpG9MQ==
X-Received: by 2002:a05:600c:4393:b0:40c:909:fdb4 with SMTP id e19-20020a05600c439300b0040c0909fdb4mr1331537wmn.90.1701695277321;
        Mon, 04 Dec 2023 05:07:57 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:56 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:37 +0200
Subject: [PATCH v2 3/7] phy: qcom-qmp: pcs: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-3-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2056; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=5K0HigAQKC0oyxjTSpG30ffVBm+lPmYjMEQc16Bq5cE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8i7St5K2ZBrjZ0LoUVpg8T4IHiDP3uLKGA5
 x+p3NKf+DqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PIgAKCRAbX0TJAJUV
 Vs1cEACVP8YI8AAq24ge00exuvKTxrdkNZ3gtRVMdEf/jjjabXSHTV7aRSZOI0Rv/skhKgpEVLN
 kmRIN2Q5LUUWluH30XDUX2v/O87Rz+P/08KKObNFNSk0ny7H/hM5IvDRZjYIRB6uqcp+4i4QDrG
 bM6ZAvpz7x7ZMcVkb/kCx6lBOxqDginw534sMaEZm8veyOoCcWjwhenmNu3EnjTDF7KzUu+U2Fk
 S+yuqtQoxeZCcH8a3+plkrBnFo9O3EjygYlI1EcWqaiHvSygjoqMBTqro8UWGb/33zQVezDt6Fo
 zsVMX/G82tvY0lqQFwfr1drx5icpCN3kb9ghExRFD++Unh8DukSF6E0wyLQ+mBk1hDMFN5pjsb8
 p4kiAIix6TUa4uew923sNOWTxh8Z6lYoVStrKAAVK6KlbC7ksYEoARghL0KJ48L4Fr867hdthF4
 B1ioWr3Wdnuzcll31mRvD3R8bKv0SWcMqmtJ/PHdLLxt3CnTX3cX3A78+ySfmh+s8YkhECMeCVD
 gYpC7fVdaCRpJ25b0yV/Tr8iTkKpLdlNpRxWj/FkEK0DAauRPCrGBG5p8W/7V1j1sKa0tC92/py
 bSl2DZT5daerb4n7P8odWEwrVHEMvHWDLi7nbwu2ROQd2vuMMV8izGphbwbuOJ4VRZGNcl/fAPR
 JKm8wLHHvNfgOlQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050758_680776_26843E42 
X-CRM114-Status: GOOD (  10.43  )
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
index 000000000000..1967cfe595b5
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
+/* Only for QMP V7 PHY - USB/PCIe PCS registers */
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
+#define QPHY_V7_PCS_CDR_RESET_TIME			0x1b0
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
