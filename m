Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F8FC4167B
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 09:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46FddOxjvU7wcH/CHZ5hO0gcuQDYGN9S0ddyhVibZQ4=; b=2RvnS5RCnPxrje
	DhGF3sCp9Rlu1pvk/Ym+eB7VDDugjy52Ub6kvy2DsGZMbWAAwbpZplibCHJGWSsogbvJjV9O2y+Oi
	k7OBaiOxR6neYtlc+e6U2eAmjZllo/Z5n0G9VsyBZyrGY1Lf9MHlo9qaduzUY5m0D3WFIQyWb/U5T
	qf3lnS5h1LRmTYfvcCBfzTq2awXSsMVk1mNwFa0znY4pj2Fq4WtKvCla9b99ht8T+pFaVTNkndKxC
	A+CelP/htMEKtBZzBX4YMKasHtzXmnEw/CEZjgtOrjheqn0hZgTvMYKDZv+9VBHGnTo04sEsQonwk
	qbfoz/KHhzUPl5DzXrTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyV5T-00Exq2-BF; Fri, 25 Nov 2022 09:33:35 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyV0h-00EvBY-75
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 09:28:41 +0000
Received: by mail-ej1-x633.google.com with SMTP id i10so9008890ejg.6
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 01:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2hwsnxelidzuxT5vbVM4C+YfhopOxytMt7ErRm7Hlk=;
        b=eGXUvIoyyB68RsblUZtQUSFNv4jF4G6D4gpT+oLYtG8Vhlx5eEBttRn56LdOzwqIxe
         bT/1l571ZllnPOwM7uXiG1I8apJc9eJ+Gzn/5fOEK/PMkk1lduJfZvM4RUB8QLcCZdIE
         D+amjHoysZDTJj4lCCXa+EejINVfPrin9yXDMWh+CgZGHiH55Xp0uk03NpKt6rxNXs6F
         BFunzbYZfeU2lSfaiLG3kkDzheKTKNYwylpvoTuJSaGM9qswHoCz5Ugfoek01HBYU5pI
         +S6f3iy+3YcIKfUlOJLnlq/p3SFpjLCZ35iQucSx12tSeta6yxNOAqJbHzUHh/r4Kbca
         znkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c2hwsnxelidzuxT5vbVM4C+YfhopOxytMt7ErRm7Hlk=;
        b=Ri7/PCyxuwH/55DO3HCg8x3Z8XhLykF99bi/wmxe95Ss6xCyH8+4vB70NcNBKEByr/
         Vkpjfh0kmvH+xmEJq6Nc+CXw9iVoQSVbeJK3+4anH7wi6MuEr8QfDkeB+Up+6qAX/gH1
         6JHPO8zjxS6brX/O1su0Ibn9jE4VPfr2mVyLSsEA/eSrL1YbYFc2FDOFzbCjRfxtL6oN
         G+7cKJM9OxuZyeWaPFt5UZrhglUVS1fd0cs80DKzehXTk/2aA77nj0ZKoZ3idwsyZnfm
         B4DHt03Hjog4w2xdk4D1MKttc6IyktS/fd5QuraMWRc3nRQVDfIDeTFZlnqCjFMECotw
         1a0w==
X-Gm-Message-State: ANoB5pkhTWD0pEgFitXGug0PpC3Eo1EkKd8yHDbBr6/W9LiK5nFLm//J
	i88LPSWlG3wruYlohUYJE4fRlg==
X-Google-Smtp-Source: AA0mqf5D5J4IIdpP3ebDF/zsdWUnuXLzfYMjB0uRhixy4JIW0LKEMLzrYKqAm+7GnFKQl++0gnscGQ==
X-Received: by 2002:a17:906:130b:b0:7ad:92c5:637a with SMTP id w11-20020a170906130b00b007ad92c5637amr31267694ejb.87.1669368517102;
        Fri, 25 Nov 2022 01:28:37 -0800 (PST)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q10-20020a170906b28a00b007b47748d22fsm1329315ejz.220.2022.11.25.01.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 01:28:36 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 2/3] phy: qcom-qmp-combo: Add config for SM6350
