Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5466C3ABBE
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN5M7wV+2NFPC51qE7Gw+w937Eaz+QAg0u1MZOlv7m0=; b=VF0nuivsdRlmDq
	nZ40SZMbnQI4XwIjEJE4ymml/DTKwOSPBDlCWyxArJK5GzUFA+qN1GbVxXY4/B0g7eV7qV19ZexUc
	qwauuzgN1zwBJOGjtZW7xLAKDVIuG3il0COO+55eXvU3Uk3sPhTVVT13GOMDyWvrMLf0r7KQF3CRy
	Wnr4lI/iXXANA35IDqR4aMM+NrvUxGtJEBbucKOePVVfgldRD8MQcLtamVrSo5PL9YU/o1aQbUvkj
	ucF5+YOEEmj0uxa8QAxa5p2ZgGPw4Z/YBeOZxUtFs3UNp2XgxBN8anFFgMc2dxbdWj8mQTIEGz9W3
	k7Ipe8TO6AfSUlZ1yMAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGg-0000000E3RM-1q66;
	Wed, 07 May 2025 03:16:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGf-0000000E3Qp-0jRt
	for linux-phy@bombadil.infradead.org;
	Wed, 07 May 2025 03:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DOXfUaLGj/gS+Zr8UFXyHwLt/ZH1hnsvAGyeGBCsfj0=; b=aeJrkRm4cGRMjhOUZOut0uxyI7
	BHRt9EvjARu2BQcEyo0IVEVh456WuZf+WhFiXCw8jcClJKYKTy9OlrwLbBmwOwV3yeCsBuwFp+iRr
	F+G+xQq/5UEI0JHPyBbULaSY+rw6D/uHS4XMjLYu9PoIdb6qnjX+rKNHlBiYuAPCsLp3ojfOTgaSc
	7E+JzMbkOrIG+kcFpgMTh95elTOc2V+A2i/EOZjUYtQqImj5r5NmMcUkFcALdEbvYIOC0yu/tHc5d
	ogboymnTS744moCSYfvyIjdCarXZe51YgLU510sWZODz/Z0I6zdYe8zmu716UD/sil2q9GqQ+DcGE
	oWDNMwoQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCVGb-0000000Fk8B-3Ga0
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:16:19 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471GtTG009542;
	Wed, 7 May 2025 03:16:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DOXfUaLGj/g
	S+Zr8UFXyHwLt/ZH1hnsvAGyeGBCsfj0=; b=XD2qtYemsf5zBz4LpLDUeM2fszM
	UrWqMZc9iooZckfe4tsFp1O0uawxYJmefzgvej4DL4UAuL2RVG2STgiT8LkPuTK/
	frtus/iisI6Nace2hBCPq2Avgdmnsh1PtIP3vrI9KYXZKHPE2x1tY2suDwpdiHeE
	66D6Du7Aj399yJDEShA/agighKRpcTag3bBTCVPeaRF7ChQH8Qt7Xe93tbfzYamT
	OtLIVy9kbbnnDaAcYDT612NGsKWv8JMce9NN8qGUAbONmPW9B24eb3Wa/XIfDgLF
	VY82p8nmAwSA5Pd3gV7y9SKxO6EIjPi91UnAhDh6rbWNFe9ZolkTeYbH4dQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fnm1heep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:08 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473G4pQ012833;
	Wed, 7 May 2025 03:16:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46dc7m60u3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:05 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473G5Vi012853;
	Wed, 7 May 2025 03:16:05 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5473G4n2012837
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:05 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id E30512F34; Wed,  7 May 2025 11:16:03 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v4 4/5] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
Date: Wed,  7 May 2025 11:15:58 +0800
Message-Id: <20250507031559.4085159-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: HOIEYZi6hlwWPlsBFi5qPmisEqY_yM82
X-Proofpoint-ORIG-GUID: HOIEYZi6hlwWPlsBFi5qPmisEqY_yM82
X-Authority-Analysis: v=2.4 cv=bLkWIO+Z c=1 sm=1 tr=0 ts=681ad078 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3zbVK_edIv7hY8gRkFcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyOCBTYWx0ZWRfX7Y0kALmhkTvZ
 SMiOQ2VOQTtsQCO9V5Jp1Idr6jK72j2ovB7Ry1Q3/Fa5dmGuiR7vJmJeIHib06LQRdv76c0+9/T
 +akBzq6sTLom+U2GEWkExq3Eot6xvATWMiJBmB5skc+OjaUG2R0cVI4x2DyS34JfDdjfTiELR9Y
 MMHzCSjWS2y8XAc/jJ037wa1EGy1A+UXCxj9clrtDEJJjdQNLbWKoaGRTnn2xq8Q9wbYUZYF+TI
 qs+15Kl2nDwk3VVatYHDo2xLemCEVz8h7XIVwg5xRq6NMUG9l9vsQvxA4X64pbSlZtH3N0fDOd6
 8dPAU7nkSaI2cm7uiefJzDFq0VQl86EvausjzEMazvMU2jxACXe/Yi7pId8rVQLZ5PG7mCSqxG3
 MQQKgghBoffnCWd3PRfx96oJoG2gaKSgcx7NEs88jCXD2T6BItYLIHA6Bim6yMSRES8y0Pzs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 spamscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_041618_424085_0F928E0F 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add platform configurations in devicetree for PCIe, board related
gpios, PMIC regulators, etc.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 2b5aa3c66867..c59647e5f2d6 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -217,6 +217,23 @@ &gcc {
 		 <&sleep_clk>;
 };
 
+&pcie {
+	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
 &pm8150_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio10";
@@ -244,6 +261,31 @@ &rpmhcc {
 	clocks = <&xo_board_clk>;
 };
 
+&tlmm {
+	pcie_default_state: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio90";
+			function = "pcie_clk_req";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio101";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio100";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &sdhc_1 {
 	pinctrl-0 = <&sdc1_state_on>;
 	pinctrl-1 = <&sdc1_state_off>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
