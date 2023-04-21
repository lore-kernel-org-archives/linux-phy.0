Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E2CC77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 13:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsMzVygM5SgCl6hiK4yrqNJTCEnez4Z30Ew26gzj2Vc=; b=vMhpYxWScoGGqH
	a9pjk/E3XeE1CLb/vgZKGFSINo7ZWNuCUWczhpbGX7MFmViTw0oQnsBspZTJHhPvY+SPejI4TaQE4
	pR3mqe6UAZcUzGywiCtv3TcVdOw9Vde830n3vZ0NtAVzTb35mJ97QLvw6EuiaJaIHIniG4No4vQ3b
	CLmXvqpFweGmWAvuuBsEtsZURcHdKK3MsH6LRNaRh2ykoyEZo4yLxCI278FaWraP0gSdOINV54/GP
	yivebdS2cPgsyNuY+qDSZnF1KTHC0xmsxJArJhm8qfsgEW2AdgwY5NoWN/VseJHUxGxJLwpgpx41C
	/w4R11/hMR2nfY4F8a8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppr0Z-00B10e-00;
	Fri, 21 Apr 2023 13:41:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppr0W-00B0zz-27
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 13:41:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33LDUViu007028;
	Fri, 21 Apr 2023 13:40:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=vaATKEvIff/FfpRV6D3k8hDPCfL/mA87Q5z+Mae/UCE=;
 b=Ec2gM5X0eweHSVSA6zR41VuzPu6/vcUzfZdrEnDIB6oBz24IAvHoH7ClxqhltNFV/oAt
 z47swiXnLTLMGaLGKWPHhLC7G9HJi7NTNrm9iLSQhBBQfSMJtJPGvyLckTl8zMaMSN+U
 mqC+7PKfFEieAUK/amV34JmKYHtUohI1NVN+Np2q7a2ZDeDaKxfBwCStw+z9JVGozOGj
 ST+BjuyIMVo4pJ6fziDlcAAxioIFGt/GC2HjExlvnDKxm3JlVdqs3luOXpAtXe7aVYHV
 PuRFKW4mvJBaaIunkUh/eRJnMHVqjfF/Wv11FcUl5BF3pPXPeHvIGGBAvhbbPT0zouLf 7Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3thdr46c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:40:56 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LDeupL015600
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:40:56 GMT
Received: from hu-shazhuss-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 06:40:51 -0700
From: Shazad Hussain <quic_shazhuss@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: Shazad Hussain <quic_shazhuss@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v1 6/6] arm64: dts: qcom: sa8775p-ride: enable USB nodes
Date: Fri, 21 Apr 2023 19:09:21 +0530
Message-ID: <20230421133922.8520-7-quic_shazhuss@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CFPB77Ex6Nqnd0tXBvokhvyu6Q4POTNh
X-Proofpoint-GUID: CFPB77Ex6Nqnd0tXBvokhvyu6Q4POTNh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_06,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 mlxlogscore=612 mlxscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304210119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_064100_699728_10474AED 
X-CRM114-Status: GOOD (  13.34  )
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

Enable usb0, usb1 and usb2 nodes and their respective phy's.

Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 92 +++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index f238a02a5448..13ac60ddd170 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -291,6 +291,13 @@
 			  "BT_EN",
 			  "USB2_PWR_EN",
 			  "USB2_FAULT";
+
+	usb2_en_state: usb2-en-state {
+		pins = "gpio9";
+		function = "normal";
+		output-high;
+		power-source = <0>;
+	};
 };
 
 &pmm8654au_2_gpios {
@@ -306,6 +313,20 @@
 			  "USB1_PWR_ENABLE",
 			  "USB1_FAULT",
 			  "VMON_SPX8";
+
+	usb0_en_state: usb0-en-state {
+		pins = "gpio3";
+		function = "normal";
+		output-high;
+		power-source = <0>;
+	};
+
+	usb1_en_state: usb1-en-state {
+		pins = "gpio10";
+		function = "normal";
+		output-high;
+		power-source = <0>;
+	};
 };
 
 &pmm8654au_3_gpios {
@@ -426,6 +447,77 @@
 	status = "okay";
 };
 
+&usb_0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_en_state>;
+
+	status = "okay";
+};
+
+&usb_0_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_0_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
+&usb_1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb1_en_state>;
+
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
+&usb_2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb2_en_state>;
+
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
