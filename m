Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57B9DC77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 03:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCKW7oLQ/1R2JmAxfmAH8J4PZxQe4nqIqSDbF413Ia0=; b=DqyWroQpIUa/WW
	+TDmBp/fShDcmJtjevSfjgRDO1sp3IaE2xnI8CF/dC2XlywY4DT57YeFnKEcmpjD82ktsvmbt7sVj
	nI9MGAHWXBabLXTziY39pgwljBCj7aPjROXhSovxOrK1T+MGX+8jTKOiNFl29vrN011+Ngm9g8LqM
	sErjE0enu9ak6yQzyiEqI75Dsxl7swrgam5GZIYUBzNC0HPE0Pw5xIzndg2RZNdG36xFQqT/QexYi
	xZftOEf+aJy4VkTwkqpXYmstfAzxeafV/CicQ5PIDgqnMxNZrSahvjYeEEVEKGLF2s1vS2yPDkxR4
	rqHks//jWZ3+lIwXsrRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaNM-004rOS-01;
	Wed, 10 May 2023 03:20:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaNK-004rO6-1e
	for linux-phy@bombadil.infradead.org;
	Wed, 10 May 2023 03:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VSpBWj4ol0E6IB7HXoff5deMulcVtoB+WbL0g9ZkIzE=; b=qeWhSL9iv8uJurjVW0TAyDIT0F
	7AAhl/wcnToHsyYWdEeiNZYzws7TR+7uuHWZ7lPZOXxLYlnD2uNC5r/pSWXHHG+XjtQalfwtuAdit
	lZ9uwnmzeKXSgdAm5TPBgjVolM0q9r8dQncOKRHROeuJ73ITfcoqMYdBuu6o+dOk1pFFk/u+Muody
	f3/hIILeIHNgjn/EqUn6znwvw5NixH7rk7AmwMA0BwXaazdPn1IzykcAxDT+GIK0IvFJwsvFz5i8G
	Q+OKZR/TAUT0TS58Ce4hSqhGkEvmsa6c79bDhgplOXadAZ/aZyeh01+j2TcTSxauRQVPFOG29ykAj
	v6WsfLlg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMt-006oRq-1f
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 03:20:21 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A3FgbQ018060;
	Wed, 10 May 2023 03:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=VSpBWj4ol0E6IB7HXoff5deMulcVtoB+WbL0g9ZkIzE=;
 b=QWklK6SwfBA0v/WoOAw5jfD12W3+lILgmGMIgAUpUMy7FMJKq7OX7Xbs+vYH83iGO4x3
 udMty1wBEaAR9ntv0utMHpAfgj8MCBTW9blS1cOzzfZeiHo59vPjXEu54t+Hno2/KttA
 HbQUBbtISRZyyc1BqgkoeNFEr5pIutnSr7A/z4o+s8HQWa/7ouo6XqW7q8cZUZS9JBO4
 9vn4uyMPwU376g4Wizkv02rFC2SA4Cw1+PdjvPUM8QosRUUt4p3+C5560keVOET/4/A7
 Gx06wVO99MDNl+pu53ovm629MvJy111VG6SjLGfu8UykN8tGYr9VsOhOzYQmpnFLMfyM 0A== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qfw3d0jwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:39 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34A3JcYB016035
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:38 GMT
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
Subject: [PATCH v2 8/8] arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
Date: Tue, 9 May 2023 20:19:30 -0700
Message-ID: <20230510031930.1996020-9-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uxAkSTmEYh-NYJ-7FPL9rxvBPITs3Zys
X-Proofpoint-GUID: uxAkSTmEYh-NYJ-7FPL9rxvBPITs3Zys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_16,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_042019_520109_9F51E5EF 
X-CRM114-Status: GOOD (  14.91  )
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

Following the CRD, connect the two QMP phys inbetween the USB Type-C
connectors and the DisplayPort controller, to handle orientation
switching.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
---

Changes since v1:
- None

 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 28 ++++++++++++++++---
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 5ef3f4c07d75..382f27946468 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -106,7 +106,7 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_con0_ss: endpoint {
-						remote-endpoint = <&mdss0_dp0_out>;
+						remote-endpoint = <&usb_0_qmpphy_out>;
 					};
 				};
 
@@ -141,7 +141,7 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_con1_ss: endpoint {
-						remote-endpoint = <&mdss0_dp1_out>;
+						remote-endpoint = <&usb_1_qmpphy_out>;
 					};
 				};
 
@@ -554,7 +554,7 @@ &mdss0_dp0 {
 
 &mdss0_dp0_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con0_ss>;
+	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
 &mdss0_dp1 {
@@ -563,7 +563,7 @@ &mdss0_dp1 {
 
 &mdss0_dp1_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&pmic_glink_con1_ss>;
+	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
 &mdss0_dp3 {
@@ -1140,9 +1140,19 @@ &usb_0_qmpphy {
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
@@ -1167,9 +1177,19 @@ &usb_1_qmpphy {
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
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
