Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 358FCC04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMXecjxEWpxV7hRm3C+7nezSSS7tmvw/bTm1jsp+1U4=; b=L6OiwdUl3Fdc53
	9T/qQKPPOPfPQluxh01jjS3Jf1LDDZQzaZ68Yzh2AnSTd4y8eGi61/aWoafCF/LKwmiwLE93B3aVV
	sJ65GFpATUP1HHstSrAK2MvvsECFxOx8FY/VzNmfB5s92NwvShu3h+Ohfs13ezF3wOvVa25B4z8wV
	a43HHYJYCZ9NL4/beKTG+/IhqjvnyqXuT41ibKkgN4sb6G5ENm5eAc8zGSnT90HPmE4RGKwgYPM9A
	feMtL8wVbDKhtMJt9zI1IvbPIYv75FBtBWNlVgfAqIoN2MPMVZOlIm9AcRdnjjwOYUOAkWmY9sTki
	GZ2lOFOMC1+goVZCXbKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cHf-Hr; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC7-000cDC-IO
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:26 +0000
Received: by mail-lj1-x236.google.com with SMTP id t16so11913912ljh.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=RzM6oG5KE0UQHyUy9DXhvNhkfU1/HJx9u02ula3G0dk=;
        b=Zg/jexQa/2/TUCTMu6s+YkSBISFsIoiTJYlNORWF8Vrpezv8Wzwl1U8U/AM3iO4m9J
         eK2L4260K6vadnRBPngwNm9z/bMq8PEwBkbH7sIY6sfWcwG6TNQmE4ylOt/U9UFIP+S5
         fDUsCpGSlbaNcqRc1cBqNoJBCmOfmPd/TN9zhqjNAaOTUejOtrolgWlahtcyUkuQw91Q
         SB3vYN4yOr6EXpR3MJdWp3hK/IeoFYxekfqW6F4/31v6UKTH57/FKd7s1Xyl608+Xelb
         zSX1eDa/VydSPvTUkxEXIkDBoNBzm0JmbWTyBn94Nr5X6UyOkbWxVtjWW+Ze31dCwVwD
         5e/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=RzM6oG5KE0UQHyUy9DXhvNhkfU1/HJx9u02ula3G0dk=;
        b=MJrA8f2+lm2PdCp42KWvwjINIWLu/p3gT/3UH24pvy4kTdVk4wm7fcaV/1eFyOLCnY
         1N9ARHuiERH+i/bRz1t5tltIRtDfY5YJp/rrThcv46f/RFe2+vNgVkH4MvC6UFp5eXAT
         hLE9UCAJyXTpY6qYFsYPR6w2N7z7BnyF6BWE8OC09LQ7XR5sTF3NpKRlUb5cSSc9GwaB
         A6WvBu0gNhJIs0jFGaO1d02S2utIEYQ/9Guyk9rwv+d9q7US+VPE9GyzY31Fpg4tOPx6
         eKRjWf1tcI6CwyM9KdwZrjXP8/MFUCB2g3fdVoeMYiubGJdt9DXZypK/QJb6Q79q6inO
         NJcQ==
X-Gm-Message-State: ACrzQf0MlfJ94J/8zBKH5raCSMi10vDBUYZ+WfNfLsUOm8uaMF2tPrh9
	sEZiN5k4JP3sQZFRaBjWYJGgVA==
X-Google-Smtp-Source: AMsMyM4z50TVRzfN3Fp7111dX49lquGVhigTtPSJZDmAPonJ47iUSFuUFv/CXfWYzG2gpfFujhSBfA==
X-Received: by 2002:a2e:a54c:0:b0:26c:50c6:75c1 with SMTP id e12-20020a2ea54c000000b0026c50c675c1mr57651ljn.408.1664406622241;
        Wed, 28 Sep 2022 16:10:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.21
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
Subject: [PATCH 08/18] phy: qcom-qmp-pcie: rename regs layout arrays
Date: Thu, 29 Sep 2022 02:10:04 +0300
Message-Id: <20220928231014.455201-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161023_639713_9FAF06F1 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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

Rename regs layouts to follow the QMP PHY version.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 35 ++++++++++--------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index c68815be8d4d..688d9eb78a82 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -86,21 +86,14 @@ enum qphy_reg_layout {
 	QPHY_LAYOUT_SIZE
 };
 
-static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
-	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
-	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
-	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
-};
-
-static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int pciephy_v2_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
 	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_POWER_DOWN_CONTROL,
 };
 
-static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int pciephy_v3_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
 	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
@@ -114,7 +107,7 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
-static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
 	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
@@ -1467,7 +1460,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
 	.num_vregs		= 0,
-	.regs			= pciephy_regs_layout,
+	.regs			= pciephy_v2_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1495,7 +1488,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
 	.num_vregs		= 0,
-	.regs			= ipq_pciephy_gen3_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1526,7 +1519,7 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
 	.num_vregs		= 0,
-	.regs			= ipq_pciephy_gen3_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1555,7 +1548,7 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sdm845_qmp_pciephy_regs_layout,
+	.regs			= pciephy_v3_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1621,7 +1614,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1659,7 +1652,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1687,7 +1680,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= pciephy_regs_layout,
+	.regs			= pciephy_v3_regs_layout,
 
 	.start_ctrl             = SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1713,7 +1706,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1742,7 +1735,7 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1772,7 +1765,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl             = SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -1802,7 +1795,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
+	.regs			= pciephy_v4_regs_layout,
 
 	.start_ctrl             = SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
