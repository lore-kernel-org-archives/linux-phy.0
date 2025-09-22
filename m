Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC98BCAC5AC
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KYV60HrcWgY4dMBgmh+sVIHu22GQianFGDW6g8xrj4=; b=q9jNygV67lp/2o
	tkXBx1GFp+VbOEKocUJ9vshApKWDurg/R0Efq/Sgae/vGFWBh/tCsexyLzWhewQ7MobD1dcbGJqlO
	Cc0tm0DlKhnz4TiR+gHXadkMQdkpRE2jjbev8cr+4VWZj2v63AYvP7fMKwJEU6Y7NfJHJACbI9mK/
	BOAe/c/X2vuSjfjGg6nO5t5y9ezN3nXbqROgYKa8ZpGG7nFcDbNtQ2UQzZ0Ubl9hMnmQOxbOQvbL7
	f/irsHKEXNw5btlCGQ3QpuXRuPLGC88hN291H/qHLP5DVmIX1363n9B6brVtuaXXc1RkIybjlB6Fo
	sIdnHCEU0K0egrrdDcBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bOV-00000009YEE-32ct;
	Mon, 22 Sep 2025 07:55:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bOT-00000009YCO-2R7V
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 07:55:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LKj4Up022012;
	Mon, 22 Sep 2025 07:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5sCZH0rItkT
	0O/UxY54cPLKGJrfMJ9LJ+/8hSDXb78I=; b=XGSFlW3W8+0K7v8wIlNGpoyQ0CO
	SRH3xsXVkbqvUMPsrG34mBMyLcUKHoqKIcIG6aAr0Ms/c8JbyaYPrbfS7z8jAG02
	p6va0v7wRGgdMXXTeW6sdKChYlirMJE3IFEtQ6t6/sHUVkDg+XTGJUiEe1jYkL4B
	DtTAN4qT0r9lB0/gkm30HEaoGi3n8R2AVn4CTT1mr5Gb4CuNvpKnSzdUHnE/WnSs
	voW3VwPD6jXO9YyhI5tEbVw4JQYbXUo38sXpwICJ/JGTTr7v6AycSfxhtidQ0wof
	DIjtAjSfpV/PgRJ5wg47RqUTeT/81d3R1z54BFzybuU2i48aRaoTLe2PQIA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fbsad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:18 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 58M7tGKv022236;
	Mon, 22 Sep 2025 07:55:16 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 499nbm0544-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:16 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 58M7tGWr022219;
	Mon, 22 Sep 2025 07:55:16 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 58M7tFNA022211
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:16 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 94A51B75; Mon, 22 Sep 2025 15:55:14 +0800 (CST)
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
Subject: [PATCH v1 4/4] arm64: dts: qcom: Add PCIe 3 regulators for HAMOA-IOT-EVK board
Date: Mon, 22 Sep 2025 15:55:09 +0800
Message-Id: <20250922075509.3288419-5-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aBUZXnnV_fE_VZYTCwY3WSSvAYgy6VeK
X-Proofpoint-GUID: aBUZXnnV_fE_VZYTCwY3WSSvAYgy6VeK
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d100e6 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XGVIsFbTfmVoesHaU64A:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8E4vrbO/8oDx
 FNvruL/3cP+CPAtbd0ywJLsjSn8afhCbeK7UvKaWe7/P4T9kgtrPmxAEDzkWNlzA762KeUtwH9Q
 WbLdknkYrNgyULr5YrTZFr+KSvgycVJkClynLGhv+KnuzJm8yziTUNQZ+PE29lYDm2vWu+H4ah9
 1QgIS6lE5TjqwCu8RedFog9gOQBzjUc7ZP468QbM+8NrjLw12VLT03VTNo0RA3tiWj+pMh2WM/4
 95s+MhWamuhuo8szwNo2GnQeE2i9qxCUJYMmq5oNajo0f302OkUSbvuEtP+SYIcUwwV61oFWwHx
 LrYQ1HRL20LIuB3TACYfZUlKiATiICv15wfw2YK+/qkrTS/QUq4rLIV5oXTole19aFst641Vlvz
 EkVKgsK7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_005529_624915_E4194F56 
X-CRM114-Status: GOOD (  11.06  )
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

Specify the vddpe-3v3-supply regulator for PCIe3 using &vreg_wwan to
ensure proper power configuration.Describe the voltage rails of
the x8 PCI slots for PCIe3 port.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 48 ++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index f0e4abbcc1ac..0eb85d6cf4e9 100644
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
@@ -832,6 +874,12 @@ &mdss_dp3_phy {
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
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
