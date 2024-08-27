Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B03C5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 04:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DT1RLvQ69Bd4sGIc4SO+duNJ4RNgX8vzbkJ+8hqrWU=; b=uTqmb19Ni8Z1wW
	T7dtH4slp5rYR13uRuVFP/JUGSlxeccIQwWy6aBKNkR8Ki5XgIU0UhJaQSHMfQnlcroDEEcngq4u7
	JzZayuCbYjdzdpznOSFoeYZTEDr9Jv4W1SxAISJo9OUN0xq+mShGE8vZrimz6O7nu9nCDIM04SzVV
	j+bmHhzbbySIRVggf7IT9hsNgnI3ceov7MMAwuoluy6+sYxKF6ezuQ/SHeHHFGfJSaIruWMa2n/ba
	QRk3WwC+A57Ts1dxhrDD4G7QMwIhtTad7a3GbLqZw2sDjFaZAuYWz2e+8j1w40Lf9BpmfLXEv0TT+
	AslCCfV5jtFXeCVRT2Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioIP-00000009n03-1sNz;
	Tue, 27 Aug 2024 04:59:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioIL-00000009mxP-3lFS
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 04:59:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QNGbuP031432;
	Tue, 27 Aug 2024 04:58:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LkSnAEiqor0cZEIz2WPG9P2TR1Qg1Re0FyFiqgTkM9U=; b=fOP0gNZNYDhAbE2Z
	sZx84+ICRmQ2OOeJWPcH0lOuJRhcTJSICW7Jz1/q020sWznWn4fOtXrgrFRfEhzZ
	67hQBbIqM/0pDodS3iuHV5HsKOWOh6XTrPExLLQ6F7HskIxzhiRaIUudwvGIiVFI
	vh/xTb+nWpm7epkaNFE2eIOMJNd33PJb7pD8Jg+Pew173gSCjdSsIJ08ch2hGhx8
	6wx5bwgJkxmQQFv7TsRCh5WSsxjXdLMHzYRWqYUfcl96exPpAPV+LNVaEkvcW8x0
	gcjYa0xVQMs3+jwuaSXIdqlhcQG8OPyMVh2GCxLalvKO3Xzw28aaIjL+AI+FEwkq
	F8aWwA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 417980ws74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:50 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47R4woJ2017310
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:50 GMT
Received: from hu-srichara-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 26 Aug 2024 21:58:43 -0700
From: Sricharan R <quic_srichara@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <robimarko@gmail.com>, <quic_srichara@quicinc.com>
Subject: [PATCH V2 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Date: Tue, 27 Aug 2024 10:27:56 +0530
Message-ID: <20240827045757.1101194-6-quic_srichara@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827045757.1101194-1-quic_srichara@quicinc.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aUcazOqyQA5b8ON4ZkEHJFy3nha9Z6Jk
X-Proofpoint-ORIG-GUID: aUcazOqyQA5b8ON4ZkEHJFy3nha9Z6Jk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_03,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2407110000
 definitions=main-2408270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_215905_976054_67DF7A03 
X-CRM114-Status: GOOD (  12.26  )
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

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Add phy and controller nodes for a 2-lane Gen2 and
1-lane Gen2 PCIe buses.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
---
 [v2] Removed relocatable flags,  removed assigned-clock-rates,
      fixed rest of the cosmetic comments.

 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 168 +++++++++++++++++++++++++-
 1 file changed, 166 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 7e6e2c121979..dd5d6b7ff094 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
 #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -143,7 +144,33 @@ usbphy0: phy@5b000 {
 			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
 
 			#phy-cells = <0>;
+		};
+
+		pcie_x1phy: phy@7e000{
+			compatible = "qcom,ipq5018-uniphy-pcie-gen2x1";
+			reg = <0x0007e000 0x800>;
+			#phy-cells = <0>;
+			#clock-cells = <0>;
+			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
+			clock-names = "pipe";
+			assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
+			resets = <&gcc GCC_PCIE1_PHY_BCR>,
+				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
+			reset-names = "phy", "common";
+			status = "disabled";
+		};
 
