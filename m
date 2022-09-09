Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8637AC6FA8D
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+h59xqbwJWAYclx5Wqb98VZ5k5AXMLZIkKEX8Q4ffuU=; b=Kyi+1UenmSp4IC
	/T4GxRKRbqg6sE7yKtEy2+5AN9Q8N5eQI7QvbWRn4UfcinrCr+0yqH4LtRdtN3hu8VnuzWjT8h4t4
	qBdKyBSSK6lmiqc60TBho8Yh1+VQvXaAVd2zjwBiFs74o7fH2/js1Oh4sC3N3nZodmpUXo/I4s6jI
	5Wh3DG95GGLwLfuHk5/2Ph33+a0T0kwggfAap8XW9ZFsC0SNPQY+zt/Ja/HzECqOD797U/aEPYIsN
	ipRZLfNOKZn9EE+iw6SajezcxHAN1cB27Y3gy77N3hRiekt6BM9FN5znmCuTf1zUbVi+wn0nl2dE4
	UU9hNPnPuN9mDqao4dKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa61-00Exdz-VQ; Fri, 09 Sep 2022 09:14:45 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5y-00Exa9-Cz
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:44 +0000
Received: by mail-lf1-x135.google.com with SMTP id q21so1708005lfo.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=BG/TDrsuuuP6fpTPNslkj+bSpnJP0yproc+vCPdzyEE=;
        b=rK3jD3C7Bl6R85J/1ihgcwK4hC+M9srfdz34IbLOA8F+rbwg5PlSnI1iaruhlxUI2I
         Q3cjcqnzTf3ViB7jX+cP0D/euSCmIems85x/P7c/guPp+s9rC1gUH/Sv2qbYFEFjepgO
         lXvV1LdVV6zqsrLnW1DVjSr8CtpGGSWF4gh42kmoRhuBRVOvsJu4vYcP5vj7OZWANMZw
         et4ARbtiVNfYqD4e7J7SCNBe5zO6S1TBpdec2K+mNv15vNkN/bbrpKJMbiJ65XXM9Fry
         wXvZRZvEGbhxHjXSeA9GTB2IeBytICR6hRyUe5KAM3uDaBK3GZFejedZ0spCM71XtOwL
         KTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BG/TDrsuuuP6fpTPNslkj+bSpnJP0yproc+vCPdzyEE=;
        b=IfI+vppB9IVUH5jqqDokpTzzzQscXE+eACK6qmgeZHsyZFHhHM4aZA9RmRY7TwRZU1
         YwAz6E+OlwwrCF5l2hj/so/8elV3r4y0HlUHs3iiqeUHchhsFC+zjLcMZi6YD1A9XT7w
         mXlXR3fa5Q92QjoebZzvmS8IbEwdpSRs9dxp8CzZ1ObrR+/EvM9s3Wej0fyOanHv7/Bm
         3RIOfrHiM/ddO4fPLbfRJ00gxSzrSq6qLPgKqJ8ucA7DHfi5kv0N3rvcI8wp0gWjBFp6
         pxv3TDSLlRKAbViDnxNElbXRgRtRK3QBzVixcvu6CcpHR9DjhU/zxaMQN86aL6D+LPHT
         m9nQ==
X-Gm-Message-State: ACgBeo2BO2UUzsRAMZwyvB2fBMxpJZgQS/p2F5C2Qjvw4vtjGc22HfIc
	kO8qJn+Zm7rKhNDcGRouN41cvA==
X-Google-Smtp-Source: AA6agR5HQg+Un5RLLGNR7B+3/W+q+RGySeJeTdGJ9BqHia5jtWkKVN6Y9ntbpFMa/p0DMCd0lr404g==
X-Received: by 2002:a19:ac45:0:b0:494:9978:178a with SMTP id r5-20020a19ac45000000b004949978178amr3872345lfc.505.1662714880682;
        Fri, 09 Sep 2022 02:14:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:40 -0700 (PDT)
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
Subject: [PATCH v3 6/9] phy: qcom-qmp-pcie: support separate tables for EP mode
Date: Fri,  9 Sep 2022 12:14:30 +0300
Message-Id: <20220909091433.3715981-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021442_478800_7606F27A 
X-CRM114-Status: GOOD (  20.24  )
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

