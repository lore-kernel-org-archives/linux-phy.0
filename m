Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93691C6FA90
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUMVn30pa2ajAWRdkT0KWziw7YCTD+m1BpGYTf9eP/c=; b=re8ewcN1LZSM54
	RWPCaQH4+0czZcqB1C0j7sl7UhwhlVwa10CAIDyqcZsX4sPmvNngFmzpaLXbDBzwZYypEuZ8jF1tV
	iy/C2xLbrviTxeFfHeOECHYyLah0dR3CWbfmyrcwVFB5N1arO0q3Y2Ul84qp1AzWi6xr9SO4BETUp
	XEVHdY8J+zqD53wZ2kdVgnutIT68LUiL2p7sggMb7gzLlk2WEbck8hkovouKZ2loscf+Xe3vU2wN/
	y7IhswM4csj9eIRxzoQFWvxsupDcXlaQjrNcvfKplytIOOCvGouhgp/Xnv5PwelZ0S2KhL9K1xDoU
	S4Zpp0bbR5js1JRidS+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0F-00636r-Va; Mon, 26 Sep 2022 17:34:47 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0A-00632o-C4
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:34:45 +0000
Received: by mail-lf1-x131.google.com with SMTP id k10so12013149lfm.4
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NJmGl0isQZs45gepD/ZETZmr4zFNUX4wrVsfh0zbV9Y=;
        b=vYNb3SLOEX2mO8wUJ+7FRuJ8pjBu3wmCWa/fgSRVY2vi6GjPRkD8ZoTb+Est6A52A6
         paddtLW88SOgm4/2xKDrpmSwGJzUiBfh0VBM5FC7YVrtuP9LnMrwARWFWUIHb4k6iuHK
         VOLJFfDbJBJTtnxLqj9gZEPbepkxaVjU0D38WJo/jxZ8NoSc3NzbSp9z09J9C8gNutDR
         RZigUEp0uPeDmwn8JwMXqDqt3uM5Anl2eLgatA3I7nxDW6L2gtNCpf94i8im09wch7T1
         v4B/k+g4QUaxvvCCbkUCVc1lhagYGE8c2NUwrLzK25FPQ2zM3NA9nVOvmJoY8qrjA/LQ
         VpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NJmGl0isQZs45gepD/ZETZmr4zFNUX4wrVsfh0zbV9Y=;
        b=XXI2dosm0BynvRqE4J9hHhfQ2gdaUWqcMdWl92c2kzzZC3AP9m6adRP2dklsO1hq9B
         RlrdVM3s3qDpMGgjSqcFAnT3iVwVWi8SrmmOC01/cwBKNjueWHgVqJJIolwZDAtCV0px
         5a2y76xv12bsZfeYVLG9Xm1FT0GKRw+FuwSeVx1KiIIoAN0tMNfRApafolhVG/gca2lM
         +BLEZS/9iRWXdTO5ug2zUPjOer1RqxQUV7ptUwx2BRV9+WIWZ2CaXACtapXcNm3OJgS2
         3jXJ1rxvXlY1cYIcCecXKmpprTJNtboFn7NM7qM17XUSzlP/mShFDKfPn/zHMmE1bmPQ
         hsjw==
X-Gm-Message-State: ACrzQf3Nq33k9G7JXiQcdfN7w87JBLoF7PVigVX2ujHRKvtRptgimzqd
	UI7B5oM8M5/Xdsh5fxHjReL0Xw==
X-Google-Smtp-Source: AMsMyM63TdQEXTQ2FORNxcZkCmukb7C8PlIAAownvNSyvmJxEV+iChwwPmTrbJrd6AUlJd4Yb3mkTg==
X-Received: by 2002:ac2:429a:0:b0:49f:9c71:50b6 with SMTP id m26-20020ac2429a000000b0049f9c7150b6mr8944737lfh.349.1664213677705;
        Mon, 26 Sep 2022 10:34:37 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a2ea448000000b0026ad1da0dc3sm2402640ljn.122.2022.09.26.10.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:34:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 1/5] phy: qcom-qmp-pcie: split register tables into common and extra parts
Date: Mon, 26 Sep 2022 20:34:31 +0300
Message-Id: <20220926173435.881688-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_103442_444875_3BF77AA8 
X-CRM114-Status: GOOD (  13.06  )
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

