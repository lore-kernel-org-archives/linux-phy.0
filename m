Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A8C0C00A5A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NDv2sdoL1AUWQIdoEHf71XgE+JNesB7dFjRTgbMTd8=; b=OcrgrTzM/2zNMH
	c0b+FFq4edR6RGjzG1bGejZ9u4sS2nBjVwDrEQ7rMZTIBqyfwr8SfBfM3fjEPqJJHFuuApHR8OFeY
	y7537cMGtlI25M6j0DPj2kBjyaUBaM3Yr7e5YAiCly96MIgkDxQxOoivM1Y6dG6LWeSzFXdVzrA5v
	j9MMqqlaUQPm++iKjl6JiiZyHBiDyFeBHEgSIC0fiv+y6rze7LS3Z4/xTH/Q988SumssfHLZTrqv3
	g6DwFuiR+tc8o5VDFThV1+WIAvIz0Y2RTQCOksuS6r+ie6fIdNY49E4hAidp9BUIn1VyMp8wDQ7LT
	FYuIj+hREpDKy059T0Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueb-00G8qG-Nj; Tue, 17 Jan 2023 22:42:05 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueZ-00G8n2-99
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:42:04 +0000
Received: by mail-wr1-x430.google.com with SMTP id e3so22945612wru.13
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4JAOlLrfNOb5Pzbngp7SFMzqUr448EyrCcTc9stSxag=;
        b=ow2ryBuWHGNpoovOfcW+4/8qHuN3sy5YXZahWUs7z/JJ3ly5RMxDzmP5xTwUAhBM82
         ucjXIsz0eo1tNrr5e3Qucz3HhvWH+pVo00SdLBLsmSC2fJTx3w6EpSPRY1W3vGI4Tnx/
         RKO/afAmZl1DigOUL0j1jTXcjeCmALKBnhMFvMIFHo8xSJSxGsfcq9ivbcAOPtWjOevW
         7H8z+OyQgNa15W0YwCP4zPdE7WUvFvjpgaSMPzmGHJQ5n95S9lAtubb7te302RHd6O6B
         4+5Qf6iQ/q28NW+TO5gsalI63hlmeOrwoisJzCvA+7LZoYGQI2IEeyn1ny+WWyTsBHs4
         alqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4JAOlLrfNOb5Pzbngp7SFMzqUr448EyrCcTc9stSxag=;
        b=Rtdt3NXXWnDSJWLzOApC/XF+KN7oiBCpZLCAbIzoTkGJtAT13JKqgck8TJ9k9wsuXX
         7pO5aIDh5dcErHy94RUEhLqjCwoB4Il4q6Oyn3Y7w97LOI4CyRok3pEC8hLi9HNquE3x
         Zat9XYCvOqqkuDSDoEw/W634D6RZBd9O0dMVsZYgbQwerBLB+BqbgebYYH3DPyh+1JZU
         EZoWNZgec0Hp+QOlNzk/w3pvLCqsrVu7Hh6OOU86LnNqGglIaBmpOTs0740mB4MF2L4+
         8QTfeTfpU5swF4ceusg7i6HxkvlNLIoAU4UUB+zFVy4DQl+JUsg3ZSKlvFjPTukIvbdj
         qwiQ==
X-Gm-Message-State: AFqh2kpkhBp0FlPZXmt/euCaqM4jJtlCvfyOp8zc6HteRDuvqL7lUpIm
	YK56UhmWLNXcWfg7aij2FHztRg==
X-Google-Smtp-Source: AMrXdXuDosm1Q4675v4gyK0x9SGAQJBZjum2BYMUM8dfC2FFwxiWnyQ//Szl7PAnIiAqrSD9sFl6Rg==
X-Received: by 2002:adf:cd0a:0:b0:242:1f46:fb8c with SMTP id w10-20020adfcd0a000000b002421f46fb8cmr4251489wrm.41.1673995319622;
        Tue, 17 Jan 2023 14:41:59 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:41:59 -0800 (PST)
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
Subject: [PATCH v5 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
Date: Wed, 18 Jan 2023 00:41:46 +0200
Message-Id: <20230117224148.1914627-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144203_336036_A261BF06 
X-CRM114-Status: GOOD (  12.98  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  2 ++
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
new file mode 100644
index 000000000000..15bcb4ba9139
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
+
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_TX			0x28
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
+#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
+
+#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2		0x08
+#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		0x10
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
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 110d8fb9309f..a5cdd58c5b4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -27,6 +27,8 @@
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
 
+#include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
