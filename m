Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCCAED116F5
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 10:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iisr9DJEacMpBSANaH/MCOuLboQVexty9IfglAzQtfA=; b=c2/UFqMkxsatPC
	9iDlGOdZ2JZQWwKzaqomZKBrUXijgECcm+XuxguMPlTrBOZu+tKV50VYF2tifx4sa3ZYcs//BdN+p
	77rXElNEjc6mInYn1MOgxW8HkldXtslqHTEYNzVBVpOMnYdF2M4lJbhKJAadMCO+p+eaK955Bi62x
	NbqOnHuGPPrrYyilNT+1gzacMzFb47KpZhoTd3S+7LzcHaK0zZo0Gftty2KfwfpcjI0AMKnbpYB5m
	f3Yi93ygFHaLA7dUm57EGx2az7EqypMnfTomWlzvOpAJmZgS1ca7K5cu4DmBu/00J0qav7zjDbWVF
	N5QeqAuporyxqUghU36A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2v-00000000Jri-2k89;
	Fri, 28 Nov 2025 10:49:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2r-00000000JoU-2C5C
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 10:49:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8NlFM3122946;
	Fri, 28 Nov 2025 10:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jcb7UjYuRF7
	Kk1ZESMSEvoZFp6CnbD1dY2/oJphUd44=; b=b/ou/CpFFtKDe6tMCV3Gr58KZRo
	vH1OlDym4VO1rj3jMAetWRhJ/WkBM1qx9kTmJUd8nBwCh4R3cDm+8tctLVesnZWL
	jmn7MSuN41kNHCJv+hFsXXNBLNpil5oKPkT7VqIskg16ezy6vxw30Y5la8DpNElS
	lFTsH+fkLNbE7+1kcq8uNMxxbUcuzDukI31SuEcPizFbyMvRU4UDdUkqmkKhza1B
	ltQlCHkMcJjkB2c+S0eYCWPvwGM2TKgxdCKHLaPE+G04i2QyAj1clYVZHbnKOPGS
	bmG6XsB8ftq9ZSiqsDdA0oyMNM0HVRdgk2UyGvLVOLR4Z+tyMHeSWwHBfXQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aq58ugxbm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:38 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5ASAnZcZ023565;
	Fri, 28 Nov 2025 10:49:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4ak68mwd7w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:36 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5ASAnZJX023560;
	Fri, 28 Nov 2025 10:49:35 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5ASAnYZa023548
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:35 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 35E5AC38; Fri, 28 Nov 2025 18:49:32 +0800 (CST)
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
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v15 6/6] arm64: dts: qcom: monaco-evk: Enable PCIe0 and PCIe1.
Date: Fri, 28 Nov 2025 18:49:28 +0800
Message-Id: <20251128104928.4070050-7-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: flL4tRhcLux7cjxJm0Ij8qCU4twaNGy7
X-Authority-Analysis: v=2.4 cv=UKvQ3Sfy c=1 sm=1 tr=0 ts=69297e42 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=OvnWadEJ7cdrETkKXiEA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA3OCBTYWx0ZWRfX/X+CemgPEDa7
 SZDIGSmhMjkMnVFQ4sv5ijTst1G3LGh7/w+e5FHGaJQPzMLm9Qp8/oBi2xo1ynrX/gUmNmr8SyO
 WWeQx7ngpxYEC5uc0md2c/t+6Elie53toQ3PxgDT11Kh8ONfFR0wTTAmacZ9WAhyRHWj/HTUfm2
 oIxnTl4z8rOnDTlTkkzXm3bAHQXCg8ZBZg9A5POLu1tuayiKQjZmCARPwRVGUQ8ceulOwTayVTv
 3DC2w4WklO283Xds45QR8ZAA1Y8fNOJ9JitJQZnT/PBs1X2aBLmvsgkhRmskB6keDar/cTLJwxF
 e4j2RcSB19fmW9gYt+i8QXvu85BmUzcTPjU2jFce5gHV36VHB9Mp/StgypkhaSo/pmmg7wkf7ce
 Pdo54IIZAJa0lkF4ziI3gBH6Sy5Vhw==
X-Proofpoint-ORIG-GUID: flL4tRhcLux7cjxJm0Ij8qCU4twaNGy7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024945_565663_61597C78 
X-CRM114-Status: UNSURE (   8.99  )
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

From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>

PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
Hence, enable the PCIe0 and PCIe1 controller and phy-nodes.

Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 85 +++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..5b9966bd6c3c 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -400,6 +400,44 @@ &iris {
 	status = "okay";
 };
 
+&pcie0 {
+	pinctrl-0 = <&pcie0_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&pcieport0 {
+	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
+};
+
+&pcieport1 {
+	reset-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+};
+
 &qupv3_id_0 {
 	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
@@ -435,6 +473,30 @@ &serdes0 {
 };
 
 &tlmm {
+
+	pcie0_default_state: pcie0-default-state {
+		wake-pins {
+			pins = "gpio0";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		clkreq-pins {
+			pins = "gpio1";
+			function = "pcie0_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio2";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {
 			pins = "gpio5";
@@ -458,6 +520,29 @@ qup_i2c1_default: qup-i2c1-state {
 		bias-pull-up;
 	};
 
+	pcie1_default_state: pcie1-default-state {
+		wake-pins {
+			pins = "gpio21";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		clkreq-pins {
+			pins = "gpio22";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio23";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	qup_i2c15_default: qup-i2c15-state {
 		pins = "gpio91", "gpio92";
 		function = "qup1_se7";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