SM8250 configuration tables are split into two parts: the common one and
the PHY-specific tables. Make this split more formal. Rather than having
a blind renamed copy of all QMP table fields, add separate struct
qmp_phy_cfg_tables and add two instances of this structure to the struct
qmp_phy_cfg. Later on this will be used to support different PHY modes
(RC vs EP).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 410 +++++++++++++----------
 1 file changed, 226 insertions(+), 184 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5be5348fbb26..dc8f0f236212 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
 };
 
+struct qmp_phy_cfg_tables {
+	const struct qmp_phy_init_tbl *serdes;
+	int serdes_num;
+	const struct qmp_phy_init_tbl *tx;
+	int tx_num;
+	const struct qmp_phy_init_tbl *rx;
+	int rx_num;
+	const struct qmp_phy_init_tbl *pcs;
+	int pcs_num;
+	const struct qmp_phy_init_tbl *pcs_misc;
+	int pcs_misc_num;
+};
+
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	int lanes;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
-	const struct qmp_phy_init_tbl *serdes_tbl;
-	int serdes_tbl_num;
-	const struct qmp_phy_init_tbl *serdes_tbl_sec;
-	int serdes_tbl_num_sec;
-	const struct qmp_phy_init_tbl *tx_tbl;
-	int tx_tbl_num;
-	const struct qmp_phy_init_tbl *tx_tbl_sec;
-	int tx_tbl_num_sec;
-	const struct qmp_phy_init_tbl *rx_tbl;
-	int rx_tbl_num;
-	const struct qmp_phy_init_tbl *rx_tbl_sec;
-	int rx_tbl_num_sec;
-	const struct qmp_phy_init_tbl *pcs_tbl;
-	int pcs_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_tbl_sec;
-	int pcs_tbl_num_sec;
-	const struct qmp_phy_init_tbl *pcs_misc_tbl;
-	int pcs_misc_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
-	int pcs_misc_tbl_num_sec;
+	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
+	const struct qmp_phy_cfg_tables tables;
+	/*
+	 * Additional init sequence for PHY blocks, providing additional
+	 * register programming. Unless required it can be left omitted.
+	 */
+	const struct qmp_phy_cfg_tables *tables_rc;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1459,14 +1458,16 @@ static const char * const sdm845_pciephy_reset_l[] = {
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
-	.tx_tbl			= ipq8074_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
-	.rx_tbl			= ipq8074_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
-	.pcs_tbl		= ipq8074_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
+	.tables = {
+		.serdes		= ipq8074_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
+		.tx		= ipq8074_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
+		.rx		= ipq8074_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
+		.pcs		= ipq8074_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
+	},
 	.clk_list		= ipq8074_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
@@ -1487,14 +1488,16 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
-	.tx_tbl			= ipq8074_pcie_gen3_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
-	.rx_tbl			= ipq8074_pcie_gen3_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_rx_tbl),
-	.pcs_tbl		= ipq8074_pcie_gen3_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_tbl),
+	.tables = {
+		.serdes		= ipq8074_pcie_gen3_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
+		.tx		= ipq8074_pcie_gen3_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
+		.rx		= ipq8074_pcie_gen3_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq8074_pcie_gen3_rx_tbl),
+		.pcs		= ipq8074_pcie_gen3_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_tbl),
+	},
 	.clk_list		= ipq8074_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
