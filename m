Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FCE3C74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w9PUSD5Mh3RFnpnIJqj4y9XBanI7A2RQBiQzir9IK8=; b=Kh31LGMQPwRulf
	B5eVLe0c+Bs9bhcQ01U6rZ6oLF9XByuNR9hyyezL7E6p6nPvdxwJ6EpCb6iWo4zUJjt6zxQsFptMm
	mGjSZiucyOdBCEsjKyVzLU5UztL/b20D1yeUzsxnT3a/Dcv5K0zhIhAlj2tgxBz0PrOyLdLzic8nS
	JYQr+Aqx9sSSjYXZIR2fCXBf3hQgPo50uqPlNg/qDfr9+JLAzusf5Id+Iq/NqX3RfxLSOfpO8v5mW
	J9gI0WoUKHD3XB8HOP2p1JC+q7issmnZ7Jr6r9ybPJkj8RHBi5bV+KwmpmuxE1MqyeS2RK5zGApp8
	iTbEotKs/EtdS4R6OKYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7O-003OB5-35;
	Fri, 24 Mar 2023 02:25:26 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7M-003O7n-05
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:25 +0000
Received: by mail-lf1-x133.google.com with SMTP id bi9so376450lfb.12
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F0UkUAHHV030Q9Rz5orwTaamTqXyQfCNaYwLyt8g6O0=;
        b=XZtUhT+1Gn0aizoU8zZboFIJEZlCnFI6oqdMqyq5snl8wzRszLk7hlUZWHM8UNXSbU
         YSWkR8V7pMSJSbR5s05QpoO338+nEgHNNHScwWbKHs0lCkJWY4fHW5MyUninGg/9HEPL
         iLPXZgiNfw75664DhB/JzSd6cmEwrSxVyqLIC+8oNQbHiBSvmt/mC+ednuUugjCpC1T+
         YF33EnILx+P3ToP7HUQc2gFYMaMT0cDlhkPzjyx+Ex3Aw8vnwxNBEVaoY7M4WyA78mKP
         cUCFIPDsGAjqxWNCP4l+Sn4IbThUTcZGxtQL5yjl6aMRYQ9B2D6pjeGhiMd/ZCfPY6Pz
         hS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F0UkUAHHV030Q9Rz5orwTaamTqXyQfCNaYwLyt8g6O0=;
        b=URCKeRUBJE5t9f5v4ECeOvadNHIT1F3omQ5kkYx8Aa2JMP+rcpp1woKOEHHj4ck1RU
         A7nXJnb/waIIdBeRLgLLbreZoMoVzCUbmZoWd/9b7V+OswE/Vb8OvJtCSvp/m7kooHnO
         CgjDOSnO3hZVztIJYh2fugWgTbzVN0y9iAYkNh8KmYWnSeynYZVrGOgWOwlgjP3Syh7+
         HdN3pY4oaghlOnv5XV3J1HK8+mvFz/ACe9HhM+3ZgF+FQtHxajG7bCUfkGdcRmnm9iRe
         tD3aBoKqoa0GMRWwPAfgUbRMVpPDdLX1kXJDdUlt3vyvbDDQSGSENFINHpq+lrRi9ESY
         BefA==
X-Gm-Message-State: AAQBX9fL3Jw2WEFDCKhpNKEnJKIuDfGNBnrYTslPxmqq9C75K2mUy2dd
	vPB2Y+Y9xd0le7nQ+9R7C2ROHg==
X-Google-Smtp-Source: AKy350YDs2q5/qG0/+u/R2zfmdyySqEjCGoK0ZJpvsepQRQ5Tkbvho6Wz38FmgqMtpvwEa/pNFBRdw==
X-Received: by 2002:ac2:4884:0:b0:4ea:e628:356f with SMTP id x4-20020ac24884000000b004eae628356fmr178985lfc.48.1679624721820;
        Thu, 23 Mar 2023 19:25:21 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 06/41] phy: qcom-qmp: move PCS MISC V4 registers to separate header
Date: Fri, 24 Mar 2023 05:24:39 +0300
Message-Id: <20230324022514.1800382-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192524_062633_71BA222D 
X-CRM114-Status: GOOD (  14.00  )
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

Move PCS MISC V4 registers to the separate header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h | 17 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c         |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp.h             |  8 --------
 3 files changed, 18 insertions(+), 8 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h
new file mode 100644
index 000000000000..e256a089f228
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_MISC_V4_H_
+#define QCOM_PHY_QMP_PCS_MISC_V4_H_
+
+/* Only for QMP V4 PHY - PCS_MISC registers */
+#define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
+#define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
+#define QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1		0x08
+#define QPHY_V4_PCS_MISC_CLAMP_ENABLE			0x0c
+#define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
+#define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 269350687259..8a1dd5d80145 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -22,6 +22,7 @@
 
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 7ee4b0e07d11..1581d9b3d25c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -126,14 +126,6 @@
 #define QSERDES_V4_DP_PHY_AUX_INTERRUPT_STATUS		0x0d8
 #define QSERDES_V4_DP_PHY_STATUS			0x0dc
 
-/* Only for QMP V4 PHY - PCS_MISC registers */
-#define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
-#define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
-#define QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1		0x08
-#define QPHY_V4_PCS_MISC_CLAMP_ENABLE			0x0c
-#define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
-#define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
-
 /* Only for QMP V6 PHY - DP PHY registers */
 #define QSERDES_V6_DP_PHY_AUX_INTERRUPT_STATUS		0x0e0
 #define QSERDES_V6_DP_PHY_STATUS			0x0e4
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
