Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 816CFC04A68
	for <linux-phy@archiver.kernel.org>; Tue, 26 Jul 2022 20:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j157elElEBkw0BZjaeQBrT6w+2e+vooPH0sb/LEHEb4=; b=Hyglqm4XFS8Jht
	Q6pC6+tzzf1DvD8i4i2i/iDGDH5/cYVsdhCHMXy9FMHsTR+Mfgw4DJmK38DE23TX3Vzhuedk3C3BX
	QRbznCC+TQfcRY2JGfrQUNrR/mgkHe2bb4gJZUhEoOPZXhq0rGB0ux+9a/Vxe99d79/lLYScQniNl
	lhTsmtc9RQ5h2UtB2b0dZAaZaxslHLtiqGmjGfr6lJyDOPdgJ1YIVmRCWXWG0oP9B9l1iEuNy3zw9
	JzjDYlzCiVWJiK4HHgLJZfcN0483pzR2tcsPy71xyYZ1ny6RL0zBpNa05dH6DZ5P1SbbbU34cUOha
	8+fLiNgIolkCo13qeskA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRG0-003KuL-Vv; Tue, 26 Jul 2022 20:34:20 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRFu-003Khi-Fj
	for linux-phy@lists.infradead.org; Tue, 26 Jul 2022 20:34:17 +0000
Received: by mail-lf1-x12e.google.com with SMTP id t17so12050851lfk.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Jul 2022 13:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YI4GNKNGRi8Jkrzv7yOyBREwEIJ7Z6UiuG5sLKgrJWk=;
        b=zYnNDTMCwQWc/MjH+avx+1kBMmeMZDiDo7njzj58T8U1yIyDQVQEYSpfBE1/l12VzM
         l++eB7DdFx1BC2iAsNAsl9Yn0V17KbtK07vGqXQTCa78OlUKdFcEdAEXFmQGSxw9whG5
         mCwYV4VA5Z6ST8q0JEfSz6sKOEnh6z96B9uoeOVAJCE6OFdCohV2pYUcdIl8x3PwcLOp
         dgmnbtfZ4k1isB32mMpypOzpZzPmJTknIirNtHdOyXWi6w1RDAu99G2gWmP5ERtefQv0
         wjyYP8abbC474wVdFZ5MBwJt5Bo6RDLzoo7whJ7vb6kx/4mJERIwtSAcOyZVXPWl6U2r
         LxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YI4GNKNGRi8Jkrzv7yOyBREwEIJ7Z6UiuG5sLKgrJWk=;
        b=xfhV73T8G7Ll+gsp4jVz9ArNHDpGvOHDRuXQzB08qdUXAQPXLeSaJM/qs5ZphKVwI7
         4UkSdiPkir8gg0EAH2Y1vet4O4eRAW1smIlp10qpULlZ1IX0Gv7UU5yN7naFTo5Dd+jA
         vYBxxo1qRMoxHpgJ6rhmuIwhPXLAyt/hrljY6m3mWgrivcCDIPYW1m6W+hAt2aPfDgEO
         U37HrNwxJTw7C8xs0IyABHDNsu3c+CGWu6fPTOpx/f4BKm38rHny2jea2BdDlQwqvWVH
         RKSNAzAdnP59YdEp1QwwTDEzIE6+PkKTaIxIUq2zIyh9Z4k02nQ4FSakyc4cJggo99ia
         9eNg==
X-Gm-Message-State: AJIora8jmxUNdsUAQsXmaPrIL6KD1XbdKny7A95Sube9O3K8TzOLYlbP
	xkt+pBvhgfK2LBvbuM+co28z+Q==
X-Google-Smtp-Source: AGRyM1sYz05gLiWZLO5jhe5A8UghJ0t35sZnV/dFask0y05kJzq7ecUu3UQ3cuRxshbbPWO0lI3Kzg==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4128 with SMTP id h3-20020a056512350300b0048144704128mr6944765lfs.303.1658867644925;
        Tue, 26 Jul 2022 13:34:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o14-20020ac24e8e000000b0048a8899db0fsm1468548lfr.7.2022.07.26.13.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:34:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
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
Subject: [PATCH v1 2/4] phy: qcom-qmp-pcie: support separate tables for EP mode
Date: Tue, 26 Jul 2022 23:33:59 +0300
Message-Id: <20220726203401.595934-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
References: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_133414_586294_6FBE6A4B 
X-CRM114-Status: GOOD (  17.94  )
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

