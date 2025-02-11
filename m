Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB21C0219B
	for <linux-phy@archiver.kernel.org>; Tue, 11 Feb 2025 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BngjNosz1/Dnug6xR2RrPc8WgdtWCP5uAi6Z7efcBOM=; b=nAkPYP2f8UuuAV
	AakCoTOvp8J11VmZbmYluKLsvgKIUKUZzCW3oGtdd/phJRizQ+GwVPUjuuZyd43hl4AmUSmnjEpuC
	TO+WX/2GqzCKgY2cDhxzVDaBEifBw4rx97BE6PRC5GunpL03k06HOVmSuvyA4/Hr81m+3cyKnjavN
	xHAkCxbakNULjRw7BtiIA9d/azMRmU3KbCowDbiupUvL9WgTXqavXvKAINuJO8jIpVuEOO8ubaPMq
	5yGzfHLSVAG+ZnpiKEjDOr4gSjxnbuOOCHTNG7ZAktLpplx/1t5Kh3AcPhqYmS8KdSMWeUr50jxt4
	uWcY6PTSotMGxMQ690zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thmnG-00000003EEV-2uhV;
	Tue, 11 Feb 2025 09:43:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmnE-00000003EE1-39hh
	for linux-phy@bombadil.infradead.org;
	Tue, 11 Feb 2025 09:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ddm6e6oeL1J8QGmqUUhqwVMx8Y75jlwFElDicUEe0NA=; b=b0/vQltibKtrI5YsJHmAPQGFb0
	FBfhTP3GFYhEQFJ6Qb40anlGGFGx6T203e3ozuXp54megDQ3R8hGf5MeNYryJwpljbty2DG6LajpL
	ZhT0sUXZFbWzYNjM/O7BZ7wRg6VSX10LNzNaEfoaCXQimkC456nYBhh3Rr+V4IntjlFh5LmoAkt6o
	q7zbbfQUzk2IE3y3iN9vs1k5YpqGy58gD6QUhoS0b+RrnX8L4NBemIQMEBvsbzmC+aI6ywGBnDy87
	vZnZwI1LoyhHNlVVFuNnTKgzDg+tMi/YySv37AizztBXtg1L2XBw+F2ZrWDKed5TpaV8suKwfVwBa
	l/pBK2Jw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmnB-00000000XzA-0aEm
	for linux-phy@lists.infradead.org;
	Tue, 11 Feb 2025 09:42:59 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B0SXSH000369;
	Tue, 11 Feb 2025 09:42:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ddm6e6oeL1J
	8QGmqUUhqwVMx8Y75jlwFElDicUEe0NA=; b=pZaquEQqu+iBnWS4WF7h6/hrj67
	+iX/poUWaGMlvNOBodDhwH0wMlSe/olmfakx7P6I3WVRFWTZ/405n0xRmXadDFBA
	XbZCfknlAs8RclZOP31zgiW9K1Cr0OCF6k7abF0BdVm2Z9l+wt3DGrYixuJltQNR
	jWzwScql9Pq2DOUQvdy0E33EQT1EStCDsnJmF8sz9qctNzAlcDi5+FWjSjjk5jet
	px8n2j6hTofCBqdmDtYs3QIEgJK6e41oot2nVJbWcYaXLKDSPTBx9d30JfWgm1cD
	qfLF4BvoaDcrr4HnLm3UOQpHqIlOD2NeJwBfp2XgkCAtC1tV+VbBh/OgGSw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qgtk33kc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Feb 2025 09:42:47 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51B9gjMH012321;
	Tue, 11 Feb 2025 09:42:45 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 44p0bkpchb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Feb 2025 09:42:45 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51B9gje6012313;
	Tue, 11 Feb 2025 09:42:45 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 51B9gjrL012306
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Feb 2025 09:42:45 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 1CAD340BEB; Tue, 11 Feb 2025 17:42:44 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention support
Date: Tue, 11 Feb 2025 17:42:31 +0800
Message-Id: <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: T1oMJVH0OPOia2dDFcxamurKuAGYqhGR
X-Proofpoint-ORIG-GUID: T1oMJVH0OPOia2dDFcxamurKuAGYqhGR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_04,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502110060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_094257_789737_9E33F6BD 
X-CRM114-Status: GOOD (  17.44  )
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

From: Qiang Yu <quic_qianyu@quicinc.com>

Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
whole PHY (hardware and register), no_csr reset only resets PHY hardware
but retains register values, which means PHY setting can be skipped during
PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
after that.