+		pcie_x2phy: phy@86000{
+			compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
+			reg = <0x00086000 0x1000>;
+			#phy-cells = <0>;
+			#clock-cells = <0>;
+			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "pipe";
+			assigned-clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+			resets = <&gcc GCC_PCIE0_PHY_BCR>,
+				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
+			reset-names = "phy", "common";
 			status = "disabled";
 		};
 
@@ -170,8 +197,8 @@ gcc: clock-controller@1800000 {
 			reg = <0x01800000 0x80000>;
 			clocks = <&xo_board_clk>,
 				 <&sleep_clk>,
-				 <0>,
-				 <0>,
+				 <&pcie_x2phy>,
+				 <&pcie_x1phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -387,6 +414,143 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		pcie0: pci@80000000 {
+			compatible = "qcom,pcie-ipq5018";
+			reg =  <0x80000000 0xf1d>,
+			       <0x80000f20 0xa8>,
+			       <0x80001000 0x1000>,
+			       <0x00078000 0x3000>,
+			       <0x80100000 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+			max-link-speed = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			phys = <&pcie_x1phy>;
+			phy-names ="pciephy";
+
+			ranges = <0x01000000 0 0x80200000 0x80200000 0 0x00100000
+				  0x02000000 0 0x80300000 0x80300000 0 0x10000000>;
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 142 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 143 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 144 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 145 IRQ_TYPE_LEVEL_HIGH>;
+
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global_irq";
+
+			clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
+				 <&gcc GCC_PCIE1_AXI_M_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_CLK>,
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_AUX_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
+
+			clock-names = "iface",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "aux",
+				      "axi_bridge";
+
+			resets = <&gcc GCC_PCIE1_PIPE_ARES>,
+				 <&gcc GCC_PCIE1_SLEEP_ARES>,
+				 <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
+				 <&gcc GCC_PCIE1_AXI_MASTER_ARES>,
+				 <&gcc GCC_PCIE1_AXI_SLAVE_ARES>,
+				 <&gcc GCC_PCIE1_AHB_ARES>,
+				 <&gcc GCC_PCIE1_AXI_MASTER_STICKY_ARES>,
+				 <&gcc GCC_PCIE1_AXI_SLAVE_STICKY_ARES>;
+
+			reset-names = "pipe",
+				      "sleep",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "axi_m_sticky",
+				      "axi_s_sticky";
+
+			msi-map = <0x0 &v2m0 0x0 0xff8>;
+			status = "disabled";
+		};
+
+		pcie1: pci@a0000000 {
+			compatible = "qcom,pcie-ipq5018";
+			reg =  <0xa0000000 0xf1d>,
+			       <0xa0000f20 0xa8>,
+			       <0xa0001000 0x1000>,
+			       <0x00080000 0x3000>,
+			       <0xa0100000 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <1>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			max-link-speed = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			phys = <&pcie_x2phy>;
+			phy-names ="pciephy";
+
+			ranges = <0x01000000 0 0xa0200000 0xa0200000 0 0x00100000
+				  0x02000000 0 0xa0300000 0xa0300000 0 0x10000000>;
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 75 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 78 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 79 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global_irq";
+
+			clocks = <&gcc GCC_SYS_NOC_PCIE0_AXI_CLK>,
+				 <&gcc GCC_PCIE0_AXI_M_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_CLK>,
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_AUX_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>;
+
+			clock-names = "iface",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "aux",
+				      "axi_bridge";
+
+			resets = <&gcc GCC_PCIE0_PIPE_ARES>,
+				 <&gcc GCC_PCIE0_SLEEP_ARES>,
+				 <&gcc GCC_PCIE0_CORE_STICKY_ARES>,
+				 <&gcc GCC_PCIE0_AXI_MASTER_ARES>,
+				 <&gcc GCC_PCIE0_AXI_SLAVE_ARES>,
+				 <&gcc GCC_PCIE0_AHB_ARES>,
+				 <&gcc GCC_PCIE0_AXI_MASTER_STICKY_ARES>,
+				 <&gcc GCC_PCIE0_AXI_SLAVE_STICKY_ARES>;
+
+			reset-names = "pipe",
+				      "sleep",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "axi_m_sticky",
+				      "axi_s_sticky";
+
+			msi-map = <0x0 &v2m0 0x0 0xff8>;
+			status = "disabled";
+		};
+
 	};
 
 	timer {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
