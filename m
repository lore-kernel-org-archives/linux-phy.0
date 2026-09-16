Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79706C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZcCYybgFT8ZfUclw/1BzwajtYcegAsNmvQH3ab+sj8=; b=wkgH1ppbG/nw/6
	8dtLw+ooYtoUMU2PPovpVG+ptNzmg/ioZWfumsQvu1PfyoO4mPs12rtrdNUBuEQPiu9iKOFfmBnCD
	wyws49C3+ByKeFmOnuMeFvpd/7t+dWSDEbRVscAVKFV5SwBaHOvzGZUaOHq3AW+iUQ+1Ha8uQF1F1
	cdmyfTSmWpfUKn68KvFTH60tBwoH+QJ/ecslThRZEI2JATa+gL8osD3YfPRec7f9Q3KnLGMnjFDWM
	L2O8Jbg8l5RTcMHFmrFslICvzmzLbZaElu+t3bkh4TF7FAgA7JEcPVN7di4udHWc8DS4hjskT36kB
	43zzK4jK+HjIGB6iqYwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkp-00000008xQu-0mLB;
	Wed, 16 Sep 2026 10:20:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkm-00000008xOq-0frP
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:20:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G934Ca2226525;
	Wed, 16 Sep 2026 10:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uHQrENU2Ccz
	o6jNvt28DCQbBLJfWTht2Hv2/+1nxKaY=; b=dILHhaZr/MUiHlm4LYarOQwtm66
	OTwPGUKnOOvk50FusFz1dmyl+Lkcis9SZMOVQOKPeLEUHufOOz1Ou2+6XC+criiz
	4yp1csiY4HTnXBlnaSNTMwFNwDXO2dMFWriAj4QMtXUyn4DFA7cxPKIooj+cQIIa
	IQlFJFAiDGw1EE9Je5OxyLyktlxpMyPNBCzaZb5uF5GcWAZO2rLOKPPILW4DqUNB
	0J0K4YuiuppnsgOaL3KIbtNTvR588XZZQjW21b6v32hL+nhrqtL/ZaMheFiw3i4Y
	86otNCH3iLl19sm2h8UjeTWXYn/xNyLAeIPwYVvdDaM1FdMrWvY/Vzg4MlQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqah9urna-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:31 +0000 (GMT)
Received: from pps.filterd (aptaippmta02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 68GAKTmE1158184;
	Wed, 16 Sep 2026 10:20:29 GMT
Received: from cse-cd02-lnx.qualcomm.com (smtphost-taiwan.qualcomm.com [10.249.136.33])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 68GAKSZj1158149
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:29 +0000 (GMT)
Received: by cse-cd02-lnx.qualcomm.com (Postfix, from userid 4438065)
	id 614AC492DD; Wed, 16 Sep 2026 18:20:27 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v2 3/4] arm64: dts: qcom: qcs8300: Add qref and refgen supply for PCIe PHYs
Date: Wed, 16 Sep 2026 18:20:22 +0800
Message-ID: <20260916102023.2054761-4-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Authority-Analysis: v=2.4 cv=BtkIUoX5 c=1 sm=1 tr=0 ts=6aaa6d6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8 a=FwB9gf9yzOQQr6sl70UA:9
X-Proofpoint-ORIG-GUID: R5FSnhNRW4k7wtVLvx0IujqEtTYgiacA
X-Proofpoint-GUID: R5FSnhNRW4k7wtVLvx0IujqEtTYgiacA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfX91D9MC+OA9Md
 nSthrv4lNWHrwRNmvJCHaO9bZkvSrmdxigTplCEtEknvgweasFUQdA1k54EcdArJF22yykYJO0B
 Gg45DchyW2GV9Lq7Qpcnek9wV4CmIuDiKh5xFF4UWMcgWSo/O7562S0gSnWXcmM9xU0KAdb3qZh
 4KKS1NbMdecSKRi/QQOLyjNvM6nK4H1WpVdIdiAjXVvBQQ7JhBPfd9DIS/Ys95QMuDdxQAYiBl2
 cgJi7emMYYCjdLkNGBhhEpw4oY+PRqguZ8Ynk3iFi0SUynuqNYGWizX8yCdi08zA79QH5X30wBS
 lPJOZXttnioEPiNbDeje0x/GqAvJI1mjuMAhrWlLuTO/CIgdz28xjFhPeOuFW0P4clAUtlH5eWu
 8jN+mURqrMLff0/YMVz8mMQlQ8Lq5erxHBQxiI1EZSfc2l+2kAJxuxfQ5BQcseVR1hJtVh8RSsf
 knUbrH5NpsCklbz6KiQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfX+2ceslOybG3s
 CAi0mCnQyBlfaoim9jyJHwSDz2Ysx8O4uqR1cuTYL8HG6D5aP1tT8wx3qoWY71cTT6yTwNEEcx3
 8NCPhnDeFIq4dn3t4yW3BbvZd7XHlaw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_032036_325147_0D065E73 
X-CRM114-Status: GOOD (  11.59  )
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

The QMP PCIe PHYs on QCS8300 require dedicated qref and refgen voltage
supplies for stable operation. Without these supplies, the system may
occasionally crash.

Add vdda-qref-supply and vdda-refgen-supply in the board files
(QCS8300-RIDE, Monaco-EVK and Monaco-Monza-SoM), and add refgen-supply
in the SoC DTSI (monaco.dtsi) since refgen is an on-chip regulator
shared across boards. The PHY driver votes for refgen3 directly as a
workaround for a hardware issue where QREF actually depends on refgen3
rather than refgen2 as documented.

Fixes: 33967eadb215 ("arm64: dts: qcom: qcs8300-ride: enable pcie0 interface")
Fixes: cdb613a84527 ("arm64: dts: qcom: qcs8300-ride: enable pcie1 interface")
Fixes: 41e2424651f7 ("arm64: dts: qcom: monaco-evk: Enable PCIe0 and PCIe1.")
Fixes: 5238f4e7169f ("arm64: dts: qcom: Add Monaco Monza SoM")
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts        | 4 ++++
 arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi | 4 ++++
 arch/arm64/boot/dts/qcom/monaco.dtsi           | 4 ++++
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts      | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 9d17ef7d2caf..c1f63a4ee243 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -623,6 +623,8 @@ &pcie0 {
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
@@ -637,6 +639,8 @@ &pcie1 {
 &pcie1_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
index 36af1ad2105d..b1b3a7773bbe 100644
--- a/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
@@ -211,6 +211,8 @@ &pcie0 {
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
@@ -223,6 +225,8 @@ &pcie1 {
 &pcie1_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index cfe39f923224..a8e5f7abf686 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2433,6 +2433,8 @@ pcie0_phy: phy@1c04000 {
 
 			#phy-cells = <0>;
 
+			refgen-supply = <&refgen>;
+
 			status = "disabled";
 		};
 
@@ -2624,6 +2626,8 @@ pcie1_phy: phy@1c14000 {
 
 			#phy-cells = <0>;
 
+			refgen-supply = <&refgen>;
+
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 1ff39530ea3d..c7b36feca4ac 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -638,6 +638,8 @@ wifi@0 {
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
@@ -657,6 +659,8 @@ &pcieport1 {
 &pcie1_phy {
 	vdda-phy-supply = <&vreg_l6a>;
 	vdda-pll-supply = <&vreg_l5a>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
