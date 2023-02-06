Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4AEC6379F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ji86da/95wlfphsgZQGcXbp99PgxMoMdnIOCX78SL6s=; b=exRpQCJcAnxfyj
	KngyD89BOKwsA7NdIqe8+xzhc90k9FEHRs5APiFDsjRFooHqxGMWm5p8uqDRjGjE61qfaMo7dYZdb
	HMBrfLClesDZFf5h+UEhaVcZs++yrfCjWysdXW2XwU39kxV9gMfckpJgQ15ep3OS//2k2GvnGSI48
	gLGtmIlGsWdq6PnYMWXaeIoYVW83xqIDIqGWxZnknZkb+ViFJBnqt3Slgxbb3rUYX65dmY/LQKP+M
	jCz9v+rmm1+aUFESAhls75n5lPsgryflgAUJnTjJZ1sivgvSvUfXoP4xz1GOQu2ZwRZVuit+pk4Re
	ZIZqpGH/wSFDO6UXaGYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90U-009zJT-M0; Mon, 06 Feb 2023 21:26:34 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90R-009zFI-K2
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:33 +0000
Received: by mail-wr1-x433.google.com with SMTP id m14so11710071wrg.13
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+wBYJk8y3G10NfmYHaWiaQMhFZ0a2TrYc3M+tJ1377o=;
        b=M/xilxfr/dH0sZjIKbl9sxHgvCCZ1ZfgIU79Loif+GoVno+6w4LFFdVT2NwvwyEaPb
         2z+42elssXhPowlr4rC577KZGNF2WAtPuIlVKa0lPQtxYSc96Sxj+8kYU5iuInARx/Ys
         LcjSCdKzdmiaQhsZR8ECWbElA5Pfx7j3nOHOXHYGCox76EfzmyrJ55sDlV9F9Qji5eOH
         ZDGOLejNCwTflg/p8HRlKVQ4U97ASYflAL6MynWhWjYYDSSY1KjcB7UZr5DOL8zrMBtI
         JpjwJnxxr11tTKxWd+2y1FSpBBrja5sQOuZWxZMJYAU/Waby1TgtwcaR4oSJhUI7OpNF
         2ovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+wBYJk8y3G10NfmYHaWiaQMhFZ0a2TrYc3M+tJ1377o=;
        b=d/qsB5MR+qKoRRxEQlKw3OjIaMxZGIJumItQPPe9IBT2Zz1oQsq9fgvrg1Umj7uwOF
         mG/AtacoYNNUVWJ7/BPxTaPRjPBkidKBD1s33+ET1du1cGNn3EJr4D1hliCiJ8iRF//Y
         Eq6a4u5N/FmQ7OQR5QD/fBxwfnftu6zyQoOrzN+SFmxtLfLgy984sXsPgDAFo/Ch3jyZ
         PsJwwpZbp58leKrdHwPCL7TWyysboFBnmxTf8Y20F3vM04YefJKvF/W20N9Yz2cH5ARg
         bJ+Bvhtx2ie2kf+YEWgSpJmeTlsY7K178H93ZtNJctnVQ5p1HgiUvBFRyHCmZVO/QbsD
         /Jpw==
X-Gm-Message-State: AO0yUKWmkS2gKHMrpIoFxbHYXD1nYw1QTKuJO7w5H6jgfI4l5g2X5syE
	LDa+CWdp9OS2cIOE8M1O+Ae6bw==
X-Google-Smtp-Source: AK7set8p+g9q3lZJUVwFZLddEQyyg/mRs+0l2EAPKXqeQWLeyxgrOY+OCXVjWxuW7RaEYCHjzGEH8A==
X-Received: by 2002:a05:6000:12cb:b0:2bf:c9e2:770a with SMTP id l11-20020a05600012cb00b002bfc9e2770amr488588wrx.2.1675718787940;
        Mon, 06 Feb 2023 13:26:27 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:27 -0800 (PST)
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
Subject: [PATCH v8 03/11] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Mon,  6 Feb 2023 23:26:11 +0200
Message-Id: <20230206212619.3218741-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132631_677802_EA601960 
X-CRM114-Status: GOOD (  12.53  )
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

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-4-abel.vesa@linaro.org/

Changes since v7:
 * none

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