@@ -1516,16 +1519,18 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= ipq6018_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
-	.tx_tbl			= ipq6018_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(ipq6018_pcie_tx_tbl),
-	.rx_tbl			= ipq6018_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(ipq6018_pcie_rx_tbl),
-	.pcs_tbl		= ipq6018_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
-	.pcs_misc_tbl		= ipq6018_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= ipq6018_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
+		.tx		= ipq6018_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq6018_pcie_tx_tbl),
+		.rx		= ipq6018_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq6018_pcie_rx_tbl),
+		.pcs		= ipq6018_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
+		.pcs_misc	= ipq6018_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= ipq8074_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
@@ -1545,16 +1550,18 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sdm845_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
-	.tx_tbl			= sdm845_qmp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sdm845_qmp_pcie_tx_tbl),
-	.rx_tbl			= sdm845_qmp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sdm845_qmp_pcie_rx_tbl),
-	.pcs_tbl		= sdm845_qmp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_qmp_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sdm845_qmp_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sdm845_qmp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
+		.tx		= sdm845_qmp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sdm845_qmp_pcie_tx_tbl),
+		.rx		= sdm845_qmp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sdm845_qmp_pcie_rx_tbl),
+		.pcs		= sdm845_qmp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_tbl),
+		.pcs_misc	= sdm845_qmp_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1575,14 +1582,16 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sdm845_qhp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
-	.tx_tbl			= sdm845_qhp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sdm845_qhp_pcie_tx_tbl),
-	.rx_tbl			= sdm845_qhp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sdm845_qhp_pcie_rx_tbl),
-	.pcs_tbl		= sdm845_qhp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
+	.tables = {
+		.serdes		= sdm845_qhp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
+		.tx		= sdm845_qhp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sdm845_qhp_pcie_tx_tbl),
+		.rx		= sdm845_qhp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sdm845_qhp_pcie_rx_tbl),
+		.pcs		= sdm845_qhp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1603,24 +1612,28 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
-	.serdes_tbl_sec		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
-	.serdes_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
-	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
-	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
-	.rx_tbl_sec		= sm8250_qmp_gen3x1_pcie_rx_tbl,
-	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
-	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
-	.pcs_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
-	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
-	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sm8250_qmp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
+		.tx		= sm8250_qmp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
+		.rx		= sm8250_qmp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
+		.pcs		= sm8250_qmp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
+		.pcs_misc	= sm8250_qmp_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
+	},
+	.tables_rc = &(const struct qmp_phy_cfg_tables) {
+		.serdes		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
+		.rx		= sm8250_qmp_gen3x1_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
+		.pcs		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
+		.pcs_misc	= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1641,24 +1654,28 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
-	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
-	.tx_tbl_sec		= sm8250_qmp_gen3x2_pcie_tx_tbl,
-	.tx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
-	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
-	.rx_tbl_sec		= sm8250_qmp_gen3x2_pcie_rx_tbl,
-	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_rx_tbl),
-	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
-	.pcs_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_tbl,
-	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
-	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sm8250_qmp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
+		.tx		= sm8250_qmp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
+		.rx		= sm8250_qmp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
+		.pcs		= sm8250_qmp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
+		.pcs_misc	= sm8250_qmp_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
+	},
+	.tables_rc = &(const struct qmp_phy_cfg_tables) {
+		.tx		= sm8250_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8250_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_rx_tbl),
+		.pcs		= sm8250_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1679,14 +1696,16 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= msm8998_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
-	.tx_tbl			= msm8998_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(msm8998_pcie_tx_tbl),
-	.rx_tbl			= msm8998_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(msm8998_pcie_rx_tbl),
-	.pcs_tbl		= msm8998_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(msm8998_pcie_pcs_tbl),
+	.tables = {
+		.serdes		= msm8998_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
+		.tx		= msm8998_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(msm8998_pcie_tx_tbl),
+		.rx		= msm8998_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(msm8998_pcie_rx_tbl),
+		.pcs		= msm8998_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(msm8998_pcie_pcs_tbl),
+	},
 	.clk_list		= msm8996_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
@@ -1703,16 +1722,18 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
-	.tx_tbl			= sc8180x_qmp_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_tx_tbl),
-	.rx_tbl			= sc8180x_qmp_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_rx_tbl),
-	.pcs_tbl		= sc8180x_qmp_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sc8180x_qmp_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
+		.tx		= sc8180x_qmp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sc8180x_qmp_pcie_tx_tbl),
+		.rx		= sc8180x_qmp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sc8180x_qmp_pcie_rx_tbl),
+		.pcs		= sc8180x_qmp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_tbl),
+		.pcs_misc	= sc8180x_qmp_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1732,16 +1753,18 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.lanes			= 2,
 
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
+	.tables = {
+		.serdes		= sdx55_qmp_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
+		.tx		= sdx55_qmp_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sdx55_qmp_pcie_tx_tbl),
+		.rx		= sdx55_qmp_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sdx55_qmp_pcie_rx_tbl),
+		.pcs		= sdx55_qmp_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_tbl),
+		.pcs_misc	= sdx55_qmp_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1762,16 +1785,18 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
-	.tx_tbl			= sm8450_qmp_gen3x1_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_tx_tbl),
-	.rx_tbl			= sm8450_qmp_gen3x1_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rx_tbl),
-	.pcs_tbl		= sm8450_qmp_gen3x1_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
+		.tx		= sm8450_qmp_gen3x1_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_tx_tbl),
+		.rx		= sm8450_qmp_gen3x1_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen3x1_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_tbl),
+		.pcs_misc	= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1792,16 +1817,18 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
-	.tx_tbl			= sm8450_qmp_gen4x2_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_tx_tbl),
-	.rx_tbl			= sm8450_qmp_gen4x2_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_rx_tbl),
-	.pcs_tbl		= sm8450_qmp_gen4x2_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_pcs_tbl),
-	.pcs_misc_tbl		= sm8450_qmp_gen4x2_pcie_pcs_misc_tbl,
-	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_pcs_misc_tbl),
+	.tables = {
+		.serdes		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
+		.tx		= sm8450_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_tx_tbl),
+		.rx		= sm8450_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8450_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_pcs_misc_tbl),
+	},
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -1850,17 +1877,53 @@ static void qmp_pcie_configure(void __iomem *base,
 	qmp_pcie_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
+static void qmp_pcie_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
-	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_pcie_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
-	qmp_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec, cfg->serdes_tbl_num_sec);
+	if (!tables)
+		return;
 
