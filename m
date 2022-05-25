Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E4DC4167B
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7Sx+tunF+S9VSf9TrGIfwJJkjwyhnelcwjxXBq+rPs=; b=KlZQrQrsR7gSG+
	6QE2+QAiek6QEK5nBGsvqK3WnPhft+XoyHZh7hKCUqHUZvkrvger+Ors06VRfBg4AHy7zc/stgFLH
	B9bu6DLftahqQOVkscxZ/e6WMOdD7Vo6wdF5DW/9DLjI/FvDGa2rxbw7rD5ey8g29TX64BtwmKK58
	ruE1sUOPnrnnDGhZQdmiZZpjPdWOjDKIrc1jpyP1IVYvpilXEOP9iSyicnNqaxmtwABtmFOMU1GKD
	RnqHTExx/J8liteTeaBdWQ54OyMUpDQ+0XWm08Oc3MrsE/JxMG6ifVPnIfZI6GcydPGik+SM9fi7u
	vyfsKbpEAX2U2EurjG7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u2-00CzCV-4J; Wed, 25 May 2022 23:58:58 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ty-00Cz5r-G7
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:58:56 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p22so5096lfo.10
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1WXOl7oGyUnG/wsElYQAYyfORSRYxepxmWh49fWOazk=;
        b=HFT4ley8KG8nX5AKtnGkfftekCp5x9SSdJXX/STF/NrqNwbIbh32g75L+aWegGifbE
         o2v8epGtFNstOKp3jhRiCOM+8t/LaX6Vf8AXfTqSrF/vBexmov/TSpdpIcq4GAoC9xeM
         lja/1WKq1XybBW8NN+zs9yJfwpZ9u+f7UqqnJHXRAsHaKEBQnkoUJPUfZ5w7Rp01H1nA
         1Mf3FzWOVUboBt1XAGcIRhhb5gYoJ1mW2tzIl9RXWKZ11zrzoSoINcqTd8qRs78IuYgE
         nsRa5XC2aBeFGQ3FsFrYGJbHlWTG/k5+4ZiN6bgp9xkY5BCpy5w/WrBXKoWN9POKtiLS
         4Byw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1WXOl7oGyUnG/wsElYQAYyfORSRYxepxmWh49fWOazk=;
        b=TpjkesBikmVsJvlKMOpOL3NG6ot0LsjyTtA5NiUVju95Y8yl6hrCtYaLrmrITwVjCP
         IQcJmI71ONQdBt6X3huU6dkZfqV9z/bbGnE5fp3ZYrcU0KZFcr1Nob1g/w9KqOkyAk2k
         nDbwPzXcnHKlKlN8SRlq4nmBxf+OgpE/7ZVahxyoHvirB4c0ZZTmu70N5BHl0PFxKoFH
         dsyH07IZ3zJ8rHzeaTkNJaU594yKykpwDuG8VhFUctD2es54q3KRCj1/c7j68v3ulqfG
         R+Bjlf+DcXK/YUTz//JtPVMLDhXvAiF6qbB5WtO3KXGgqVAgor39ijN6kvEHcY7djiE5
         x2Tw==
X-Gm-Message-State: AOAM533y7lZkr+G78X0Pw5AJu4wCKEZSC+zxtMPLuzG6ldP25mLg13NO
	VPeMisMLfMjOfJh8oJJjJvg+xg==
X-Google-Smtp-Source: ABdhPJzZFrEaJ7vsC8QpXuZc2t8EF328KbhaMzKeccz3ybmZ09k3dquWt8TslOeuS47IM/4iZ3Eo4Q==
X-Received: by 2002:a05:6512:2342:b0:477:cbd2:a7bf with SMTP id p2-20020a056512234200b00477cbd2a7bfmr23602473lfu.169.1653523133967;
        Wed, 25 May 2022 16:58:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:58:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 10/34] phy: qcom-qmp: move SDX55 PCIe PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:17 +0300
Message-Id: <20220525235841.852301-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165854_632466_60F0AA08 
X-CRM114-Status: GOOD (  11.27  )
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

