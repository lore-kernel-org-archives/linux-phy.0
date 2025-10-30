Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46DACCCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nHZdomoDOTc2OGAKfmjnrfz+pr0ZSIGbJCuODGc3zc=; b=yrUYE3rc5Ka6Pa
	jdmElpbMEyalin9na/Ay6+/fsKkwHq96y9/Ff+VDqV1ZhRYjGR3oCkQUvlpf1W5lITo6rrjKbe6e+
	kJZwrJnsfdVw9BlWheazNaJFbD9pEDu/DTe07tnQgsDsmEIO+kjh3NUi+LhMTJQbwvNnaNNmz+LT1
	tnm3ZLvVcQ5GTjdDs13N5rOqRIgbJJ/cwPdvqqsJOfn27cKB2e/Q21sn5XKALiHrFrNlTIg/wBVMM
	SLkHrCWQ/YQnQvblV4rOAAn6mtZSX1mo5Rt3Lg9/JY8hTFtO5yWs5aJ6ALRV0uooPGvFADjK2aMFe
	62uuDRB+SnTx9KA6Apdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOKV-00000003n7Y-3Xor
	for linux-phy@archiver.kernel.org;
	Thu, 30 Oct 2025 08:48:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOKS-00000003n4F-0UCV
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 08:48:21 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TNDOom569432;
	Thu, 30 Oct 2025 08:48:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=T8kDteBa32Z
	Z3REFXFeQzifFsW38kLJueXZX9kgf+Kw=; b=b8mPjh42h3BOIcpGEpU+E+XlgWL
	b6GMFXVbvY/nsbSaltNx8I5h7LCU1/sK+I13YEz4yRDB+kO+XL2mULjb34wHQklk
	IrK52lOJDlW/1uf9MXLtsuGhiA2JYBzZyk+Gtrfb8PxDyL0yECykHHjsbGHlUr0x
	z3lc3RNmRxdOEX7YdnRA+R/Bfe01zMXK6oWYazMtXjm7tgs64iSAiS2n/a2QQj5b
	5xyiqr0YY0b6TCT7UKBl7k8UuO+xa4Hckd4RGFwucU/quY8V49N8WrD0tHt7AuNw
	6bNfyTjDeHc8EjjDuB2XFjJ+0LXI2gwrcoFllSEnrWTr7I7S9yhQDsXV62Q==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3m0bk4kx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:11 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 59U8m8jl027984;
	Thu, 30 Oct 2025 08:48:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4a0qmmec4m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:08 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59U8m8Xa027969;
	Thu, 30 Oct 2025 08:48:08 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 59U8m7iQ027966
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Oct 2025 08:48:08 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 476087AF; Thu, 30 Oct 2025 16:48:06 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: Add PCIe 3 regulators for HAMOA-IOT-EVK board
Date: Thu, 30 Oct 2025 16:48:04 +0800
Message-Id: <20251030084804.1682744-5-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com>
References: <20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 3XuDuN8aZ6fFOiyJtTNJC3iElh85e0D1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3MSBTYWx0ZWRfX7h34hR5FK3ra
 R/Uk51mXBD9ivVvURO0AkbVDjHJgoMH+u+g+qDABZfe3I80tk7/TsZY7rzn79rHUOD3qsSpn+Bi
 ZHgX58yi0hAKKspVt3XnfT5C83WhUUK6iIip8jTvtLnoa3ROkbno1F8q3ROzKJKVe+WbGkA452K
 WLebAFx0i/0Hx1LeXyMiDefW2Kf5DUSGrtPV7mWbI50ZhjZxoG+LBF30CHjE31dTF0ypBwyGA0u
 2pK8iB8DmiClAr4LzYtfNGFPoZAIFbpXZqBUG9Y5upFHx3zIw3iuS9kcbAKYUn/riP+k/RZdum+
 2N8Gvd0XBWK5YsgbxMlIN+GEvV60om7qBPmGIeGZL6cisl78nLsBcySSweZG5Gp3cNXgtlSX622
 aPy5tGMydHZwwRa8rUqnm15P34PbwQ==
X-Proofpoint-GUID: 3XuDuN8aZ6fFOiyJtTNJC3iElh85e0D1
X-Authority-Analysis: v=2.4 cv=YLySCBGx c=1 sm=1 tr=0 ts=6903264c cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=sPBEuoHp8yVuwt2A19AA:9 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_014820_272940_C0827971 
X-CRM114-Status: GOOD (  10.85  )
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

HAMOA-IOT-EVK board includes a PCIe3 controller and x8 slot that require
proper power rail and control signal configuration. This update adds
`vddpe-3v3-supply` and `regulator-pcie-12v` to provide 3.3V to the PHY
and 12V to the slot for external devices.

It also introduces PM GPIOs to manage power enable and reset signals,
ensuring stable power sequencing and reliable PCIe3 operation.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 24c2dcef0ba8..0984a6eed226 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -414,6 +414,48 @@ vreg_wwan: regulator-wwan {
 		regulator-boot-on;
 	};
 
+	vreg_pcie_12v: regulator-pcie-12v {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_PCIE_12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+
+		gpio = <&pm8550ve_8_gpios 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&pcie_x8_12v>;
+		pinctrl-names = "default";
+	};
+
+	vreg_pcie_3v3_aux: regulator-pcie-3v3-aux {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_PCIE_3P3_AUX";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmc8380_3_gpios 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&pm_sde7_aux_3p3_en>;
+		pinctrl-names = "default";
+	};
+
+	vreg_pcie_3v3: regulator-pcie-3v3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_PCIE_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmc8380_3_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&pm_sde7_main_3p3_en>;
+		pinctrl-names = "default";
+};
+
 	sound {
 		compatible = "qcom,x1e80100-sndcard";
 		model = "X1E80100-EVK";
@@ -844,6 +886,12 @@ &mdss_dp3_phy {
 	status = "okay";
 };
 
+&pcie3_port {
+	vpcie12v-supply = <&vreg_pcie_12v>;
+	vpcie3v3-supply = <&vreg_pcie_3v3>;
+	vpcie3v3aux-supply = <&vreg_pcie_3v3_aux>;
+};
+
 &pcie5 {
 	vddpe-3v3-supply = <&vreg_wwan>;
 };
@@ -872,6 +920,17 @@ usb0_3p3_reg_en: usb0-3p3-reg-en-state {
 	};
 };
 
+&pm8550ve_8_gpios {
+	pcie_x8_12v: pcie-12v-default-state {
+		pins = "gpio8";
+		function = "normal";
+		output-enable;
+		output-high;
+		bias-pull-down;
+		power-source = <0>;
+	};
+};
+
 &pm8550ve_9_gpios {
 	usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 		pins = "gpio8";
@@ -883,6 +942,26 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 	};
 };
 
+&pmc8380_3_gpios {
+	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
+		pins = "gpio8";
+		function = "normal";
+		output-enable;
+		output-high;
+		bias-pull-down;
+		power-source = <0>;
+	};
+
+	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
+		pins = "gpio6";
+		function = "normal";
+		output-enable;
+		output-high;
+		bias-pull-down;
+		power-source = <0>;
+	};
+};
+
 &pmc8380_5_gpios {
 	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
 		pins = "gpio8";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
