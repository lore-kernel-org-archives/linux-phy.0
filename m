Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DC8C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 10:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7MYoMSuFl1uXTjQiH2rkpZs+UWPiCBHduv9l6siITw=; b=amMug2Py+f0dt+
	zxqvUz+fJqDFSEBM1BcaPyw1m8JwUSHPogEuK+PX0mikmC2LDnGJat36eKKItXkBd6ow0F8HYHhu3
	rga3+GK3EjPhy7LXtyUpviJoOhYcDL09WvNVjKgWLzg27XJQ4EVZa4XtTTnc5YC1gEYfTtVQeATEe
	XZ5oA+5YoaQ+kmtfV6lFD5sSnZ7A4htJr3+JFB+/SdfBohP/Fy2obZmkwx5J7MOaFwGq3sKck5Xmv
	Blm4UDf6EqPOazpTzrArPabMXXpVo2pNIk/Z6w9FLzbEOxV4x6BAzdPdrUtdXIJQ3EJZTNlq1YnU0
	GD87pPSetZCq5DEdINqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3i7-00000000GWw-3WKe;
	Thu, 20 Feb 2025 10:23:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3i4-00000000GWK-3hlX
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 10:23:14 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K6dB3o015948;
	Thu, 20 Feb 2025 10:23:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=s0cqWvtipj4
	T5I8IzfIN0ajb+YWFn4Ojr8aLY8PoBU4=; b=jCwXZ1WotEy4rT4tweNAxpGugkJ
	vH2X4Sil2A+3rlEkrqvUBAmmykoMv5VaL1QYdJQ9NA3BChVWxJTSx2lkz1Mh9Zgf
	N3eWBa5AaXeHJpD5RNuws3knULOqaY79LzStgdxjcTrhkIX5EipODZH8RYWj6N+S
	n540jDFYx3MKKth1l/Hy/C8HfRXaPG3C0AxG6ru0uub/oRjQCbV3sHLEpjBRqmtv
	6ufVwMpCU7ET7koRaUJLFjXv0NMftZATQEW6JmWhkQdsypBbJxmDsJwTcGq688y6
	q6DhF3j1b2P+dQ7s5oiUK/FOxV0jS5ZL/vcAnF9DDfIhAUcLPhITNmTT9uQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy4dtg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:05 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51KAN2Pd013753;
	Thu, 20 Feb 2025 10:23:02 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 44tm0m1a1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:02 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51KAN2pp013736;
	Thu, 20 Feb 2025 10:23:02 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 51KAN2KK013719
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:02 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 9DA6D40C3B; Thu, 20 Feb 2025 18:23:00 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention support
Date: Thu, 20 Feb 2025 18:22:53 +0800
Message-Id: <20250220102253.755116-3-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: DykI3R09EeIc7RUblfoatlB4zRSGaY3e
X-Proofpoint-ORIG-GUID: DykI3R09EeIc7RUblfoatlB4zRSGaY3e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_04,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_022313_042457_DD04C0AC 
X-CRM114-Status: GOOD (  19.82  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 60 +++++++++++++++++++-----
 1 file changed, 49 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 219266125cf2..6938b72df7fa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2805,6 +2805,7 @@ struct qmp_pcie {
 
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
+	bool skip_init;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -3976,7 +3977,9 @@ static int qmp_pcie_init(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs = qmp->pcs;
 	int ret;
+	bool phy_initialized;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
@@ -3984,10 +3987,18 @@ static int qmp_pcie_init(struct phy *phy)
 		return ret;
 	}
 
-	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
-	if (ret) {
-		dev_err(qmp->dev, "reset assert failed\n");
-		goto err_disable_regulators;
+	phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
+	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
+	/*
+	 * Toggle BCR reset for PHY that doesn't support no_csr
+	 * reset or has not been initialized
+	 */
+	if (!qmp->skip_init) {
+		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+		if (ret) {
+			dev_err(qmp->dev, "reset assert failed\n");
+			goto err_disable_regulators;
+		}
 	}
 
 	ret = reset_control_assert(qmp->nocsr_reset);
@@ -3998,10 +4009,12 @@ static int qmp_pcie_init(struct phy *phy)
 
 	usleep_range(200, 300);
 
-	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
-	if (ret) {
-		dev_err(qmp->dev, "reset deassert failed\n");
-		goto err_assert_reset;
+	if (!qmp->skip_init) {
+		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
+		if (ret) {
+			dev_err(qmp->dev, "reset deassert failed\n");
+			goto err_assert_reset;
+		}
 	}
 
 	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
@@ -4011,7 +4024,8 @@ static int qmp_pcie_init(struct phy *phy)
 	return 0;
 
 err_assert_reset:
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (!qmp->skip_init)
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -4023,7 +4037,10 @@ static int qmp_pcie_exit(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (qmp->nocsr_reset)
+		reset_control_assert(qmp->nocsr_reset);
+	else
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
@@ -4042,6 +4059,13 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val;
 	int ret;
 
+	/*
+	 * Write CSR register for PHY that doesn't support no_csr
+	 * reset or has not been initialized
+	 */
+	if (qmp->skip_init)
+		goto skip_tbls_init;
+
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			cfg->pwrdn_ctrl);
 
@@ -4053,6 +4077,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tbls);
 	qmp_pcie_init_registers(qmp, mode_tbls);
 
+skip_tbls_init:
 	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
 	if (ret)
 		return ret;
@@ -4063,6 +4088,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 		goto err_disable_pipe_clk;
 	}
 
+	if (qmp->skip_init)
+		goto skip_serdes_start;
+
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -4072,6 +4100,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (!cfg->skip_start_delay)
 		usleep_range(1000, 1200);
 
+skip_serdes_start:
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	mask = cfg->phy_status;
 	ret = readl_poll_timeout(status, val, !(val & mask), 200,
@@ -4096,7 +4125,15 @@ static int qmp_pcie_power_off(struct phy *phy)
 
 	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
-	/* PHY reset */
+	/* When PHY is powered off, only qmp->nocsr_reset needs to be checked.
+	 * In this way, no matter whether the PHY settings were initially
+	 * programmed by bootloader or PHY driver itself, we can reuse them
+	 * when PHY is powered on next time.
+	 */
+	if (qmp->nocsr_reset)
+		goto skip_phy_deinit;
+
+		/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
 	/* stop SerDes and Phy-Coding-Sublayer */
@@ -4107,6 +4144,7 @@ static int qmp_pcie_power_off(struct phy *phy)
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			cfg->pwrdn_ctrl);
 
+skip_phy_deinit:
 	return 0;
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
