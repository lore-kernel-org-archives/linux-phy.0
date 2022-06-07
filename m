Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3958DC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FeqH0/A3jRSXTrLxuaj+E9R9vwOJvxMpyNDR5UlU0k=; b=UEEGS6w+jVbcXb
	no8MINDDhO+OIpPtkZbWDmkPHVFH4ngmbeR+UuUkrFtJ12ElZXCmndnyjtrV5mPV8cJj8MEoS4RUm
	Qp485ON5l6td6Gfe/k/9VDeSfuqumyGYXqwN49LyVjZ/lIHJS8r0rYDQogNkO53nz70pAto9yhUMc
	Fx1MZNHZh1Gs9AVq4yYTfY5D7NfxOA/QaZvVU+X5Dcccl3N/VKKHCFwGo/D47eMzg+X2BRvNTcvMw
	oPm03vPY4G5nIzXULqvStZDMD57pM4tgi5rl/bLGiYp2fpaag2PtOgae5SqU1vrxeq81nZ16kaIbH
	tZPL8gczr5F1t2tpcTfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoV-009mA1-KA; Tue, 07 Jun 2022 21:32:35 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoP-009m2o-JV
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:32 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i29so13520938lfp.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C+yt+NzsvkkDXB8ldvuUmVXBsgxsDFcLR4l1OU+8jAM=;
        b=X9rvrV26uio7bN3kLYG7mXWGlXKi9q2jIeVeXQ7TIE8rWYvn0LkmI7bjeOepX1GKqU
         zWx9DdmWHpQ/oNopFmS1l8Lvqp6JovAhI+55ZRhbpHClXggN6AF/V+KV0c7shc8xbuG5
         BgWJBaIG930bIWlYpQtp2mlmLgnUVabIIXksxlKgL8sdWkgk5YDtgHNLCKv/g9asKyqb
         y/LRxEWqGsSlcampsDGpGswABHzY0umINEOegFKrCajjQqSsRR/AQyvWMWZQX+dKBd2u
         QyCKVcVf1IGIVA4HvgRhxKFiOjk0EmbqUAjWrdmEugU21xFwlY0qflRVnA0wE3NucdNW
         10+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C+yt+NzsvkkDXB8ldvuUmVXBsgxsDFcLR4l1OU+8jAM=;
        b=O96QsGj562SwrWnJXbaKRINUWN+o4VwQ+WAD4rM76oxGjRWJyaCdwvavexcJ6YAxjx
         h3HaUcAQycC0be5Hok33dmcUBatIY72Q7DJPFOi+id+u9weZbv2sq/0uPrJHnD5gm4u1
         BRQIdaqPRDzwUKlJ4fO+MsMFWfz0G/BF/Q3ktjdAqBufSz6tLyQmbwOkyhYjM2vcVawQ
         wQI2U1lVWqJhe0Tev3J4gPw6aCJpYgNtv6e9mG6RDZJvWj4jNTlLj+UnQ6JsEb+p0+6Q
         dSKC3KxZsgRFaeKKwj1jrdRLJbSt2dtlbQ7MoCdg9QrJqbTZ6fbRUtPi+b0U2wNcN7iI
         2mJA==
X-Gm-Message-State: AOAM533y/NPbXjlQbq9iWqiL7huFbe884yhMUnrt732rOFZ8mD+LkUH/
	LmaeHbShqk/N6k99sdA4DhTb8Q==
X-Google-Smtp-Source: ABdhPJwSP5Z9iRYkckLuV49qyyplHYwSQ9mI6RIZ2kHrWQ20W8fQncUDZqNWXIKfx42dc1j/IY8J6w==
X-Received: by 2002:a19:ca50:0:b0:479:a25:8797 with SMTP id h16-20020a19ca50000000b004790a258797mr21046461lfj.363.1654637549015;
        Tue, 07 Jun 2022 14:32:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 16/30] phy: qcom-qmp-pcie-msm8996: drop support for non-PCIe PHY types
