Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18153C83F35
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUp73qNxAbh4MZkyjEn67pCvxO0M2Vk5uzpqorsvveM=; b=dys33SznKUayVC
	OAclhmEJswIxYVD6ak9EV+xlr6dG/9I8OmM+r5p1FUt/oFMR/YzswFsw04aBKOzV6g8ZGya+4fesy
	P+WRp3T2MXZyJ1y6ImnhITC5nP8Gq3Fg/Hq0lEvfwYYNgjj7Ivp2yiyBXfEyNnm4J2h2nIrSJtKH3
	FygN4I6Qs/9rAiHH/IGugEqrkz0gy76RGi6myHIOv/Eh/ywO/T4HGeIgCjHXyyw9CRFE3jQm0GI+d
	jhhW66zw1IDDICc7m9iNB8ovU4YaUQf/c0FgVR+WrKLXvVrz3g2q1KNbF4S6pjmZPZZ3PLHVNWKbY
	I1S+YvFrH5n5P3uCHmCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbdpS-00EwRC-2W;
	Thu, 31 Aug 2023 09:19:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbdp8-00EwKs-03;
	Thu, 31 Aug 2023 09:18:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V9FkmA032438;
	Thu, 31 Aug 2023 09:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=JBVmeThczU4S5pPVWVp7w8CJR6C+zyE04//QtvePgrY=;
 b=Rb+SM5s4f73rJLtbWhhHHrvTVB1IKYle1s3RnZysKFh2tmisR1TpoVdt4iqFlCqcBpvK
 uYd8WAbYhqcaHt59CfB8Htj0cs4UY+Pqskt54vFZ9C7ag8FgyqyOOUGwiS35nwmhgtL0
 OJemeOjH5J68LW/Bve97T0sfCsYLudZoR86EV0mtCIs62EwP+Pgfl9Cwn9HayAPhcSIe
 kWniB0RXrcquLjvXv1dB7lOsR63ei80ekEjGOC5k/TWPX2CItLOZLzISH/WhgFt7LkDL
 OdBQzQk6QEgKy3cecKhMFsOBm2WJH8UtMWTJapGdMk4Vl+RnEvqIQK/Fbb62TnqqWzdA rA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3st28aan7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 09:18:21 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37V9IK56005289
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 09:18:20 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 31 Aug 2023 02:18:14 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-phy@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v12 3/4] arm64: dts: qcom: ipq5332: Enable USB
Date: Thu, 31 Aug 2023 14:47:45 +0530
Message-ID: <d4c20505dd2103b5421eab7602aec4f83bd62dbe.1693468292.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1693468292.git.quic_varada@quicinc.com>
References: <cover.1693468292.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZL7D1g3AQTrrt573sgaY107flupT_twX
X-Proofpoint-GUID: ZL7D1g3AQTrrt573sgaY107flupT_twX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_07,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 mlxlogscore=656
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_021846_055204_3D0821DD 
X-CRM114-Status: GOOD (  14.83  )
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

Enable USB2 in host mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v12:
	usb2_0_dwc -> usb_dwc
	"make W=1 ARCH=arm64 -j16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
	"make W=1 ARCH=arm64 -j16 DT_CHECKER_FLAGS='-v -m' dt_binding_check DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml" passed
v11:
	Sort nodes in alphanumeric order
v10:
	regulator_s0500 -> regulator-s0500
	"make W=1 ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
v9:
	regulator_fixed_5p0: s0500 -> regulator_fixed_5p0: regulator_s0500
	"make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
v6:
	Add vdd-supply and corresponding regulator
v1:
	Enable usb-phy node
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
index f96b0c8..c224ffc 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
@@ -12,6 +12,15 @@
 / {
 	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
 	compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
+
+	regulator_fixed_5p0: regulator-s0500 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <500000>;
+		regulator-max-microvolt = <500000>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-name = "fixed_5p0";
+	};
 };
 
 &blsp1_spi0 {
@@ -79,3 +88,17 @@
 		bias-pull-up;
 	};
 };
+
+&usb {
+	status = "okay";
+};
+
+&usb_dwc {
+	dr_mode = "host";
+};
+
+&usbphy0 {
+	vdd-supply = <&regulator_fixed_5p0>;
+
+	status = "okay";
+};
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