Hence, determine whether the PHY has been enabled in bootloader by
verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
available, skip BCR reset and PHY register setting to establish the PCIe
link with bootloader - programmed PHY settings.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
 1 file changed, 58 insertions(+), 33 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index ac42e4b01065..7f0802d09812 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2805,6 +2805,7 @@ struct qmp_pcie {
 
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
+	bool phy_initialized;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -3976,6 +3977,7 @@ static int qmp_pcie_init(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs = qmp->pcs;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -3984,10 +3986,17 @@ static int qmp_pcie_init(struct phy *phy)
 		return ret;
 	}
 
-	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
-	if (ret) {
-		dev_err(qmp->dev, "reset assert failed\n");
-		goto err_disable_regulators;
+	qmp->phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
+	/*
+	 * Toggle BCR reset for phy that doesn't support no_csr
+	 * reset or has not been initialized
+	 */
+	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
+		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+		if (ret) {
+			dev_err(qmp->dev, "reset assert failed\n");
+			goto err_disable_regulators;
+		}
 	}
 
 	ret = reset_control_assert(qmp->nocsr_reset);
@@ -3998,10 +4007,12 @@ static int qmp_pcie_init(struct phy *phy)
 
 	usleep_range(200, 300);
 
-	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
-	if (ret) {
-		dev_err(qmp->dev, "reset deassert failed\n");
-		goto err_assert_reset;
+	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
+		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
+		if (ret) {
+			dev_err(qmp->dev, "reset deassert failed\n");
+			goto err_assert_reset;
+		}
 	}
 
 	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
@@ -4011,7 +4022,8 @@ static int qmp_pcie_init(struct phy *phy)
 	return 0;
 
 err_assert_reset:
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (!qmp->nocsr_reset || !qmp->phy_initialized)
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -4023,7 +4035,10 @@ static int qmp_pcie_exit(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (!qmp->nocsr_reset)
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	else
+		reset_control_assert(qmp->nocsr_reset);
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
@@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val;
 	int ret;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
+	/*
+	 * Write CSR register for phy that doesn't support no_csr
+	 * reset or has not been initialized
+	 */
+	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
+		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+				cfg->pwrdn_ctrl);
 
-	if (qmp->mode == PHY_MODE_PCIE_RC)
-		mode_tbls = cfg->tbls_rc;
-	else
-		mode_tbls = cfg->tbls_ep;
+		if (qmp->mode == PHY_MODE_PCIE_RC)
+			mode_tbls = cfg->tbls_rc;
+		else
+			mode_tbls = cfg->tbls_ep;
 
-	qmp_pcie_init_registers(qmp, &cfg->tbls);
-	qmp_pcie_init_registers(qmp, mode_tbls);
+		qmp_pcie_init_registers(qmp, &cfg->tbls);
+		qmp_pcie_init_registers(qmp, mode_tbls);
+	}
 
 	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
 	if (ret)
@@ -4063,15 +4084,16 @@ static int qmp_pcie_power_on(struct phy *phy)
 		goto err_disable_pipe_clk;
 	}
 
-	/* Pull PHY out of reset state */
-	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
+		/* Pull PHY out of reset state */
+		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-	/* start SerDes and Phy-Coding-Sublayer */
-	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
-
-	if (!cfg->skip_start_delay)
-		usleep_range(1000, 1200);
+		/* start SerDes and Phy-Coding-Sublayer */
+		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
 
+		if (!cfg->skip_start_delay)
+			usleep_range(1000, 1200);
+	}
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	mask = cfg->phy_status;
 	ret = readl_poll_timeout(status, val, !(val & mask), 200,
@@ -4096,16 +4118,19 @@ static int qmp_pcie_power_off(struct phy *phy)
 
 	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
-	/* PHY reset */
-	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-	/* stop SerDes and Phy-Coding-Sublayer */
-	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
-			SERDES_START | PCS_START);
+	if (!qmp->nocsr_reset) {
+		/* PHY reset */
+		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-	/* Put PHY into POWER DOWN state: active low */
-	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
+		/* stop SerDes and Phy-Coding-Sublayer */
+		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
+				SERDES_START | PCS_START);
+
+		/* Put PHY into POWER DOWN state: active low */
+		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+				cfg->pwrdn_ctrl);
+	}
 
 	return 0;
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
