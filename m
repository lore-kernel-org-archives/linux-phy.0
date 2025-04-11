Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16409C369A9
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyeE/oOYimUynTqbi1xf+Se4EgOeD2rLJmstniTgXzA=; b=sB6LawBmiPmWJr
	VPHsV2YE+sPQBf8DlEdOkm6w5XBH1lBP+X/7HoUvrVtg5VPVfbj4h1DIAyQB5eqslxAE3GTf367Jy
	Bk/V8I2GGvTPNjVBykEUDoO0AADfUC77gY8LNsb80kITz8t/pwB30/3cti6ffcjlScZELxTfHBKGx
	EMc8Cv6bdCqKRPGySV32qGQ6sDyZ9fH6jCEQC1MBglPVgAMo/PprNFeu2waPe59krakVQd3h/9d7T
	DCfsVvK8jtxJj6L5E2ZMs3gYYEvAJFtd7F5YU4jO4Q/kb38zhhL2e1klPbTXb6/XN71wSWDdh2urx
	Fz3a7iUG+AWxlfpadLlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Ckl-0000000DblC-2qjV;
	Fri, 11 Apr 2025 11:40:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Cbi-0000000DZYt-00rS
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:31:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5Up68029741;
	Fri, 11 Apr 2025 11:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=a0vR0H25dtT
	gLOCQK545t8HEsrRLOWngd5EPzANU09Q=; b=bw61iPAn7rX8Pwhebh0+Kb4KqJf
	bXeNTK5s6XDUSC4v70guEBdyUCkvXud5lAcu5OoPLUpq4/RGPSd9yHcD6OsaFZix
	P5sOaHuC9kfcyDgFt6EINIHY8ahHrZtGMtNLlfJ3tI6hzoSiMLgSfvNRGnfAeyNE
	5PHLmpVdi/qY3rGsYu4OUPT6z3l/vylSj7E5SnlV4jo7FRDbFdteQlq+tgN/8W5Q
	gwZ8OImzIPJZRMmcWNPZ1uKpNfwmOHiCub35M5UiCK8bBVsm/jTysvlTCM8dI/ir
	d9LmASIfUs3AHs/tTrtPSf4+9TwzoBwcOSuwz55DWJQzXGgosJ6ZECEfCtg==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbut8m8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:33 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 53BBVVoA021659;
	Fri, 11 Apr 2025 11:31:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 45uek59m35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:31 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 53BBVU11021648;
	Fri, 11 Apr 2025 11:31:30 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 53BBVUIX021646
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:30 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 7D9D640C49; Fri, 11 Apr 2025 19:31:29 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com,
        quic_wenbyao@quicinc.com,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Subject: [PATCH v7 2/2] phy: qcom: qmp-pcie: Add PHY register retention support
Date: Fri, 11 Apr 2025 19:31:20 +0800
Message-Id: <20250411113120.651363-3-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250411113120.651363-1-quic_wenbyao@quicinc.com>
References: <20250411113120.651363-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: B5svodJovmLB9IxMt33_4H8hHGtfERUv
X-Proofpoint-ORIG-GUID: B5svodJovmLB9IxMt33_4H8hHGtfERUv
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8fd95 cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=pGLkceISAAAA:8 a=tqIfmRrofTIwFCb1_2sA:9 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1011 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_043138_066394_3C6C71B1 
X-CRM114-Status: GOOD (  19.18  )
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
PHY init if PCIe link is enabled in bootloader and only no_csr is toggled
after that.

Hence, determine whether the PHY has been enabled in bootloader by
verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
available, skip BCR reset and PHY register setting to establish the PCIe
link with bootloader - programmed PHY settings.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 69 ++++++++++++++++++++----
 1 file changed, 59 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 3fd911506f08..ab90aafb313e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3033,6 +3033,7 @@ struct qmp_pcie {
 
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
+	bool skip_init;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -4330,18 +4331,38 @@ static int qmp_pcie_init(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs = qmp->pcs;
+	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
 	int ret;
 
+	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
+	/*
+	 * We need to check the existence of init sequences in two cases:
+	 * 1. The PHY doesn't support no_csr reset.
+	 * 2. The PHY supports no_csr reset but isn't initialized by bootloader.
+	 * As we can't skip init in these two cases.
+	 */
+	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
+		dev_err(qmp->dev, "Init sequence not available\n");
+		return -ENODATA;
+	}
+
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
 		return ret;
 	}
 
-	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
-	if (ret) {
-		dev_err(qmp->dev, "reset assert failed\n");
-		goto err_disable_regulators;
+	/*
+	 * Toggle BCR reset for PHY that doesn't support no_csr reset or has not
+	 * been initialized.
+	 */
+	if (!qmp->skip_init) {
+		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+		if (ret) {
+			dev_err(qmp->dev, "reset assert failed\n");
+			goto err_disable_regulators;
+		}
 	}
 
 	ret = reset_control_assert(qmp->nocsr_reset);
@@ -4352,10 +4373,12 @@ static int qmp_pcie_init(struct phy *phy)
 
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
@@ -4365,7 +4388,8 @@ static int qmp_pcie_init(struct phy *phy)
 	return 0;
 
 err_assert_reset:
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (!qmp->skip_init)
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -4377,7 +4401,10 @@ static int qmp_pcie_exit(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (qmp->nocsr_reset)
+		reset_control_assert(qmp->nocsr_reset);
+	else
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
@@ -4396,6 +4423,13 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val;
 	int ret;
 
+	/*
+	 * Write CSR register for PHY that doesn't support no_csr reset or has not
+	 * been initialized.
+	 */
+	if (qmp->skip_init)
+		goto skip_tbls_init;
+
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			cfg->pwrdn_ctrl);
 
@@ -4407,6 +4441,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tbls);
 	qmp_pcie_init_registers(qmp, mode_tbls);
 
+skip_tbls_init:
 	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
 	if (ret)
 		return ret;
@@ -4417,6 +4452,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 		goto err_disable_pipe_clk;
 	}
 
+	if (qmp->skip_init)
+		goto skip_serdes_start;
+
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -4426,6 +4464,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (!cfg->skip_start_delay)
 		usleep_range(1000, 1200);
 
+skip_serdes_start:
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	mask = cfg->phy_status;
 	ret = readl_poll_timeout(status, val, !(val & mask), 200,
@@ -4450,6 +4489,15 @@ static int qmp_pcie_power_off(struct phy *phy)
 
 	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
+	/*
+	 * While powering off the PHY, only qmp->nocsr_reset needs to be checked. In
+	 * this way, no matter whether the PHY settings were initially programmed by
+	 * bootloader or PHY driver itself, we can reuse them when PHY is powered on
+	 * next time.
+	 */
+	if (qmp->nocsr_reset)
+		goto skip_phy_deinit;
+
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -4461,6 +4509,7 @@ static int qmp_pcie_power_off(struct phy *phy)
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
