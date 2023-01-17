Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B919C678DA
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyazDabkhQol5GEFDnGsZwDJ71ZAoiW61dxvNp9mH+I=; b=18JlQ1aGJMp38x
	AqriGMbWKvHzzX5cv5A0TzM4IVLpx1rAmqdMp/FJvdNIf+9wrcCtO5kfc7XYSX1FyoBK/vxzwIHov
	4GhfM+28DAR/Jk+hNKzqrjzy3PElqUJtckGhM3EaEzCvUg+dXAvFT36HGORVNFSUWNHOQF3JuU6oy
	LAVC3/nTMG6HEkY746dn/h7Z6GBnaV+vS1KPZVPqXvf7AoZVAyagn3DDszCLjGx2DH3Dxxoc/1VRQ
	SrIY4fTtJFy31s5Vsq3Ra6J8l7ZZKdZQbKEkDU8CHQ3nYxaq5eqKby9r2nkUpGWUK32r1Hh4FPXGs
	TJh9loFF1caiaK3+i1Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpK-00Eaqr-Ni; Tue, 17 Jan 2023 14:20:38 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpH-00Eana-CZ
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:20:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id l8so5235586wms.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kyiiqtllVc+sHc5CRrKe4syI6DRDrK5kgNbzwKqg1P4=;
        b=E+3zcwoXG1Zzl37s0+YP7b6WVzX/jTVjkcFfOMismjCfaefI59lQRfR37bj+oQloJD
         +Km4nv1hkC66anvca953h3QZfPx7da4E6vxR1C9QzT2q7ZgLd/Cka4+tRlO6BOOlGLux
         VlAXtUI14sFMs0l14fd/ceo4Mg9RJJEwlItHYKgDFrBOe8HLDTir375y80OXSiAWBx6P
         CVF3bxv1cwUw+ztzW7+2N53WqIJlgabxbG5BgDTD6gkEPEyepjzs6ItmBv064qBSYT91
         lYGwSKpuiL6eAyYrmVspVVTpV/l+D35eIBqecVk0mwAQgIV4+6O9rO0OFHLpX87NfQXq
         wlKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyiiqtllVc+sHc5CRrKe4syI6DRDrK5kgNbzwKqg1P4=;
        b=C0tzSEPpgRN8nTL+x5qD23Wb3UO38hPnzmFQAwLwNwLM7zFo35tkhmTHw6xfdJfhAS
         RzSNbD2jnWRMn+4VEp8WURzeH7x8NgY5CLZPB+1JCaDfCob0Ghkk4x16CYSn6Fi7lumr
         0Fz7rupzO+WK0hJq8wywTyiqgKGKGNZyxK7gejnp3LkC3/FfhBHIMSck3e5GoaCnoKWl
         l/G7WROTvDHn8j5gU1cIA0BY8nltBCmab0PuVaboi5M5beve4LIG2Rm7ZyMkETCLukm6
         Kthwwx51rmv+OruLASiWbFfQQdjrHwASfM8h659Qm3nUN3X9U4dT4j/qjgs9lhEylNvP
         eppQ==
X-Gm-Message-State: AFqh2krmQp4NWs5L4k96r+8N4UYto9Z2lVpqbKlGtqA5xQvFkbSLBzXP
	SZLhxWEM8HmvE/VC2RaD/fPUsg==
X-Google-Smtp-Source: AMrXdXvrccajRZMUIc5dsRvvDodKd1pnlPvqfWl4k8bH9BY1TXthlk2cV6e6kjxJU6nC+sScW6p2xg==
X-Received: by 2002:a05:600c:4395:b0:3c6:f7ff:6f87 with SMTP id e21-20020a05600c439500b003c6f7ff6f87mr3168422wmn.11.1673965234195;
        Tue, 17 Jan 2023 06:20:34 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b003cf894dbc4fsm40443133wmq.25.2023.01.17.06.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:20:33 -0800 (PST)
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
Subject: [PATCH v4 3/6] phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
Date: Tue, 17 Jan 2023 16:20:12 +0200
Message-Id: <20230117142015.509675-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117142015.509675-1-abel.vesa@linaro.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062035_440412_6E603C88 
X-CRM114-Status: GOOD (  12.89  )
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
