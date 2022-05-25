Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799B8C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 26 May 2022 01:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCO2l9Giqa/UJmQ0rRvv9bLgYaeob3MxuVSNPxKwYTA=; b=gIQdCleFJ4/83P
	jK1fduiFvhTezf8uvV+CAwrfoi3XQJRXEMD3wWVWiYD2TGQ7Oq99EhAn/4FVXyxEI7nTnws/pqQht
	1/NSubaunR/wbvNKQxapPhA4NKUnVC8PsA6O/YySyr9BCTqams4U4W0wmmEcEH8CJiALYntzETSnh
	GJmNskymdoH/1tWX1OjSLQPXFbeaRY6T3SlHGbFQ1q7Yx3KujQxx+wtUtv0wKOcN5a9LQyuk4tXDG
	wQkakk3WMJg3f5um8mc6kfLqJKVzhRZx+LSXoSIka9Vb+yHBjA66SimBDf52SGws9AVobGlapaul+
	c7XtjIcozRh2gMgbYerg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu1tE-00D8rE-ND; Thu, 26 May 2022 01:02:12 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u2-00CzC1-Ci
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:00 +0000
Received: by mail-lf1-x12b.google.com with SMTP id p4so101849lfg.4
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+Cl0ZDs3H4lohiMAjodmRbrVMfNLPZe8UOy0H4fJE2Q=;
        b=dBinhmOsZqlYm4hh7RHw6lx9zcjVUD+kNCfwBMLu8F5oe55w8txOc+bPA+sD3EUrZD
         +vkeT7NEeVRftzrFLxiHEU1YdwYAKbC5hZemK/nMU5Op+fk0xwf1g0jzBscKOqt8u9bl
         kxx0WgddkCtzxdJCjHEUZovbTdS3fTJb+mnGQQhIsIyXLM32WRCCuS5ssMBvxM89UjrB
         fpBP5pHeFl5KvCga3uVty8G0M34XpHP/VHX/3EU+XP74atWEcZjQ9lCzM/VMsEXjQ8Ez
         +/UY9Prk7xhipDE88Ao7WLW0PGk8PYVNJvDID9D1sNzJMMfabBk20jH53c1uws1BDsAv
         CnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Cl0ZDs3H4lohiMAjodmRbrVMfNLPZe8UOy0H4fJE2Q=;
        b=dDWMYclWjGFlp9nTExVLLrjUHAKL5URAycBKEvVpnnhdROyHv99l1xNO9jSUc4WMTm
         qF3v6EXLansx3af6+SQOThpQpDst0hCaSAtMMQcBFzBjQrTtki1cbL029iQY+b0RQ1Qg
         cb26DDJWYZvkwa3dTyTeYrZj9XywDzv6ZR8o3Y6Yp2PnQ+aY8OmGf0a3cCQgIbHFvsFn
         H+z+NSWjAi5R9Uu/VOBw6sWOe0RrCOv1+tuQDCtm11TdT/2g3+Xyr4YqvwIVz2E5lYYf
         WXMbxiXfTeHopgsv5FPpW8pVcmw8Z28t4fhYWL/XHNmGBvY7Chn5HqFyBmAkfTtTPwus
         SZnQ==
X-Gm-Message-State: AOAM530xmkbhhoAQiRD/ysU/xZTIO2rpMO18Eh0YgQYVJLh98aO7/ngz
	Yoo0B6ovOR1JSg90D/ScxdEHQA==
X-Google-Smtp-Source: ABdhPJzmdOD2Zrgh0+QjGfin9O9WDLHKika4ox/BEV9zChEH3R3FcW9GrGvgnQwDCLkvKUDzGvqTJA==
X-Received: by 2002:a05:6512:b9f:b0:478:5bf0:67f9 with SMTP id b31-20020a0565120b9f00b004785bf067f9mr17748730lfv.313.1653523136989;
        Wed, 25 May 2022 16:58:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:58:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 13/34] phy: qcom-qmp: move MSM8996 UFS PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:20 +0300
Message-Id: <20220525235841.852301-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165858_633056_7B088A8B 
X-CRM114-Status: GOOD (  11.95  )
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

