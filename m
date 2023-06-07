Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6EC5C8300C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 10:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GXTPs6dXZQbJWPA7za0rzoNBmNZJe5AsQBwiwSanpM=; b=ykmnJX4vOJf+G3
	AmqGMTHvgdbJ1Umz2KUFFhgAS1Qo26Ne1v99PC6fCCmhrF9ud0U8KGp4zacAow75w9LfRx3OjSB5w
	+4SWcKPdeQVZlGbjkNrUvgQwUk2NSdxCcL4yjtJ7wITxAObDk5wdvcoDGYN3jhppk3MeMAB7+fTpD
	k4/NVWEALiEvggb/h3yeH9PHYN57rl/YoSNgcL5jYuUWUrC9giN4mTMbhHvWXPkVqEZc89cn3BZm7
	gxXeSXdyQ6q7YIGXTOU51msUy5QGpIRC4B5CdQOZuGJV2o2NLd3RF/Qev9MlEgLnj1II4LtZnUNOy
	1PdrtK8hweb3/C93tm1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qrM-005Zmr-1N;
	Wed, 07 Jun 2023 10:57:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qrK-005Zlk-0j;
	Wed, 07 Jun 2023 10:57:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 357AV1RF015795;
	Wed, 7 Jun 2023 10:57:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=6+Brloyw+/LWMk2UGIbQJRX8f8AAjIfvA4t4+7wtWm8=;
 b=T2UUnjvuBEImEWyu+B47ZByWIWn3/pBSrRrwF57lRPJHh4SpOHnaaiGtwU0bSS1vHD8H
 mOO55n/jJf4BjEZqoRDojXio4NTk9wSuZ4ISv1OgDwDmeTbFHMi8/vAHCwN6BZqjkPTL
 BLuXW6kLAy0rm0Z7aDSlXLo5XVwb+cw57LNKYBng15HX7BZw5rweuoQhGWhxpMhrip8W
 ouMXpX+mHJZbubVfJrFAjNHvRfuDhse+5Pukjl/pDhYDozc5lT48cidnwsEEWqgXEiyg
 LVLIS7pV3ROWIxXSC1z018m0EWvc3cor1MX4eebsUGj+9TSRIqhr96rNpusg+jhCGmPX Tg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r2a769kyd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 Jun 2023 10:57:32 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 357AvVcs007553
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 Jun 2023 10:57:31 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 7 Jun 2023 03:57:22 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH 7/9] arm64: dts: qcom: ipq5332: Add USB related nodes
Date: Wed, 7 Jun 2023 16:26:11 +0530
Message-ID: <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1686126439.git.quic_varada@quicinc.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wGiNh1LmL-Dy0sEa44e8UYzQmKaTnO7f
X-Proofpoint-GUID: wGiNh1LmL-Dy0sEa44e8UYzQmKaTnO7f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=831
 impostorscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306070089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_035746_276092_2D4C0525 
X-CRM114-Status: GOOD (  15.18  )
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

Add USB phy and controller nodes

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index c2d6cc65..3183357 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -383,6 +383,61 @@
 				status = "disabled";
 			};
 		};
+
+		usb_0_m31phy: hs_m31phy@7b000 {
+			compatible = "qcom,ipq5332-m31-usb-hsphy";
+			reg = <0x0007b000 0x12C>,
+			      <0x08af8800 0x400>;
+			reg-names = "m31usb_phy_base",
+				    "qscratch_base";
+			phy_type= "utmi";
+
+			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
+			reset-names = "usb2_phy_reset";
+
+			status = "okay";
+		};
+
+		usb2: usb2@8a00000 {
+			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			reg = <0x08af8800 0x100>;
+
+			clocks = <&gcc GCC_USB0_MASTER_CLK>,
+				<&gcc GCC_SNOC_USB_CLK>,
+				<&gcc GCC_USB0_SLEEP_CLK>,
+				<&gcc GCC_USB0_MOCK_UTMI_CLK>;
+
+			clock-names = "core",
+				"iface",
+				"sleep",
+				"mock_utmi";
+
+			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event";
+
+			resets = <&gcc GCC_USB_BCR>;
+
+			qcom,select-utmi-as-pipe-clk;
+
+			usb2_0_dwc: usb@8a00000 {
+				compatible = "snps,dwc3";
+				reg = <0x08a00000 0xe000>;
+				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+				clock-names = "ref";
+				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+				usb-phy = <&usb_0_m31phy>;
+				tx-fifo-resize;
+				snps,is-utmi-l1-suspend;
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+				snps,ref-clock-period-ns = <21>;
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
