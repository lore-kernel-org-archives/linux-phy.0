Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A455FC678D4
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyazDabkhQol5GEFDnGsZwDJ71ZAoiW61dxvNp9mH+I=; b=YlbysrOVF+Vi1c
	SoaBgrSEGql/mNIwiFGe8IrDI4QTD0wRAZ6sMfXLQON475cxrcEcmOPgnto9uFa50FrBCEuTMvlOs
	jZhlfk0xb7dUoGhrK7vVWdkwX1PROGLykCsh67AvB799SG/vgGeXeT9hCj2Hcecx3ILLTGuBYWHcj
	+RHJCsV1Qw/uvUsrrVgaK2Z/Y4gBH7yBsT9wh01dt3yvWTeNmhnn4fdIq/aDsFld2RL08ssmoK6I3
	kjdrlPcl9kZA9dbBH5Kr2f8oE9iE6jVDPjRHR3T0fiH2D+BgLXcDOYewB8+Kbo1TTuW2JxAnmR1Kg
	zh+FSRUsDSbpJ6ccXzzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVm-00EGwi-Ui; Tue, 17 Jan 2023 12:56:22 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVZ-00EGo1-7S
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 12:56:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id m15so965920wms.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 04:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kyiiqtllVc+sHc5CRrKe4syI6DRDrK5kgNbzwKqg1P4=;
        b=F/GbV/HS9d9WmPQuglDitdtUit3aY4vgXwIc9V7CZPyl/PoUlNWAGToxBqPfrQcjBe
         E6v/a3pW/uZrD04GXTG7tcLmqkIcpGAqV84fNXvCySqXVBqFhh4dpGC51aFIDo48Xl2R
         /08jN3VtuDXe+igfFqxBHFswCH6zPH4uqgDSCPNW+mBs+w4tsPfU/6l+M9I8bFXhUwLV
         PVGeSwt4i9porkOv15i5FgR6pO2CC5Ty2ABX5PpT3XahMxg+8H1Fd1oRRv1Jw3wMxQmY
         pvBUrFyCn8/z6R3K/Ro3dkbEbxsIapAxaBKeMJnTYCYcA8NPnkykJr9rzO3HGTdVjJW8
         kZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyiiqtllVc+sHc5CRrKe4syI6DRDrK5kgNbzwKqg1P4=;
        b=DWKezRmntZeQVAHBZZW4jKOKiYPRPJsVfnoBx8BE1h8Cy6nOVNPuef8S4i38kkeNNV
         5kbeFBdpWCp9v4FosdYgwINfziSUNtnp25sX+P5SaS273QBuGVNGiV3yJMoLUKw3dkaM
         ve68lkszjsvSAYezbXxmBe1cMOjaPWhgyrZHBPGgwED0uw+Som0CmkZDjKfaj8qNi6m1
         xkJ6YFmU1dtV8d0tqHpT0OuknaIfw/tO5cP5Q/N/EeKdA6+zHT27344+ag6RIrfgvBnt
         TTXiI0YqhH5BqmUTx3A+70iR0MSRyNtoY6YEblRzTZSq+nvz75YT4+kRgH5e0s0vfjik
         hC1Q==
X-Gm-Message-State: AFqh2kqsNejM7DTDmcUMlYxVBLYpwK20NyEbVMZ/cQPaoQf3D019v9XL
	iDqyVETBnHeqnBqpAWGWsDFDrg==
