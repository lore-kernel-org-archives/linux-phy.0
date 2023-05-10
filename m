Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E09AFC7EE26
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 03:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh8r+z5CHtEU1gBf+1HFeIXtfD3lrFyTGhMXWpPr5xk=; b=yPHKWYxU9X4pgG
	s+ZBxtK4uF9qFvRBmUmbdwRry5GWbf7gjlT6ewt3Ag8VV3xRx4tD/DQZgmQEIKAXWEjsLyoS1CsS+
	92wUFQC1nwr0GrHg4JgImCiVk15OHIz94ChcQV76NRYC4kGSF4MYDJNJptwISbr8XNCFVQzwGxcQK
	XVtNjA0nCvu3T8HOwdSJKUAHNbJdMnG/FxWgR/isj9LCZOVB8z2XvANbp0cPlIdkolkFFv9BxV9tr
	Li6vB9+DYqbDNw4ORaslDE6D05bO61TIb7xGqTP+BUDw4UNbFzhp4wddChkc/lKXBUv8kxLbdsQ25
	ASaXwhbuN7xTkAxEVXAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMk-004rJW-1r;
	Wed, 10 May 2023 03:19:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMh-004rIK-32
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 03:19:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A2nEf5012637;
	Wed, 10 May 2023 03:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=L/3FgbCcEGlyHMOnmFjFt47d6GvJvy5JjawDS//uo/0=;
 b=kWVX7Kpw+2QggKFEPHiPVUdQ4Ou8Fa6//XdcWRJbjYH1F4uV1D/hzxf/hf/29cUWgHrv
 zzG+RaSFjJRf5KYTtF5T+7qoHJNGJRwMPOIiEYKZNJnH2un31AfKWBgXawL+yn2mdvOO
 QcTyIml2j0YF+J4vlMOF/MeRy7HwCjvtrmPR3VXv5JsahtFv1eJLs7W2weRlYlCmdQkp
 Ccxv4ldd6nFeP2yEutnbDZT5j0y4Q1EmENegQCTkQp1pbYlMvyLYO6V1bQLFRmVzSyTC
 pRGQgJrGCB5dgAiQwEuW7iO86wp3orFjgdes9LBk+cZ1cHim2ktt5ZsdeRAsriP1aV6V hg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qg1g105pk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:37 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34A3JaEs016023
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:36 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 9 May 2023 20:19:36 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, Steev
 Klimaszewski <steev@kali.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 4/8] phy: qcom-qmp-combo: Introduce orientation variable
Date: Tue, 9 May 2023 20:19:26 -0700
Message-ID: <20230510031930.1996020-5-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: BDYvGoUgRcUrfjVHzI5lFGEzCQiFDUYP
X-Proofpoint-ORIG-GUID: BDYvGoUgRcUrfjVHzI5lFGEzCQiFDUYP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_16,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_201943_999060_72FB8D67 
X-CRM114-Status: GOOD (  23.60  )
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

In multiple places throughout the driver code has been written in
prepration for handling of orientation switching.

Introduce a typec_orientation in qmp_combo and fill out the various
"placeholders" with the associated logic. By initializing the
orientation to "normal" this change has no functional impact, but
reduces the size of the upcoming introduction of dynamic orientation
switching.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
---

Changes since v1:
- X-mas in qmp_combo_configure_dp_mode()

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 +++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 6baacdf3a4cb..e0d246e7086d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -19,6 +19,7 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
+#include <linux/usb/typec.h>
 
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
@@ -63,6 +64,10 @@
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
+/* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
+
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 struct qmp_phy_init_tbl {
@@ -1323,6 +1328,8 @@ struct qmp_combo {
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
+
+	enum typec_orientation orientation;
 };
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
@@ -1954,30 +1961,24 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
 
 static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 {
+	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
+	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 val;
-	bool reverse = false;
 
 	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
 
-	/*
-	 * TODO: Assume orientation is CC1 for now and two lanes, need to
-	 * use type-c connector to understand orientation and lanes.
-	 *
-	 * Otherwise val changes to be like below if this code understood
-	 * the orientation of the type-c cable.
-	 *
-	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC2)
-	 *	val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
-	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC1)
-	 *	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
-	 * if (orientation == ORIENTATION_CC2)
-	 *	writel(0x4c, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_MODE);
-	 */
-	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
+	if (dp_opts->lanes == 4 || reverse)
+		val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
+	if (dp_opts->lanes == 4 || !reverse)
+		val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
+
 	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
-	writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
+	if (reverse)
+		writel(0x4c, qmp->pcs + QSERDES_DP_PHY_MODE);
+	else
+		writel(0x5c, qmp->pcs + QSERDES_DP_PHY_MODE);
 
 	return reverse;
 }
@@ -2235,7 +2236,7 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
-	bool reverse = false;
+	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
 	u32 status;
 	int ret;
 
@@ -2299,7 +2300,7 @@ static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
-	bool reverse = false;
+	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
 	u32 status;
 	int ret;
 
@@ -2358,7 +2359,7 @@ static int qmp_v6_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
-	bool reverse = false;
+	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
 	u32 status;
 	int ret;
 
@@ -2471,6 +2472,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *com = qmp->com;
 	int ret;
+	u32 val;
 
 	if (qmp->init_count++)
 		return 0;
@@ -2504,10 +2506,12 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
 			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
 
-	/* Default type-c orientation, i.e CC1 */
-	qphy_setbits(com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
-
-	qphy_setbits(com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
+	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
 
 	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
 	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
@@ -3379,6 +3383,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	qmp->dev = dev;
 
+	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
+
 	qmp->cfg = of_device_get_match_data(dev);
 	if (!qmp->cfg)
 		return -EINVAL;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
