Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 663CCC67871
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 13:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua0WTEIFMAnFXTusHbAL25jhZts1cQaEE57hfGnlWRc=; b=O2EA439oKZBVX4
	vRyTAzhlXUwI9uPBGUhb+M5tSxaWLRnwAuC3w1KYiHbbsBel5gVtNDgZpBG1O2f176lf57GwHC3iD
	kqJLNI/K6a/FYf9dLJfB+gGYzqziiScN2C3badyEvWLP8wrYczgT6AMtdxoK6AangFvV7CiVPK7U3
	uNsyz//uixcApbVogeeNupY/95HiO7qfgZGNxze/fUKCFC1kKZj89H4g6he9NHxyCD36dUkNO/DGL
	qhLiyP/PXf51umuHnRDGkM/2n421Ub5Na//CZS4VeYmDqtCgxvR6JqfKH880DIB19nMlu9uZ/ToRf
	str6iY/MCinpg4wEatLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHW-00F5h6-Qj; Thu, 12 Jan 2023 13:06:10 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHJ-00F5cz-4j
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 13:06:02 +0000
Received: by mail-ej1-x629.google.com with SMTP id az20so25518720ejc.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 05:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+hBAbkU6CSTHMDU63KjwrXqmhpoYxJBG5YsST4ezLo=;
        b=F/Rzfe1YBFCbV+ZidaXf3aY3gmcsXqJc0ac3GRg3VkU6xolY1CfgNqxgCqqqcSXGu1
         WhWng6soeRW90QwtH1pE8FEzJlTncYRg66FvqMsuIzc3sCN9N+O9c6QW2eX7TncdUNqm
         HWGfITFo//vpCZGU6kgKSLO0MquQtkvRE5S9kp7Y2R8triy49P2DgjypOo3+73/eRAMR
         xfoUbciJ4jzf56DBAjjaU8vNLr+bf8ymWNVDMCWJ27nWEntZP0WIyPtWc1B2NWvcEdEw
         fqlGLQoqQiH2kYXMrahNLw6R0Xi0DfiSfi6isPdVJPI4l1gL6jXC1NcR/gAipRC6dVnI
         T4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+hBAbkU6CSTHMDU63KjwrXqmhpoYxJBG5YsST4ezLo=;
        b=Os78xHFDKwVY473KQthwouCmmVJ5doxvtAPKb4G+X5MBQTVWE/PwmMbnaatdNWlDwN
         0pJaBziNOgurg76EuJSYi9cUnP86ScVZojfNc69R36uYDb3NtQiZUFHH1RY18obUYvol
         aDLqr++akWj2ZV94Udn/aALXkSCzoeaOM7ZhP7PMBEzzxl/2iTpdGZpKmuDBXiabDu8S
         j7C5Wx5MxqD/9TXyASZ3L1i4hSH8X3SnabDYrT33YY/Ersi7jfKWEGcr1geATzQj+kMB
         +cfbkioq3trh+ybNUpVgxJutLUIWRcOFQSTvaFzMeFmVuACr5GKYYMcfkzPrrTXNjzCh
         Ce3A==
X-Gm-Message-State: AFqh2konyoYqOr2Rjhqrgy1O005E42WIgZ5UjGYBDaUprk5Jr+P+fo+O
	JBKd6y2h9WFWKbyi+7h2UCrcpOGpbS2HWr3A
X-Google-Smtp-Source: AMrXdXsutqNdWTEiyPaAwF/K5oETpem6+KlofUX75u5baC6bDKQwKF4jxo+x2ljJVhXOHi41uDkfOQ==
X-Received: by 2002:a17:907:6e05:b0:7c1:235d:2a2b with SMTP id sd5-20020a1709076e0500b007c1235d2a2bmr84657663ejc.24.1673528755842;
        Thu, 12 Jan 2023 05:05:55 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906318b00b0078d3f96d293sm7427668ejy.30.2023.01.12.05.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:05:55 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
Date: Thu, 12 Jan 2023 15:05:40 +0200
Message-Id: <20230112130542.1399921-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112130542.1399921-1-abel.vesa@linaro.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_050557_203172_6A48BD05 
X-CRM114-Status: GOOD (  13.51  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new qserdes TX RX but UFS specific offsets
in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
new file mode 100644
index 000000000000..e4d38fefdf18
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
+
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_TX			0x28
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0x08
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0x10
+
+#define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6			0x220
+#define QSERDES_UFS_V6_RX_MODE_RATE2_B3				0x238
+#define QSERDES_UFS_V6_RX_MODE_RATE2_B6				0x244
+#define QSERDES_UFS_V6_RX_MODE_RATE3_B3				0x25c
+#define QSERDES_UFS_V6_RX_MODE_RATE3_B4				0x260
+#define QSERDES_UFS_V6_RX_MODE_RATE3_B5				0x264
+#define QSERDES_UFS_V6_RX_MODE_RATE3_B8				0x270
+#define QSERDES_UFS_V6_RX_MODE_RATE4_B3				0x280
+#define QSERDES_UFS_V6_RX_MODE_RATE4_B6				0x28c
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 62796ff5c35e..6d6108925716 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -23,6 +23,7 @@
 
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
+#include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
