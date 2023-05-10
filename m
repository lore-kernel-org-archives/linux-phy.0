Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A20C77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 03:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Dkpk6gyOyKUIW0H74BAsL7A4DqgpTOGxkbNDcvjqKU=; b=3PW+UT67ZmI3zA
	wMxqr/DQhpTf/n9hje5zFd8ZnrFBGcgMazEDKBT85zIvrMC5lUPmo4cPIVRTYKAKehDAyn0/TCttN
	BTpc87msxUjlfriF4vwApymYEJp9AWDBpji54bPzQP1rKW8wufXuH+YgCHlJLFfizbJbIOwv8MQCt
	AZnw0Bz0++n1nUw5Ea9ZfVNizU5mp71uiH8GijxxnLS1zNEW428idoS7x9dAJ8OPyNYXT7uI+e+Q1
	UXRGC11qRtAj5EhuyNGBos/obsCOQao2TBOTLSaZNGjsHDIkGOVW6USvaLztRiJSXN1sMmHVkIAXQ
	DgClJneMCrB5qVoBc1wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaOq-004re6-0J;
	Wed, 10 May 2023 03:21:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaOo-004rdn-0C
	for linux-phy@bombadil.infradead.org;
	Wed, 10 May 2023 03:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VLjjbxbyLJgcjuKBoiwAEH2JhKcIvhislXcoK2XU9a4=; b=qFP6kQ+yEPjNc4kjRD6w7O6tbg
	tnEUzboBr5n3dZbjEKXIB0AZHC0nTJHYyJnek0SG/vu8Mv87M6ZKYSXKNP8XfWeoXWz5fEmik8ZWV
	IS3qgDRubIjL5yillWyajkjgHwm4Q/iI4s5zzzL5Oknz5Uj+A01TpCsqVtmINWpZeURGqIR1/WdH6
	C0gtQLqHdffhRMjZHJjTqDLv3V0jffS8YSm3kXf/okzUi3ykC7oAVcpfCEuNff5j3hhShqB8O8OjY
	DnILt/TxfmvgnyzYOW6q2F+JCQUuFUhiutbql+Y5FttUpMc8aD1f/cKncCc5dQXSyM9j1VhbbSn6p
	y/vA5iiA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMt-006oRF-0s
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 03:21:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A2jZWY027375;
	Wed, 10 May 2023 03:19:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=VLjjbxbyLJgcjuKBoiwAEH2JhKcIvhislXcoK2XU9a4=;
 b=iD9jMFccvWLQBKVfivDxRutLIF3koJ4AQQtl4L1F4sHtsmfaGY6ua2kocjBuwnmbrdPs
 utFIBe44VXIEJ7VCb4ivP7vPhqVJKURJ9m2ztwRc1YPqOwJfU/ERWYMnw5OkFYh2HVAM
 HhjQXm/Tbklm8z4/JTdV8AODWGvU5cbWGfuyokz/UB3cTeTnropEsZPk4rz8Mid3roB3
 TGiRXg42zo3O4zoKn7CNrBrtQsssfoy1tAk26+wLz/T+HyJSg6NczT9pfN7GKgSHAVC4
 /dLjOYmir+VGdN1+q4dDY9525DlvsQlEXZfchuby8qWDRFcMAvF7U7caCj1WOCEv+WWx CA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qf77g3dq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:38 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34A3JbUo016032
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:37 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 9 May 2023 20:19:37 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Johan Hovold <johan@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Steev
 Klimaszewski <steev@kali.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 7/8] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
Date: Tue, 9 May 2023 20:19:29 -0700
Message-ID: <20230510031930.1996020-8-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0rXELhCrcRv1Tgwxf2LYTKFJHGXYKhRT
X-Proofpoint-ORIG-GUID: 0rXELhCrcRv1Tgwxf2LYTKFJHGXYKhRT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_16,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 mlxscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305100024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_041956_265792_B56181DE 
X-CRM114-Status: GOOD (  16.22  )
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

With support for the QMP combo phy to react to USB Type-C switch events,
introduce it as the next hop for the SuperSpeed lanes of the two USB
Type-C connectors, and connect the output of the DisplayPort controller
to the QMP combo phy.

This allows the TCPM to perform orientation switching of both USB and
DisplayPort signals.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
---

Changes since v1:
- DP input is port@2

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 28 ++++++++++++++++---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi    | 34 +++++++++++++++++++++++
 2 files changed, 58 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 547277924ea3..33c973661fa5 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -64,7 +64,7 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_con0_ss: endpoint {
-						remote-endpoint = <&mdss0_dp0_out>;
+						remote-endpoint = <&usb_0_qmpphy_out>;
 					};
 				};
 
@@ -99,7 +99,7 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_con1_ss: endpoint {
-						remote-endpoint = <&mdss0_dp1_out>;
+						remote-endpoint = <&usb_1_qmpphy_out>;
 					};
 				};
 
@@ -412,7 +412,7 @@ &mdss0_dp0 {
 
 &mdss0_dp0_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con0_ss>;
+	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
 &mdss0_dp1 {
@@ -421,7 +421,7 @@ &mdss0_dp1 {
 
 &mdss0_dp1_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con1_ss>;
+	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
 &mdss0_dp3 {
@@ -670,9 +670,19 @@ &usb_0_qmpphy {
 	vdda-phy-supply = <&vreg_l9d>;
 	vdda-pll-supply = <&vreg_l4d>;
 
+	orientation-switch;
+
 	status = "okay";
 };
 
+&usb_0_qmpphy_dp_in {
+	remote-endpoint = <&mdss0_dp0_out>;
+};
+
+&usb_0_qmpphy_out {
+	remote-endpoint = <&pmic_glink_con0_ss>;
+};
+
 &usb_0_role_switch {
 	remote-endpoint = <&pmic_glink_con0_hs>;
 };
@@ -697,9 +707,19 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l4b>;
 	vdda-pll-supply = <&vreg_l3b>;
 
+	orientation-switch;
+
 	status = "okay";
 };
 
+&usb_1_qmpphy_dp_in {
+	remote-endpoint = <&mdss0_dp1_out>;
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_con1_ss>;
+};
+
 &usb_1_role_switch {
 	remote-endpoint = <&pmic_glink_con1_hs>;
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 0e691bb0120c..19686557efd0 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3006,6 +3006,23 @@ usb_0_qmpphy: phy@88eb000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_0_qmpphy_out: endpoint {};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_0_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		usb_1_hsphy: phy@8902000 {
@@ -3042,6 +3059,23 @@ usb_1_qmpphy: phy@8903000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		mdss1_dp0_phy: phy@8909a00 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
