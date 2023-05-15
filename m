Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B8A3C7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9HumzfpLKjN22180RzL5XRewFiDHshUFd4EN3wvR4c=; b=srbSjpH72EwGcN
	gcXcQRahs/Im7XF19brcHIol7B+na6s4UkxOCdMbuBMy5B4xsTryp424Dvja12O3L7CAcfsSDJ9tv
	9UuGvGRBPcxE1VeAQY1v6B3pn0GPK8CX+7ArWt9n5m/Ldu3U5Mb6OlnYEf/Q3XZiJ1SGDcnOv0Bto
	aWTkWNOQ9ug8VEuBJ65Cdejau0qrUEF+g2GK7LKS5QNuzVNBgWXqpPCgi8CsKfMFebdCfJSyGWhDN
	lrQ2OjbtzfkFdPpqxQ/C8MjnRMnPpIBp5xyMsn8RmnU/T4iIXOeB+criVlLMycF0bcbPuqhRgHqw2
	zcD57tjSEJdLoj2UM0tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsT-000jjl-01;
	Mon, 15 May 2023 03:28:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsN-000jgd-23
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:27:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34F2tlTC004818;
	Mon, 15 May 2023 03:27:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=MNvnVFeWRYUjOCYds7y1qm72Kj+/D0FuA+c3bRNtH98=;
 b=Hn+bqfW2KuzAwVulsHfGTBKlE+ZjDGGYEvmgMPQdeXNhBvlWCsfhvVX7MW42dtVZPhSB
 rblovf9J8GppTrCG2O6uxgdgEiNwWmxW3gqwWHRdSff649OXwxiK4ALV/dfGz9Nh/4vC
 mKTNqW8EATshPHw+Ryk+awxFQl+yZgq58kK5SiMM7eq2VtYfxA7/fmaPebxasc/pVEN5
 sqiTKibC0TvdtZwKA/1R2ZPLWkgIb1uY31D1DxJd8bXgFlUYxY3KxtMlUkU7aVHXLpjG
 RW4fGKul4kLJmO+8BZnehVAd19XuaF6GZ4BmRezm4SkxAQojtMwpKlFsYXbtyRyUGczF NQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qj08mjtqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:51 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34F3RpgQ030265
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:51 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sun, 14 May 2023 20:27:51 -0700
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
Subject: [PATCH v3 7/8] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
Date: Sun, 14 May 2023 20:27:42 -0700
Message-ID: <20230515032743.400170-8-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515032743.400170-1-quic_bjorande@quicinc.com>
References: <20230515032743.400170-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: TTTEG4FhpWhMBXHghy_x8xExSAan60Sn
X-Proofpoint-GUID: TTTEG4FhpWhMBXHghy_x8xExSAan60Sn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-15_01,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305150028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202755_675237_322E2ABB 
X-CRM114-Status: GOOD (  15.82  )
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
- DP input is port@2

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 28 ++++++++++++++++---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi    | 34 +++++++++++++++++++++++
 2 files changed, 58 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 5b25d54b9591..e22f9b65b7b6 100644
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
 
@@ -386,7 +386,7 @@ &mdss0_dp0 {
 
 &mdss0_dp0_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con0_ss>;
+	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
 &mdss0_dp1 {
@@ -395,7 +395,7 @@ &mdss0_dp1 {
 
 &mdss0_dp1_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con1_ss>;
+	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
 &mdss0_dp3 {
@@ -644,9 +644,19 @@ &usb_0_qmpphy {
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
@@ -671,9 +681,19 @@ &usb_1_qmpphy {
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
index 8fa9fbfe5d00..1fb42067d0d1 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2835,6 +2835,23 @@ usb_0_qmpphy: phy@88eb000 {
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
@@ -2871,6 +2888,23 @@ usb_1_qmpphy: phy@8903000 {
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
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
