Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA928EE49AA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hd3fd8+CvJWlqu4ZNJxT4uR3DPPq+F5TyHvraAXtDU=; b=bMGFm0/whSm5rL
	RWNpWqkMXyjL1+XCkmu/+hrdtcjfOdqDdvTUViaFVlJNsOUPrNT/wdaT7v03dqZk7NisAAcKYxj2z
	uDNMgOxZrLeHEvV+B2oHdj+UR/mrbzIoQiHmVEd4ztYTYxRdaVRi3a+K9LUuL/giGkZdL1FdMrOBW
	hmTnx84hR61uIOYJs7TSGAKxbm/m1h+dV6JCvs22DuhLMtO5zYCa8uwZnr6r4bIkHPxOtDa3A6pvr
	H3FwU2EDwzMPykHWvKvQRptkCIO776FtESqESVqPCbGzFvXifZjHccV6pG9teGQWh+qud5XNY+JOK
	Ugv87XSHTt3zTPFaloUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjr-00Cjnl-1O;
	Mon, 21 Aug 2023 00:25:47 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjn-00CjjQ-1b
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:44 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bbac8ec902so44522671fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577541; x=1693182341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=jT+xLTaXC34k1GmE5Hzk9/0YvC/ESSfTx1s0IT4gf46X1lIrpj0pTN4xnRRFWBHC+D
         Ew3ihFg65zlJsZoJX9P2+BpOjNrkCbsjzXiWz8Pgz1d0qLo/rvJuE1+Zh1hzqoqlRIZZ
         Of5/4cpkzDOoLY/awDr7vYcWn/2RLY7tygHQS8+kEijdKPNMdJjOzkQiSBRA5MXrtbFM
         CEMzF6siMsbO0/0KZSsNGESn1ZfIiuC2NvuWPP0Asc6AC2JGqi97NAcXR9YKrPFKG0wh
         aGjMnFlHos2ZpN/M3JJrCL0odIyVkXxUGo7mEmesTxwRetGQeb4jUaxT9ExsEyrbuv1M
         jUZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577541; x=1693182341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=LE8Pto+n44eMfN0/FCcjIPY3fw6SGAXGmz09RBwgJ3AhUYVnFXzVoF0YteRCi3GwCJ
         72IBXD+xpl1ekFpqKJmeQuYV3QINBRaiA6m8kw02Z57LpzeAuAsL+akCryhe1hbHCLtK
         0bo44/gccvNFPHR01SP52RFGM7shlBAuXltOO+tapMMds/6sDQUgpemBLSgh5yJr1tGP
         F3PazMdGNXrhQCVVRaerX5djFLYBjs3A9aY+20koKo+hqx29sKLEqQU1KSdCK85vjwv4
         zc6Y32UkjI4j+Jdw2grEgSGpZUnoR6d0ftJTFXFb1fvoqwuAk2iptz/LEOYL9AJBWBZU
         LriQ==
X-Gm-Message-State: AOJu0Yxk4SaKNpC74YS0w96rhoxw2k8qJQ0CaaAatGsAA+b7xgEHDn8k
	gk1NiyoAZv8SPkGYeQEYuNYA/A==
X-Google-Smtp-Source: AGHT+IGrYuJ+w85s1q0I8jvwou4kwSDdjAWecWslVTjDjN3SYPfBOenQ8HXCpnIOuvd2XcxvvtNfTw==
X-Received: by 2002:a2e:8815:0:b0:2bc:bf29:18d3 with SMTP id x21-20020a2e8815000000b002bcbf2918d3mr823396ljh.31.1692577541065;
        Sun, 20 Aug 2023 17:25:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:40 -0700 (PDT)
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
Subject: [PATCH v2 05/16] phy: qcom-qmp: move PCS MISC V4 registers to separate header
Date: Mon, 21 Aug 2023 03:25:24 +0300
Message-Id: <20230821002535.585660-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172543_532608_F22080C2 
X-CRM114-Status: GOOD (  15.11  )
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
