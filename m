Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF35EB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 11:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBqxdIo+yNAh5KDDdURSsEZdvnoPm4K9GQ1TtItUbkU=; b=rWayRRRICuSDn4
	SpHxZLhnCe2j1fJkR7uOJ9tYNu6dUotHXsDPnVMujiroAxKJ8KjzCdeexZr57VsF8sqAVXizc3CiI
	rdUax/vRTO8Jp9FvQ/qrgxynf/S0WVkn+PQLsOjQSbSBt4kNWFlK/AxHlyTBEnZHEiiFEyd46Kape
	iJz6H9MPLKRNsEyKzTXeT+DyaYT8+kn4413b93sMwQqylPJnQfJmuZRynqmi4ErkyceLQcyeMO7k4
	0B3UXKaRba3u6+v8H45pUpgn+wO3uTYFHVjZCVVnOFhz6s9GNuVCKjucwVkFB1sU7V1ZvR1MAIywK
	tUHeepwRu4dc6l2mkcnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYCT-00HPvV-0G;
	Wed, 12 Jul 2023 11:40:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYCM-00HPrI-0G;
	Wed, 12 Jul 2023 11:40:00 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36CAuAUF011103;
	Wed, 12 Jul 2023 11:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=TGk+Im8NTpyW9AxhodkHI2mrxi22Z76vikWTbZe/UuQ=;
 b=ZP/ZCfZ5IXiAKPZF3e7pe+rZN5wSOjGvJJuFf6rQ5mxfs4jU2D2wnH73QYhFat3DSh+O
 /V3Ku/lfQvLErcCALH77t+iGphJfXxfTJ3uzRA9osGPjsdnVwcTozn7fdUtB/VTmJsWa
 hqEcAoYC3yOpi88evDjXpAr9VD1s1DN61tL2RpRZZXYzPl/K9Ev0JQAIbzjuyOwGUcRb
 l0JVnvYUdrAjyeaLeM6Qaa4rxt6fsKJUy78lnVd5UuUSMkrz7Q+bqJcN/UXYbDRJaUvs
 2KUT4eXi6ta5tZIPuVZQxqmzgb2UxyELmirHmeqdE6kPyCS0PpBWv6dpThyl5j/kNf2c Eg== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rsgd395sg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jul 2023 11:39:42 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36CBdNpt024135
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jul 2023 11:39:23 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 12 Jul 2023 04:39:15 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <rafal@milecki.pl>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v4 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Date: Wed, 12 Jul 2023 17:08:21 +0530
Message-ID: <1f99805b6437aa8d6eaa4663e8d27b98ee595f00.1689160067.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1689160067.git.quic_varada@quicinc.com>
References: <cover.1689160067.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uohHlT6nsJgpecgqxN6OMq4LJ30nEnhe
X-Proofpoint-GUID: uohHlT6nsJgpecgqxN6OMq4LJ30nEnhe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-12_06,2023-07-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 mlxlogscore=660 priorityscore=1501
 impostorscore=0 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307120104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_043958_127469_C5A52EDD 
X-CRM114-Status: GOOD (  16.66  )
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

Add USB phy and controller nodes.

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v4:
	Change node name
	Remove blank line
	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
v1:
	Rename phy node
	Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
	Remove 'qscratch' from phy node
	Fix alignment and upper-case hex no.s
	Add clock definition for the phy
	Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
	in dwc3/core.c takes the frequency from ref clock and calculates fladj
	as appropriate.
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 53 +++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 8bfc2db..8118356 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -405,6 +405,59 @@
 				status = "disabled";
 			};
 		};
+
+		usbphy0: usb-phy@7b000 {
+			compatible = "qcom,ipq5332-usb-hsphy";
+			reg = <0x0007b000 0x12c>;
+
+			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
+			clock-names = "cfg_ahb";
+
+			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
+
+			status = "disabled";
+		};
+
+		usb2: usb2@8a00000 {
+			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
+			reg = <0x08af8800 0x400>;
+
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hs_phy_irq";
+
+			clocks = <&gcc GCC_USB0_MASTER_CLK>,
+				 <&gcc GCC_SNOC_USB_CLK>,
+				 <&gcc GCC_USB0_SLEEP_CLK>,
+				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+			clock-names = "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi";
+
+			resets = <&gcc GCC_USB_BCR>;
+
+			qcom,select-utmi-as-pipe-clk;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			status = "disabled";
+
+			usb2_0_dwc: usb@8a00000 {
+				compatible = "snps,dwc3";
+				reg = <0x08a00000 0xe000>;
+				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+				clock-names = "ref";
+				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+				usb-phy = <&usbphy0>;
+				tx-fifo-resize;
+				snps,is-utmi-l1-suspend;
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+			};
+		};
 	};
 
 	timer {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
