Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB89DC61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 13:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeeqUgF4mHvUECNcCzNL7BkKgdS/02IQzkWUoVQaroQ=; b=NjldBlfTn956a0
	uNWqFDKF4S+gT9sKGSWSzF+UaxJhOI0OB1peoV6D3WdjY3woNky4FCUNY3T7hQ4ZFGy7iUBQxc+pL
	0k9z/wimoyvSekeKxBkV7omTLUQ99CmeSsYsGQnse2AeGXjTcenLssxJCYrlJgUyCw7ATne7NCHSW
	IfqRgiprS7ZtcH/WX2ALTNFFjE6tIMzP+zTZXAWo9VKzVeYDynKGSiJIGX+z8Nr/5xzUnFtNKOhak
	4MrydeDlEXHVffo/35Wzu0GKqILJdxjwxvRGiBkUY+OejW5ZJA2BiXf/amAsTSyKoCPOfxTNdDF2J
	p1HLr7YzmBe46/y08RuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHe-00F5il-5X; Thu, 12 Jan 2023 13:06:18 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHP-00F5dH-BE
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 13:06:13 +0000
Received: by mail-ej1-x62a.google.com with SMTP id jo4so44619486ejb.7
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 05:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbHIds8BFvGtaiOTl0/aVRYn+MTTKrUpCy0OwIBQhqQ=;
        b=J0wlkJdrSQYSqbfYrmFWRf8WEoZAPNQOUZ3DFXBug/xXeuSSPgCDZhqLyOso7VNX/A
         TOSrGXn/6kNPF3WSDFGHwe1Tyy5Es4Wr/0WbAGzV72fx2z3+faKmpcRMcYN8hl+809RX
         k8H7JNx8E2XKhN/QrblkYRLseZ4SJHCl2PipR4+WiqyGqQwvcAwedegboBHKyD5C66q4
         mkPG/AGrM9kWkOtkq0mBqHtlmn4qOrHjNF8qyuC4n/hzHPW5Pd7WanAobJHJlNGU23Ra
         J5VxAx48JKesRqgNnuto5sg/4RU/gP4MvbRD4WmQLKoIevARaCSJFlUJ+UiX7PE+313s
         9mJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbHIds8BFvGtaiOTl0/aVRYn+MTTKrUpCy0OwIBQhqQ=;
        b=gXpmI3A+QzHO+L/lvaqSWFmP7XT7k8y5pZMmhGUTT7a937ZYSS4DsyFl8jR1Ym4GlA
         H6BOKhtHwBhb5dZypVBfPhC9QhXP4oUutTEFfHTExqGqmo4ICBJeUrkseX8TP8g1N4Nn
         kSeRtkseJ4fnIB8KaByAeDsQ+uPvg3K14n1kArDtZe4NI8gjxmdsnuuxPJ8/HUSY2pey
         HDPHnmmTvgCUJKFIG6NAuf+I3T1OyKahZLQCNBcXkqLOcMrbMzOpcxhvRSCXA3E4riD+
         rmYduRBF6iwVmgz/e1N0KnH8XdeJOPnxLWKdvcCX+MOo8ZqfFFAGOrQqPd9WhPEVLqn1
         dcrw==
X-Gm-Message-State: AFqh2kqa7QL6FSoaJQ+MA8DRha/EoKAyN2/DOXhxtZIqxFb01tO/v7Zk
	GwvD96I+Gp9rDOpoaVR/b6v9cQ==
X-Google-Smtp-Source: AMrXdXtL/rn2Xiyw3+uwfI0xvT8ajBsruE4yQ8WRSkKeJIEwYzGTJlmoQnVgOZK3IDQhZFM8PBJkSQ==
X-Received: by 2002:a17:907:b681:b0:858:a721:8394 with SMTP id vm1-20020a170907b68100b00858a7218394mr9049653ejc.65.1673528757225;
        Thu, 12 Jan 2023 05:05:57 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906318b00b0078d3f96d293sm7427668ejy.30.2023.01.12.05.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:05:56 -0800 (PST)
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
Subject: [PATCH v2 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
Date: Thu, 12 Jan 2023 15:05:41 +0200
Message-Id: <20230112130542.1399921-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112130542.1399921-1-abel.vesa@linaro.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_050609_522000_E3A5B50A 
X-CRM114-Status: GOOD (  13.03  )
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
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 33 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
new file mode 100644
index 000000000000..dde8830257b5
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
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
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 6d6108925716..9de8e7e41af0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -49,6 +49,8 @@
 
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
 
+#include "phy-qcom-qmp-pcs-ufs-v6.h"
+
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
