Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB9BC38A2B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvttK9I20wbZui7zI8HDObz0BHlY2hg+exLJfXSa6gI=; b=MS0aENl3MXJtJ6
	Z6N0gWRVXipMoN4XRnnm+hPeSzHi0N/XDaTAMjpljV3AhTr4aDvs8XVCIgfiUmGIH5A92Qsnr3dM/
	avGcAlT3DfqY2Su3iNEEZNLjg1vs6EuIQ5NoBsYGowyxjqEg9ro6rbacmuwcTGtSdieQ83mDzpw2J
	mTeRlT3CqFUDhL7uLff9osMUuM1uL38Ij0qcDKOFbeMrG8EqYVLIuKcglo1lWnYJpQk1IiwovdiiK
	kURocVn8G08ongLuF3Jk7DsN77PZzBITin/MWaoHfDte2Ubb7gmnjlk0bb4l+HLyuuqYbIGD9/HkN
	mnB1l4BBtCL7H5mbiOdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDI0-008mJ4-Pd; Thu, 10 Nov 2022 19:32:40 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8c-008feo-MA
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:02 +0000
Received: by mail-lj1-x230.google.com with SMTP id u2so2071867ljl.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MSw5meRLWoDLsv9gtDfZAhn9Oz9zqObSpU+ljZXhZKs=;
        b=LHqI2SoZvmAfR/3okfzTONLJWAZPrD44JIY7Yzn1payeME9VqaR0EeLlu/eylLy0lm
         +cW0VqCqK9ZtQUOrXvG7fwIdIRL89eZ8Hy/6Dv6BUi+bG7lhsyh/eTydUMl6G/usW728
         0I0ZLFlZJi4NEANrUemjmqL3RE6o7hSExIY+H5apC0GBA4YQAZg87+EgsmwlsZDKTwSA
         AHtmf/6lC2j0aYwZIClyGMzTL++ox+PKD5hZ+GUGvYDY4hh+LQA/+aUYhw9gqKSJ2GAe
         /cQKkkIple9iqjwWXzh/yyZ/nTYNQZGXb8P8Yqgc2E3+3mJdYW3rjiMjPiPHODlI4541
         TYBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSw5meRLWoDLsv9gtDfZAhn9Oz9zqObSpU+ljZXhZKs=;
        b=bQaaKQQpbT/NA4gDs5iXtJi8kU/pZqdPo0mW1jpq6hx1Ur8336anA2ric6oyc7FlaQ
         oMDOw0vDjF5soELaH+vjDCGFBHNNaSM1bCV5JOAtqonnGxBl1e19o0Sv7nfw2g8KI1vu
         wbt4fw8V/wqHvf8sQw72Q4sBpexRDl7riR5F/eO+7g/WMbvn+VjUGNJVfbYIpIuIdYKl
         hE6aD//nuJNMlJwuypjwbpqOOSWRljFiKSZ+mOLE5bSFExLMh4EA9vGemt8J2Hy/ZYJr
         eW6INkR32ZR9wwqXZUP0fWIPJmG5La+X9+uTzAsch8cJiYrpxildkNt2dqqF0NqG3Ik5
         yXRw==
X-Gm-Message-State: ACrzQf2OAP2X8Qc52zQUY/+jMi88EaGx3dDDZPGhcNBBCYKVDKWSgOSr
	LklatkQ4ODbzdZd49hhXHnk19w==
X-Google-Smtp-Source: AMsMyM7SR/f2vsxysUG2HjHxZYl7cGZQYtznNchDBLUhGPucIIEMwQpYXnQ/kueRdMgXs1imdklRqQ==
X-Received: by 2002:a2e:9854:0:b0:277:8df:88a7 with SMTP id e20-20020a2e9854000000b0027708df88a7mr9663346ljj.139.1668108174809;
        Thu, 10 Nov 2022 11:22:54 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 08/13] phy: qcom-qmp-ufs: rename regs layout arrays
