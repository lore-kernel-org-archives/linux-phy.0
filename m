Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC175C6FA8E
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYkeP7Sj1C3C32Pf8qBqQdNkDFDJnu3jztDjO14px5M=; b=vWyEDi+tp/HXRd
	JbMU+KSXk8Wh0ZVwmmYSPwaCJmklWKTDYAfTGtiENrGIRZY0RQaLVK+Q1Yr6/weqWm5mKNc1EOHJM
	/PrG83cSMvcgnCNwmHjCdcsJ4ckbsDdXVjnmLztl9q5RNrEsVOsUbbgYI6O5fzjb4YzBsmx6KZlmV
	jwabibtTz15Lmn7ZCZy31oKc28HFwGPtbhJZ0dLdb/tlFHvnwtqai5hQdNJxEm7Zb9lC9snjqQgtw
	npVYocUQcbbyx79Q5gYxZ81lp6Yr2RvPatCV1UlTK1Ur/8n4T8FJpEAzQfM+64QlH4YJcJ6s8FvUZ
	EkUBy/XzKZFpVXSK9rug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa62-00Exe6-36; Fri, 09 Sep 2022 09:14:46 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5y-00ExYk-Kk
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:44 +0000
Received: by mail-lj1-x231.google.com with SMTP id z20so1092590ljq.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=QVU+UE1EBysRzdp8C3u3a6aWiuWRGj3Z9ISz0CxJ14s=;
        b=OKHr8RdKD9EhTKcN1thF3eGKdstebYgTaLc9RFPp00s3JLJ0XOsqGqO07q+o8P+TSA
         A24Nt5mnCdJtWRGlDgS0RWQmqwdBrIM3M2Hs5jGeXRUb2NYled2Jfu0WS/kIGJCrFv3p
         fuBLZ/Y4CdZoyUAvoACqFI/R+JZVlFcWXwh5SkQcFpxKubMG1deIutcEzfYGJu1mPInF
         qQ1di+XnwyFsLPV5REL88th6MprTcHbFoJFfZ1HrCuD3dFzqU1YUgT6bEuj8zQ88J+rz
         YAmX6Mc6XnaVk6yyHNAPIDL7bsRbs5qfTOIrErnPMxcdI1y4+m+vnvMeqgJ9VCWGrUjM
         Bmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=QVU+UE1EBysRzdp8C3u3a6aWiuWRGj3Z9ISz0CxJ14s=;
        b=rrNzdXdK/uUHDelpucxqZGHKQmpU7uB7+TT7CpvlS6oa6gbtLJVMgxVoDY9OxYPl92
         H1KvKj6PyhZUQOPurvJfnH78NzARmO0oZezbWVgqBxdkKqWyJTzjA3E0NCTHKL/dvMqf
         kpc8XiyjS2u5LKbYbWyuemCZZiyfM3dG1xxTy+FIM+c/YHRUZdZphOQIuzQR4onh/2Ql
         oo8ScBcurleqdTTd4deh4/0FEr7VdL0h2pFv5EIevcid2khfU6ed16XX8v+eQWO1H/Lf
         OABklmmoXa9qpdTpJjEAXxicsK+UHG2AOpBAkPuOXwlE4Wjtx8VCuDsjAux5kgfPEcU3
         X2GQ==
X-Gm-Message-State: ACgBeo26f9buu+v1PQX7KrZd2zAbsCGs2toCmI5XRHv74BQjxBmkr14M
	0XJB6c/Wflez8GzWOnvx13tb1w==
X-Google-Smtp-Source: AA6agR6MkCfQZE4VRnkdK44y+9KMn8oo1xI27A0WO+/R0RGWxiXBd8yfCRQNyBwoTSaD9ZF0QpBc/Q==
X-Received: by 2002:a2e:9b89:0:b0:26a:a004:ac3 with SMTP id z9-20020a2e9b89000000b0026aa0040ac3mr3434130lji.104.1662714878740;
        Fri, 09 Sep 2022 02:14:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:38 -0700 (PDT)
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
Subject: [PATCH v3 4/9] phy: qcom-qmp-pcie: split PHY programming to separate functions
Date: Fri,  9 Sep 2022 12:14:28 +0300
Message-Id: <20220909091433.3715981-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021442_763451_F3959055 
X-CRM114-Status: GOOD (  13.40  )
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