The PCIe QMP PHY requires different programming sequences when being
used for the RC (Root Complex) or for the EP (End Point) modes. Allow
selecting the submode and thus selecting a set of PHY programming
tables.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 41 ++++++++++++++++--------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e6272bd3d735..af3577a5d7e4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1369,10 +1369,14 @@ struct qmp_phy_cfg {
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	struct qmp_phy_cfg_tables primary;
 	/*
-	 * Init sequence for PHY blocks, providing additional register
-	 * programming. Unless required it can be left omitted.
+	 * Init sequences for PHY blocks, providing additional register
+	 * programming. They are used for providing separate sequences for the
+	 * Root Complex and for the End Point usecases.
+	 *
+	 * If EP mode is not supported, both tables can be left empty.
 	 */
-	struct qmp_phy_cfg_tables secondary;
+	struct qmp_phy_cfg_tables secondary_rc; /* for the RC only */
+	struct qmp_phy_cfg_tables secondary_ep; /* for the EP only */
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1422,6 +1426,7 @@ struct qmp_phy_cfg {
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
  * @mode: current PHY mode
+ * @secondary: currently selected PHY secondary init table set
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -1434,6 +1439,7 @@ struct qmp_phy {
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
 	struct clk *pipe_clk;
+	const struct qmp_phy_cfg_tables *secondary;
 	unsigned int index;
 	struct qcom_qmp *qmp;
 	enum phy_mode mode;
@@ -1687,7 +1693,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = {
+	.secondary_rc = {
 	.serdes_tbl		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x1_pcie_rx_tbl,
@@ -1730,7 +1736,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = {
+	.secondary_rc = {
 	.tx_tbl			= sm8250_qmp_gen3x2_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x2_pcie_rx_tbl,
@@ -1955,7 +1961,7 @@ static int qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy)
 	void __iomem *serdes = qphy->serdes;
 
 	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->primary.serdes_tbl, cfg->primary.serdes_tbl_num);
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->secondary.serdes_tbl, cfg->secondary.serdes_tbl_num);
+	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, qphy->secondary->serdes_tbl, qphy->secondary->serdes_tbl_num);
 
 	return 0;
 }
@@ -2049,6 +2055,10 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
+	/* Default to RC mode if no mode was selected */
+	if (!qphy->secondary)
+		qphy->secondary = &cfg->secondary_rc;
+
 	qcom_qmp_phy_pcie_serdes_init(qphy);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
@@ -2061,39 +2071,39 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
 					 cfg->primary.tx_tbl, cfg->primary.tx_tbl_num, 1);
 	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
-					 cfg->secondary.tx_tbl, cfg->secondary.tx_tbl_num, 1);
+					 qphy->secondary->tx_tbl, qphy->secondary->tx_tbl_num, 1);
 
 	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
 						 cfg->primary.tx_tbl, cfg->primary.tx_tbl_num, 2);
 		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-						 cfg->secondary.tx_tbl, cfg->secondary.tx_tbl_num, 2);
+						 qphy->secondary->tx_tbl, qphy->secondary->tx_tbl_num, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
 					 cfg->primary.rx_tbl, cfg->primary.rx_tbl_num, 1);
 	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-					 cfg->secondary.rx_tbl, cfg->secondary.rx_tbl_num, 1);
+					 qphy->secondary->rx_tbl, qphy->secondary->rx_tbl_num, 1);
 
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
 						 cfg->primary.rx_tbl, cfg->primary.rx_tbl_num, 2);
 		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-						 cfg->secondary.rx_tbl, cfg->secondary.rx_tbl_num, 2);
+						 qphy->secondary->rx_tbl, qphy->secondary->rx_tbl_num, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure(pcs, cfg->regs,
 				    cfg->primary.pcs_tbl, cfg->primary.pcs_tbl_num);
 	qcom_qmp_phy_pcie_configure(pcs, cfg->regs,
-				    cfg->secondary.pcs_tbl, cfg->secondary.pcs_tbl_num);
+				    qphy->secondary->pcs_tbl, qphy->secondary->pcs_tbl_num);
 
 	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs,
 				    cfg->primary.pcs_misc_tbl,
 				    cfg->primary.pcs_misc_tbl_num);
 	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs,
-				    cfg->secondary.pcs_misc_tbl,
-				    cfg->secondary.pcs_misc_tbl_num);
+				    qphy->secondary->pcs_misc_tbl,
+				    qphy->secondary->pcs_misc_tbl_num);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2195,6 +2205,11 @@ static int qcom_qmp_phy_pcie_set_mode(struct phy *phy,
 
 	qphy->mode = mode;
 
+	if (submode)
+		qphy->secondary = &qphy->cfg->secondary_ep;
+	else
+		qphy->secondary = &qphy->cfg->secondary_rc;
+
 	return 0;
 }
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
