Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414F0E77183
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dN6E7v/dVJ2IHfyK6c+YJmkXzVIfD7i/Kcez+7tkblY=; b=dVMXtnxKlR++ez
	7J5jESCAKIbO+JhykkaZqc+aid4dCGCpclnkuU1K8dqQK51a9YR54bh4p5okOhGutRBYWI5uFxUjQ
	qzAMqCLICyg95KVMIPjS4d8tlcdC7535Fu/F9S0sQqnx+OGd+UsHO1sm1qjhRLHabCYZBYb66JRpp
	qdBXraCGOTV7VvEMcTnQ7YGORNbB1ZWcB2Nu6/jdU5nH6wdO96I/cyn8ST2ZK/dTEIHHILtTk6E2y
	z4jO0liobKDMN03eCTcYOEJ5rcg6PUhP/W9oBV4xK6LSx69hUCSC1YcTuof3w3Ck6HbFqZt/U0xA9
	fqrCDpBEhHanP2S7wjrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM66y-00000003u7b-4BKB;
	Fri, 13 Dec 2024 13:53:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM64j-00000003tPw-1vBV
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 13:51:26 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD8uVgH022802;
	Fri, 13 Dec 2024 13:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TBWJlNqiEjyyKiqGxvJpkSoLUgrHHwcvHWJQxr5kIFA=; b=Q2lsFtKhrRo4S+b7
	7HdMkv8WBg8FrtGvYN7QmpQs6/w6geMDcLle7IWPCsquC4HAhNPZzUR4ss81RCGD
	H+Iq61p2w8zCnHy5Kmk6GWrByHBZ2/WrYsstM7gu5RmzmtInJigfKCu+SFcjnmEB
	iStiSx0tFo0FhRm7xnjCQEH+EyaG0f0k1l5P5fb/VoCCJBAI7Kupkj8aG5m6B8M1
	e+SN0CtJpKMT9PgbVEA7LquYtfmCsoKTmtL1Ci9gZbwYKmaGBmHrJTJZlBi94Qux
	qOe6ZlcISKe9LC5I7lWi80p0tPC8VCr0taCl/HT8FEpsgdfZUtmdCB9eIudhrlFG
	To3erQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g4wnan50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:51:14 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BDDp6Qw003351
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:51:06 GMT
Received: from hu-mmanikan-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 13 Dec 2024 05:51:00 -0800
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>
Subject: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and controller nodes
Date: Fri, 13 Dec 2024 19:19:49 +0530
Message-ID: <20241213134950.234946-4-quic_mmanikan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: dsWIKVDSqZaISojFAg3RCDyWPj7WO8ue
X-Proofpoint-GUID: dsWIKVDSqZaISojFAg3RCDyWPj7WO8ue
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
 mlxscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412130098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_055125_516702_47B66652 
X-CRM114-Status: GOOD (  13.49  )
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

Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 482 +++++++++++++++++++++++++-
 1 file changed, 477 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5e219f900412..ade512bcb180 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
 #include <dt-bindings/reset/qcom,ipq5424-gcc.h>
