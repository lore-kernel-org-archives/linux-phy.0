Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF71CEE4993
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXwepx0dDNIJxPp8EBnj1PkS6BfwOTP8e0VaP2/3XvU=; b=lyf/imics+/GYl
	YLyvGmJPupMWmC7fTVzbaIOdJFfeF6sJtw1gl24I87pENSuEKdt7dPi6crRRhY0F7kc8A/S/Gz56Q
	/zx22WHITk3+P1f0/Kr7VOaGNXYhc5E/6RxzXqQujBCErJ9QW6PIWDKbepl0y6kozKej9AUyH7Vvf
	nWk3D2PipwfGhvicIBA86nO3YYnXN12IK3FIYxndvOejXQ76fxDtDMf2woyF5ZhMY7D3Yjlv+nLaP
	AjJts9mWRAQuq8AHGdKFFrIie/Pnasm78cfhIdYm9ioLM7v45NN3luaQ94OVc2EquzE4yjw2lP8XF
	XpJdDF6x9aUfWBlWJMXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYOeY-00FgPc-1k;
	Tue, 22 Aug 2023 10:30:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYOeU-00FgLb-0L;
	Tue, 22 Aug 2023 10:30:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37MA9Ejc014158;
	Tue, 22 Aug 2023 10:30:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=4UM9Y352igvtobdLrpEaaqCVDwff36bHTSykSbCKUxc=;
 b=DY1axGLhNRVpYoZQJV0v99MOATqfvTQ28s1ikJoQnpCWRy4/VCEVluXaD++dSvVmMf0Q
 0ujJjSPaCEXpu/mYDgTJW6tTSqRzwFy9Qo4jwzbdxvD6upK71hHHebsSlXt5g5Zb/a8b
 KIL7mL7vnWfs1alVPj1kroD1Zi/3zuzamLXEKwKyHP1FF8E2AbgLMCGit6IKAptdZF3I
 WPE9LaoJ5eCqd0OsqdBj9jar+TrZDgn2XdaIFIWRCNbbDdrSQDn9PFgA07ukEil5fmox
 y8cGny5VQaaCO9TiMdEdnBamM81OWUrDaQEt69APRRUyg49jllCQS/AB4eRccDz4LL// jA== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3smgeq12s0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 10:30:10 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37MAU9sl011171
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 10:30:09 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 22 Aug 2023 03:30:03 -0700
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
Subject: [PATCH v9 3/4] arm64: dts: qcom: ipq5332: Enable USB
Date: Tue, 22 Aug 2023 15:59:14 +0530
Message-ID: <27d6303008be83131048ddf2ecef91cec9519ee2.1692699472.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1692699472.git.quic_varada@quicinc.com>
References: <cover.1692699472.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: yJup65XMegpc9ai2MOcFMtaEq0HbUduj
X-Proofpoint-ORIG-GUID: yJup65XMegpc9ai2MOcFMtaEq0HbUduj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-22_10,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=632
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308220079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_033022_267647_24E884DF 
X-CRM114-Status: GOOD (  14.18  )
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

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
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
index f96b0c8..53696f4 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
@@ -12,6 +12,15 @@
 / {
 	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
 	compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
+
+	regulator_fixed_5p0: regulator_s0500 {
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
+&usbphy0 {
+	vdd-supply = <&regulator_fixed_5p0>;
+
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb2_0_dwc {
+	dr_mode = "host";
+};
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
