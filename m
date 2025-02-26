Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 486E8C021BC
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 10:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSWiR5mxAIcVWU6I9ax7OiBJlN72x33aJukXQk5wVRs=; b=cdLsKBSvxaDz0g
	n5FYoHp1WVcJM7WqQz/MWULhkKOzmDNh/KR/1cmbykRJxFx6NQcp3fapAZKTjswdH5NN3e/fbdwPT
	4W5zIgMKw5iXmou+RO/0QsWwLdors9AF0bmNQ9rFpPtvfGbMdzHEBTHvKrYx4XANxj+zM5YCiiEax
	PzvCzZ4mZrPduWnyzvhyuu0FcRASUxdSv0uMzovaQtUntR6F2hOcR6TLDPVufVYZmMZoikI5nnTNU
	Jy0UAPJwSEUyTzfvbaqpNcXvH7EDMqwUnuPJdHIRdvlgUIVK5B75l00GAcJfb7+9wuYwpS1wCSZ/H
	cYaunsudzyQBoHgz171A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnExs-00000003MJS-0APm;
	Wed, 26 Feb 2025 10:48:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnElz-00000003JtZ-0b8r
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 10:36:16 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QA32uq015835;
	Wed, 26 Feb 2025 10:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=22HlwGScnyU
	Bg+pAP0+yyWz+8osfbOHcR3hnk0lXqkM=; b=KH8hnjpC3E3pn8QtBzF/Rh3eRa3
	9q+RFeDfcBnJrDUJUxk9EMH2M9dpJO5KLe+OYBVoSp9nc4bp67R93VgY1lpdLXZE
	thuYyaRUCa3ZiiFCckl0r5vVNXOmj7oHsZOvEgW49TONhAwhf20XjTF+S6oNwi3F
	qO9q1/V1rypl7Wi2jPpkkux76LOmftd5hH572jNSRQjCsbmsdQ0qe8s+1tGIuVU3
	RRTAe88e7ldP9sYPqCClKb/ArB3pNy4iQvhzUzNzXTwOXprwQQ3xvFZeXS5OGFp6
	ziXj2Bgx/VPFeWBDf5yYMqdE/yuZ0gwRTujKPNqHsPri5CYC4/EqPOIJBlA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prnhn0s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 10:36:10 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51QAa8aO024017;
	Wed, 26 Feb 2025 10:36:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 44y7nm1d8t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 10:36:08 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51QAa7g8024005;
	Wed, 26 Feb 2025 10:36:08 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 51QAa7O6024002
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 10:36:07 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id AEF8A40DA1; Wed, 26 Feb 2025 18:36:06 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH v5 2/2] phy: qcom: qmp-pcie: Add PHY register retention support
Date: Wed, 26 Feb 2025 18:36:00 +0800
Message-Id: <20250226103600.1923047-3-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3vMc01sHJqifeJuCwE9kWdnJc1Sks486
X-Proofpoint-ORIG-GUID: 3vMc01sHJqifeJuCwE9kWdnJc1Sks486
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_02,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_023615_321774_06FB1A6A 
X-CRM114-Status: GOOD (  19.93  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 69 ++++++++++++++++++++----
 1 file changed, 59 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 219266125cf2..c3642d1807e4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2805,6 +2805,7 @@ struct qmp_pcie {
 
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
+	bool skip_init;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -3976,18 +3977,38 @@ static int qmp_pcie_init(struct phy *phy)
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
+		dev_err(qmp->dev, "no init sequences are available\n");
+		return -EINVAL;
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
@@ -3998,10 +4019,12 @@ static int qmp_pcie_init(struct phy *phy)
 
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
@@ -4011,7 +4034,8 @@ static int qmp_pcie_init(struct phy *phy)
 	return 0;
 
 err_assert_reset:
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (!qmp->skip_init)
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -4023,7 +4047,10 @@ static int qmp_pcie_exit(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (qmp->nocsr_reset)
+		reset_control_assert(qmp->nocsr_reset);
+	else
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
@@ -4042,6 +4069,13 @@ static int qmp_pcie_power_on(struct phy *phy)
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
 
@@ -4053,6 +4087,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tbls);
 	qmp_pcie_init_registers(qmp, mode_tbls);
 
+skip_tbls_init:
 	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
 	if (ret)
 		return ret;
@@ -4063,6 +4098,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 		goto err_disable_pipe_clk;
 	}
 
+	if (qmp->skip_init)
+		goto skip_serdes_start;
+
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -4072,6 +4110,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (!cfg->skip_start_delay)
 		usleep_range(1000, 1200);
 
+skip_serdes_start:
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	mask = cfg->phy_status;
 	ret = readl_poll_timeout(status, val, !(val & mask), 200,
@@ -4096,6 +4135,15 @@ static int qmp_pcie_power_off(struct phy *phy)
 
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
 
@@ -4107,6 +4155,7 @@ static int qmp_pcie_power_off(struct phy *phy)
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
