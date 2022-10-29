Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E4DFA3749
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IraOiBLyQ8Vv+FXeDFsLV99Z3Ci3RIj5Y2RAL39801A=; b=O8sXREReudmoOG
	EQnOsX+EAFl+L3+PImhi3I/LZG1SQgBxjJrmvO2dT7N/gQbNQyitD3SMhQGbiY0FYivRC8whE/c+G
	qo2IibvgiUMn3xFyK7fy7RuFoF2JhlBPWp0ECfU9hPvRdQoBmw7cbH3FZ977kGpR1pZG131TotAfU
	keeY5jiaP3oqdYlE1A/XhuQYfPjKm3T/XFPQCIE3jLBuh4axu38ckgT22pu+U/+l7b99eW1ibOavH
	f1wfr9FhKhakgwnd+rT71/0VXeje+zFwUKUISs7I+vzJll//+QqxWty9eNpDx++OghVWnNCq7SqJG
	urArpQiKjiw6ekHPVufA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8v-009MPj-TB; Sat, 29 Oct 2022 21:13:25 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8q-009MHa-VL
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:22 +0000
Received: by mail-lf1-x132.google.com with SMTP id t4so467537lfp.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJ2UqFwp8b8LkqxRVAqtbd9bmMlajXDHesjjPBeXA0Q=;
        b=N4XVrOosQdyfKJb3+8YfXOur1jIaUPxfGajzddMtP1iPDQKcw8+WCZvYizsIA98Ump
         9xLyPgOapzWRA6eTKQ9nkwYwM1+KNGq87WX8htYHgT9WgADKSXKV4sbmM155Jf2ML1i1
         XcOWFRg/x8FWkGy9qrGHqh2wMr48zphXQYCZUK1FD6iTi4GGs1NmpNQ/JT7uON3kaqmI
         klGjCpRYAeR1BwE/XastS+wTa6RpsCgVIFsXU/FmTkNkSboz60C8vwzX8mOHzWyYO5Zk
         I9YnGHkV78F8oLBwOUkiv7+EEQXX7NjMnFxBLRgTzUyyUSI8bkqKQjcUCyBojMW9oNhJ
         pqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RJ2UqFwp8b8LkqxRVAqtbd9bmMlajXDHesjjPBeXA0Q=;
        b=X5UjASIIKBb5UM1OOPFV+NHS4Jwpe78YVZr8NydheaHOEnQu4OMJdhYSSYFanEYFCK
         +likJc9WEdKKbFi+9Lh938sUL9W0jvYDiYNns6ABXDcnzlIlxYox8aij3vUOSFCk/XPC
         mryWq29GXaJLVbjzdsJZtjbXTrKVCtpXRqLUf7nbE5OkA3vCvzYrCugoaNxOAFBYmrYN
         aubuO0Jc46pCm7h7WmhhkX0ThMggEeJpJl8FgT+j6jOqh1rEZZMk9Ne2pPRvkcSTKS7b
         7XPY9s90OGtSfIEadw7P2joDDWMcyWKBeiJo5TFvR9b291WpDNBVzYAaoaiKitDQcrCn
         hJ3w==
X-Gm-Message-State: ACrzQf0Y2FHRltEQOjCDb/7WFogPGdvRS6Fc/a3MfHpdTurE4UMcZuYr
	yoBepCfNIWh/veNldRoilEMrGQ==
X-Google-Smtp-Source: AMsMyM41H1QI6uMK9fW3hlLXEWN9gEKmLPqgNqd4eqAGrrrD8mIC1G0HZjlhUo7vBdCPxSH7DvNTqA==
X-Received: by 2002:ac2:5a45:0:b0:4a6:5781:d84c with SMTP id r5-20020ac25a45000000b004a65781d84cmr2329666lfn.484.1667077998446;
        Sat, 29 Oct 2022 14:13:18 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 4/7] phy: qcom-qmp-pcie: split and rename the sm8450 gen3 PHY config tables
Date: Sun, 30 Oct 2022 00:13:09 +0300
Message-Id: <20221029211312.929862-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141321_030026_99218301 
X-CRM114-Status: GOOD (  10.59  )
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

SM8350 PHY config tables are mostly the same as SM8450 gen3 PHY config
tables. Split these tables to be used by SM8350 config. Following this
split rename generic tables to remove x1 suffix.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 44 ++++++++++++++++--------
 1 file changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 1425bdba68e7..11be1e31c1e0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1215,7 +1215,7 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE1, 0x08),
@@ -1249,7 +1249,6 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xca),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xa2),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_BUF_ENABLE, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_EN_CENTER, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER1, 0x31),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER2, 0x01),
@@ -1260,6 +1259,10 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
 };
 
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rc_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_BUF_ENABLE, 0x07),
+};
+
 static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0x75),
@@ -1268,11 +1271,9 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x04),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0x7f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xbf),
-	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x3f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xd8),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_LOW, 0xdc),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH, 0xdc),
@@ -1280,20 +1281,25 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x34),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xa6),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_10_HIGH3, 0x34),
-	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_10_HIGH4, 0x38),
-	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_GM_CAL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH1, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH2, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0xf0),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_TX_ADAPT_POST_THRESH, 0xf0),
+};
+
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rc_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_10_HIGH4, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0xf0),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FO_GAIN, 0x09),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SO_GAIN, 0x05),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x77),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RATE_SLEW_CNTRL1, 0x0b),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x05),
@@ -2013,17 +2019,25 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
 	.tables = {
-		.serdes		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
-		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
+		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
 		.tx		= sm8450_qmp_gen3x1_pcie_tx_tbl,
 		.tx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_tx_tbl),
-		.rx		= sm8450_qmp_gen3x1_pcie_rx_tbl,
-		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rx_tbl),
-		.pcs		= sm8450_qmp_gen3x1_pcie_pcs_tbl,
-		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_tbl),
+		.rx		= sm8450_qmp_gen3_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen3_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
 		.pcs_misc	= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
 	},
+
+	.tables_rc = &(const struct qmp_phy_cfg_tables) {
+		.serdes		= sm8450_qmp_gen3x1_pcie_rc_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_serdes_tbl),
+		.rx		= sm8450_qmp_gen3x1_pcie_rc_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_rx_tbl),
+	},
+
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
