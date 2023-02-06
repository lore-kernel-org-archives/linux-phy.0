Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE01FC636D4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAa1Ii8KM1UtlXr2EdB8gC1XDeSB6AR+l6+29TLTI7c=; b=xPBa1FLw4TNEuz
	rUarbZZf2CRgrhibybqzVggMiNib4qq9te8y99aClzyOGX49rawXbA7R8HKuqXhRlpkgmWR5A5UgR
	gS5TFa7ZJM9w8QtjLKDG6qAj/C2idx4ZzfrXd3bbcmDwnZnYIJTCNRMIMZJ29FwP/CtvfF2+Cm1st
	befdPCwwKjTW/KGayjYhZdhUwQMFSrvxZpfpwVhuxzFvmPrZE7UzUYoBXzxbD/GdUo4ZfI7jHTT/K
	Ohs3Vjb+ZLIPgEga+OV6SnhKzmwpE9hh0hUwy5SK/V+GYIxAC7UAhrQ/HRT1xXzmbYwYASgVQHC4x
	LI+MCKy9Dz7eWBM8e5FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90Y-009zMC-5j; Mon, 06 Feb 2023 21:26:38 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90U-009zEt-LY
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:36 +0000
Received: by mail-wr1-x42c.google.com with SMTP id h16so11718744wrz.12
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X/fStvwYHQIixNJ32WnY5uSuhJXMazA9QZS2xgOLLN4=;
        b=fHHHWEGCLNG70h4VPdVz0CWqGmwybrfaDU3DKvXZb4OhFFSlTjtmopXl7Jy3ocs3Ti
         6UV4gVUtKiJbCSxvvMVfghAKZBqGfFRtZ/eNmOapAmwbycvsic5YXcarHDYO5nm3uTyx
         KgZTSrYwdQm4FzfnrQaUsqE4j685JbsUUz0T7JosbrZgvpe6/IZg8RUtelDGtlfuS3s+
         LcpNa18EXac4klKlMobrHfd6ByCH35FqRc8XrRSkvf1mMiWqgjYreg/e6yyGJcAcztlF
         2p8ivz9fRxv9Upi+kxfK4z2ZtoedJ3jyxa/WOQfHrovwOSQpyNLep1jREZQAXo54cgYX
         u4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X/fStvwYHQIixNJ32WnY5uSuhJXMazA9QZS2xgOLLN4=;
        b=PFeuLrx+omyq1icuMFrRbhmFWEyNNTDCbJXKqSwROhA5eLGnBuF2u4aJo4HI3EsimK
         M0I3zZsojNcDLnDvKs3WsuRvDNF77iC/3RA2NaF/+Qy0mKz49EIt7M7LdgapA6kGmQ38
         /+MbuUxYy4Ycf3Y7R6TTeOdwPEVZngqpNhIFWXzNJIc3C8dIcpCR/w5dWXfHpVCrgDJR
         RvGgqNs25YgXs2coqA/HmKL8Z5ue3/wVIS0v92tz203V1xfO4Ydd6GCkDDyTF8Hrg+c7
         G+Y7uGQLB27KYUM398Julls4blo1X5RP6o3mzIGkmTjEYeTuw4K3+9Wmc4GRoay0bD6x
         sM0Q==
X-Gm-Message-State: AO0yUKVf3+HWehigpo8Thl6g5SBkZYIdrhQsFk7pIdsiQke0ZUtr8nrp
	qySlSWy2FRM3LqbnJqBc5myxEg==
X-Google-Smtp-Source: AK7set9uyrwL4qWINdvMg+unCNQPZr/7R4gNWlZtoozM+QBMrCMde4T8c+YaZjmkVQ4nCPIjp8wekg==
X-Received: by 2002:adf:f007:0:b0:2b6:7876:3cd4 with SMTP id j7-20020adff007000000b002b678763cd4mr295246wro.16.1675718794171;
        Mon, 06 Feb 2023 13:26:34 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:33 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 07/11] phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
Date: Mon,  6 Feb 2023 23:26:15 +0200
Message-Id: <20230206212619.3218741-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132634_729416_0D985AE8 
X-CRM114-Status: GOOD (  12.61  )
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
PCIE g4x2. Add the new lane shared PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-8-abel.vesa@linaro.org/

Changes since v7:
 * none

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * none

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         | 32 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
new file mode 100644
index 000000000000..86d7d796d5d7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+#define QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+
+#define QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL			0xa0
+#define QSERDES_V6_LN_SHRD_RX_Q_EN_RATES			0xb0
+#define QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1			0xb4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1		0xc4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2		0xc8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B0			0xd4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B1			0xd8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B2			0xdc
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B3			0xe0
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B4			0xe4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B5			0xe8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B6			0xec
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE210	0xf0
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE3		0xf4
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE210	0xf8
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE3		0xfc
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE210	0x100
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE3		0x104
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH4_RATE3		0x10c
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH5_RATE3		0x114
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3		0x11c
+#define QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE		0x128
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index e5974e6caf51..148663ee713a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