Move support for the UFS PHY driver on MSM8996 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 117 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c     | 107 ----------------------
 2 files changed, 117 insertions(+), 107 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 5136b161a372..529555212bb5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -41,6 +41,119 @@ struct qmp_ufs_phy {
 
 #define to_qmp_ufs_phy(qphy)	container_of(qphy, struct qmp_ufs_phy, base)
 
+static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= 0x00,
+	[QPHY_PCS_READY_STATUS]		= 0x168,
+};
+
+static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_POWER_DOWN_CONTROL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE1, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE1, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE1, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE1, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE1, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
+};
+
+static const struct qmp_phy_init_tbl msm8996_ufs_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
+};
+
+static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_TERM_BW, 0x5b),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_MSB, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_MSB, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
+};
+
+/* list of clocks required by phy */
+static const char * const msm8996_ufs_phy_clk_l[] = {
+	"ref",
+};
+
+/* list of regulators */
+static const char * const qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll",
+};
+
+static const struct qmp_phy_ufs_cfg msm8996_ufs_cfg = {
+	.base = {
+		.type			= PHY_TYPE_UFS,
+		.nlanes			= 1,
+
+		.serdes_tbl		= msm8996_ufs_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes_tbl),
+		.tx_tbl			= msm8996_ufs_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx_tbl),
+		.rx_tbl			= msm8996_ufs_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx_tbl),
+
+		.clk_list		= msm8996_ufs_phy_clk_l,
+		.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
+
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+		.regs			= msm8996_ufsphy_regs_layout,
+
+		.start_ctrl		= SERDES_START,
+		.pwrdn_ctrl		= SW_PWRDN,
+		.phy_status		= PCS_READY,
+		.phy_status_active_high	= true,
+	},
+
+	.no_pcs_sw_reset	= true,
+};
+
 static int qcom_qmp_phy_com_init(struct qmp_ufs_phy *qphy_ufs)
 {
 	struct qcom_qmp *qmp = qphy_ufs->base.qmp;
@@ -243,6 +356,10 @@ int qcom_qmp_phy_ufs_create(struct device *dev, struct device_node *np, int id,
 }
 
 static const struct of_device_id qcom_qmp_phy_ufs_of_match_table[] = {
+	{
+		.compatible = "qcom,msm8996-qmp-ufs-phy",
+		.data = &msm8996_ufs_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_qmp_phy_ufs_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index c71d704a93d9..98e683b383c3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -141,11 +141,6 @@ enum qphy_reg_layout {
 	QPHY_LAYOUT_SIZE
 };
 
-static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_START_CTRL]		= 0x00,
-	[QPHY_PCS_READY_STATUS]		= 0x168,
-};
-
 static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_FLL_CNTRL1]		= 0xc0,
 	[QPHY_FLL_CNTRL2]		= 0xc4,
@@ -297,75 +292,6 @@ static const struct qmp_phy_init_tbl ipq8074_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0f),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_POWER_DOWN_CONTROL, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV_MODE1, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x54),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE0, 0x28),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE0, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE1, 0x98),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE1, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE1, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE1, 0x28),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE1, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE1, 0xd6),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE1, 0x32),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE1, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
-};
-
-static const struct qmp_phy_init_tbl msm8996_ufs_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
-};
-
-static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_TERM_BW, 0x5b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_LSB, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_MSB, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_LSB, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_MSB, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
-};
-
 static const struct qmp_phy_init_tbl msm8996_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -2162,10 +2088,6 @@ static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
 };
 
-static const char * const msm8996_ufs_phy_clk_l[] = {
-	"ref",
-};
-
 static const char * const qmp_v3_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
 };
@@ -2239,32 +2161,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
-static const struct qmp_phy_cfg msm8996_ufs_cfg = {
-	.type			= PHY_TYPE_UFS,
-	.nlanes			= 1,
-
-	.serdes_tbl		= msm8996_ufs_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes_tbl),
-	.tx_tbl			= msm8996_ufs_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx_tbl),
-	.rx_tbl			= msm8996_ufs_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx_tbl),
-
-	.clk_list		= msm8996_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
-
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-
-	.regs			= msm8996_ufsphy_regs_layout,
-
-	.start_ctrl		= SERDES_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
-
-	.no_pcs_sw_reset	= true,
-};
-
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -4457,9 +4353,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	{
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,msm8996-qmp-ufs-phy",
-		.data = &msm8996_ufs_cfg,
 	}, {
 		.compatible = "qcom,msm8996-qmp-usb3-phy",
 		.data = &msm8996_usb3phy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