Date: Fri, 25 Nov 2022 10:27:48 +0100
Message-Id: <20221125092749.46073-2-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221125092749.46073-1-luca.weiss@fairphone.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_012839_711203_3CD7A008 
X-CRM114-Status: GOOD (  14.63  )
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

Add the tables and config for the combo phy found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
@Johan Hovold, here I've added dp_txa & dp_txb, I believe otherwise
qmp->dp_tx would be wrong. Is this different on sc8280xp or was this a
mistake on your side? I think this should probably be split out to
another patch to not mix things up too much.

I think other than that this patch is good.

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 134 +++++++++++++++++++++-
 1 file changed, 132 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 77052c66cf70..58c241b8844a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -311,6 +311,70 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
 };
 
+static const struct qmp_phy_init_tbl sm6350_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
+};
+
+static const struct qmp_phy_init_tbl sm6350_usb3_pcs_tbl[] = {
+	/* FLL settings */
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_MAN_CODE, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL1, 0x02),
+
+	/* Lock Det settings */
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_POWER_STATE_CONFIG2, 0x1b),
+
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V1, 0x9f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V2, 0xb7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V3, 0x4e),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V4, 0x65),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_LS, 0x6b),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V1, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V2, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V3, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V3, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V4, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V4, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_LS, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_LS, 0x0d),
+
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RATE_SLEW_CNTRL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TSYNC_RSYNC_TIME, 0x44),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK, 0x86),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_DET_HIGH_COUNT_VAL, 0x04),
+
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_REFGEN_REQ_CONFIG2, 0x60),
+};
+
 static const struct qmp_phy_init_tbl sm8150_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
@@ -809,6 +873,8 @@ struct qmp_combo_offsets {
 	u16 usb3_pcs;
 	u16 usb3_pcs_usb;
 	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
 	u16 dp_dp_phy;
 };
 
@@ -975,6 +1041,21 @@ static const char * const sc7180_usb3phy_reset_l[] = {
 	"phy",
 };
 
+static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
+	.com		= 0x0000,
+	.txa		= 0x1200,
+	.rxa		= 0x1400,
+	.txb		= 0x1600,
+	.rxb		= 0x1800,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1a00,
+	.usb3_pcs	= 0x1c00,
+	.dp_serdes	= 0x2000,
+	.dp_txa		= 0x2200,
+	.dp_txb		= 0x2600,
+	.dp_dp_phy	= 0x2c00,
+};
+
 static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.com		= 0x0000,
 	.txa		= 0x0400,
@@ -1172,6 +1253,51 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
+	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
+	.tx_tbl			= qmp_v3_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_tx_tbl),
+	.rx_tbl			= sm6350_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm6350_usb3_rx_tbl),
+	.pcs_tbl		= sm6350_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm6350_usb3_pcs_tbl),
+
+	.dp_serdes_tbl		= qmp_v3_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v3_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v3_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v3_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v3_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v3_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v3_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v3_dp_aux_init,
+	.configure_dp_tx	= qmp_v3_configure_dp_tx,
+	.configure_dp_phy	= qmp_v3_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+};
+
 static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
@@ -2641,8 +2767,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	qmp->pcs_usb = base + offs->usb3_pcs_usb;
 
 	qmp->dp_serdes = base + offs->dp_serdes;
-	qmp->dp_tx = base + offs->txa;
-	qmp->dp_tx2 = base + offs->txb;
+	qmp->dp_tx = base + offs->dp_txa;
+	qmp->dp_tx2 = base + offs->dp_txb;
 	qmp->dp_dp_phy = base + offs->dp_dp_phy;
 
 	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");
@@ -2789,6 +2915,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
 		.data = &sdm845_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
+		.data = &sm6350_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
