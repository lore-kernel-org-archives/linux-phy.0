Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 101BAEE49A6
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hd3fd8+CvJWlqu4ZNJxT4uR3DPPq+F5TyHvraAXtDU=; b=Qr42mXoGOsJu6h
	QzRlt+bP+ouwrocuE5OOr+db2IVNGO2WD+sX4uTUuZ4hZUHEPgJ+mpOGQfqi46Dv819Y5CfJWaQ/U
	nWPIJzA/XwMRLTo7ZX5ZJvkttrQEOy1i0lS6kaE9nq6yaBjnmlfnpZCEuveMSvLd9lRcTsfB7jMh2
	6kDHmLXexLLarwRjVc0YxbHV0LOGXYa1ThKnEkwn81ZB7JYchxZRv1b3Uk7N6ukFK9raPUwoXgBF6
	IYDP9O/M3Z3dhmMV9z4YuIYdXy2R4E6BvLL5mlb3fqF70h9rTGeTXqpP8e7nWf5IHursxBbZ9czI0
	FhL6snc/973XxrDpnyYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkK-003orW-2N;
	Thu, 24 Aug 2023 21:20:04 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkH-003okr-10
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:03 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50091b91a83so351872e87.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692911998; x=1693516798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=WMBR48fEAtiuOFYSaAKrg4lOQzMbcPMvh+ryvhJwfZ4uZTZdNM0rVvoS1cIA4hyEzG
         VdZWINIra6uL44IR7Qc2lAj5Gmkc2f9zT5CkOWzAcKyFW3WNtABjwbsf/LmGvG/JVq9w
         4AvbBSXX0yMWQAn/xNUkecOLsApdGquNJ20+q/07/NXyD7OGxyw8uUCMQgHKU6AFjP8P
         vadmUQ4nt3s8EaKA//L/0njnc0pKYoVLSdszEU868p4rhU/2te5Z+SlWV4iw8pV0+VcW
         GL7Fz/UAFtojRpuGGHwiL3KEXmER7VykqJHuCPvihXmbVZ2XABICrEhxF8kOZ3p9YbSM
         TjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692911998; x=1693516798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=f35L4ZRYya1p+AHV+TkM/iUJYjYq3EDYXEf1D+qtOeBlK9GBdbWMRcnhtlJBuCZwOZ
         yyXeYjfkOw9CKia4Ggd6Wy8wlV5owCLqu9I0zAXu9V3sxqOxrG8spclW/1uCEd1tnntj
         UXbYzNOAhJ2tS7puIc4czR0kya4h4tONQAhhiXHjPVJ9jVEDCtIH6nV+9krKeMnQyWD+
         9BMwynz8fSmOppladWlEJHZhBqh4HGfuMyiRUNj5YuOFmrsjhFFMVtNFdBzLrOMrQVgu
         guaylbqIQDmY0iXxl56H3Xg9+V7O0c74ybmNMjUT5NP2T49VfxG2flH1RX7FQXzpcDzK
         h2iw==
X-Gm-Message-State: AOJu0YydLqG06M7WVG9rhsEKJH3Nr5mcTrCUycXQhH9tetaBQxFjtuos
	ITzAFmehMGToa1pSVAP3Ai4+NA==
X-Google-Smtp-Source: AGHT+IHyH9FMI2+xgQbIvbU7paqUhcBUhQrFf+ntRdkpX+dNWu28gijxu2GMP5ehPe1DYBin4RC8gQ==
X-Received: by 2002:ac2:4557:0:b0:4fd:fef8:7a81 with SMTP id j23-20020ac24557000000b004fdfef87a81mr10715275lfm.55.1692911998388;
        Thu, 24 Aug 2023 14:19:58 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:19:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 05/16] phy: qcom-qmp: move PCS MISC V4 registers to separate header
Date: Fri, 25 Aug 2023 00:19:41 +0300
Message-Id: <20230824211952.1397699-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142001_469537_E25C93DC 
X-CRM114-Status: GOOD (  15.13  )
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
index 411cf0ae148d..42a1a3f00759 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -21,6 +21,7 @@
 
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 32d897684755..71f063f4a56e 100644
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
 #define QSERDES_V5_DP_PHY_STATUS			0x0dc
 
 /* Only for QMP V6 PHY - DP PHY registers */
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
