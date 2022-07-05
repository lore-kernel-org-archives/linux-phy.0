Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 436EECCA482
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMU1tW9KHtQ9RyrBQ6OpIbYLZYGGtXaDWUsgRrXqEZ0=; b=NwmwBcB1ZgwudU
	MZUzm8PzDm5xqvDbu5PlRlooGEhMQ6zTug9vRAWLX6W7VXZEGGbpklov8t+FG4F9uyGkCiGRNfbtf
	f/vCttvtR2jrs+EmlZocZAiygMg2QOa3tZWzTP57uNdB0/WIh6K9Q65YN8hYBrzAsOG3ksO+ehi6s
	1L31pBhzA7XnsU6oVy5IANv4zfxvctIp4fVNw0ttc/0LTOEutzp6rs7W2z8JGDUDQZ4Ve8nsqW1aZ
	CiIXu5uYspdup9Du433sQrRPkNWZeIgXStqyA1L82fIpWvDTunCzWSXPZnofKe21rPCgXNqUp7jl1
	0ffdjDsb+6vJjPsBoYBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g3z-00HFag-By; Tue, 05 Jul 2022 10:45:51 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5e-00GqpQ-Gv
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:35 +0000
Received: by mail-lj1-x22a.google.com with SMTP id l7so13063653ljj.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w0EDj3lhCdr76veW19BuwtDNTETtoQp/u51JMb8YeOk=;
        b=xhYB/k7jd9eqBiCB1aQ8valpooT7mXOnsN/0GShXEn8jNk2IVmmhlcQYP5I4DkAjxp
         v1Ljvjv5Dlg+jAIc4Fd1xD+TepKzyodZCICdtP4B9epJ+4+7IsNr/Ud9GsZJqDb8y8Am
         SHsyUukMIFprpDSmB8Zp8Gcn0jD5RomXssCItFcuQNj4Su669Rv52JymnIQU3bB0et1k
         ZElFAOBr4sBrCUofaG+YJo22o7GLbhTAc4z6e5E/PV5DbiAZpoFtgZjDFghGlJ7EZc2Q
         AEZZOSJIDJXX1PJlJ9VcbfVODwjv9uX0d1BkFBZno5LnwkSQyy5mizfiTkCJbPiHd8Mq
         4wVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w0EDj3lhCdr76veW19BuwtDNTETtoQp/u51JMb8YeOk=;
        b=0HQ3CWRkLg7VCTjPOYMzUfXv62jZD0OAFk/bhrWf3oYFyidxNySFcYqIy1eCUm8sY5
         S5UPd91F2Esvng8NL8DHlkHMeQX6soUqj9Mb1zNE1A+qju/1uxrgxxczcJsSHU3Cjz05
         8zbD7Jn8plFMK9PgPxQu0mo9Hr+0epoZWYtP7rdx/UmTV9JRnoLJyIeSmJnlbE2c0ovL
         EMCF7dFl/3yfSZ1FwDt2Z64Q5TIUVtjKrCKfyfmkxrcJgTnfz2UHMIZytMz/IWS5KfPq
         vScMf5xxYlS41eYT2dkOrKXYIpJ5jEYg7JZhqWtGhK9wnM5QqWaZmqdOIGKe2opqqtxy
         8OvA==
X-Gm-Message-State: AJIora/dctCpqMw7DwNC767yfwEbr0smJ7WPF10apJ/3jTAlQYRT598O
	4S0DcJv+/EmVi17wFO5UOUbccw==
X-Google-Smtp-Source: AGRyM1u11QAySZ4vvMVXMru3JrfDyNXnbiA17k1lEB5xo0X4d0rhPJeZXfIlwwk/5WUYJqLQm/EnIQ==
X-Received: by 2002:a2e:a54b:0:b0:25c:5d6:ec6e with SMTP id e11-20020a2ea54b000000b0025c05d6ec6emr12186445ljn.403.1657014206338;
        Tue, 05 Jul 2022 02:43:26 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 06/28] phy: qcom-qmp: rename QMP V2 PCS registers
Date: Tue,  5 Jul 2022 12:42:58 +0300
Message-Id: <20220705094320.1313312-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024330_651111_E680B7D3 
X-CRM114-Status: GOOD (  12.00  )
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