Move support for the PCIe PHY driver on SDX55 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 134 +++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c      | 130 ----------------------
 2 files changed, 134 insertions(+), 130 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7c6b1c450f50..133eb59fbf57 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -777,6 +777,101 @@ static const struct qmp_phy_init_tbl sdm845_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_MISC_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
 };
 
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE1, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE1, 0x50),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTERNAL_DIG_CORECLK_DIV, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MODE, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_DC_LEVEL_CTRL, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x56),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_2, 0xf6),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_3, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_VMODE_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_PI_QEC_CTRL, 0x00),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_AUX_DATA_TCOARSE_TFINE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_3, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_DAC_ENABLE1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_DAC_ENABLE2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_VGA_CAL_CNTRL2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B2, 0x5a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B4, 0x37),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B0, 0xbd),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B1, 0xf9),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B3, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B4, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B0, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B1, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B3, 0xcf),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B4, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_PHPRE_CTRL, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_MARG_COARSE_CTRL2, 0x12),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_RX_SIGDET_LVL, 0x77),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG2, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG4, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG5, 0x02),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_EQ_CONFIG1, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sm8250_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
@@ -1171,6 +1266,42 @@ static const struct qmp_phy_pcie_cfg sdm845_qmp_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_pcie_cfg sdx55_qmp_pciephy_cfg = {
+	.base = {
+		.type = PHY_TYPE_PCIE,
+		.nlanes = 2,
+
+		.serdes_tbl		= sdx55_qmp_pcie_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
+		.tx_tbl			= sdx55_qmp_pcie_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_tx_tbl),
+		.rx_tbl			= sdx55_qmp_pcie_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_rx_tbl),
+		.pcs_tbl		= sdx55_qmp_pcie_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_pcs_tbl),
+		.clk_list		= sdm845_pciephy_clk_l,
+		.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
+		.reset_list		= sdm845_pciephy_reset_l,
+		.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs			= sm8250_pcie_regs_layout,
+
+		.start_ctrl		= PCS_START | SERDES_START,
+		.pwrdn_ctrl		= SW_PWRDN,
+		.phy_status		= PHYSTATUS_4_20,
+
+		.is_dual_lane_phy	= true,
+	},
+
+	.pcs_misc_tbl		= sdx55_qmp_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
 static const struct qmp_phy_pcie_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.base = {
 		.type = PHY_TYPE_PCIE,
@@ -1600,6 +1731,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm845-qmp-pcie-phy",
 		.data = &sdm845_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sdx55-qmp-pcie-phy",
+		.data = &sdx55_qmp_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy",
 		.data = &sm8250_qmp_gen3x1_pciephy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 82a96396244b..97252f21c490 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -1587,101 +1587,6 @@ static const struct qmp_phy_init_tbl sdx55_usb3_uniphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x1f),
 };
 
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x19),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE1, 0x19),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x46),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_CFG, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE1, 0x50),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC1, 0x88),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTERNAL_DIG_CORECLK_DIV, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MODE, 0x17),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_DC_LEVEL_CTRL, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x56),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1d),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
-};
-
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_1, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_2, 0xf6),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_LANE_MODE_3, 0x13),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_VMODE_CTRL1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_TX_PI_QEC_CTRL, 0x00),
-};
-
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_FO_GAIN_RATE2, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_UCDR_PI_CONTROLS, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_AUX_DATA_TCOARSE_TFINE, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_3, 0x55),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_DAC_ENABLE1, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_DAC_ENABLE2, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_VGA_CAL_CNTRL2, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B1, 0x1a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B2, 0x5a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B3, 0x09),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE_0_1_B4, 0x37),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B0, 0xbd),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B1, 0xf9),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B2, 0xbf),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B3, 0xce),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE2_B4, 0x62),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B0, 0xbf),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B1, 0x7d),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B2, 0xbf),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B3, 0xcf),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_RX_MODE_RATE3_B4, 0xd6),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_PHPRE_CTRL, 0xa0),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
-	QMP_PHY_INIT_CFG(QSERDES_V4_20_RX_MARG_COARSE_CTRL2, 0x12),
-};
-
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_RX_SIGDET_LVL, 0x77),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG2, 0x01),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG4, 0x16),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_EQ_CONFIG5, 0x02),
-};
-
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_EQ_CONFIG1, 0x17),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME, 0x13),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME, 0x13),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2, 0x01),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
-};
-
 static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0xa5),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_2, 0x82),
@@ -3077,38 +2982,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
-static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
-	.nlanes = 2,
-
-	.serdes_tbl		= sdx55_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
-	.tx_tbl			= sdx55_qmp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_tx_tbl),
-	.rx_tbl			= sdx55_qmp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_rx_tbl),
-	.pcs_tbl		= sdx55_qmp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sdx55_qmp_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
-	.reset_list		= sdm845_pciephy_reset_l,
-	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8250_pcie_regs_layout,
-
-	.start_ctrl		= PCS_START | SERDES_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS_4_20,
-
-	.is_dual_lane_phy	= true,
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
-};
-
 static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -4943,9 +4816,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8350-qmp-ufs-phy",
 		.data = &sm8350_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,sdx55-qmp-pcie-phy",
-		.data = &sdx55_qmp_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
 		.data = &sdx55_usb3_uniphy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