Date: Wed,  8 Jun 2022 00:31:49 +0300
Message-Id: <20220607213203.2819885-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143229_804777_E3666CD0 
X-CRM114-Status: GOOD (  17.62  )
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

Drop remaining support for PHY types other than PCIe.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 532 ++----------------
 1 file changed, 43 insertions(+), 489 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 1741a5675f9a..02e5ae7fa213 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -510,7 +510,6 @@ static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 	int ret;
@@ -520,35 +519,6 @@ static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 		qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs, cfg->serdes_tbl_sec,
 				       cfg->serdes_tbl_num_sec);
 
-	if (cfg->type == PHY_TYPE_DP) {
-		switch (dp_opts->link_rate) {
-		case 1620:
-			qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_rbr,
-					       cfg->serdes_tbl_rbr_num);
-			break;
-		case 2700:
-			qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr,
-					       cfg->serdes_tbl_hbr_num);
-			break;
-		case 5400:
-			qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr2,
-					       cfg->serdes_tbl_hbr2_num);
-			break;
-		case 8100:
-			qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr3,
-					       cfg->serdes_tbl_hbr3_num);
-			break;
-		default:
-			/* Other link rates aren't supported */
-			return -EINVAL;
-		}
-	}
-
-
 	if (cfg->has_phy_com_ctrl) {
 		void __iomem *status;
 		unsigned int mask, val;
@@ -572,36 +542,6 @@ static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	return 0;
 }
 
-/*
- * We need to calibrate the aux setting here as many times
- * as the caller tries
- */
-static int qcom_qmp_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
-{
-	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-
-	memcpy(&qphy->dp_opts, dp_opts, sizeof(*dp_opts));
-	if (qphy->dp_opts.set_voltages) {
-		cfg->configure_dp_tx(qphy);
-		qphy->dp_opts.set_voltages = 0;
-	}
-
-	return 0;
-}
-
-static int qcom_qmp_dp_phy_calibrate(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-
-	if (cfg->calibrate_dp_phy)
-		return cfg->calibrate_dp_phy(qphy);
-
-	return 0;
-}
-
 static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
@@ -771,9 +711,6 @@ static int qcom_qmp_phy_pcie_msm8996_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (cfg->type == PHY_TYPE_DP)
-		cfg->dp_aux_init(qphy);
-
 	return 0;
 }
 
@@ -824,10 +761,6 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 						    cfg->tx_tbl_num_sec, 2);
 	}
 
-	/* Configure special DP tx tunings */
-	if (cfg->type == PHY_TYPE_DP)
-		cfg->configure_dp_tx(qphy);
-
 	qcom_qmp_phy_pcie_msm8996_configure_lane(rx, cfg->regs,
 				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
 	if (cfg->rx_tbl_sec)
@@ -843,15 +776,10 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 						    cfg->rx_tbl_num_sec, 2);
 	}
 
-	/* Configure link rate, swing, etc. */
-	if (cfg->type == PHY_TYPE_DP) {
-		cfg->configure_dp_phy(qphy);
-	} else {
-		qcom_qmp_phy_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
-		if (cfg->pcs_tbl_sec)
-			qcom_qmp_phy_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
-					       cfg->pcs_tbl_num_sec);
-	}
+	qcom_qmp_phy_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	if (cfg->pcs_tbl_sec)
+		qcom_qmp_phy_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
+				       cfg->pcs_tbl_num_sec);
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
@@ -867,36 +795,28 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 	 * Pull out PHY from POWER DOWN state.
 	 * This is active low enable signal to power-down PHY.
 	 */
-	if(cfg->type == PHY_TYPE_PCIE)
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
 
