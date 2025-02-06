Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE458C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 12:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnnzmCinSGxEnOSuXZzAmIRmxIQ3n0GJdiyiVocIn60=; b=FQlSDEuWzqVhxM
	eX+R6fYbALNFEMeOucdLvHjhIbiztFIsKy4LgjGTIj9VjoRsVikhwzAgW0mqffqsbpfEkCTrcLUBf
	lNVpuHL9sPzOVvUWXSYqUGfZbU4rxxrDHQAzP4IUYrs3iiIOp1F1E98qdmzVL7DBWI3JiKYwCZ/xl
	fJhrJylKYhoi3x4giuSdRak+v1hDn98/8dZAe7II5VKl14dIWCiwfmKx+lA7Rq/r84XjMUiZD+jf3
	wlNrd3Ae3u+qlhvYXZ67IDGLVi1jMBpz+ZLSzB5FdhrsLTIgOlR+7G0562YlV1o2azzO5OyuaNh/6
	0zBnB+x2YUaS8AiSr/KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0vX-00000006Geo-2Uqa;
	Thu, 06 Feb 2025 12:24:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0vV-00000006GeQ-17G2
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 12:24:14 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5168bSBt014544;
	Thu, 6 Feb 2025 12:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DfqyjJkWm9NdxxgHyXjpin5tiSE7emGeMgefZAt6UQg=; b=QXCysDqEi1YtZQcW
	qsu3o10cR80OFoMGKyit/dEbpQDTOgxreCPmWH+dOgtQ3yHOQFeGA1KoW90OsMQm
	AHBcXTkaUrtYZyJQbUhOaM373XXRtl+EVegixuxtgTmyCY7jJ0OJ7Dg9c7AKj2QC
	EAcIZZNTUcjEG90KHeLezZGFQc0+Hp9IEwXGLBGZzBZuZpON4FBeOhs/2FM0GQh9
	WGWxsXj5D0mALS9B8JOuIciI43AMt+ELd/sLSUY7fMLMAmS/u5P/g+gbM6CW9jLd
	X0ycwr2alPPKGKj5GcWjxW95JiP9Uf8JRGpEs421tzWzYUnh9ImxWHE3XhSkzK2H
	M+qzGg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44msr10k57-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Feb 2025 12:24:03 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 516CJ0v1006531
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 6 Feb 2025 12:19:00 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 6 Feb 2025 04:18:54 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: Praveenkumar I <quic_ipkumar@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v10 7/7] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys and controllers
Date: Thu, 6 Feb 2025 17:48:03 +0530
Message-ID: <20250206121803.1128216-8-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206121803.1128216-1-quic_varada@quicinc.com>
References: <20250206121803.1128216-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EFIWeUUR_Hmy9O_KcFqQqOkWnBIoJvBp
X-Proofpoint-GUID: EFIWeUUR_Hmy9O_KcFqQqOkWnBIoJvBp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_03,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502060102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_042413_312827_4C737BC2 
X-CRM114-Status: GOOD (  10.37  )
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

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Enable the PCIe controller and PHY nodes for RDP 441.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v5: Add 'Reviewed-by: Konrad Dybcio'

v4: Fix nodes sort order
    Use property-n followed by property-names

v3: Reorder nodes alphabetically
    Fix commit subject
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 76 +++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
index 846413817e9a..79ec77cfe552 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
@@ -32,6 +32,34 @@ &sdhc {
 	status = "okay";
 };
 
+&pcie0 {
+	pinctrl-0 = <&pcie0_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 39 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-0 = <&pcie1_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 47 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 48 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	status = "okay";
+};
+
 &tlmm {
 	i2c_1_pins: i2c-1-state {
 		pins = "gpio29", "gpio30";
@@ -40,6 +68,54 @@ i2c_1_pins: i2c-1-state {
 		bias-pull-up;
 	};
 
+	pcie0_default: pcie0-default-state {
+		clkreq-n-pins {
+			pins = "gpio37";
+			function = "pcie0_clk";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio38";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-up;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio39";
+			function = "pcie0_wake";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default: pcie1-default-state {
+		clkreq-n-pins {
+			pins = "gpio46";
+			function = "pcie1_clk";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio47";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-up;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio48";
+			function = "pcie1_wake";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+	};
+
 	sdc_default_state: sdc-default-state {
 		clk-pins {
 			pins = "gpio13";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
