Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A8EC47258
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jan 2024 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hz5zwBOd463Ir6wmPwYykf3H+ifmBTcf/4mwl6y4Kwo=; b=BQIW28uR8x2GRk
	jerDetgUtd8XpKSXMXPAbemkOjGDSRgWnFH4Lxe/kNY8qqxAodiGnnWpkMlkzDykjKccPcrkxCGng
	lBoVqpYhhY4OyBuXDa+9Yz/ORwYkEDalOFdX0Ejr1JHCYduDuI11Bzl4JPd+DRAJsE6pXrznKgd7c
	D4sdt/vmAM85whs7+WY7Tka5+dmSBppozrcrqZwwnk/Y3LtWZ9iLTSyMTz61+s6aPugH8PWbJQbkj
	AqBV+k+uiizzVJ/RxNHgtzz6wQqk8aelIz1WHJj7nkGmb60KuaKKJyqzDBWlEXtEjMHAWLn7okX4t
	HDBhhfSLyjF+MqyAclFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJYJ-003AYe-1V;
	Fri, 12 Jan 2024 15:34:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJYH-003AXc-3C
	for linux-phy@bombadil.infradead.org;
	Fri, 12 Jan 2024 15:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5Q+w9MWmSzR4NXvC+ErojV0BLtfG0axHU6wL5813SCI=; b=ECevm9+muynx468F2gzcnUPTBP
	8B/5BQip48+TjyRyYRe7JNI9XpWIII9TEWzhEzqaKR5OvtRsMfANKlyo+S/msq4ySLtWjEF4ZdNHj
	UhdTZAhFpuW0Xc8F1AI8n+SdMk9UjQjvnhIgwPWyCNHaDIOp/qQWhhWcMStgcn+ZrlSTBNh0RlRXn
	/+0YAA8xdM3mZLN9BDsjFSgMGPJlHytDcw1YiHP/8xwMKOPJ/PRdbzLlDQjKKhUaWjqOik7IqR4LN
	yeg5I2f3xKcRhF74AaS4jbLg21hfgMZIcTP5+xTul+u+3mmvssv7GdjZVed3IoGXqzT9jA28wwLUh
	5PunHJcg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rOJYC-0000zC-R2
	for linux-phy@lists.infradead.org; Fri, 12 Jan 2024 15:34:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40CFU9AJ009117;
	Fri, 12 Jan 2024 15:33:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=qcppdkim1; bh=5Q+w9MW
	mSzR4NXvC+ErojV0BLtfG0axHU6wL5813SCI=; b=A8aWXQ36iFET+bTsCf/pqxF
	vLpGFJtRQ7G7gBm4/dAjUDzeqLDWi6QgTW1qC3sKQF7/xeUNxDl059ieL7WABjv4
	E7Bm88D6M10sLJ1WS5X3nNhUBRJBDDulhIXXqEGhBeYF9oSfpq8/yCVKFKEPGFBf
	fzV7lGAjJP7aMkpS5XbBMEDXvWxv7eZMVTafCoJaH7KMlPkA06ub4xx59H0ir6Zo
	iGn9w88h/6BUGQ0gRqxXekD9WDuKqItQwnRJ8zHFrZvhPoL64wUezCl6GbQH4kkI
	hgcIsOAGuJqWU2ucsW1q5yDGA9P+9nuQY5W13gyxtbRnbYokHXX6adCXMJtXIXQ=
	=
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vk6ee877n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Jan 2024 15:33:59 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 40CFXtem032713;
	Fri, 12 Jan 2024 15:33:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3veyxnj2yu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 12 Jan 2024 15:33:55 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 40CFXs09032701;
	Fri, 12 Jan 2024 15:33:55 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 40CFXsOo032699;
	Fri, 12 Jan 2024 15:33:54 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id C1DA8572C41; Fri, 12 Jan 2024 21:03:53 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Can Guo <quic_cang@quicinc.com>,
        Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Subject: [PATCH V1 2/2] phy: qcom: Refactor phy_power_on and phy_calibrate callbacks
Date: Fri, 12 Jan 2024 21:03:48 +0530
Message-ID: <20240112153348.2778-3-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: W_m_O80bD-vsP4rYHoQoX6eCtor04T36
X-Proofpoint-GUID: W_m_O80bD-vsP4rYHoQoX6eCtor04T36
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0
 impostorscore=0 mlxscore=0 adultscore=0 spamscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401120121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_153429_358325_3FEE62F0 
X-CRM114-Status: GOOD (  20.19  )
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

Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
puts enabling regulators & clks, calibrating UFS PHY, starting serdes
and polling PCS ready status into phy_power_on.

In Current code regulators enable, clks enable, calibrating UFS PHY,
start_serdes and polling PCS_ready_status are part of phy_power_on.

UFS PHY registers are retained after power collapse, meaning calibrating
UFS PHY, start_serdes and polling PCS_ready_status can be done only when
hba is powered_on, and not needed every time when phy_power_on is called
during resume. Hence keep the code which enables PHY's regulators & clks
in phy_power_on and move the rest steps into phy_calibrate function.