-	if (cfg->type != PHY_TYPE_DP) {
-		/* Pull PHY out of reset state */
-		if (!cfg->no_pcs_sw_reset)
-			qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-		/* start SerDes and Phy-Coding-Sublayer */
-		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
-
-		if (cfg->type == PHY_TYPE_UFS) {
-			status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
-			mask = PCS_READY;
-			ready = PCS_READY;
-		} else {
-			status = pcs + cfg->regs[QPHY_PCS_STATUS];
-			mask = cfg->phy_status;
-			ready = 0;
-		}
+	/* Pull PHY out of reset state */
+	if (!cfg->no_pcs_sw_reset)
+		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	/* start SerDes and Phy-Coding-Sublayer */
+	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
-		ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
-					 PHY_INIT_COMPLETE_TIMEOUT);
-		if (ret) {
-			dev_err(qmp->dev, "phy initialization timed-out\n");
-			goto err_disable_pipe_clk;
-		}
+	status = pcs + cfg->regs[QPHY_PCS_STATUS];
+	mask = cfg->phy_status;
+	ready = 0;
+
+	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+				 PHY_INIT_COMPLETE_TIMEOUT);
+	if (ret) {
+		dev_err(qmp->dev, "phy initialization timed-out\n");
+		goto err_disable_pipe_clk;
 	}
+
 	return 0;
 
 err_disable_pipe_clk:
@@ -915,25 +835,20 @@ static int qcom_qmp_phy_pcie_msm8996_power_off(struct phy *phy)
 
 	clk_disable_unprepare(qphy->pipe_clk);
 
-	if (cfg->type == PHY_TYPE_DP) {
-		/* Assert DP PHY power down */
-		writel(DP_PHY_PD_CTL_PSR_PWRDN, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
-	} else {
-		/* PHY reset */
-		if (!cfg->no_pcs_sw_reset)
-			qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	/* PHY reset */
+	if (!cfg->no_pcs_sw_reset)
+		qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-		/* stop SerDes and Phy-Coding-Sublayer */
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+	/* stop SerDes and Phy-Coding-Sublayer */
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
-		/* Put PHY into POWER DOWN state: active low */
-		if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-			qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				     cfg->pwrdn_ctrl);
-		} else {
-			qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
-					cfg->pwrdn_ctrl);
-		}
+	/* Put PHY into POWER DOWN state: active low */
+	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
+		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			     cfg->pwrdn_ctrl);
+	} else {
+		qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL,
+				cfg->pwrdn_ctrl);
 	}
 
 	return 0;
@@ -987,112 +902,6 @@ static int qcom_qmp_phy_pcie_msm8996_set_mode(struct phy *phy,
 	return 0;
 }
 