Date: Thu, 10 Nov 2022 22:22:43 +0300
Message-Id: <20221110192248.873973-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112258_786040_036CB1A9 
X-CRM114-Status: GOOD (  10.39  )
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
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |  4 +++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 33 ++++++++++---------
 2 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
index bcca23493b7e..43255e8bf038 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
@@ -8,6 +8,9 @@
 #define QCOM_PHY_QMP_PCS_UFS_V5_H_
 
 /* Only for QMP V5 PHY - UFS PCS registers */
+#define QPHY_V5_PCS_UFS_PHY_START			0x000
+#define QPHY_V5_PCS_UFS_POWER_DOWN_CONTROL		0x004
+#define QPHY_V5_PCS_UFS_SW_RESET			0x008
 #define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
 #define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
 #define QPHY_V5_PCS_UFS_PLL_CNTL			0x02c
@@ -21,6 +24,7 @@
 #define QPHY_V5_PCS_UFS_RX_SIGDET_CTRL2			0x158
 #define QPHY_V5_PCS_UFS_TX_PWM_GEAR_BAND		0x160
 #define QPHY_V5_PCS_UFS_TX_HS_GEAR_BAND			0x168
+#define QPHY_V5_PCS_UFS_READY_STATUS			0x180
 #define QPHY_V5_PCS_UFS_TX_MID_TERM_CTRL1		0x1d8
 #define QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1		0x1e0
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8a7a3bfbd8d3..c9698e17b617 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -71,31 +71,32 @@ enum qphy_reg_layout {
 	QPHY_LAYOUT_SIZE
 };
 
-static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int ufsphy_v2_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V2_PCS_UFS_PHY_START,
 	[QPHY_PCS_READY_STATUS]		= QPHY_V2_PCS_UFS_READY_STATUS,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const unsigned int sdm845_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int ufsphy_v3_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V3_PCS_UFS_PHY_START,
 	[QPHY_PCS_READY_STATUS]		= QPHY_V3_PCS_UFS_READY_STATUS,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const unsigned int sm6115_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_START_CTRL]		= QPHY_V2_PCS_UFS_PHY_START,
-	[QPHY_PCS_READY_STATUS]		= QPHY_V2_PCS_UFS_READY_STATUS,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_UFS_POWER_DOWN_CONTROL,
-};
-
-static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
+static const unsigned int ufsphy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V4_PCS_UFS_PHY_START,
 	[QPHY_PCS_READY_STATUS]		= QPHY_V4_PCS_UFS_READY_STATUS,
 	[QPHY_SW_RESET]			= QPHY_V4_PCS_UFS_SW_RESET,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int ufsphy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V5_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V5_PCS_UFS_READY_STATUS,
+	[QPHY_SW_RESET]			= QPHY_V5_PCS_UFS_SW_RESET,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_UFS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
@@ -647,7 +648,7 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
-	.regs			= msm8996_ufsphy_regs_layout,
+	.regs			= ufsphy_v2_regs_layout,
 
 	.no_pcs_sw_reset	= true,
 };
@@ -669,7 +670,7 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8150_ufsphy_regs_layout,
+	.regs			= ufsphy_v5_regs_layout,
 };
 
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
@@ -687,7 +688,7 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sdm845_ufsphy_regs_layout,
+	.regs			= ufsphy_v3_regs_layout,
 
 	.no_pcs_sw_reset	= true,
 };
@@ -707,7 +708,7 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm6115_ufsphy_regs_layout,
+	.regs			= ufsphy_v2_regs_layout,
 
 	.no_pcs_sw_reset	= true,
 };
@@ -727,7 +728,7 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8150_ufsphy_regs_layout,
+	.regs			= ufsphy_v4_regs_layout,
 };
 
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
@@ -745,7 +746,7 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8150_ufsphy_regs_layout,
+	.regs			= ufsphy_v5_regs_layout,
 };
 
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
@@ -763,7 +764,7 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8150_ufsphy_regs_layout,
+	.regs			= ufsphy_v5_regs_layout,
 };
 
 static void qmp_ufs_configure_lane(void __iomem *base,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