Refactor the code to enable PHY regulators & clks in phy_power_on and
move rest of the code to phy_calibrate function.

Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Co-developed-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Signed-off-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 183 +++++++++---------------
 1 file changed, 67 insertions(+), 116 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 3c2e6255e26f..ae0218738b0b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -32,14 +32,15 @@
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
+#define SW_PWRUP				BIT(0)
+#define SW_PWRDN				0
 /* QPHY_START_CONTROL bits */
 #define SERDES_START				BIT(0)
 #define PCS_START				BIT(1)
 /* QPHY_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)

-#define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define PHY_INIT_COMPLETE_TIMEOUT		1000000

 struct qmp_phy_init_tbl {
 	unsigned int offset;
@@ -1464,8 +1465,25 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_g4);
 }

-static int qmp_ufs_com_init(struct qmp_ufs *qmp)
+static int qmp_ufs_power_off(struct phy *phy)
+{
+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	/* Put PHY into POWER DOWN state: active low */
+	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			SW_PWRDN);
+
+	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+
+	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
+
+	return 0;
+}
+
+static int qmp_ufs_power_on(struct phy *phy)
 {
+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
 	int ret;
@@ -1480,8 +1498,7 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
 	if (ret)
 		goto err_disable_regulators;

-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRUP);
 	return 0;

 err_disable_regulators:
@@ -1490,61 +1507,7 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
 	return ret;
 }

-static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-
-	reset_control_assert(qmp->ufs_reset);
-
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
-
-	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-
-	return 0;
-}
-
-static int qmp_ufs_init(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
-
-	if (cfg->no_pcs_sw_reset) {
-		/*
-		 * Get UFS reset, which is delayed until now to avoid a
-		 * circular dependency where UFS needs its PHY, but the PHY
-		 * needs this UFS reset.
-		 */
-		if (!qmp->ufs_reset) {
-			qmp->ufs_reset =
-				devm_reset_control_get_exclusive(qmp->dev,
-								 "ufsphy");
-
-			if (IS_ERR(qmp->ufs_reset)) {
-				ret = PTR_ERR(qmp->ufs_reset);
-				dev_err(qmp->dev,
-					"failed to get UFS reset: %d\n",
-					ret);
-
-				qmp->ufs_reset = NULL;
-				return ret;
-			}
-		}
-
-		ret = reset_control_assert(qmp->ufs_reset);
-		if (ret)
-			return ret;
-	}
-
-	ret = qmp_ufs_com_init(qmp);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static int qmp_ufs_power_on(struct phy *phy)
+static int qmp_ufs_phy_calibrate(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1553,11 +1516,21 @@ static int qmp_ufs_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;

+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRUP);
+
+	ret = reset_control_assert(qmp->ufs_reset);
+	if (ret) {
+		dev_err(qmp->dev, "Failed to assert UFS PHY reset %d\n", ret);
+		return ret;
+	}
+
 	qmp_ufs_init_registers(qmp, cfg);

 	ret = reset_control_deassert(qmp->ufs_reset);
-	if (ret)
+	if (ret) {
+		dev_err(qmp->dev, "Failed to deassert UFS PHY reset %d\n", ret);
 		return ret;
+	}

 	/* Pull PHY out of reset state */
 	if (!cfg->no_pcs_sw_reset)
@@ -1577,59 +1550,6 @@ static int qmp_ufs_power_on(struct phy *phy)
 	return 0;
 }

-static int qmp_ufs_power_off(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-
-	/* PHY reset */
-	if (!cfg->no_pcs_sw_reset)
-		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-
-	/* stop SerDes */
-	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL], SERDES_START);
-
-	/* Put PHY into POWER DOWN state: active low */
-	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			SW_PWRDN);
-
-	return 0;
-}
-
-static int qmp_ufs_exit(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-
-	qmp_ufs_com_exit(qmp);
-
-	return 0;
-}
-
-static int qmp_ufs_enable(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_ufs_init(phy);
-	if (ret)
-		return ret;
-
-	ret = qmp_ufs_power_on(phy);
-	if (ret)
-		qmp_ufs_exit(phy);
-
-	return ret;
-}
-
-static int qmp_ufs_disable(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_ufs_power_off(phy);
-	if (ret)
-		return ret;
-	return qmp_ufs_exit(phy);
-}
-
 static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
@@ -1641,9 +1561,10 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }

 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
-	.power_on	= qmp_ufs_enable,
-	.power_off	= qmp_ufs_disable,
+	.power_on	= qmp_ufs_power_on,
+	.power_off	= qmp_ufs_power_off,
 	.set_mode	= qmp_ufs_set_mode,
+	.calibrate	= qmp_ufs_phy_calibrate,
 	.owner		= THIS_MODULE,
 };

@@ -1809,6 +1730,32 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
 	return 0;
 }

+static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
+
+	if (!cfg->no_pcs_sw_reset)
+		return 0;
+
+	/*
+	 * Get UFS reset, which is delayed until now to avoid a
+	 * circular dependency where UFS needs its PHY, but the PHY
+	 * needs this UFS reset.
+	 */
+
+	qmp->ufs_reset = devm_reset_control_get_exclusive(qmp->dev,
+							  "ufsphy");
+	if (IS_ERR(qmp->ufs_reset)) {
+		ret = PTR_ERR(qmp->ufs_reset);
+		dev_err(qmp->dev, "failed to get UFS reset: %d\n", ret);
+		qmp->ufs_reset = NULL;
+		return ret;
+	}
+
+	return 0;
+}
+
 static int qmp_ufs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1835,6 +1782,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;

+	ret = qmp_ufs_get_phy_reset(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child node. */
 	np = of_get_next_available_child(dev->of_node, NULL);
 	if (np) {
--
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