+#include <dt-bindings/interconnect/qcom,ipq5424.h>
 #include <dt-bindings/gpio/gpio.h>
 
 / {
@@ -143,7 +144,99 @@ soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
-		ranges = <0 0 0 0 0x10 0>;
+		ranges = <0 0 0 0 0x0 0xffffffff>;
+
+		pcie0_phy: phy@84000 {
+			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
+				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
+			reg = <0 0x00084000 0 0x2000>;
+			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE0_AUX_CLK>;
+			assigned-clock-rates = <20000000>;
+
+			resets = <&gcc GCC_PCIE0_PHY_BCR>,
+				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
+			reset-names = "phy", "common";
+
+			#clock-cells = <0>;
+			clock-output-names = "gcc_pcie0_pipe_clk_src";
+
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		pcie1_phy: phy@8c000 {
+			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
+				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
+			reg = <0 0x0008c000 0 0x2000>;
+			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE1_AUX_CLK>;
+			assigned-clock-rates = <20000000>;
+
+			resets = <&gcc GCC_PCIE1_PHY_BCR>,
+				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
+			reset-names = "phy", "common";
+
+			#clock-cells = <0>;
+			clock-output-names = "gcc_pcie1_pipe_clk_src";
+
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		pcie2_phy: phy@f4000 {
+			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
+				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
+			reg = <0 0x000f4000 0 0x2000>;
+			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
+				 <&gcc GCC_PCIE2_AHB_CLK>,
+				 <&gcc GCC_PCIE2_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE2_AUX_CLK>;
+			assigned-clock-rates = <20000000>;
+
+			resets = <&gcc GCC_PCIE2_PHY_BCR>,
+				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
+			reset-names = "phy", "common";
+
+			#clock-cells = <0>;
+			clock-output-names = "gcc_pcie2_pipe_clk_src";
+
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		pcie3_phy: phy@fc000 {
+			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
+				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
+			reg = <0 0x000fc000 0 0x2000>;
+			clocks = <&gcc GCC_PCIE3_AUX_CLK>,
+				 <&gcc GCC_PCIE3_AHB_CLK>,
+				 <&gcc GCC_PCIE3_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE3_AUX_CLK>;
+			assigned-clock-rates = <20000000>;
+
+			resets = <&gcc GCC_PCIE3_PHY_BCR>,
+				 <&gcc GCC_PCIE3PHY_PHY_BCR>;
+			reset-names = "phy", "common";
+
+			#clock-cells = <0>;
+			clock-output-names = "gcc_pcie3_pipe_clk_src";
+
+			#phy-cells = <0>;
+			status = "disabled";
+		};
 
 		tlmm: pinctrl@1000000 {
 			compatible = "qcom,ipq5424-tlmm";
@@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
 			reg = <0 0x01800000 0 0x40000>;
 			clocks = <&xo_board>,
 				 <&sleep_clk>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
 				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>;
+				 <&pcie2_phy>,
+				 <&pcie3_phy>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#interconnect-cells = <1>;
@@ -292,6 +385,385 @@ frame@f42d000 {
 			};
 		};
 
+		pcie3: pcie@40000000 {
+			compatible = "qcom,pcie-ipq5424",
+				     "qcom,pcie-ipq9574";
+			reg = <0 0x40000000 0 0xf1d>,
+			      <0 0x40000f20 0 0xa8>,
+			      <0 0x40001000 0 0x1000>,
+			      <0 0x000f8000 0 0x3000>,
+			      <0 0x40100000 0 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <3>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x00100000>,
+				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x0fd00000>;
+			interrupts = <GIC_SPI 470 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 475 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 479 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 480 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 481 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 482 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE3_AXI_M_CLK>,
+				 <&gcc GCC_PCIE3_AXI_S_CLK>,
+				 <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_PCIE3_RCHNG_CLK>,
+				 <&gcc GCC_PCIE3_AHB_CLK>,
+				 <&gcc GCC_PCIE3_AUX_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng",
+				      "ahb",
+				      "aux";
+
+			assigned-clocks = <&gcc GCC_PCIE3_AHB_CLK>,
+					  <&gcc GCC_PCIE3_AUX_CLK>,
+					  <&gcc GCC_PCIE3_AXI_M_CLK>,
+					  <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
+					  <&gcc GCC_PCIE3_AXI_S_CLK>,
+					  <&gcc GCC_PCIE3_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>,
+					       <20000000>,
+					       <266666666>,
+					       <240000000>,
+					       <240000000>,
+					       <100000000>;
+
+			resets = <&gcc GCC_PCIE3_PIPE_ARES>,
+				 <&gcc GCC_PCIE3_CORE_STICKY_RESET>,
+				 <&gcc GCC_PCIE3_AXI_S_STICKY_RESET>,
+				 <&gcc GCC_PCIE3_AXI_S_ARES>,
+				 <&gcc GCC_PCIE3_AXI_M_STICKY_RESET>,
+				 <&gcc GCC_PCIE3_AXI_M_ARES>,
+				 <&gcc GCC_PCIE3_AUX_ARES>,
+				 <&gcc GCC_PCIE3_AHB_ARES>;
+			reset-names = "pipe",
+				      "sticky",
+				      "axi_s_sticky",
+				      "axi_s",
+				      "axi_m_sticky",
+				      "axi_m",
+				      "aux",
+				      "ahb";
+
+			msi-map = <0x0 &intc 0x0 0x1000>;
+
+			phys = <&pcie3_phy>;
+			phy-names = "pciephy";
+			interconnects = <&gcc MASTER_ANOC_PCIE3 &gcc SLAVE_ANOC_PCIE3>,
+					<&gcc MASTER_CNOC_PCIE3 &gcc SLAVE_CNOC_PCIE3>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+			status = "disabled";
+		};
+
+		pcie2: pcie@50000000 {
+			compatible = "qcom,pcie-ipq5424",
+				     "qcom,pcie-ipq9574";
+			reg = <0 0x50000000 0 0xf1d>,
+			      <0 0x50000f20 0 0xa8>,
+			      <0 0x50001000 0 0x1000>,
+			      <0 0x000f0000 0 0x3000>,
+			      <0 0x50100000 0 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <2>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x50200000 0x0 0x00100000>,
+				 <0x02000000 0x0 0x50300000 0x0 0x50300000 0x0 0x0fd00000>;
+			interrupts = <GIC_SPI 455 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 456 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 457 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 459 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 460 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 464 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 465 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 466 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 467 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE2_AXI_M_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_PCIE2_RCHNG_CLK>,
+				 <&gcc GCC_PCIE2_AHB_CLK>,
+				 <&gcc GCC_PCIE2_AUX_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng",
+				      "ahb",
+				      "aux";
+
+			assigned-clocks = <&gcc GCC_PCIE2_AHB_CLK>,
+					  <&gcc GCC_PCIE2_AUX_CLK>,
+					  <&gcc GCC_PCIE2_AXI_M_CLK>,
+					  <&gcc GCC_PCIE2_AXI_S_BRIDGE_CLK>,
+					  <&gcc GCC_PCIE2_AXI_S_CLK>,
+					  <&gcc GCC_PCIE2_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>,
+					       <20000000>,
+					       <266666666>,
+					       <240000000>,
+					       <240000000>,
+					       <100000000>;
+
+			resets = <&gcc GCC_PCIE2_PIPE_ARES>,
+				 <&gcc GCC_PCIE2_CORE_STICKY_RESET>,
+				 <&gcc GCC_PCIE2_AXI_S_STICKY_RESET>,
+				 <&gcc GCC_PCIE2_AXI_S_ARES>,
+				 <&gcc GCC_PCIE2_AXI_M_STICKY_RESET>,
+				 <&gcc GCC_PCIE2_AXI_M_ARES>,
+				 <&gcc GCC_PCIE2_AUX_ARES>,
+				 <&gcc GCC_PCIE2_AHB_ARES>;
+			reset-names = "pipe",
+				      "sticky",
+				      "axi_s_sticky",
+				      "axi_s",
+				      "axi_m_sticky",
+				      "axi_m",
+				      "aux",
+				      "ahb";
+
+			msi-map = <0x0 &intc 0x0 0x1000>;
+
+			phys = <&pcie2_phy>;
+			phy-names = "pciephy";
+			interconnects = <&gcc MASTER_ANOC_PCIE2 &gcc SLAVE_ANOC_PCIE2>,
+					<&gcc MASTER_CNOC_PCIE2 &gcc SLAVE_CNOC_PCIE2>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+			status = "disabled";
+		};
+
+		pcie1: pcie@60000000 {
+			compatible = "qcom,pcie-ipq5424",
+				     "qcom,pcie-ipq9574";
+			reg = <0 0x60000000 0 0xf1d>,
+			      <0 0x60000f20 0 0xa8>,
+			      <0 0x60001000 0 0x1000>,
+			      <0 0x00088000 0 0x3000>,
+			      <0 0x60100000 0 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <1>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x00100000>,
+				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x0fd00000>;
+			interrupts = <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 441 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 442 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 443 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 445 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 446 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 447 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 449 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 450 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 451 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 452 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE1_AXI_M_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_PCIE1_RCHNG_CLK>,
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_AUX_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng",
+				      "ahb",
+				      "aux";
+
+			assigned-clocks = <&gcc GCC_PCIE1_AHB_CLK>,
+					  <&gcc GCC_PCIE1_AUX_CLK>,
+					  <&gcc GCC_PCIE1_AXI_M_CLK>,
+					  <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>,
+					  <&gcc GCC_PCIE1_AXI_S_CLK>,
+					  <&gcc GCC_PCIE1_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>,
+					       <20000000>,
+					       <240000000>,
+					       <240000000>,
+					       <240000000>,
+					       <100000000>;
+
+			resets = <&gcc GCC_PCIE1_PIPE_ARES>,
+				 <&gcc GCC_PCIE1_CORE_STICKY_RESET>,
+				 <&gcc GCC_PCIE1_AXI_S_STICKY_RESET>,
+				 <&gcc GCC_PCIE1_AXI_S_ARES>,
+				 <&gcc GCC_PCIE1_AXI_M_STICKY_RESET>,
+				 <&gcc GCC_PCIE1_AXI_M_ARES>,
+				 <&gcc GCC_PCIE1_AUX_ARES>,
+				 <&gcc GCC_PCIE1_AHB_ARES>;
+			reset-names = "pipe",
+				      "sticky",
+				      "axi_s_sticky",
+				      "axi_s",
+				      "axi_m_sticky",
+				      "axi_m",
+				      "aux",
+				      "ahb";
+
+			msi-map = <0x0 &intc 0x0 0x1000>;
+
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+			interconnects = <&gcc MASTER_ANOC_PCIE1 &gcc SLAVE_ANOC_PCIE1>,
+					<&gcc MASTER_CNOC_PCIE1 &gcc SLAVE_CNOC_PCIE1>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+			status = "disabled";
+		};
+
+		pcie0: pcie@70000000 {
+			compatible = "qcom,pcie-ipq5424",
+				     "qcom,pcie-ipq9574";
+			reg = <0 0x70000000 0 0xf1d>,
+			      <0 0x70000f20 0 0xa8>,
+			      <0 0x70001000 0 0x1000>,
+			      <0 0x00080000 0 0x3000>,
+			      <0 0x70100000 0 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x00100000>,
+				 <0x02000000 0x0 0x70300000 0x0 0x70300000 0x0 0x0fd00000>;
+			interrupts = <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 426 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 427 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 428 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 429 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 431 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 434 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 435 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 436 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 437 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE0_AXI_M_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_PCIE0_RCHNG_CLK>,
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_AUX_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng",
+				      "ahb",
+				      "aux";
+
+			assigned-clocks = <&gcc GCC_PCIE0_AHB_CLK>,
+					  <&gcc GCC_PCIE0_AUX_CLK>,
+					  <&gcc GCC_PCIE0_AXI_M_CLK>,
+					  <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>,
+					  <&gcc GCC_PCIE0_AXI_S_CLK>,
+					  <&gcc GCC_PCIE0_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>,
+					       <20000000>,
+					       <240000000>,
+					       <240000000>,
+					       <240000000>,
+					       <100000000>;
+
+			resets = <&gcc GCC_PCIE0_PIPE_ARES>,
+				 <&gcc GCC_PCIE0_CORE_STICKY_RESET>,
+				 <&gcc GCC_PCIE0_AXI_S_STICKY_RESET>,
+				 <&gcc GCC_PCIE0_AXI_S_ARES>,
+				 <&gcc GCC_PCIE0_AXI_M_STICKY_RESET>,
+				 <&gcc GCC_PCIE0_AXI_M_ARES>,
+				 <&gcc GCC_PCIE0_AUX_ARES>,
+				 <&gcc GCC_PCIE0_AHB_ARES>;
+			reset-names = "pipe",
+				      "sticky",
+				      "axi_s_sticky",
+				      "axi_s",
+				      "axi_m_sticky",
+				      "axi_m",
+				      "aux",
+				      "ahb";
+
+			msi-map = <0x0 &intc 0x0 0x1000>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+			interconnects = <&gcc MASTER_ANOC_PCIE0 &gcc SLAVE_ANOC_PCIE0>,
+					<&gcc MASTER_CNOC_PCIE0 &gcc SLAVE_CNOC_PCIE0>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+			status = "disabled";
+		};
 	};
 
 	timer {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
