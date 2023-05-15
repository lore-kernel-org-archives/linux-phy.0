Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2E0C7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCdUxdiLwu0VRZob3AGU2rIf0YwFBuXp85kdvVwRiRY=; b=raVCYW3PNLUKUB
	E0WQGmeCeJ5VHuiMC/UEAeGylOm+7Z1ILiBhma0BwjBtKI7uQtmWJ3Ew9nJAAVM8kdO9NekwaNbvy
	9nWEDFseLlOKw9z32n2TnVVOu/CrfxBuSoAD1EUAtRI3tJzlaiW2R8542kEbueDd7byfI7fGCpX/b
	zOjeEDN7Yksxp1IoE32gibmnmR3oC8gm3KVjb0Vnfv25e1kMGh7uMWPYhmHlRf+GipKDaRpA42P6E
	SctRtLXDi7slY15PxjYD3Fb39ywhPN3bEQEEW4E7/SACHh5fbYrPVZT2dD2eEZ4Wt6a2UMwLzwVtL
	ajaLIl0GPW54iKrhE3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsW-000jlK-1O;
	Mon, 15 May 2023 03:28:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsP-000jhF-2N
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:27:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34F2fgDI019281;
	Mon, 15 May 2023 03:27:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=AtRX/qSBSMCTWrEEGHVswKX4kC3xR2PNZrpF18A6pGM=;
 b=FB1ZmtJ+H84TA24AXycrRfO5425w2vSvHlMOkiXZB0XPRh8dUIKM+WcTNXW/oRkSayIL
 5HcLgg0rozME5/IC+Qy+W0d+PRNFRXgRBIEgDJYajuThuHFE2Yyi5ivWfFcWdXNF8PIW
 d2zOCzwxL5dm0jG9oymM+6gOGlaIrG+0ifoPgF3mWdk9mlcO1pwdAbMm+AuKEEg9wHrU
 7/6czGUEIzIchtmVJVyjxgqQ/wn7K3zBZh40ra8DMS5Jytg00WWEgXugHCX3HI8MX5v0
 xyCLte6JXOPVt2afqj2V1WVKmAwbFhYoExt49oXcRcP4E7FCYnhfCEcb6u9MfVL1fUPJ Hw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qj2n2akat-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:52 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34F3RpWI025229
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:51 GMT
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
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, Steev Klimaszewski <steev@kali.org>,
        Johan
 Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 6/8] phy: qcom-qmp-combo: Introduce drm_bridge
Date: Sun, 14 May 2023 20:27:41 -0700
Message-ID: <20230515032743.400170-7-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515032743.400170-1-quic_bjorande@quicinc.com>
References: <20230515032743.400170-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: lDw3V9WrB2FaqAY-vPO1I9Bq1I9_2eMO
X-Proofpoint-GUID: lDw3V9WrB2FaqAY-vPO1I9Bq1I9_2eMO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-15_01,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305150028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202757_903599_073D21B7 
X-CRM114-Status: GOOD (  23.28  )
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

The QMP combo PHY sits in an of_graph connected between the DisplayPort
controller and a USB Type-C connector (or possibly a redriver).

The TCPM needs to be able to convey the HPD signal to the DisplayPort
controller, but no directly link is provided by DeviceTree so the signal
needs to "pass through" the QMP combo phy.

Handle this by introducing a drm_bridge which upon initialization finds
the next bridge (i.e. the usb-c-connector) and chain this together. This
way HPD changes in the connector will propagate to the DisplayPort
driver.

The connector bridge is resolved lazily, as the TCPM is expected to be
able to resolve the typec mux and switch at probe time, so the QMP combo
phy will probe before the TCPM.

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---

Changes since v2:
- None

Changes since v1:
- Wrap DRM-related code in CONFIG_DRM guard
- Inroduce DRM-dependencies in Kconfig
- Dropped dev_err_probe() usage

 drivers/phy/qualcomm/Kconfig              |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 46 +++++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 45330e0f66fe..67a45d95250d 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -60,8 +60,10 @@ config PHY_QCOM_QMP_COMBO
 	tristate "Qualcomm QMP Combo PHY Driver"
 	default PHY_QCOM_QMP
 	depends on TYPEC || TYPEC=n
+	depends on DRM || DRM=n
 	select GENERIC_PHY
 	select MFD_SYSCON
+	select DRM_PANEL_BRIDGE if DRM
 	help
 	  Enable this to support the QMP Combo PHY transceiver that is used
 	  with USB3 and DisplayPort controllers on Qualcomm chips.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d1300696d3e1..33cc99d9c77d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -22,6 +22,8 @@
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_mux.h>
 
+#include <drm/drm_bridge.h>
+
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
 #include "phy-qcom-qmp.h"
@@ -1332,6 +1334,8 @@ struct qmp_combo {
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
 
+	struct drm_bridge bridge;
+
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
@@ -3274,6 +3278,44 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_DRM)
+static int qmp_combo_bridge_attach(struct drm_bridge *bridge,
+				   enum drm_bridge_attach_flags flags)
+{
+	struct qmp_combo *qmp = container_of(bridge, struct qmp_combo, bridge);
+	struct drm_bridge *next_bridge;
+
+	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
+		return -EINVAL;
+
+	next_bridge = devm_drm_of_get_bridge(qmp->dev, qmp->dev->of_node, 0, 0);
+	if (IS_ERR(next_bridge)) {
+		dev_err(qmp->dev, "failed to acquire drm_bridge: %pe\n", next_bridge);
+		return PTR_ERR(next_bridge);
+	}
+
+	return drm_bridge_attach(bridge->encoder, next_bridge, bridge,
+				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+}
+
+static const struct drm_bridge_funcs qmp_combo_bridge_funcs = {
+	.attach	= qmp_combo_bridge_attach,
+};
+
+static int qmp_combo_dp_register_bridge(struct qmp_combo *qmp)
+{
+	qmp->bridge.funcs = &qmp_combo_bridge_funcs;
+	qmp->bridge.of_node = qmp->dev->of_node;
+
+	return devm_drm_bridge_add(qmp->dev, &qmp->bridge);
+}
+#else
+static int qmp_combo_dp_register_bridge(struct qmp_combo *qmp)
+{
+	return 0;
+}
+#endif
+
 static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
@@ -3478,6 +3520,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = qmp_combo_dp_register_bridge(qmp);
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
