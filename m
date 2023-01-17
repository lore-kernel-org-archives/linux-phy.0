Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE37C38159
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oe++iG0v8yymCtdsVuhxdNqmwbc8FTb8MENiSDDZd/w=; b=OjboiOk19Idnbr
	8DMEQ6Wlti5q3++Smc1j8/5dPV0aBij6NSkPPuuG3zBwG+QeSSSxZ+ttY0PrzuTqWHP+T5m70Di97
	WvQ12dTYtAUt0mXRXsiwpY3M5Q17Y44JfRocN/fYR3nHmeLk92cU2Yxu6SZoseCEk+f1isCBaMIOa
	ccKI+IgTgFOPZNIx0tzvxYWEgMpNnb4Entz/qUZzaKoJ658DUWmkK1RXysFGsV87gzuoU6DmZ4PSp
	hdZDjH/RvhzSgyW/ExaBU1bCZy+Zs4QZUMpnTI8PsFZmgAqRxHiUIx4t2kA8i+gweUHW7TvHpJh39
	gBRkAsY+zSRJ8uO0vYUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueb-00G8q9-Li; Tue, 17 Jan 2023 22:42:05 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueY-00G8me-2d
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:42:03 +0000
Received: by mail-wr1-x42d.google.com with SMTP id d2so12045536wrp.8
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4QrCB0vKJwHvjsPAbNQg49wm7woRPfh3dy/MvNe12rU=;
        b=h1G83ntrbdcYzGO5/rZzyGlrqnm8zy69SOjuAnE/uDPW1ZpgvHm/1o7z1y/eELGR8e
         wtjpoaSKijqW6l40eMI2u+t9cX1iEKckZ7eEAPIg+FcJOJGqlqD0ejyiwtsWR2ly4LQi
         aYL1qmoAp+8AMOxWGN2tZ6bN7uNKvwfvMw3kOAvhtVpC4rhnTFwJd5Gf3rpq1UK1xFBn
         18XL3W57ftIpUfx6umzTaVB6I4sNxq5Y/joOTBSm+Y2/aXtfC/3MlePsV7Ipyyvm1owK
         Qs2Zk2P4QI/uFUZr0dpeb2fBS3yhKwJv0uUe5WwUCgre2il/kF3hOvpMm4xYxnCkG8vF
         HDBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4QrCB0vKJwHvjsPAbNQg49wm7woRPfh3dy/MvNe12rU=;
        b=0vKR3jFR3VSHXIWEsJBsIibuzmPn645ELtxrpJIou76WJLQ/0Bmki9A7cljabox3il
         hwjZiT5K5E8amGcBheaWsi/KO0E0s7ou3FNjQO+evWyDpCJ6PGs0b+DczrKAnc/gbZ1w
         Xwz0xcI8aUGSJbhMlo6TYeHIFYNJ8BbypZZm6yn9NAvP1/04PF0R9Ekt5ObL3FuA7Ubg
         TiMwBRdVx8bf76S8+nexG3V7yVsO1G03sA2HRgEYYWk1fnTALV9gG2tvSceXNqcbOxUn
         7vHCLEyILfFar5VPto1RGwCb3mw1CCyFivlWIWCAN84PD5KYS43yMuFEgp3HSudywwLW
         LL+A==
X-Gm-Message-State: AFqh2koTc5Z7G43L7tqI8HDGC9OennYZMn+fbZrqC5A644HCQ/FDizfw
	o8thm96p70T+oAoava1188gldQ==
X-Google-Smtp-Source: AMrXdXsnkpOeQXMUPrj/7lrqpPEwgz2kOSjEJsl4LlFRFFj8xA8Y08nlbubt//kVovwBymK5aoV7gA==
X-Received: by 2002:adf:cf02:0:b0:294:381e:1c7d with SMTP id o2-20020adfcf02000000b00294381e1c7dmr3999604wrj.8.1673995318397;
        Tue, 17 Jan 2023 14:41:58 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:41:57 -0800 (PST)
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
Subject: [PATCH v5 3/6] phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
Date: Wed, 18 Jan 2023 00:41:45 +0200
Message-Id: <20230117224148.1914627-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144202_139788_0B02B3A0 
X-CRM114-Status: GOOD (  12.73  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
