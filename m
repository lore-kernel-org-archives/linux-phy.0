Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EA68C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvIZ5q5EtZxV1bWbk8YM1ph6bEz8tIMj4Wic0c5naUY=; b=fxYKvDoUdSnt6o
	zbWHkuMAyOkLx2fHZfRwa3Oll/xSiVxJoJmZN5mhMcZsRAb1aVqNa1tit+9isfhYLpqJMPzxRBTMa
	ggyKmPZ/C/Eb1PfawFdwQLo1hWffLVeCnfIJTgB/s3LZuhIIfsBsNAk3RBt1qZUXMLZveS/4rypeI
	SpUbXMtukXnF0o5NOZ/TMW5lCFuo0S6TcKUKyylDh4PeuNEoaAdGSm7gICGkflpCSFL9ZEhdu8MVU
	fMmO1A8B8GbkvwbUO2WyZ12X4hBzX6u2JVGEkoYst0md00JxSrVQrNR7zC19eIoDH8PpyDHY1s39G
	2J29S81wqGsWK52EF0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsT-000jkR-2f;
	Mon, 15 May 2023 03:28:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsN-000jgP-1X
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:27:57 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34F31eCY017127;
	Mon, 15 May 2023 03:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=gjkBsBWIa3rFiSGgkOHbsLmXg/yNC25OD/0fM5UMuYk=;
 b=AHpFA9rKQnGDf4Ank0YfDCOrt6xeA0oy0+HlnXJy6mez7CedgnWoB9uzlVqa9ywtit+x
 WReNZULB6xhvhbweTSoKZBcDFHyu7ucyMWedZ7l+55oF3t1mQXz0RLKrbcQVjZ32sDCh
 9V/UbnzioDHaEh0O9oxqkeMs9kOAyfzBrgwpdTL3td6A3dXYMh0FsfgETeLet69K2P6P
 1hS5HZx0uWuEQc6UrKDw1MhAP1k6mfcAIJCKxybw/LMDaPHeHhbjjc5SOe4AmRtEkZoC
 GYGTdX9hyA1JGLeREtnTbKibRzWujQyGuMwGtDHLZGnazvzGrcnJn6FSR99GOyAnmdB+ 9g== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qj3udjj0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:51 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34F3RoiV025223
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:50 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sun, 14 May 2023 20:27:50 -0700
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
        Johan Hovold
	<johan+linaro@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel
 Vesa <abel.vesa@linaro.org>, Steev Klimaszewski <steev@kali.org>
Subject: [PATCH v3 5/8] phy: qcom-qmp-combo: Introduce orientation switching
Date: Sun, 14 May 2023 20:27:40 -0700
Message-ID: <20230515032743.400170-6-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515032743.400170-1-quic_bjorande@quicinc.com>
References: <20230515032743.400170-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LVjelyk67m5nlNzMbm8b0xcC3hZD-vUq
X-Proofpoint-ORIG-GUID: LVjelyk67m5nlNzMbm8b0xcC3hZD-vUq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-15_01,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 mlxlogscore=999
 mlxscore=0 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305150028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202755_518986_46ED7C3F 
X-CRM114-Status: GOOD (  28.72  )
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

The data lanes of the QMP PHY is swapped in order to handle changing
orientation of the USB Type-C cable. Register a typec_switch device to
allow a TCPM to configure the orientation.

The newly introduced orientation variable is adjusted based on the
request, and the initialized components are brought down and up again.
To keep track of what parts needs to be cycled new variables to keep
track of the individual init_count is introduced.

Both the USB and the DisplayPort altmode signals are properly switched.
For DisplayPort the controller will after the TCPM having established
orientation power on the PHY, so this is not done implicitly, but for
USB the PHY typically is kept initialized across the switch, and must
therefore then be reinitialized.

This is based on initial work by Wesley Cheng.

Link: https://lore.kernel.org/r/20201009082843.28503-3-wcheng@codeaurora.org/
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---

Changes since v2:
- None

Changes since v1:
- Add TYPEC dependency in Kconfig
- Whitespace changes

 drivers/phy/qualcomm/Kconfig              |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 93 ++++++++++++++++++++---
 2 files changed, 85 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 4850d48f31fa..45330e0f66fe 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -59,6 +59,7 @@ if PHY_QCOM_QMP
 config PHY_QCOM_QMP_COMBO
 	tristate "Qualcomm QMP Combo PHY Driver"
 	default PHY_QCOM_QMP
