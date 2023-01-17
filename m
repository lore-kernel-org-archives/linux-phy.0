Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0284C678D4
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLLjD2tKmHqqLLy+C5VCe333ZSCDvTA863DlCgo9bLs=; b=qPylTi5aKRaaNK
	aWqEBz0+L9ihUwn/6mdsJOkh4F5i8V/eXrefQt9liZ6tgr0OF2TzfTYolo2SBRQHbytl3+haa/N+e
	9gv8J95DWOm6oBxlm/IGRRV5R6fL0lqRC82D7FXaQEEe5ZGA7p3bJPnSbjEYz1EpxOwOfWUsTwSFi
	Ikuuzo83u9rweUsXlORNGAI3oWR2yqowDYe3Em2hsU0gJR5nferuXjxsxuGSa/t2Lb7i692zNb6+n
	6dXXkXisunDKWxGMNzlgJ1DOEipdOOqoEyYsGYbYLdkCcDnbZLi1iCfM0UxVXk3NBYvTntsxLajkF
	riQOkawW7+mxSugsk1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpN-00Easu-2f; Tue, 17 Jan 2023 14:20:41 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpK-00EapX-5G
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:20:39 +0000
Received: by mail-wm1-x332.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so1686312wmq.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=bDSOWy/wcE6qhjPtA8g7nZagiFARU4kdRAQ2QBD21MugTReENn7xKuSvVw2jCFSEWH
         vFkiQrQdSPDz20rvrJvlZ0bdUfrlW+I2zImshJf0ERMM6Gs/t0ABguBMjntpU2vEYyW2
         yHucTjPghwrnfWdt/RK26pFzzY+VBl6oKSC6D4/kpxzB20A9ylkEhcyCjHwNmnUTHQGm
         W/eSy/JcZ7aWImqSJmGi0IpCWB6PPhbzPfouLup2mYsc5JPW5QJmdjle2WfCUXYnQmHa
         0q6gT5jVrGSSdMswUNaXQjMMBRlST3u8lCXK/abuwGqhSrojD8M7FA9ciqGPaN9K754N
         AR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=qW60pGExA7aab8OPoV8myJ4EQ16DuoJFcMGmqihwJRe4lXMtHQMI6DokmDkj8uwjXs
         wdTJPdzM3E0I/QW1Bmzm1pvxuxE7dk1y/CUMyqf3uTBzlUw1KIytZbbTBn/UCl5wJS0/
         cW5+EkkiuyxRJV3p8cYSJMn488OLgAiOfhML8oAOrVxlpSbnuPprOK2u28ow+o2quc7A
         lHqImVEYjGpQKA6h3668ekki3baRitjzcgI2IukAuHvobKyXG+LTNRDVr+DYSVE+k3A6
         crg7/h50Gv8WT64i1oItR0FjFZKNwECJLmLouWJvd3zchRnHVMBizIVW+5zguxzOwyij
         p6aQ==
X-Gm-Message-State: AFqh2kpCjQ0iQnPfCkccmkvzxKO84Ab/RHYD65nRLB9kUbzYg22kJtpc
	QeMF9geVl5ek3nFh5UaDDhV8Eg==
X-Google-Smtp-Source: AMrXdXsR9oqPeaz0hSHKeQnDArzDo9ilTPiP5TG2YLjUBeWjOrROgnMvZJ4IRgOU6YqZVRW03exBTg==
X-Received: by 2002:a05:600c:4256:b0:3da:1d51:ef9e with SMTP id r22-20020a05600c425600b003da1d51ef9emr3185452wmm.17.1673965236971;
        Tue, 17 Jan 2023 06:20:36 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b003cf894dbc4fsm40443133wmq.25.2023.01.17.06.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:20:36 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v4 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
Date: Tue, 17 Jan 2023 16:20:14 +0200
Message-Id: <20230117142015.509675-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117142015.509675-1-abel.vesa@linaro.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062038_226648_5AAAC49B 
X-CRM114-Status: GOOD (  13.45  )
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
UFS and PCIE g3x2. Add the new PCS UFS specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    | 31 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  1 +
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
new file mode 100644
index 000000000000..c23d5e41e25b
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V6_H_
+#define QCOM_PHY_QMP_PCS_UFS_V6_H_
+
+/* Only for QMP V6 PHY - UFS PCS registers */
+#define QPHY_V6_PCS_UFS_PHY_START			0x000
+#define QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL		0x004
+#define QPHY_V6_PCS_UFS_SW_RESET			0x008
+#define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
+#define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V6_PCS_UFS_PLL_CNTL			0x02c
+#define QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
+#define QPHY_V6_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
+#define QPHY_V6_PCS_UFS_BIST_FIXED_PAT_CTRL		0x060
+#define QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
+#define QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0bc
+#define QPHY_V6_PCS_UFS_DEBUG_BUS_CLKSEL		0x158
+#define QPHY_V6_PCS_UFS_LINECFG_DISABLE			0x17c
+#define QPHY_V6_PCS_UFS_RX_MIN_HIBERN8_TIME		0x184
+#define QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2			0x18c
+#define QPHY_V6_PCS_UFS_TX_PWM_GEAR_BAND		0x178
+#define QPHY_V6_PCS_UFS_TX_HS_GEAR_BAND			0x174
+#define QPHY_V6_PCS_UFS_READY_STATUS			0x1a8
+#define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1		0x1f4
+#define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1		0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a5cdd58c5b4d..f142235432e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -26,6 +26,7 @@
 #include "phy-qcom-qmp-pcs-ufs-v3.h"
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
+#include "phy-qcom-qmp-pcs-ufs-v6.h"
 
 #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