-static void qcom_qmp_phy_pcie_msm8996_enable_autonomous_mode(struct qmp_phy *qphy)
-{
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
-	u32 intr_mask;
-
-	if (qphy->mode == PHY_MODE_USB_HOST_SS ||
-	    qphy->mode == PHY_MODE_USB_DEVICE_SS)
-		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
-	else
-		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
-
-	/* Clear any pending interrupts status */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
-	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
-
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
-		     ARCVR_DTCT_EN | ALFPS_DTCT_EN | ARCVR_DTCT_EVENT_SEL);
-
-	/* Enable required PHY autonomous mode interrupts */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
-
-	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc)
-		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
-}
-
-static void qcom_qmp_phy_pcie_msm8996_disable_autonomous_mode(struct qmp_phy *qphy)
-{
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
-
-	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc)
-		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
-
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
-		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
-
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
-	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
-}
-
-static int __maybe_unused qcom_qmp_phy_pcie_msm8996_runtime_suspend(struct device *dev)
-{
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
-	struct qmp_phy *qphy = qmp->phys[0];
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-
-	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qphy->mode);
-
-	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
-	if (cfg->type != PHY_TYPE_USB3)
-		return 0;
-
-	if (!qmp->init_count) {
-		dev_vdbg(dev, "PHY not initialized, bailing out\n");
-		return 0;
-	}
-
-	qcom_qmp_phy_pcie_msm8996_enable_autonomous_mode(qphy);
-
-	clk_disable_unprepare(qphy->pipe_clk);
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
-
-	return 0;
-}
-
-static int __maybe_unused qcom_qmp_phy_pcie_msm8996_runtime_resume(struct device *dev)
-{
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
-	struct qmp_phy *qphy = qmp->phys[0];
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	int ret = 0;
-
-	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qphy->mode);
-
-	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
-	if (cfg->type != PHY_TYPE_USB3)
-		return 0;
-
-	if (!qmp->init_count) {
-		dev_vdbg(dev, "PHY not initialized, bailing out\n");
-		return 0;
-	}
-
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
-	if (ret)
-		return ret;
-
-	ret = clk_prepare_enable(qphy->pipe_clk);
-	if (ret) {
-		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
-		clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
-		return ret;
-	}
-
-	qcom_qmp_phy_pcie_msm8996_disable_autonomous_mode(qphy);
-
-	return 0;
-}
-
 static int qcom_qmp_phy_pcie_msm8996_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -1210,223 +1019,13 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-/*
- * Display Port PLL driver block diagram for branch clocks
- *
- *              +------------------------------+
- *              |         DP_VCO_CLK           |
- *              |                              |
- *              |    +-------------------+     |
- *              |    |   (DP PLL/VCO)    |     |
- *              |    +---------+---------+     |
- *              |              v               |
- *              |   +----------+-----------+   |
- *              |   | hsclk_divsel_clk_src |   |
- *              |   +----------+-----------+   |
- *              +------------------------------+
- *                              |
- *          +---------<---------v------------>----------+
- *          |                                           |
- * +--------v----------------+                          |
- * |    dp_phy_pll_link_clk  |                          |
- * |     link_clk            |                          |
- * +--------+----------------+                          |
- *          |                                           |
- *          |                                           |
- *          v                                           v
- * Input to DISPCC block                                |
- * for link clk, crypto clk                             |
- * and interface clock                                  |
- *                                                      |
- *                                                      |
- *      +--------<------------+-----------------+---<---+
- *      |                     |                 |
- * +----v---------+  +--------v-----+  +--------v------+
- * | vco_divided  |  | vco_divided  |  | vco_divided   |
- * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
- * |              |  |              |  |               |
- * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
- * +-------+------+  +-----+--------+  +--------+------+
- *         |                 |                  |
- *         v---->----------v-------------<------v
- *                         |
- *              +----------+-----------------+
- *              |   dp_phy_pll_vco_div_clk   |
- *              +---------+------------------+
- *                        |
- *                        v
- *              Input to DISPCC block
- *              for DP pixel clock
- *
- */
-static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
-						struct clk_rate_request *req)
-{
-	switch (req->rate) {
-	case 1620000000UL / 2:
-	case 2700000000UL / 2:
-	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
-		return 0;
-	default:
-		return -EINVAL;
-	}
-}
-
-static unsigned long
-qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
-{
-	const struct qmp_phy_dp_clks *dp_clks;
-	const struct qmp_phy *qphy;
-	const struct phy_configure_opts_dp *dp_opts;
-
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_pixel_hw);
-	qphy = dp_clks->qphy;
-	dp_opts = &qphy->dp_opts;
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-		return 1620000000UL / 2;
-	case 2700:
-		return 2700000000UL / 2;
-	case 5400:
-		return 5400000000UL / 4;
-	case 8100:
-		return 8100000000UL / 6;
-	default:
-		return 0;
-	}
-}
-
-static const struct clk_ops qcom_qmp_dp_pixel_clk_ops = {
-	.determine_rate = qcom_qmp_dp_pixel_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_pixel_clk_recalc_rate,
-};
-
-static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
-					       struct clk_rate_request *req)
-{
-	switch (req->rate) {
-	case 162000000:
-	case 270000000:
-	case 540000000:
-	case 810000000:
-		return 0;
-	default:
-		return -EINVAL;
-	}
-}
-
-static unsigned long
-qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
-{
-	const struct qmp_phy_dp_clks *dp_clks;
-	const struct qmp_phy *qphy;
-	const struct phy_configure_opts_dp *dp_opts;
-
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_link_hw);
-	qphy = dp_clks->qphy;
-	dp_opts = &qphy->dp_opts;
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-	case 2700:
-	case 5400:
-	case 8100:
-		return dp_opts->link_rate * 100000;
-	default:
-		return 0;
-	}
-}
-
-static const struct clk_ops qcom_qmp_dp_link_clk_ops = {
-	.determine_rate = qcom_qmp_dp_link_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_link_clk_recalc_rate,
-};
-
-static struct clk_hw *
-qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
-{
-	struct qmp_phy_dp_clks *dp_clks = data;
-	unsigned int idx = clkspec->args[0];
-
-	if (idx >= 2) {
-		pr_err("%s: invalid index %u\n", __func__, idx);
-		return ERR_PTR(-EINVAL);
-	}
-
-	if (idx == 0)
-		return &dp_clks->dp_link_hw;
-
-	return &dp_clks->dp_pixel_hw;
-}
-
-static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
-				struct device_node *np)
-{
-	struct clk_init_data init = { };
-	struct qmp_phy_dp_clks *dp_clks;
-	char name[64];
-	int ret;
-
-	dp_clks = devm_kzalloc(qmp->dev, sizeof(*dp_clks), GFP_KERNEL);
-	if (!dp_clks)
-		return -ENOMEM;
-
-	dp_clks->qphy = qphy;
-	qphy->dp_clks = dp_clks;
-
-	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_link_clk_ops;
-	init.name = name;
-	dp_clks->dp_link_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_link_hw);
-	if (ret)
-		return ret;
-
-	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_pixel_clk_ops;
-	init.name = name;
-	dp_clks->dp_pixel_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_pixel_hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, dp_clks);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
-static const struct phy_ops qcom_qmp_phy_pcie_msm8996_gen_ops = {
+static const struct phy_ops qcom_qmp_phy_pcie_msm8996_ops = {
 	.init		= qcom_qmp_phy_pcie_msm8996_enable,
 	.exit		= qcom_qmp_phy_pcie_msm8996_disable,
 	.set_mode	= qcom_qmp_phy_pcie_msm8996_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-static const struct phy_ops qcom_qmp_phy_pcie_msm8996_dp_ops = {
-	.init		= qcom_qmp_phy_pcie_msm8996_init,
-	.configure	= qcom_qmp_dp_phy_configure,
-	.power_on	= qcom_qmp_phy_pcie_msm8996_power_on,
-	.calibrate	= qcom_qmp_dp_phy_calibrate,
-	.power_off	= qcom_qmp_phy_pcie_msm8996_power_off,
-	.exit		= qcom_qmp_phy_pcie_msm8996_exit,
-	.set_mode	= qcom_qmp_phy_pcie_msm8996_set_mode,
-	.owner		= THIS_MODULE,
-};
-
-static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
-	.power_on	= qcom_qmp_phy_pcie_msm8996_enable,
-	.power_off	= qcom_qmp_phy_pcie_msm8996_disable,
-	.set_mode	= qcom_qmp_phy_pcie_msm8996_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static void qcom_qmp_reset_control_put(void *data)
 {
 	reset_control_put(data);
@@ -1439,7 +1038,6 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	const struct phy_ops *ops;
 	char prop_name[MAX_PROP_NAME];
 	int ret;
 
@@ -1532,14 +1130,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 			return ret;
 	}
 
-	if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
-		ops = &qcom_qmp_pcie_ufs_ops;
-	else if (cfg->type == PHY_TYPE_DP)
-		ops = &qcom_qmp_phy_pcie_msm8996_dp_ops;
-	else
-		ops = &qcom_qmp_phy_pcie_msm8996_gen_ops;
-
-	generic_phy = devm_phy_create(dev, np, ops);
+	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_pcie_msm8996_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create qphy %d\n", ret);
@@ -1564,11 +1155,6 @@ static const struct of_device_id qcom_qmp_phy_pcie_msm8996_of_match_table[] = {
 };
 MODULE_DEVICE_TABLE(of, qcom_qmp_phy_pcie_msm8996_of_match_table);
 
-static const struct dev_pm_ops qcom_qmp_phy_pcie_msm8996_pm_ops = {
-	SET_RUNTIME_PM_OPS(qcom_qmp_phy_pcie_msm8996_runtime_suspend,
-			   qcom_qmp_phy_pcie_msm8996_runtime_resume, NULL)
-};
-
 static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
@@ -1576,12 +1162,7 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 	struct device_node *child;
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
-	void __iomem *usb_serdes;
-	void __iomem *dp_serdes = NULL;
-	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
 	const struct qmp_phy_cfg *cfg = NULL;
-	const struct qmp_phy_cfg *usb_cfg = NULL;
-	const struct qmp_phy_cfg *dp_cfg = NULL;
 	int num, id, expected_phys;
 	int ret;
 
@@ -1598,28 +1179,18 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	/* per PHY serdes; usually located at base address */
-	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
+	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
 	/* per PHY dp_com; if PHY has dp_com control block */
-	if (combo_cfg || cfg->has_phy_dp_com_ctrl) {
+	if (cfg->has_phy_dp_com_ctrl) {
 		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
 		if (IS_ERR(qmp->dp_com))
 			return PTR_ERR(qmp->dp_com);
 	}
 
-	if (combo_cfg) {
-		/* Only two serdes for combo PHY */
-		dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-		if (IS_ERR(dp_serdes))
-			return PTR_ERR(dp_serdes);
-
-		dp_cfg = combo_cfg->dp_cfg;
-		expected_phys = 2;
-	} else {
-		expected_phys = cfg->nlanes;
-	}
+	expected_phys = cfg->nlanes;
 
 	mutex_init(&qmp->phy_mutex);
 
@@ -1658,14 +1229,6 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
-		if (of_node_name_eq(child, "dp-phy")) {
-			cfg = dp_cfg;
-			serdes = dp_serdes;
-		} else if (of_node_name_eq(child, "usb3-phy")) {
-			cfg = usb_cfg;
-			serdes = usb_serdes;
-		}
-
 		/* Create per-lane phy */
 		ret = qcom_qmp_phy_pcie_msm8996_create(dev, child, id, serdes, cfg);
 		if (ret) {
@@ -1678,21 +1241,13 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 		 * Register the pipe clock provided by phy.
 		 * See function description to see details of this pipe clock.
 		 */
-		if (cfg->type == PHY_TYPE_USB3 || cfg->type == PHY_TYPE_PCIE) {
-			ret = phy_pipe_clk_register(qmp, child);
-			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register pipe clock source\n");
-				goto err_node_put;
-			}
-		} else if (cfg->type == PHY_TYPE_DP) {
-			ret = phy_dp_clks_register(qmp, qmp->phys[id], child);
-			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register DP clock source\n");
-				goto err_node_put;
-			}
+		ret = phy_pipe_clk_register(qmp, child);
+		if (ret) {
+			dev_err(qmp->dev,
+				"failed to register pipe clock source\n");
+			goto err_node_put;
 		}
+
 		id++;
 	}
 
@@ -1714,7 +1269,6 @@ static struct platform_driver qcom_qmp_phy_pcie_msm8996_driver = {
 	.probe		= qcom_qmp_phy_pcie_msm8996_probe,
 	.driver = {
 		.name	= "qcom-qmp-msm8996-pcie-phy",
-		.pm	= &qcom_qmp_phy_pcie_msm8996_pm_ops,
 		.of_match_table = qcom_qmp_phy_pcie_msm8996_of_match_table,
 	},
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
