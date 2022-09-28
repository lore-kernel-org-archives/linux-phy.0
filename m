Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2346C6FA82
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U56RXc+Hf3qSPZPucYbL05akYOh2WBmjZO6j+9YRCQ=; b=gpzmfdVfjKBqX7
	HzSPLjce5sZhxxRLpuF/33m+e0XmC4UBVAEr6oZJa7VuQLVix3gOQtF4HhzX1w92r2ptV2vwFgP4k
	p/yQ7N9p2fBellY7zamCFh6N+ytfVuSSWkotZ4SJwvixZ4Kwyf5pRTO7l7xpLL4SmQkHA2X5OO5vz
	1V3PH3CGiL9NrKHnkyK1eN2V32rw5Rz58WetAQwwbc0w0QqJC6kmLayx77NZ+d66Sx8UkkdFLwkXI
	g7lOmzhPCefNgrlWen6pORe+P1b5QHvzw4/Owh6UHCaB1CzJj3oY8F5UC3ejYp0oh9iySBJJqAeMU
	jkC0LI9pWZ/2hv/fU5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCA-000cFt-55; Wed, 28 Sep 2022 23:10:26 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC6-000cD3-PI
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:24 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z4so4765271lft.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=4HFNNB8pm3nk1fFIbwSjBsDldeRWBmlukrlqYfHhlJw=;
        b=RRBVL/4hTMHdbRvOcoCIedAFM+EAlqokxpiVfpk+mt4EELk0Jm12brQl/VGifLe/g5
         NKBEHRCu9Mnca09M78yIi+GPSsv9N1IjzB+Hupi93mmrdqpIxYfSWCkySpH5kwn6glv5
         RuBmC+t7tLWvSBEEXheoXGJTKeJDD3n6sKb2t1lTwhWsUAuIZiKOmPpVrxhk5D0pBXEU
         dJ59SMCWtmPrPoDTYQcYAD4q8q+qRgOMkDhiDWuc10Q9NwMRyuEKECozhTNQtxbF8NCP
         O6VB5bS63g9SUwjyJ6nEYQd66iCajCE3/QWCfs/StEho5ZrihsgVxExFlA9CVWpyO6PD
         YzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=4HFNNB8pm3nk1fFIbwSjBsDldeRWBmlukrlqYfHhlJw=;
        b=3JM1s0rlRNxbbSJLlYCE+buz+o7J2Wmoi4J+hih3zKKdA9/i9QHOqNAd3nDTmsPkjV
         eL2ixYY0uc/0JKfHSbeo85A95cny8b//JGjtNuhU94pcwnPKTu+8xguIqJ756VuVgLgk
         GPBJyXudQK+KNV/xhruLIu10Yp5hTp/Yf/rIMq8u4WPQeeZVQp2Kc607WTLAeClcw0Hd
         80Gx6pLLdMOhtpkYfQdNLzyl2qm+DyLHzCCuVp+CDCI3SF41Cpi+mJlp5ygVah3wahA2
         2HtylPWwxnPSa/IQcb954BM//3PBN31nQWQqXmZthptye392V9swpg2V2ifEuERNqeAT
         8SIg==
X-Gm-Message-State: ACrzQf1OSpspEyOdD3dyu4uWX95pJQNGLVDDyAq9F1ISOK/3219mVOo6
	mQLOhEBZ+iUSx/FZ6MLAnypuSA==
X-Google-Smtp-Source: AMsMyM4PQ3mECgHwQPrwGilLEyYGuYQiRb9tZEcQ0q3O8gn4Ra1qeLK2TgoxfRuHqNheU+dtAyxU2A==
X-Received: by 2002:a05:6512:c17:b0:498:f034:1c30 with SMTP id z23-20020a0565120c1700b00498f0341c30mr115187lfu.408.1664406621493;
        Wed, 28 Sep 2022 16:10:21 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 07/18] phy: qcom-qmp-pcie: rework regs layout arrays
Date: Thu, 29 Sep 2022 02:10:03 +0300
Message-Id: <20220928231014.455201-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161022_848312_EAFBA3D8 
X-CRM114-Status: GOOD (  10.57  )
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

Use symbolic names for the values inside reg layout arrays.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 32 +++++++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |  4 +++
 2 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 015f17a11439..c68815be8d4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -87,24 +87,24 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]				= 0x00,
-	[QPHY_START_CTRL]			= 0x44,
-	[QPHY_PCS_STATUS]			= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]		= 0x40,
+	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -115,10 +115,10 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 };
 
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index c8515f506872..2624a1ec3e73 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -7,7 +7,9 @@
 #define QCOM_PHY_QMP_PCS_V2_H_
 
 /* Only for QMP V2 PHY - PCS registers */
+#define QPHY_V2_PCS_SW_RESET				0x000
 #define QPHY_V2_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_V2_PCS_START_CONTROL			0x008
 #define QPHY_V2_PCS_TXDEEMPH_M6DB_V0			0x024
 #define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0			0x028
 #define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL		0x034
@@ -43,4 +45,6 @@
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
 
+#define QPHY_V2_PCS_PCI_PCS_STATUS			0x174 /* PCI */
+
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
