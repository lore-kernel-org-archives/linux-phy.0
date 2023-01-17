Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B987C678D8
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPSmDYxxhHVq6SMs9L9PADzn+OnmdBKGxXdGskQGrUc=; b=bpPFwY8QIZrTom
	oifWNku1Sv6n7K0QwX70CjtwjAhVzXFJ9TOLaim03O6Gc57IiDO18+7x+NlagMPjNNmGJ8b22xnEz
	pI76IO+TRGIyszVJTFawetHLPg9j4EdJvaIPPd2hYt6igtIxMOxO5UdcaA4BZdas27nz7FhjXhKJm
	irxuqPr2KSGyH2O/s8VmNpi4lHQsSAIA1Ndb6CvOK2qEgaqGnB2dFJSOZsuM7wRiP/czTkyB9MbfI
	oVIPmhD/JWgro2YWjeTeJ8E12ZQ1PngBJA51+RQK3w+9NSYrrL7/WDOPA7F5419MIvwYFtOPkNw3R
	07SwCc97bA0kzUaNvl7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVn-00EGwy-9V; Tue, 17 Jan 2023 12:56:23 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVa-00EGoH-GW
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 12:56:16 +0000
Received: by mail-wm1-x330.google.com with SMTP id h12-20020a05600c314c00b003da50afcb33so5785378wmo.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 04:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtdIHI1FrtH18srRT3J+hSb3cMdeCN2ZcbbQNM75CEA=;
        b=fxnU8xLS26QJ/X1BI4EbuhxqOjMtiQpKjwAqoqGDbMZm7HXnTnWDVk17wjIpzsji59
         I+vwuuMwUA2FcnoKsrfPNryrdDDmc07bnwKngvii3Ql7JWZgC42q9fjGa4daOiJrxPDw
         vu+ikRWEH/molleLzEp14MXJ7aWNhLeX/0QJE+24tklNOHUcdnK+O6expXav18ew4Oto
         7mjyGEDu18D/B84JJIjxjXpNgICS5rIgaEJY43obmzhAUiAmzxVpALoEZCy1gwgiM16V
         SHPAw+D5Tk1/MEzL057i8TMEA7Ap4rOBH6MxfKYZrhjwSIWJuxSIQL2Z8QsTlV2TCtTd
         0l/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtdIHI1FrtH18srRT3J+hSb3cMdeCN2ZcbbQNM75CEA=;
        b=VsHW8jdtZp9k21fanJvWWZnrwpDknNA26HBXtXsX6Tm1P1vOnjzkGFKHT7jaHJ1hu+
         iTjXbuMrE66/XGGj3+OEKkyBzEQJe0iR/lX73ctzN4YmzHoRImqxQzcJqEcbDHKgEETx
         Fbjbd6/Dv9Gpt01Om9p32p4VU8qRQOEGPPgkHGKDmeHbVjgfEUWeE2ZyOKF4I8grVMQF
         E/W2Q5EHuiTCzG1ac94wvIXl692ibIpkBSAyA1DCkutCH40NnlzVqRKKc1s4Yzh5rFe+
         9vV1BgDi4hPh0V9gL8t6x/0EHTqDczZ6gkIT08BS58n7ekbEsBiUPcrGJ59YjBVD4zsU
         3iOw==
X-Gm-Message-State: AFqh2kpUigYcm+TG66IYfu7I4qPR2pi5lmMMCIqcAYkXRA3FppTxwQIz
	AvZKBrDmM7Bj1ZWerV1z7zcy0Q==
X-Google-Smtp-Source: AMrXdXsExH0fa73mCl+7+GFfyZ6FC3iY7VcDQ1x7qAWIVeV4b0C9Ze1u0Cyzpt8R1aTIE9MPF0XTVw==
X-Received: by 2002:a05:600c:2e14:b0:3d4:a1ba:a971 with SMTP id o20-20020a05600c2e1400b003d4a1baa971mr2928140wmf.24.1673960166788;
        Tue, 17 Jan 2023 04:56:06 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003c70191f267sm45069778wmo.39.2023.01.17.04.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 04:56:06 -0800 (PST)
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
Subject: [PATCH v3 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
Date: Tue, 17 Jan 2023 14:55:53 +0200
Message-Id: <20230117125555.163087-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117125555.163087-1-abel.vesa@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045610_600836_DA0F90AF 
X-CRM114-Status: GOOD (  13.15  )
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
index 000000000000..6238dd2b8421
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
