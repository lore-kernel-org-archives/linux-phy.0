Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A10C74A4B
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi9nDsIySGwLnAqZY4Nb979MBpvH/F+BLt574/F8gW4=; b=TYd/+NoF+YlnEO
	EeiuSZD2RRpwn19ecp7krpXtAgtGPFam6q6zOS4pMSncnsrHt6VP3z7ntz3iLdd0BWZiF8ZNF10bQ
	3r05UrI3aiFiTqBbQxlWpvP9xvIggIdiTPvwfs/F9hl5928Ck6fsgSFYbXVclYVDxrs9TQkyAYbqe
	CPKhsD/vsq4dBLBF1MOhIR8B3VZmmWAidg6F1zoHHSLRC16+vqtnlFYasvCS6NAy/rkQbkr7lLwR3
	scGV8Xvl1PnugfuQlZ4BDqJkkZcuagfCWOqpzSveSIhHEan3m6DYN0v4WXkEUlCAvsFlS7riJR7ne
	9E+6sartc2kqUFjRsxIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp7B-003xrg-EF; Wed, 08 Mar 2023 08:25:37 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp78-003xo5-97
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:35 +0000
Received: by mail-pl1-x635.google.com with SMTP id a9so16923910plh.11
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IhaZM+LzQT6n/z3jIwjbjKCMhIkRgZALhklAA4IZbKc=;
        b=mfWvKdFUdHk4B8DOjPwUYP2wAKdArS1oB5BT/qa8B66hFpI7bLhc28l3PnGGxPk0Sw
         f39gbgMGdK0E6oy7Aeso1nGUKWUxPCozONcZ4rPq5sJtpo4qvJaNePiGYtWYjRU8dYst
         M/jyHZPmB4o1fRnO+AFRTn7rLOnCUVtGtMlw3CbHpz2m7woVWeJFOvXz1B6uIqYT+G6h
         aJqqLXRRAWBq9+1RiR6+gtoi0nTKAcUrdJRu7z4A3wXj49y56R38yR9El4Cy8PDraqv4
         yKVpZqv1HG/3CzEK0w2AjrOtDCCqnUkzOuMYeO1imC+AxD0ItapukhjBZbhRNy+Rki+4
         1AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IhaZM+LzQT6n/z3jIwjbjKCMhIkRgZALhklAA4IZbKc=;
        b=fU6DiuD2JMdo0C5E3rnD8pavEj4+PyBQBZlF1UcZZAQZEo5LrQv1KlCbbrTUuz5y4g
         9eKFpfSkZFEjLgVqY33zMaVxqLIpW/VQCmTjSKV0x+oV+J3HluxcYYWbVymAChBvIJZI
         9VeyGnYpxFEMsouB8BsLcec2uG5rQM8oKlraCH9SZYqEBCNKfzCHTRUlwuN3oK4mFfnz
         9jqe9WL/LG4gCOPjJXq6aVgRcBxLyfeihC2XH0tmPhY498xKoJAB9TdNE9c9F7Xe95Jf
         HMy2P+F3pLVHu9Aje7MoQBGWWvJHeIaiYRu/qkCipw62zs6/NWuk+5AzQf9+iM32fAZo
         mkqA==
X-Gm-Message-State: AO0yUKU7JBuWkTHoOuzDN39TOCHO5njHl96ZWAMszv9KYwsj4gbVcxI6
	ZKMBxsjnol3gScwBCodWql47
X-Google-Smtp-Source: AK7set9ye0pH7tY7jwzXDtDoT/LiOOXk9weZtv3jgexUnEnEqa/fQcKvKFBWs6IWH8OEn+pFLfBqyw==
X-Received: by 2002:a17:903:1d2:b0:19d:1f42:b018 with SMTP id e18-20020a17090301d200b0019d1f42b018mr24445594plh.27.1678263927997;
        Wed, 08 Mar 2023 00:25:27 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:25:27 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 12/13] phy: qcom-qmp-pcie: Add RC init sequence for SDX55
Date: Wed,  8 Mar 2023 13:54:23 +0530
Message-Id: <20230308082424.140224-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002534_346868_E0916F47 
X-CRM114-Status: GOOD (  11.50  )
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

Add PCIe RC init sequence making use of the common init sequence. The RC
mode additionally requires REFCLK_DRV_DSBL bit to set during powerup and
powerdown.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 49 ++++++++++++++++++-
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |  2 +
 2 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 35328e998699..d671748bc097 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1146,6 +1146,41 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
 };
 
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE1, 0x97),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_EP_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_EP_DIV_MODE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0xc3),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE1, 0xd0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xca),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x20),
+};
+
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
@@ -1225,6 +1260,11 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 };
 
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
@@ -2308,6 +2348,13 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
 	},
 
+	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sdx55_qmp_pcie_rc_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_rc_serdes_tbl),
+		.pcs_misc	= sdx55_qmp_pcie_rc_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_rc_pcs_misc_tbl),
+	},
+
 	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
 		.serdes		= sdx55_qmp_pcie_ep_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_serdes_tbl),
@@ -2323,7 +2370,7 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v4_regs_layout,
 
-	.pwrdn_ctrl		= SW_PWRDN,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 };
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
index af273602998e..ac872a9eff9a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
@@ -6,6 +6,8 @@
 #ifndef QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
 #define QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
 
+#define QPHY_V4_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V4_20_PCS_PCIE_EQ_CONFIG1			0x0a0
 #define QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME		0x0f0
 #define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