Since the RC and EP modes share common some common init sequence, the
common sequence is kept in the main table and the sequence differences
are pushed to the secondary tables.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 54 ++++++++++++++++++++----
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d115f7ef3901..d945e8c61811 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1369,10 +1369,14 @@ struct qmp_phy_cfg {
 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
 	struct qmp_phy_cfg_tables main;
 	/*
-	 * Additional init sequence for PHY blocks, providing additional
-	 * register programming. Unless required it can be left omitted.
+	 * Additional init sequences for PHY blocks, providing additional
+	 * register programming. They are used for providing separate sequences
+	 * for the Root Complex and for the End Point usecases.
+	 *
+	 * If EP mode is not supported, both tables can be left empty.
 	 */
-	struct qmp_phy_cfg_tables *secondary;
+	struct qmp_phy_cfg_tables *secondary_rc; /* for the RC only */
+	struct qmp_phy_cfg_tables *secondary_ep; /* for the EP only */
 
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
@@ -1687,7 +1693,15 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = &(struct qmp_phy_cfg_tables) {
+	/*
+	 * For sm8250 the split between the primary and secondary_rc tables is
+	 * historical, it reflects the programming sequence common to all PCIe
+	 * PHYs on this platform and a sequence required for this particular
+	 * PHY type. If EP support for sm8250 is required, the
+	 * primary/secondary_rc split is to be reconsidered and adjusted
+	 * according to EP programming sequence.
+	 */
+	.secondary_rc = &(struct qmp_phy_cfg_tables) {
 	.serdes_tbl		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x1_pcie_rx_tbl,
@@ -1730,7 +1744,15 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = &(struct qmp_phy_cfg_tables) {
+	/*
+	 * For sm8250 the split between the primary and secondary_rc tables is
+	 * historical, it reflects the programming sequence common to all PCIe
+	 * PHYs on this platform and a sequence required for this particular
+	 * PHY type. If EP support for sm8250 is required, the
+	 * primary/secondary_rc split is to be reconsidered and adjusted
+	 * according to EP programming sequence.
+	 */
+	.secondary_rc = &(struct qmp_phy_cfg_tables) {
 	.tx_tbl			= sm8250_qmp_gen3x2_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x2_pcie_rx_tbl,
@@ -2085,8 +2107,12 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
+	/* Default to RC mode if the mode was not selected using phy_set_mode_ext() */
+	if (!qphy->secondary)
+		qphy->secondary = cfg->secondary_rc;
+
 	qcom_qmp_phy_pcie_serdes_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_serdes_init(qphy, cfg->secondary);
+	qcom_qmp_phy_pcie_serdes_init(qphy, qphy->secondary);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2096,10 +2122,10 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qcom_qmp_phy_pcie_lanes_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_lanes_init(qphy, cfg->secondary);
+	qcom_qmp_phy_pcie_lanes_init(qphy, qphy->secondary);
 
 	qcom_qmp_phy_pcie_pcs_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_pcs_init(qphy, cfg->secondary);
+	qcom_qmp_phy_pcie_pcs_init(qphy, qphy->secondary);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2201,6 +2227,18 @@ static int qcom_qmp_phy_pcie_set_mode(struct phy *phy,
 
 	qphy->mode = mode;
 
+	switch (submode) {
+	case PHY_SUBMODE_PCIE_RC:
+		qphy->secondary = qphy->cfg->secondary_rc;
+		break;
+	case PHY_SUBMODE_PCIE_EP:
+		qphy->secondary = qphy->cfg->secondary_ep;
+		break;
+	default:
+		dev_err(&phy->dev, "Unuspported submode %d\n", submode);
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
