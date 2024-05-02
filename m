Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20ABC4345F
	for <linux-phy@archiver.kernel.org>; Thu,  2 May 2024 12:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4tOfOKF+nEQxXiuGUoq6mx2bYxOOiGDWemi0bCmyyM=; b=j1Y5Q7nvj27UMq
	wYj9FSLdan5v5i4pIEc6gF3zI5N0BRlQZTlRiZ+7L0v+gHXr1iXtRV3dka7zJz60HDupPlb7YLuND
	OWCpr4rOH+VOfuMj0Ubmz1DDaPOP/OFdccVeCgzQVdyc9CdIJUiSwJ0IM073d6yqVhthqIAtK/lHv
	lCP8UZX6RslAVa9DYt4nzZ9KP7CZYAP04mOZ8W2Ulj+lxduCaOHOnzyvJLZyCnPmkJ5pHbiT6Ew3S
	3Or59SCVZ+Xq0Z484RhYHBZ9dLGVUYye6nMDPcBwZTPqI37cnPo7QPWGRfRSP4/OFEIIEoKVkQtiY
	4XQgPhmwTbVkFbte1Xwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Vd9-0000000Cg8M-1jA3;
	Thu, 02 May 2024 12:33:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Vd5-0000000Cg5U-3SBR
	for linux-phy@lists.infradead.org;
	Thu, 02 May 2024 12:33:42 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 442BvSEk005299;
	Thu, 2 May 2024 12:33:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version:content-type; s=
	qcppdkim1; bh=lHizHzFOmrodFfNFPzkjuWLTxyvbKXdlLj1BX/31P3c=; b=bE
	q814YCU3ihKZunw0WeU/LX01c/r2NF5RP/x1nk95q6CPwb4bTMxI+zkYlBbtAjEJ
	0iz3q3vnIt1O44iXyP4OovnSg1K7HCLcM/UFLvPG/4C8yjR2qDgUsrplyypulcDO
	rNL0F2eqKaZi4KWUnr2b9/z/vj8Q0uHnp0MHZ/AYVEjxfFp+guEDUkXc7TxUd/uB
	/ro/RAvbwsAGenpAC9PMG5XlB6tnDZoRF07l+wtTvpLoUiibxISRUSrxG+1O9wKI
	yqjDiWh/F4A4FpLliOZS/tPds6P8LKH3Nyd6Xpeqkwjr24yA+sc3Ke0876opeYc1
	AbnAQ/fQky9XWURlBVPQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xueu937k8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 May 2024 12:33:29 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 442CXR8B028175
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 2 May 2024 12:33:27 GMT
Received: from hu-ugoswami-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 2 May 2024 05:33:24 -0700
From: Udipto Goswami <quic_ugoswami@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        Udipto Goswami <quic_ugoswami@quicinc.com>
Subject: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for LDO's used
Date: Thu, 2 May 2024 18:03:12 +0530
Message-ID: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: EK8oxntt2p1zrxQ0c4uJLpStPIqP59ll
X-Proofpoint-ORIG-GUID: EK8oxntt2p1zrxQ0c4uJLpStPIqP59ll
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-02_01,2024-05-02_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1011 mlxscore=0 impostorscore=0 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2405020077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_053340_088188_5CC57444 
X-CRM114-Status: GOOD (  23.85  )
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

The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
If one of the regulators is not voted to the required minimum voltage
for phy to operate, then High speed mode of operation will fail.

On certain targets like (qcm6490_rb3gen2) where the minimum voltage
of the regulator is lower than the operating voltage of the phy.
If not voted properly, the phy supply would be limited to the min value
of the LDO thereby rendering the phy non-operational.

The current implementation of the regulators in the Femto PHY is not
setting the load and voltage for each LDO. The appropriate voltages and
loads required for the PHY to operate should be set.

Implement a bulk operation api to set load & voltages before doing bulk
enable. This will ensure that the PHY remains operational under all
conditions.

