Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534A6C001B2
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpxJ199MGoM3Y1DKwEfqW+5zlM/8GYAhWJwf9yk3Zro=; b=soPi+nu7nAI5K6
	v3xS7+6mveNvvf4F7g1PXUO+b/hMd0UeL5qtRpVhzMkYiQL9x1My7ws79+Zd0YZjV6lKVobbUOg/S
	m18PBeMPKVAyqdvZUFC4RX+irFH/y7hPLoeW/5CJP+4kgISvfcbj03IFqWoTOJpNrbsV42+mrkwA3
	Jbo0V06feXegLJ4Q62QC7mSTGzVgmSa884ttmuc1/84eToaSkLe0+Mk0HOdWMdRqH640E1z5P9NzR
	T1G2goHlCvnxTTvDXbSRUDE9dpXVrZ1MCGn53Q/QxPxRGRtOsVqTBb9JzyPUwz4fHwkq1Mnxz937V
	5UcOP61of+HuJiPOn0Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYG-00CxSd-8x; Thu, 22 Dec 2022 14:28:04 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MH9-00CnhQ-BS
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:10:26 +0000
Received: by mail-pl1-x62e.google.com with SMTP id n4so2140326plp.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cc7r9O2TO3pF/bzpTzvG4eE42PWinenWOWxZc+pKlHA=;
        b=evQOTlT+ScdTzw7R0+cnw30Kh4LVQVb71IGJvJANVBN1kZNocX8LcwnbqIiV/KPTgl
         Y7gD3vZkqzAtHGfjj306ruMQFxWVMmX++xXspCl9y6sJdNDHKp8PUD9QPVrXN5JhKg6F
         PKILgrk+0Ux3/NYIGVnceyLfbMaTjp2JzYhEtd1knXZWW0u4F11nahLQKowKzAJM0qqE
         ZyYkYoBhCEJOH6Rrhqlf53q0KRVT8Mmw/CQOesTDplKV2/v+OZggjH+qlvktQrNi6LVi
         yJokU9WSql4qWt03hz8YdiLvi5xOPdS/D9Nu/t0sJ/3ChZHge1Px9m0NsQNoc9+p2uTf
         TM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cc7r9O2TO3pF/bzpTzvG4eE42PWinenWOWxZc+pKlHA=;
        b=XZxB5aPbpfoxLtMgZKt1GcoMxuUD6OeDHZmTlORSpdhgmxNnt40ldUWrhPQ26yhaTt
         HURZra/uuGUfzsKuVTlo+oj6FG2I4coDnj9EPz1pOgoXk8zThJhuIcxzrCtaXzvmJ7JB
         3nbJAt/hg7RoAv8/p+HH8Ph8Juc+bpK1QruXlaGpu/RcwbCxMbUSs5iXwCnE8wPgTnk/
         PY61S7d4fceFEh773Pc/3WNLSYpaekbx+5AsRTYBfal3D4CO0UTijW/166jVZ44TviuA
         G2qAG+gvtKAdR5xWWdwOU3kgFcDGKEXkOiNM2cjPFhuc3Nqx1Ol0AJLtDB3j7wYaA67n
         cwVg==
X-Gm-Message-State: AFqh2koSH0dmy4DTc/HkL45YBoOtzNoVwsle1HkPaIy2sKADBRtVSSKn
	/ClRDxfC2zC+rMy+w6Ygqrvu
X-Google-Smtp-Source: AMrXdXtc4PCcTsoEdGQ+r4p32wV7MJDvmK01njLPLzq3o3houTlMXljlyqQ2qxrApPwC8d8CcROeCA==
X-Received: by 2002:a05:6a20:a88a:b0:b2:75d0:b702 with SMTP id ca10-20020a056a20a88a00b000b275d0b702mr5911195pzb.18.1671718220019;
        Thu, 22 Dec 2022 06:10:20 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:10:19 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 01/23] phy: qcom-qmp-ufs: Remove _tbl suffix from qmp_phy_init_tbl definitions
Date: Thu, 22 Dec 2022 19:39:39 +0530
Message-Id: <20221222141001.54849-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061023_619593_E42955FA 
X-CRM114-Status: UNSURE (   9.31  )
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

Following the other QMP PHY drivers like PCIe, let's remove the "_tbl"
suffix from the qmp_phy_init_tbl definitions. This helps in maintaining
the uniformity across all of the QMP PHY drivers.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 146 ++++++++++++------------
 1 file changed, 73 insertions(+), 73 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 318eea35b972..20fcdbef8c77 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -94,7 +94,7 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -143,12 +143,12 @@ static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_tx_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
@@ -162,7 +162,7 @@ static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -218,12 +218,12 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x0F),
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x40),
@@ -241,7 +241,7 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5B),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_PWM_GEAR_BAND, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL, 0x0f),
@@ -253,7 +253,7 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
@@ -295,13 +295,13 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x07),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -320,7 +320,7 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x59),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2, 0x6e),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -331,7 +331,7 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x11),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
@@ -361,7 +361,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
@@ -370,7 +370,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -408,7 +408,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_rx_tbl[] = {
 
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -418,7 +418,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00),
@@ -448,7 +448,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
@@ -460,7 +460,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_TRAN_DRVR_EMP_EN, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -500,7 +500,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_DCC_CTRL1, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -632,12 +632,12 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
 static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= msm8996_ufs_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes_tbl),
-	.tx_tbl			= msm8996_ufs_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx_tbl),
-	.rx_tbl			= msm8996_ufs_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx_tbl),
+	.serdes_tbl		= msm8996_ufs_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes),
+	.tx_tbl			= msm8996_ufs_tx,
+	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx),
+	.rx_tbl			= msm8996_ufs_rx,
+	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx),
 
 	.clk_list		= msm8996_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
@@ -655,14 +655,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 
 	.offsets		= &qmp_ufs_offsets_v5,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -673,14 +673,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sdm845_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes_tbl),
-	.tx_tbl			= sdm845_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx_tbl),
-	.rx_tbl			= sdm845_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx_tbl),
-	.pcs_tbl		= sdm845_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs_tbl),
+	.serdes_tbl		= sdm845_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes),
+	.tx_tbl			= sdm845_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
+	.rx_tbl			= sdm845_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
+	.pcs_tbl		= sdm845_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -693,14 +693,14 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
-	.tx_tbl			= sm6115_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx_tbl),
-	.rx_tbl			= sm6115_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx_tbl),
-	.pcs_tbl		= sm6115_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm6115_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes),
+	.tx_tbl			= sm6115_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
+	.rx_tbl			= sm6115_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
+	.pcs_tbl		= sm6115_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -713,14 +713,14 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8150_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8150_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx_tbl),
-	.rx_tbl			= sm8150_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8150_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8150_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes),
+	.tx_tbl			= sm8150_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
+	.rx_tbl			= sm8150_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
+	.pcs_tbl		= sm8150_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -731,14 +731,14 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -749,14 +749,14 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