+	depends on TYPEC || TYPEC=n
 	select GENERIC_PHY
 	select MFD_SYSCON
 	help
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b44c029ef23f..d1300696d3e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -20,6 +20,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/usb/typec.h>
+#include <linux/usb/typec_mux.h>
 
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
@@ -1320,15 +1321,18 @@ struct qmp_combo {
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
+	unsigned int usb_init_count;
 
 	struct phy *dp_phy;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
+	unsigned int dp_init_count;
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
 
+	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
 
@@ -2467,14 +2471,14 @@ static int qmp_combo_dp_calibrate(struct phy *phy)
 	return ret;
 }
 
-static int qmp_combo_com_init(struct qmp_combo *qmp)
+static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *com = qmp->com;
 	int ret;
 	u32 val;
 
-	if (qmp->init_count++)
+	if (!force && qmp->init_count++)
 		return 0;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -2536,11 +2540,11 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	return ret;
 }
 
-static int qmp_combo_com_exit(struct qmp_combo *qmp)
+static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	if (--qmp->init_count)
+	if (!force && --qmp->init_count)
 		return 0;
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
@@ -2560,12 +2564,14 @@ static int qmp_combo_dp_init(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
-	ret = qmp_combo_com_init(qmp);
+	ret = qmp_combo_com_init(qmp, false);
 	if (ret)
 		goto out_unlock;
 
 	cfg->dp_aux_init(qmp);
 
+	qmp->dp_init_count++;
+
 out_unlock:
 	mutex_unlock(&qmp->phy_mutex);
 	return ret;
@@ -2577,7 +2583,9 @@ static int qmp_combo_dp_exit(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
-	qmp_combo_com_exit(qmp);
+	qmp_combo_com_exit(qmp, false);
+
+	qmp->dp_init_count--;
 
 	mutex_unlock(&qmp->phy_mutex);
 
@@ -2706,16 +2714,18 @@ static int qmp_combo_usb_init(struct phy *phy)
 	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
-	ret = qmp_combo_com_init(qmp);
+	ret = qmp_combo_com_init(qmp, false);
 	if (ret)
 		goto out_unlock;
 
 	ret = qmp_combo_usb_power_on(phy);
 	if (ret) {
-		qmp_combo_com_exit(qmp);
+		qmp_combo_com_exit(qmp, false);
 		goto out_unlock;
 	}
 
+	qmp->usb_init_count++;
+
 out_unlock:
 	mutex_unlock(&qmp->phy_mutex);
 	return ret;
@@ -2731,10 +2741,12 @@ static int qmp_combo_usb_exit(struct phy *phy)
 	if (ret)
 		goto out_unlock;
 
-	ret = qmp_combo_com_exit(qmp);
+	ret = qmp_combo_com_exit(qmp, false);
 	if (ret)
 		goto out_unlock;
 
+	qmp->usb_init_count--;
+
 out_unlock:
 	mutex_unlock(&qmp->phy_mutex);
 	return ret;
@@ -3203,6 +3215,65 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, dp_np);
 }
 
+#if IS_ENABLED(CONFIG_TYPEC)
+static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
+				      enum typec_orientation orientation)
+{
+	struct qmp_combo *qmp = typec_switch_get_drvdata(sw);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	if (orientation == qmp->orientation || orientation == TYPEC_ORIENTATION_NONE)
+		return 0;
+
+	mutex_lock(&qmp->phy_mutex);
+	qmp->orientation = orientation;
+
+	if (qmp->init_count) {
+		if (qmp->usb_init_count)
+			qmp_combo_usb_power_off(qmp->usb_phy);
+		qmp_combo_com_exit(qmp, true);
+
+		qmp_combo_com_init(qmp, true);
+		if (qmp->usb_init_count)
+			qmp_combo_usb_power_on(qmp->usb_phy);
+		if (qmp->dp_init_count)
+			cfg->dp_aux_init(qmp);
+	}
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static void qmp_combo_typec_unregister(void *data)
+{
+	struct qmp_combo *qmp = data;
+
+	typec_switch_unregister(qmp->sw);
+}
+
+static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+{
+	struct typec_switch_desc sw_desc = {};
+	struct device *dev = qmp->dev;
+
+	sw_desc.drvdata = qmp;
+	sw_desc.fwnode = dev->fwnode;
+	sw_desc.set = qmp_combo_typec_switch_set;
+	qmp->sw = typec_switch_register(dev, &sw_desc);
+	if (IS_ERR(qmp->sw)) {
+		dev_err(dev, "Unable to register typec switch: %pe\n", qmp->sw);
+		return PTR_ERR(qmp->sw);
+	}
+
+	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
+}
+#else
+static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+{
+	return 0;
+}
+#endif
+
 static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
@@ -3403,6 +3474,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = qmp_combo_typec_switch_register(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child nodes. */
 	usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
 	if (usb_np) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
