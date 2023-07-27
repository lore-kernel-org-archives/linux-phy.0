Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A2EC001DC
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jul 2023 06:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOjSfv5XsoJcz1gQP+jRR/Um/7NGAGNRiCRBnvjTito=; b=HLi7S0TVq1U+kd
	Eg1sxCfqvm8t7ea0jKurEWZsC3Tu8Whmw3MCivELqn5+JiiOkpsOamL9YVA9KB4o/J5AGoQ3zf4MH
	ypFj+n2v4AXZi/qkBNQms9TCH5HrQm7QHpLs+lbtKHoTnOx4iYhB4POkkU4/SZBaxwS+1VVpBRXu6
	cPLF7Fwpfmerj1eU6MSbrwcvY7KMmEq/kPsEA8RbF3kQ2eYbu2vcjZzJvhQUFx8Kj8x7XMSI489Y5
	7ycMModJ3J3HxHp8VL/SV7UFSJdrLj36XcXHbtWncGFPpsSrd97hk5GhOBnSIh4+RfcFCg7UjjbhR
	XPfJAUxFylTnZ6yI/Syw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuaT-00CKND-2A;
	Thu, 27 Jul 2023 06:35:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuaK-00CKIh-0f;
	Thu, 27 Jul 2023 06:34:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36R51A78023300;
	Thu, 27 Jul 2023 06:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=qs9N8rfFTVwVbHCl3QcliIEoiN2bxMMKsoxhS6BMiLo=;
 b=pDzMUioX8xaokDthPscNoCE71n8tF/Zg+N3yS1AKkkrx3kwTFSHCRcbRkeN76PP6bl1a
 bGzZ1rY1/30n9I46iW4fdm5u/eF5wVIhaN+N9U46hSs8G99j+attJvBaXl+FooaB1/fM
 BVbuGTEl93tVXhmrhUgqAU90sLdlVSlmRGBzai6sE5ZaY1kANMfW7/EGvyCtePcEDrG1
 Be1WmjQaqUs7rcZJdizFH10pznocxK1C1BfP1IwLgpc7Pp7IcT6G52HBY0CeNWU+xubu
 tU90ctnLsJLRvbLvck4V/zSiPmPO5R3w36O/N/jZtwy8VdZ+Yo6QzokwQiw6akrY4/G6 5g== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s2v4tjrtq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jul 2023 06:34:27 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36R6YQZa001176
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jul 2023 06:34:26 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 26 Jul 2023 23:34:18 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <john.garry@huawei.com>, <peng.fan@nxp.com>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v6 4/5] arm64: dts: qcom: ipq5332: Enable USB
Date: Thu, 27 Jul 2023 12:03:17 +0530
Message-ID: <7440e75f006a179a9faab8a2346ec943a626c802.1690439352.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1690439352.git.quic_varada@quicinc.com>
References: <cover.1690439352.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: MOIrMSWsBzomJ1iGrIjpzIoIPStI2j9k
X-Proofpoint-GUID: MOIrMSWsBzomJ1iGrIjpzIoIPStI2j9k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-26_08,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxscore=0 bulkscore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=664 malwarescore=0 adultscore=0
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2306200000 definitions=main-2307270058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_233452_362018_EDB06A41 
X-CRM114-Status: GOOD (  13.85  )
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
v6:
	Add vdd-supply and corresponding regulator
v1:
	Enable usb-phy node
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
index f96b0c8..b4099a2f 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
@@ -12,6 +12,15 @@
 / {
 	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
 	compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
+
+	regulator_fixed_5p0: s0500 {
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