Split the code using PHY programming tables into separate functions,
which take a single struct qmp_phy_cfg_tables instance.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 92 +++++++++++++-----------
 1 file changed, 49 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index ca8dffaf1081..5250c3f06c89 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1949,15 +1949,54 @@ static void qcom_qmp_phy_pcie_configure(void __iomem *base,
 	qcom_qmp_phy_pcie_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy)
+static void qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
 
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->main.serdes_tbl, cfg->main.serdes_tbl_num);
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->secondary.serdes_tbl, cfg->secondary.serdes_tbl_num);
+	if (!tables)
+		return;
 
-	return 0;
+	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, tables->serdes_tbl, tables->serdes_tbl_num);
+}
+
+static void qcom_qmp_phy_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *tx = qphy->tx;
+	void __iomem *rx = qphy->rx;
+
+	if (!tables)
+		return;
+
+	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
+					 tables->tx_tbl, tables->tx_tbl_num, 1);
+
+	if (cfg->is_dual_lane_phy)
+		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
+						 tables->tx_tbl, tables->tx_tbl_num, 2);
+
+	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
+					 tables->rx_tbl, tables->rx_tbl_num, 1);
+	if (cfg->is_dual_lane_phy)
+		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
+						 tables->rx_tbl, tables->rx_tbl_num, 2);
+}
+
+static void qcom_qmp_phy_pcie_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_misc = qphy->pcs_misc;
+
+	if (!tables)
+		return;
+
+	qcom_qmp_phy_pcie_configure(pcs, cfg->regs,
+				    tables->pcs_tbl, tables->pcs_tbl_num);
+	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs,
+				    tables->pcs_misc_tbl,
+				    tables->pcs_misc_tbl_num);
 }
 
 static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
@@ -2041,15 +2080,13 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
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
 
-	qcom_qmp_phy_pcie_serdes_init(qphy);
+	qcom_qmp_phy_pcie_serdes_init(qphy, &cfg->main);
+	qcom_qmp_phy_pcie_serdes_init(qphy, &cfg->secondary);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2058,42 +2095,11 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
-					 cfg->main.tx_tbl, cfg->main.tx_tbl_num, 1);
-	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
-					 cfg->secondary.tx_tbl, cfg->secondary.tx_tbl_num, 1);
+	qcom_qmp_phy_pcie_lanes_init(qphy, &cfg->main);
+	qcom_qmp_phy_pcie_lanes_init(qphy, &cfg->secondary);
 
-	/* Configuration for other LANE for USB-DP combo PHY */
-	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-						 cfg->main.tx_tbl, cfg->main.tx_tbl_num, 2);
-		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-						 cfg->secondary.tx_tbl, cfg->secondary.tx_tbl_num, 2);
-	}
-
-	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-					 cfg->main.rx_tbl, cfg->main.rx_tbl_num, 1);
-	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-					 cfg->secondary.rx_tbl, cfg->secondary.rx_tbl_num, 1);
-
-	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-						 cfg->main.rx_tbl, cfg->main.rx_tbl_num, 2);
-		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-						 cfg->secondary.rx_tbl, cfg->secondary.rx_tbl_num, 2);
-	}
-
-	qcom_qmp_phy_pcie_configure(pcs, cfg->regs,
-				    cfg->main.pcs_tbl, cfg->main.pcs_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs, cfg->regs,
-				    cfg->secondary.pcs_tbl, cfg->secondary.pcs_tbl_num);
-
-	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs,
-				    cfg->main.pcs_misc_tbl,
-				    cfg->main.pcs_misc_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs,
-				    cfg->secondary.pcs_misc_tbl,
-				    cfg->secondary.pcs_misc_tbl_num);
+	qcom_qmp_phy_pcie_pcs_init(qphy, &cfg->main);
+	qcom_qmp_phy_pcie_pcs_init(qphy, &cfg->secondary);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