-	return 0;
+	qmp_pcie_configure(serdes, cfg->regs, tables->serdes, tables->serdes_num);
+}
+
+static void qmp_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *tx = qphy->tx;
+	void __iomem *rx = qphy->rx;
+
+	if (!tables)
+		return;
+
+	qmp_pcie_configure_lane(tx, cfg->regs,
+				tables->tx, tables->tx_num, 1);
+
+	if (cfg->lanes >= 2)
+		qmp_pcie_configure_lane(qphy->tx2, cfg->regs,
+					tables->tx, tables->tx_num, 2);
+
+	qmp_pcie_configure_lane(rx, cfg->regs,
+				tables->rx, tables->rx_num, 1);
+	if (cfg->lanes >= 2)
+		qmp_pcie_configure_lane(qphy->rx2, cfg->regs,
+					tables->rx, tables->rx_num, 2);
+}
+
+static void qmp_pcie_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_misc = qphy->pcs_misc;
+
+	if (!tables)
+		return;
+
+	qmp_pcie_configure(pcs, cfg->regs,
+			   tables->pcs, tables->pcs_num);
+	qmp_pcie_configure(pcs_misc, cfg->regs,
+			   tables->pcs_misc, tables->pcs_misc_num);
 }
 
 static int qmp_pcie_init(struct phy *phy)
@@ -1932,15 +1995,13 @@ static int qmp_pcie_power_on(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *tx = qphy->tx;
-	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
 	void __iomem *status;
 	unsigned int mask, val, ready;
 	int ret;
 
-	qmp_pcie_serdes_init(qphy);
+	qmp_pcie_serdes_init(qphy, &cfg->tables);
+	qmp_pcie_serdes_init(qphy, cfg->tables_rc);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -1949,31 +2010,11 @@ static int qmp_pcie_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
-					cfg->tx_tbl_num, 2);
-		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl_sec,
-					cfg->tx_tbl_num_sec, 2);
-	}
-
-	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
-	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl_sec, cfg->rx_tbl_num_sec, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
-					cfg->rx_tbl_num, 2);
-		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl_sec,
-					cfg->rx_tbl_num_sec, 2);
-	}
-
-	qmp_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
-	qmp_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl_sec, cfg->pcs_tbl_num_sec);
+	qmp_pcie_lanes_init(qphy, &cfg->tables);
+	qmp_pcie_lanes_init(qphy, cfg->tables_rc);
 
-	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
-	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec, cfg->pcs_misc_tbl_num_sec);
+	qmp_pcie_pcs_init(qphy, &cfg->tables);
+	qmp_pcie_pcs_init(qphy, cfg->tables_rc);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2240,7 +2281,8 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 		qphy->pcs_misc = qphy->pcs + 0x400;
 
 	if (IS_ERR(qphy->pcs_misc)) {
-		if (cfg->pcs_misc_tbl || cfg->pcs_misc_tbl_sec)
+		if (cfg->tables.pcs_misc ||
+		    (cfg->tables_rc && cfg->tables_rc->pcs_misc))
 			return PTR_ERR(qphy->pcs_misc);
 	}
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