Rename QMP V2 PCS registers to follow the usual pattern of
QPHY_V2_PCS_*.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  4 +-
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 20 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 26 ++++-----
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 22 ++++----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 12 ++---
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 54 +++++++++----------
 6 files changed, 69 insertions(+), 69 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index fd7a9c25f27d..2335658affdb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1667,7 +1667,7 @@ static int qcom_qmp_phy_combo_com_init(struct qmp_phy *qphy)
 				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 				cfg->pwrdn_ctrl);
 	else
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -1829,7 +1829,7 @@ static int qcom_qmp_phy_combo_power_off(struct phy *phy)
 			qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 				     cfg->pwrdn_ctrl);
 		} else {
-			qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+			qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 					cfg->pwrdn_ctrl);
 		}
 	}
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 502ea4de3044..4b6ddc7ec862 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -222,17 +222,17 @@ static const struct qmp_phy_init_tbl msm8996_pcie_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_RX_IDLE_DTCT_CNTRL, 0x4c),
-	QMP_PHY_INIT_CFG(QPHY_PWRUP_RESET_DLY_TIME_AUXCLK, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_LP_WAKEUP_DLY_TIME_AUXCLK, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_IDLE_DTCT_CNTRL, 0x4c),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x01),
 
 	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x05),
 
-	QMP_PHY_INIT_CFG(QPHY_ENDPOINT_REFCLK_DRIVE, 0x05),
-	QMP_PHY_INIT_CFG(QPHY_POWER_DOWN_CONTROL, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG4, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG1, 0xa3),
-	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M3P5DB_V0, 0x0e),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_POWER_DOWN_CONTROL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_POWER_STATE_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_POWER_STATE_CONFIG1, 0xa3),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0x0e),
 };
 
 struct qmp_phy;
@@ -637,7 +637,7 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 	 * Pull out PHY from POWER DOWN state.
 	 * This is active low enable signal to power-down PHY.
 	 */
-	qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
@@ -687,7 +687,7 @@ static int qcom_qmp_phy_pcie_msm8996_power_off(struct phy *phy)
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	} else {
-		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 	}
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5a16aaef3e97..e3404aa05e13 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -438,17 +438,17 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_ENDPOINT_REFCLK_DRIVE, 0x4),
-	QMP_PHY_INIT_CFG(QPHY_OSC_DTCT_ACTIONS, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE, 0x4),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_OSC_DTCT_ACTIONS, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
 	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x73),
-	QMP_PHY_INIT_CFG(QPHY_RX_SIGDET_LVL, 0x99),
-	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M6DB_V0, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M3P5DB_V0, 0xe),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_LVL, 0x99),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0xe),
 	QMP_PHY_INIT_CFG_L(QPHY_SW_RESET, 0x0),
 	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
 };
@@ -1984,7 +1984,7 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 				cfg->pwrdn_ctrl);
 	else
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 
 	return 0;
@@ -2093,7 +2093,7 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	 * Pull out PHY from POWER DOWN state.
 	 * This is active low enable signal to power-down PHY.
 	 */
-	qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
@@ -2141,7 +2141,7 @@ static int qcom_qmp_phy_pcie_power_off(struct phy *phy)
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	} else {
-		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 	}
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 83330f7ec64c..bfe5f562bcd0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -310,15 +310,15 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_RX_PWM_GEAR_BAND, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_RX_SIGDET_CTRL2, 0x6d),
-	QMP_PHY_INIT_CFG(QPHY_TX_LARGE_AMP_DRV_LVL, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_TX_SMALL_AMP_DRV_LVL, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_RX_MIN_STALL_NOCONFIG_TIME_CAP, 0x28),
-	QMP_PHY_INIT_CFG(QPHY_RX_SYM_RESYNC_CTRL, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_TX_LARGE_AMP_POST_EMP_LVL, 0x12),
-	QMP_PHY_INIT_CFG(QPHY_TX_SMALL_AMP_POST_EMP_LVL, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_PWM_GEAR_BAND, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_CTRL2, 0x6d),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SYM_RESYNC_CTRL, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL, 0x12),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
 };
 
 static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
@@ -941,7 +941,7 @@ static int qcom_qmp_phy_ufs_com_init(struct qmp_phy *qphy)
 			     cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	else
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 			     cfg->pwrdn_ctrl);
 
 	return 0;
