Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 453ACC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43+2I9AWecVWQtXk9GCKyk336sJLfdYqKGr8Ynrf7XA=; b=wKlwQMskDFkCn4
	c6T81bIG+EndiyzN9yhYtaiOzmyPj7q7fpC0uFPeHsCXuH44QYnvzXnc9YbMgDDIXKjOv8aAd6Gqp
	PQMlh1+/OF1TN1+LcXjUdcUoKcpzhIOByoPMjQjOcFc6OPUXoQ1wNH2z/YEJuvkEGr6hlYIRRgkqI
	0WibNc/v4xARQMhcABD1A5ucxhMspGC9aoI5A8RU3V3h9WQ7Pcv+l+rAvTtfPpBpGcX1OHrCbT126
	7TQh/8W/bejnimjTw2GOxvW5H+AJtoGYMwTZMOPYUNoWfroewvRYo08wwYczZONgi8k0DBivA04Zu
	DgFdMtpP3uGpmua4FvoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED0-008sSP-Lk; Fri, 30 Sep 2022 11:29:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECx-008sPC-4K
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:32 +0000
Received: by mail-lf1-x131.google.com with SMTP id z4so6425232lft.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=6oec05gZBuEQEFbRbXfoM2pNshyBZRih8R+HIQYjcxY=;
        b=lJXZwfqxVbk002gEVb1mMCTlLOHRAquLmjQpboZQVveOTUCqrEkfrgKdTsGOxo75Ds
         pnb7HqLuMN+h+KUtIdD7Ql1X/jCcEAyCovTuAJyjzbL1aXNMw4IjaBfE9ZMGnPzAPWSn
         o983tbtCECY5WalIIAb+5BcAgVJIvxRoyq59uwqY4KharSKMnc6T9DkAEcFobRBStEVN
         ZGlHBobpkt5dDU60CeyZQ9wKx5zDArhwpD13gsdrbZ5qblF8/v6qnsF6a6jyCKwpkEOU
         8hS8d+pUPWFVT85CACNK2dUvLGElWqCJovnT9KjrEZtLboEVngeXXCLiKk1t+1B0ofys
         /1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=6oec05gZBuEQEFbRbXfoM2pNshyBZRih8R+HIQYjcxY=;
        b=dMWAtIUeMKEi42NV+4t3/Cz6QVHX0gGFKTFeF+cj/9mE4BZsayT9GHeDEMknUckyPT
         O6h/uASkEncGX0V5w0RJLEkDQ48h1fx6le5GgDgfJ+GNbfa59GZ4w6eC3dbFxMKfRNiI
         P6kkRe+p0Iseot0DjigcF0ka4zM4hdB9UTM8JJSjl+2p40o5CKMzVf0r0QkN8vp+qMC8
         vgLJgdt7sQQRjvfoIgjuBHjUT2EAVaP8j0IdivUX+ZrtZ6d+TTruDd2F3OkKUD86aSyZ
         9AFvH2at9KSurTyeWaTkiw2jPqLccpe2vLFpBUXAxKAs5N10XrFwG3+zl+e0PN/YZcTR
         DyDg==
X-Gm-Message-State: ACrzQf0WMygJKIgT7VNtANCa8lUhh32maUEEri7pA1fbOwl5yqdC8/Ys
	DakaLTku31W6+6zWy3pJi+5mvg==
X-Google-Smtp-Source: AMsMyM5v3tWjcO8yLPSJj4dVp+kPyltKz1w4cohbt8wSL5Py+W8BmYoj/HlR6upX/gmORoJw4PkH0g==
X-Received: by 2002:a05:6512:3b9d:b0:498:fc06:320b with SMTP id g29-20020a0565123b9d00b00498fc06320bmr2983192lfv.21.1664537369316;
        Fri, 30 Sep 2022 04:29:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 02/12] phy: qcom-qmp-pcie: rename regs layout arrays
Date: Fri, 30 Sep 2022 14:29:16 +0300
Message-Id: <20220930112926.638543-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042931_198047_755F6039 
X-CRM114-Status: UNSURE (   9.38  )
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
index 053e2574254b..48b49719b7a5 100644
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