Signed-off-by: Udipto Goswami <quic_ugoswami@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 121 +++++++++++++++++-
 1 file changed, 114 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..cbe9cdaa6849 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -78,11 +78,39 @@
 
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
-static const char * const qcom_snps_hsphy_vreg_names[] = {
-	"vdda-pll", "vdda33", "vdda18",
+
+struct qcom_snps_hsphy_regulator_data {
+	const char *name;
+	unsigned int enable_load;
+	unsigned int min_voltage;
+	unsigned int max_voltage;
+};
+
+static const struct qcom_snps_hsphy_regulator_data hsphy_vreg_l[] = {
+	{
+		.name = "vdda-pll",
+		.enable_load = 30000,
+		.min_voltage = 825000,
+		.max_voltage = 925000,
+	},
+
+	{
+		.name = "vdda18",
+		.enable_load = 19000,
+		.min_voltage = 1704000,
+		.max_voltage = 1800000
+	},
+
+	{
+		.name = "vdda33",
+		.enable_load = 16000,
+		.min_voltage = 3050000,
+		.max_voltage = 3300000
+	},
+
 };
 
-#define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
+#define SNPS_HS_NUM_VREGS		ARRAY_SIZE(hsphy_vreg_l)
 
 struct override_param {
 	s32	value;
@@ -132,12 +160,90 @@ struct qcom_snps_hsphy {
 	struct clk_bulk_data *clks;
 	struct reset_control *phy_reset;
 	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
+	const struct qcom_snps_hsphy_regulator_data *vreg_list;
 
 	bool phy_initialized;
 	enum phy_mode mode;
 	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
 };
 
+static int __vdda_phy_bulk_enable_disable(struct qcom_snps_hsphy *hsphy, bool on)
+{
+	int ret = 0;
+	int i;
+
+	if (!on)
+		goto disable_vdd;
+
+	for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
+
+		ret = regulator_set_load(hsphy->vregs[i].consumer,
+					 hsphy->vreg_list[i].enable_load);
+
+		if (ret < 0) {
+			dev_err(hsphy->dev, "unable to set HPM of %s %d\n",
+						hsphy->vregs[i].supply, ret);
+			goto err_vdd;
+		}
+	}
+
+	for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
+		ret = regulator_set_voltage(hsphy->vregs[i].consumer,
+					    hsphy->vreg_list[i].min_voltage,
+					    hsphy->vreg_list[i].max_voltage);
+		if (ret) {
+			dev_err(hsphy->dev,
+				"unable to set voltage of regulator %s %d\n",
+						hsphy->vregs[i].supply, ret);
+			goto put_vdd_lpm;
+		}
+	}
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
+	if (ret)
+		goto unconfig_vdd;
+
+	return ret;
+
+disable_vdd:
+	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
+
+unconfig_vdd:
+	for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
+		ret = regulator_set_voltage(hsphy->vregs[i].consumer, 0,
+					    hsphy->vreg_list[i].max_voltage);
+		if (ret) {
+			dev_err(hsphy->dev,
+			"unable to set voltage of regulator %s %d\n",
+					hsphy->vregs[i].supply, ret);
+		}
+	}
+
+put_vdd_lpm:
+	for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
+		ret = regulator_set_load(hsphy->vregs[i].consumer, 0);
+
+		if (ret < 0) {
+			dev_err(hsphy->dev, "unable to set LPM of %s %d\n",
+						hsphy->vregs[i].supply, ret);
+		}
+	}
+
+err_vdd:
+	return ret;
+
+}
+
+static int vdda_phy_bulk_enable(struct qcom_snps_hsphy *hsphy)
+{
+	return __vdda_phy_bulk_enable_disable(hsphy, true);
+}
+
+static int vdda_phy_bulk_disable(struct qcom_snps_hsphy *hsphy)
+{
+	return __vdda_phy_bulk_enable_disable(hsphy, false);
+}
+
 static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
 {
 	struct device *dev = hsphy->dev;
@@ -390,7 +496,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 
 	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
 
-	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
+	ret = vdda_phy_bulk_enable(hsphy);
 	if (ret)
 		return ret;
 
@@ -471,7 +577,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 disable_clks:
 	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
 poweroff_phy:
-	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
+	ret = vdda_phy_bulk_disable(hsphy);
 
 	return ret;
 }
@@ -482,7 +588,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
 
 	reset_control_assert(hsphy->phy_reset);
 	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
-	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
+	vdda_phy_bulk_disable(hsphy);
 	hsphy->phy_initialized = false;
 
 	return 0;
@@ -592,8 +698,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 
 	num = ARRAY_SIZE(hsphy->vregs);
 	for (i = 0; i < num; i++)
-		hsphy->vregs[i].supply = qcom_snps_hsphy_vreg_names[i];
+		hsphy->vregs[i].supply = hsphy_vreg_l[i].name;
 
+	hsphy->vreg_list  = hsphy_vreg_l;
 	ret = devm_regulator_bulk_get(dev, num, hsphy->vregs);
 	if (ret)
 		return dev_err_probe(dev, ret,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