@@ -1083,7 +1083,7 @@ static int qcom_qmp_phy_ufs_power_off(struct phy *phy)
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	} else {
-		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 	}
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 597edeb2d8c3..40ac61bcadac 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -325,10 +325,10 @@ static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG_L(QPHY_FLL_MAN_CODE, 0x85),
 
 	/* Lock Det settings */
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG1, 0xd1),
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG2, 0x1f),
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG3, 0x47),
-	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_POWER_STATE_CONFIG2, 0x08),
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
@@ -2095,7 +2095,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 			     cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	else
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 			     cfg->pwrdn_ctrl);
 
 	return 0;
@@ -2223,7 +2223,7 @@ static int qcom_qmp_phy_usb_power_off(struct phy *phy)
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			     cfg->pwrdn_ctrl);
 	} else {
-		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 	}
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 6cb660455088..64af9720b3f9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -208,33 +208,33 @@
 #define QSERDES_RX_RX_INTERFACE_MODE			0x12c
 
 /* Only for QMP V2 PHY - PCS registers */
-#define QPHY_POWER_DOWN_CONTROL				0x04
-#define QPHY_TXDEEMPH_M6DB_V0				0x24
-#define QPHY_TXDEEMPH_M3P5DB_V0				0x28
-#define QPHY_TX_LARGE_AMP_DRV_LVL			0x34
-#define QPHY_TX_LARGE_AMP_POST_EMP_LVL			0x38
-#define QPHY_TX_SMALL_AMP_DRV_LVL			0x3c
-#define QPHY_TX_SMALL_AMP_POST_EMP_LVL			0x40
-#define QPHY_ENDPOINT_REFCLK_DRIVE			0x54
-#define QPHY_RX_IDLE_DTCT_CNTRL				0x58
-#define QPHY_POWER_STATE_CONFIG1			0x60
-#define QPHY_POWER_STATE_CONFIG2			0x64
-#define QPHY_POWER_STATE_CONFIG4			0x6c
-#define QPHY_LOCK_DETECT_CONFIG1			0x80
-#define QPHY_LOCK_DETECT_CONFIG2			0x84
-#define QPHY_LOCK_DETECT_CONFIG3			0x88
-#define QPHY_PWRUP_RESET_DLY_TIME_AUXCLK		0xa0
-#define QPHY_LP_WAKEUP_DLY_TIME_AUXCLK			0xa4
-#define QPHY_RX_MIN_STALL_NOCONFIG_TIME_CAP		0xcc
-#define QPHY_RX_SYM_RESYNC_CTRL				0x13c
-#define QPHY_RX_MIN_HIBERN8_TIME			0x140
-#define QPHY_RX_SIGDET_CTRL2				0x148
-#define QPHY_RX_PWM_GEAR_BAND				0x154
-#define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1a8
-#define QPHY_OSC_DTCT_ACTIONS				0x1ac
-#define QPHY_RX_SIGDET_LVL				0x1d8
-#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1dc
-#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1e0
+#define QPHY_V2_PCS_POWER_DOWN_CONTROL				0x04
+#define QPHY_V2_PCS_TXDEEMPH_M6DB_V0				0x24
+#define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0				0x28
+#define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL			0x34
+#define QPHY_V2_PCS_TX_LARGE_AMP_POST_EMP_LVL			0x38
+#define QPHY_V2_PCS_TX_SMALL_AMP_DRV_LVL			0x3c
+#define QPHY_V2_PCS_TX_SMALL_AMP_POST_EMP_LVL			0x40
+#define QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE			0x54
+#define QPHY_V2_PCS_RX_IDLE_DTCT_CNTRL				0x58
+#define QPHY_V2_PCS_POWER_STATE_CONFIG1			0x60
+#define QPHY_V2_PCS_POWER_STATE_CONFIG2			0x64
+#define QPHY_V2_PCS_POWER_STATE_CONFIG4			0x6c
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG1			0x80
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG2			0x84
+#define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x88
+#define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0xa0
+#define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK			0xa4
+#define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP		0xcc
+#define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL				0x13c
+#define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
+#define QPHY_V2_PCS_RX_SIGDET_CTRL2				0x148
+#define QPHY_V2_PCS_RX_PWM_GEAR_BAND				0x154
+#define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1a8
+#define QPHY_V2_PCS_OSC_DTCT_ACTIONS				0x1ac
+#define QPHY_V2_PCS_RX_SIGDET_LVL				0x1d8
+#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1dc
+#define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1e0
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
