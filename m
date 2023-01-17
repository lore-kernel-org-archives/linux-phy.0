Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6FCFC38147
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTjF/YZ93V+kI6qQtCB4W8kSKejTLN0vGDL99EksknM=; b=qpYRY84aY5EGxt
	Yi/vvQm0hfqQNvawRBznhsvbtX6uXjSCVGBhU1Xd/k0P9ArAZ631JLAfgbFjzUloy5vKVojKE8jan
	bF8Wce43ySuFJvEFbv0bYaF0uguJjI5XYg1DGmTYlY0vG2gU+1uB6XMoPbfZa1HQE5kS1YshOwvjR
	MP4FVDW1BBOt4UEX40vDnMnXWoKKRqSFKpz/du9vGBfvApoyenmfP8plG3/ExQlKN3h+A2Ou9lt29
	34a7A1o3rwz9mBpDfhKfhrI64bHrVUxPRb/PO43CK9jf7EVkhTlwKdlvQtoU1whNMsDjCYmBX0IUu
	RTjyAGEMY+YY+Qcqviww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHuef-00G8rf-1s; Tue, 17 Jan 2023 22:42:09 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHuea-00G8nn-MC
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:42:06 +0000
Received: by mail-wr1-x431.google.com with SMTP id h16so32157765wrz.12
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opi8RvSZyWqP5CZd/RMpwXuivdX51quIupzhmRNYojE=;
        b=IA6dGsvmzLiwhZXdTikAJ8mTUC6YA3P65k3telk2m5btZwxZv20Ly1KZLgxHJFDf1x
         4E4CKBX64PCIolajLA8rDzE5DJWgH8+ms+VvWCMXTcyD0H3ykdSWcOky3uA/B472pUi/
         YF+QHgFEP7WCiDHZV3ogLiMuRq7HRR7QJ+BZiFIGdbjhY7i3gb3nvYKcv6Yse6T2BLZ4
         bZc40DKPV71H1ruKA9q+npIb5va9yKAG2ESrdk7Z51nlUv+Ylz7STPIjTlyDUNQbgV7w
         HmSZDsyQGOljPFlQuWMbpPrsZE6mJtw8nqX9MJkOYo2Uw8GzM4ZU9yNFbtov/DA2aaFm
         2Gtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opi8RvSZyWqP5CZd/RMpwXuivdX51quIupzhmRNYojE=;
        b=Ios9SZZAh2Oui9xykWLFlfi69pxKx92k8cNcoqFr75RI0wwpGuLvkYQnVJCtofYFyo
         PED8txATkOZLnWwG/+dSLwpRCvqluXBr1D2hpcOGg5ls8JEkdAKg99hcyFUnJfHBhzc9
         Y/D5pA0TIwWGgYxPx3UdJgt0zUUpjnbOzbShhmGJ1XiDVq+jSzNEMdM+BN+ZQd/rNoEp
         I32ViG/OSbp4vRaaoPS19zmTtt6Td0Fi0k7p5DoEFclF88sxFzpjpXlrGVvaV+55U4vm
         uLxabOlBt/CaldakJmueoxgJ/HF3XGSdxrqJsGJEandTXjfy8JzBHlkr1bG9mKPmH+ne
         aLAQ==
X-Gm-Message-State: AFqh2koarMbiSBXrc/fW9QC+rZWYj1Z97ks6rt+UUiX17IDIZQoX05Ed
	VMZW7+t4UQRZwDHGmNgTs7Cb3w==
X-Google-Smtp-Source: AMrXdXt/YsYerSWEk+vpszivx09XXHrKpmRGoXBsQnkBdiYPUPJ6pm71BrMMCP2s9UYlN7gJdLR+JQ==
X-Received: by 2002:a5d:6a46:0:b0:2bd:c856:6de0 with SMTP id t6-20020a5d6a46000000b002bdc8566de0mr4402073wrw.21.1673995320923;
        Tue, 17 Jan 2023 14:42:00 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:42:00 -0800 (PST)
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
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
Date: Wed, 18 Jan 2023 00:41:47 +0200
Message-Id: <20230117224148.1914627-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144204_742291_A29488FE 
X-CRM114-Status: GOOD (  13.28  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
