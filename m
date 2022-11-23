Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90412C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7I+qKovubmT9k9H5xpRWcCQa5BCqdX+YmyeOtsJ8c0Q=; b=KTtBqObPBeETSx
	WWi9GJyf5mHvUarJ4RGkAYK/rDIgd5FH6pcCTxA8qUKo2MhIHdLvIa4F3wFWqPAoZE8f3LNbTUqaj
	s7K1q9hh+Uii9mU2sXx01o5yz0P+BMrDWRjLbe7Ui9gPLgbV7PsdHs4PSfqPArCSrRJ/e5HFz/saL
	4v/p8xgHtbzEKgQ53OOJOoRhyXdzy2BeGZTergNtLEjrtfXFCOg7+CaxOL2MmHOcjN8HSfOKrlxN6
	j2EEWM3ctSeKkns7/C62Jrb9UJPgFERhwCWzN2jXd4xAcQi2NIk69Lz7OyHHfslPX8s5l7fhXRAAV
	CuzQ3cah6FqEa6kWzQoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkV8-00FJAJ-0V; Wed, 23 Nov 2022 07:48:58 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkV4-00FJ7G-MF
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:48:56 +0000
Received: by mail-pf1-x42a.google.com with SMTP id b29so16593724pfp.13
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikUhsMB1K+IImCkguofeQ85gazjJuE8IZCvzMOqkVlc=;
        b=N6BWzgRM3GU2/ZA+dngSkO6sddxPS8QvVv9bGitcc/SXgncaMWgeCWJNRTPBh9w0Fp
         HoELivWACbVF6BP8dLXxT8Cq4N5u//RgqiIK+iDDXqhASkd4P2A+DWcUIIL53EkqKMO+
         yL/tT6pYGM2SiugPqnnE9k++/AT6+gXji7fHMAzv9gxe94fAopacgp8kwNsE6a5VpNTD
         LsKA29379+w5qrrgDNv22B6ccCpUwDVrrR3Eg3xlIW1kwCvW/kfTZAsO08FPtuB0ARtX
         na4jAKntKm1PDnVZ06+cxi/B1/Z5hSfmWEqTVVWbHur9zwoWIhQt3FHiWpxOKNi2TeVK
         hhKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikUhsMB1K+IImCkguofeQ85gazjJuE8IZCvzMOqkVlc=;
        b=MI4z74pV81gbV+N8hV4WEgeft2xF9jPxKBD7FoLnC2RWyQ+ymrRwAR6My7AvjOSQAj
         FDVIvAGCneJOgFZ8VqbUrN0/ymPpNMWLwusoSE47JugI5+Qlv4wgFaRPlU4pPFToJ7Td
         EAQ1EHAF8D4fCrXbvtnq6n+nkcz9CDln1AydEDI3HSBNd51dpqrzS+WR7ifKncOB/9QX
         BOkSwsIiGgeKh8+19uFF3Uotlq4y3uSu1uqlVYBoBhkk/5btNWlRcqvCB7Z8gkGLqN5X
         JS+czwdbmH3fv1qfg5k8XmDBi4H5KiNiOYl9kswrj4ouUARv0KQCMiD5q45FSR/uiMDU
         207Q==
X-Gm-Message-State: ANoB5pmP/BF8J2x4clYVqcF55vyIVldHxeotRBJx1Tiyoe2UrxVKne5Q
	NdXVOfultyhzvONvd5Vlur5j
X-Google-Smtp-Source: AA0mqf7F0L+mYTQ2+e6gAYvmxg1wwhlAoeAH8qLK20IrK9dx+Rymck5OAcM9bwT77aVUN2iN7mbS8w==
X-Received: by 2002:a63:f003:0:b0:45f:bf86:c917 with SMTP id k3-20020a63f003000000b0045fbf86c917mr25393662pgh.201.1669189733521;
        Tue, 22 Nov 2022 23:48:53 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:48:52 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 03/20] phy: qcom-qmp-ufs: Move register settings to qmp_phy_cfg_tbls struct
Date: Wed, 23 Nov 2022 13:18:09 +0530
Message-Id: <20221123074826.95369-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234854_779008_DEDD917F 
X-CRM114-Status: GOOD (  15.25  )
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

As done for Qcom PCIe PHY driver, let's move the register settings to the
common qmp_phy_cfg_tbls struct. This helps in adding any additional PHY
settings needed for functionalities like HS-G4 in the future by adding one
more instance of the qmp_phy_cfg_tbls.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 192 ++++++++++++++----------
 1 file changed, 112 insertions(+), 80 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 443f2714a8f1..3b7b36e32f5d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -531,19 +531,24 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