X-Google-Smtp-Source: AMrXdXt67xe+oT2OZkryMa5E0I85DMmW7SdWMd6YYZKTVW6pEsC5NHhCi9r4xx642RTkSfAv+usgTQ==
X-Received: by 2002:a05:600c:2255:b0:3da:f950:8168 with SMTP id a21-20020a05600c225500b003daf9508168mr2865429wmm.35.1673960165457;
        Tue, 17 Jan 2023 04:56:05 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003c70191f267sm45069778wmo.39.2023.01.17.04.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 04:56:04 -0800 (PST)
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
Subject: [PATCH v3 3/6] phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
Date: Tue, 17 Jan 2023 14:55:52 +0200
Message-Id: <20230117125555.163087-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117125555.163087-1-abel.vesa@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045609_311317_BAB1BC41 
X-CRM114-Status: GOOD (  13.10  )
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
UFS and PCIE g3x2. Add the new qserdes TX RX offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   | 77 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 78 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
new file mode 100644
index 000000000000..a69233e68f9a
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
+
+#define QSERDES_V6_TX_CLKBUF_ENABLE				0x08
+#define QSERDES_V6_TX_RESET_TSYNC_EN				0x1c
+#define QSERDES_V6_TX_PRE_STALL_LDO_BOOST_EN			0x20
+#define QSERDES_V6_TX_TX_BAND					0x24
+#define QSERDES_V6_TX_INTERFACE_SELECT				0x2c
+#define QSERDES_V6_TX_RES_CODE_LANE_TX				0x34
+#define QSERDES_V6_TX_RES_CODE_LANE_RX				0x38
+#define QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX			0x3c
+#define QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX			0x40
+#define QSERDES_V6_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
+#define QSERDES_V6_TX_BIST_PATTERN7				0x7c
+#define QSERDES_V6_TX_LANE_MODE_1				0x84
+#define QSERDES_V6_TX_LANE_MODE_3				0x8c
+#define QSERDES_V6_TX_LANE_MODE_4				0x90
+#define QSERDES_V6_TX_LANE_MODE_5				0x94
+#define QSERDES_V6_TX_RCV_DETECT_LVL_2				0xa4
+#define QSERDES_V6_TX_TRAN_DRVR_EMP_EN				0xc0
+#define QSERDES_V6_TX_TX_INTERFACE_MODE				0xc4
+#define QSERDES_V6_TX_VMODE_CTRL1				0xc8
+#define QSERDES_V6_TX_PI_QEC_CTRL				0xe4
+
+#define QSERDES_V6_RX_UCDR_FO_GAIN				0x08
+#define QSERDES_V6_RX_UCDR_SO_GAIN				0x14
+#define QSERDES_V6_RX_UCDR_FASTLOCK_FO_GAIN			0x30
+#define QSERDES_V6_RX_UCDR_SO_SATURATION_AND_ENABLE		0x34
+#define QSERDES_V6_RX_UCDR_FASTLOCK_COUNT_LOW			0x3c
+#define QSERDES_V6_RX_UCDR_FASTLOCK_COUNT_HIGH			0x40
+#define QSERDES_V6_RX_UCDR_PI_CONTROLS				0x44
+#define QSERDES_V6_RX_UCDR_SB2_THRESH1				0x4c
+#define QSERDES_V6_RX_UCDR_SB2_THRESH2				0x50
+#define QSERDES_V6_RX_UCDR_SB2_GAIN1				0x54
+#define QSERDES_V6_RX_UCDR_SB2_GAIN2				0x58
+#define QSERDES_V6_RX_AUX_DATA_TCOARSE_TFINE			0x60
+#define QSERDES_V6_RX_TX_ADAPT_POST_THRESH			0xcc
+#define QSERDES_V6_RX_VGA_CAL_CNTRL1				0xd4
+#define QSERDES_V6_RX_VGA_CAL_CNTRL2				0xd8
+#define QSERDES_V6_RX_GM_CAL					0xdc
+#define QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL2			0xec
+#define QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL3			0xf0
+#define QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL4			0xf4
+#define QSERDES_V6_RX_RX_IDAC_TSETTLE_LOW			0xf8
+#define QSERDES_V6_RX_RX_IDAC_TSETTLE_HIGH			0xfc
+#define QSERDES_V6_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
+#define QSERDES_V6_RX_SIDGET_ENABLES				0x118
+#define QSERDES_V6_RX_SIGDET_CNTRL				0x11c
+#define QSERDES_V6_RX_SIGDET_DEGLITCH_CNTRL			0x124
+#define QSERDES_V6_RX_RX_MODE_00_LOW				0x15c
+#define QSERDES_V6_RX_RX_MODE_00_HIGH				0x160
+#define QSERDES_V6_RX_RX_MODE_00_HIGH2				0x164
+#define QSERDES_V6_RX_RX_MODE_00_HIGH3				0x168
+#define QSERDES_V6_RX_RX_MODE_00_HIGH4				0x16c
+#define QSERDES_V6_RX_RX_MODE_01_LOW				0x170
+#define QSERDES_V6_RX_RX_MODE_01_HIGH				0x174
+#define QSERDES_V6_RX_RX_MODE_01_HIGH2				0x178
+#define QSERDES_V6_RX_RX_MODE_01_HIGH3				0x17c
+#define QSERDES_V6_RX_RX_MODE_01_HIGH4				0x180
+#define QSERDES_V6_RX_RX_MODE_10_LOW				0x184
+#define QSERDES_V6_RX_RX_MODE_10_HIGH				0x188
+#define QSERDES_V6_RX_RX_MODE_10_HIGH2				0x18c
+#define QSERDES_V6_RX_RX_MODE_10_HIGH3				0x190
+#define QSERDES_V6_RX_RX_MODE_10_HIGH4				0x194
+#define QSERDES_V6_RX_DFE_EN_TIMER				0x1a0
+#define QSERDES_V6_RX_DFE_CTLE_POST_CAL_OFFSET			0x1a4
+#define QSERDES_V6_RX_DCC_CTRL1					0x1a8
+#define QSERDES_V6_RX_VTH_CODE					0x1b0
+#define QSERDES_V6_RX_SIGDET_CAL_CTRL1				0x1e4
+#define QSERDES_V6_RX_SIGDET_CAL_TRIM				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index d1275d20a3a3..a63a691b8372 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -22,6 +22,7 @@
 #include "phy-qcom-qmp-qserdes-txrx-v5_5nm.h"
 
 #include "phy-qcom-qmp-qserdes-com-v6.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
