Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1504C678D7
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLLjD2tKmHqqLLy+C5VCe333ZSCDvTA863DlCgo9bLs=; b=KZk63mBBrQ2Uu8
	dXVix9AJMULbZUi37tuWln8+5KVe1HYOJmhh+C//psTpU7B1lvOEs3mj9Fb3YniseHg+kPwrQl4Lf
	evZco94M24jTVKOlZowkeb8D9m4G3No3B9MXAaJddEKxV9nqlXZo0K7N5VJ/9PeFmrAJ5iS1zDPon
	9ICVxkB7lzxCPkcocsLGCQgaE852HqFF1oYLXOUC1Q/MBkY9pfcxaEPc9AKpukfZ74I55NBOGWwlx
	LlU6ao/OLNe3SSDo1Ej5ord509aOXfYxyRH+KgXelpy5L4ZScqSn+dZTXEW0F11fRrdOoi8MSMNLd
	QQKivtarPA/eLjwotUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVn-00EGws-3f; Tue, 17 Jan 2023 12:56:23 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVZ-00EGpK-A1
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 12:56:16 +0000
Received: by mail-wm1-x32b.google.com with SMTP id k16so1523244wms.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 04:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=j8v6WsgMPySTLjp4jI32NidOsv+2hcQkCAEvtIRFR1C/H3M+jj0jQaIpp5qq+rwlHC
         0WAZiwIuUkHgOZ2aLL2XviHIvPjNL+NvfyYnKqAesYtYSYFQBAclMOhoYIWTnRZzscw3
         GWhRZdxBDoP90ArTMfFX3hUXmppUb63U4I+juJbnSpgvTstVvmwy+jKi0R+AO6XawyT8
         cYzoF0ptELm6fyNamUWdZ7t6lXToYxd6xjO2LFwrjnXhULBGryIZx2o9PucVp4ORVFCZ
         Itvuv6Pp9FTjir2zxPCX8IeDv23snU9HFRyGfIHbBAPSfnvu05ff1xiGUb96+Dh4FyqX
         FlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=gyQ3GEqGq+YYgM0taBsUtkYOs+DqejfrwXd9BqdMbEhZYbjl9NceQexF5hALC9NtBT
         wUR4Z2DuytHCm5Gz/eB62TVQ6/yhvKtbFlCEu2G3uwSm53/5I8/rRxwHvH5aVuXEyh21
         qd/0XrJ3CjJjzSCqrRkE350+57kmfyuE428xcnV/dweGqmdsk4apfCGWsJr6HyL4++Wv
         mzRIlctp7qbqgg2PdWzLeSDK2VerTZdhtgI+SBHxFWeyKSiBCF8DXw7Iil5f+DNmG4jf
         tCVliWGCPc1aLMy+nVrQ/r6y6muZU2GZBs+8kGpB58gLj1TDOSFJbSFJ1bY2Th8u4Vfe
         wbtg==
X-Gm-Message-State: AFqh2kpRcMl8Yq/yu6h4wACEc+Cn7jNIIXQ9rVdapyFzSfEO0R9sm5DN
	BlbMQU5riteNwGqUOUye6+gXag==
X-Google-Smtp-Source: AMrXdXveR5AM8/6VtfeEIJWf1knr+42wVBkrPUITihmdfrm14dot6D8nS+gqqLxVRphb+jmAtGZuKA==
X-Received: by 2002:a05:600c:1c1b:b0:3d9:ebf9:7004 with SMTP id j27-20020a05600c1c1b00b003d9ebf97004mr2877808wms.29.1673960168115;
        Tue, 17 Jan 2023 04:56:08 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003c70191f267sm45069778wmo.39.2023.01.17.04.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 04:56:07 -0800 (PST)
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
Subject: [PATCH v3 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
Date: Tue, 17 Jan 2023 14:55:54 +0200
Message-Id: <20230117125555.163087-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117125555.163087-1-abel.vesa@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045609_430377_521EFE6D 
X-CRM114-Status: GOOD (  13.66  )
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