+struct qmp_phy_cfg_tbls {
+	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	const struct qmp_phy_init_tbl *serdes;
+	int serdes_num;
+	const struct qmp_phy_init_tbl *tx;
+	int tx_num;
+	const struct qmp_phy_init_tbl *rx;
+	int rx_num;
+	const struct qmp_phy_init_tbl *pcs;
+	int pcs_num;
+};
+
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	int lanes;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
-	const struct qmp_phy_init_tbl *serdes_tbl;
-	int serdes_tbl_num;
-	const struct qmp_phy_init_tbl *tx_tbl;
-	int tx_tbl_num;
-	const struct qmp_phy_init_tbl *rx_tbl;
-	int rx_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_tbl;
-	int pcs_tbl_num;
+	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
+	const struct qmp_phy_cfg_tbls tbls;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -660,12 +665,14 @@ static const char * const qmp_phy_vreg_l[] = {
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= msm8996_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_serdes),
-	.tx_tbl			= msm8996_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
-	.rx_tbl			= msm8996_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
+	.tbls = {
+		.serdes		= msm8996_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
+		.tx		= msm8996_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
+		.rx		= msm8996_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
+	},
 
 	.clk_list		= msm8996_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
@@ -685,14 +692,16 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sdm845_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes),
-	.tx_tbl			= sdm845_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
-	.rx_tbl			= sdm845_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
-	.pcs_tbl		= sdm845_ufsphy_pcs,
-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs),
+	.tbls = {
+		.serdes		= sdm845_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
+		.tx		= sdm845_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
+		.rx		= sdm845_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
+		.pcs		= sdm845_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sdm845_ufsphy_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -709,14 +718,16 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= sm6115_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes),
-	.tx_tbl			= sm6115_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
-	.rx_tbl			= sm6115_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
-	.pcs_tbl		= sm6115_ufsphy_pcs,
-	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs),
+	.tbls = {
+		.serdes		= sm6115_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_serdes),
+		.tx		= sm6115_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
+		.rx		= sm6115_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
+		.pcs		= sm6115_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm6115_ufsphy_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -732,14 +743,16 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8150_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes),
-	.tx_tbl			= sm8150_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
-	.rx_tbl			= sm8150_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
-	.pcs_tbl		= sm8150_ufsphy_pcs,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs),
+	.tbls = {
+		.serdes		= sm8150_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
+		.tx		= sm8150_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
+		.rx		= sm8150_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
+		.pcs		= sm8150_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -754,14 +767,16 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
-	.tx_tbl			= sm8350_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
-	.rx_tbl			= sm8350_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
-	.pcs_tbl		= sm8350_ufsphy_pcs,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	.tbls = {
+		.serdes		= sm8350_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
+		.tx		= sm8350_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+		.rx		= sm8350_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+		.pcs		= sm8350_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -776,14 +791,16 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
-	.tx_tbl			= sm8350_ufsphy_tx,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
-	.rx_tbl			= sm8350_ufsphy_rx,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
-	.pcs_tbl		= sm8350_ufsphy_pcs,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	.tbls = {
+		.serdes		= sm8350_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
+		.tx		= sm8350_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+		.rx		= sm8350_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+		.pcs		= sm8350_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	},
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -826,16 +843,50 @@ static void qmp_ufs_configure(void __iomem *base,
 	qmp_ufs_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qmp_ufs_serdes_init(struct qmp_phy *qphy)
+static void qmp_ufs_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
-	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_ufs_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	if (!tbls)
+		return;
+
+	qmp_ufs_configure(serdes, cfg->regs, tbls->serdes, tbls->serdes_num);
+}
 
-	return 0;
+static void qmp_ufs_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tbls *tbls)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *tx = qphy->tx;
+	void __iomem *rx = qphy->rx;
+
+	qmp_ufs_configure_lane(tx, cfg->regs, tbls->tx, tbls->tx_num, 1);
+
+	if (cfg->lanes >= 2)
+		qmp_ufs_configure_lane(qphy->tx2, cfg->regs, tbls->tx, tbls->tx_num, 2);
+
+	qmp_ufs_configure_lane(rx, cfg->regs, tbls->rx, tbls->rx_num, 1);
+
+	if (cfg->lanes >= 2)
+		qmp_ufs_configure_lane(qphy->rx2, cfg->regs, tbls->rx, tbls->rx_num, 2);
+}
+
+static void qmp_ufs_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tbls *tbls)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *pcs = qphy->pcs;
+
+	if (!tbls)
+		return;
+
+	qmp_ufs_configure(pcs, cfg->regs, tbls->pcs, tbls->pcs_num);
+}
+
+static void qmp_ufs_init_registers(struct qmp_phy *qphy, const struct qmp_phy_cfg *cfg)
+{
+	qmp_ufs_serdes_init(qphy, &cfg->tbls);
+	qmp_ufs_lanes_init(qphy, &cfg->tbls);
+	qmp_ufs_pcs_init(qphy, &cfg->tbls);
 }
 
 static int qmp_ufs_com_init(struct qmp_phy *qphy)
@@ -933,31 +984,12 @@ static int qmp_ufs_power_on(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *tx = qphy->tx;
-	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
 	unsigned int mask, val, ready;
 	int ret;
 
-	qmp_ufs_serdes_init(qphy);
-
-	/* Tx, Rx, and PCS configurations */
-	qmp_ufs_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_ufs_configure_lane(qphy->tx2, cfg->regs,
-					cfg->tx_tbl, cfg->tx_tbl_num, 2);
-	}
-
-	qmp_ufs_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_ufs_configure_lane(qphy->rx2, cfg->regs,
-					cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
-
-	qmp_ufs_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_ufs_init_registers(qphy, cfg);
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
