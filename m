Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA38E65D1A
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 02:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFKEfD+JsTD0RWVnDYxsNCBtc3VbIuzunqqNVgon5+A=; b=xeJO2t96KCWvCy
	DKr9tetDx7zqSHBgda8b5tBh8HBxH4MNtEoWE7ak3fHkSYsIZdFrDZb8bQyoHhJxtFrgqs/CHQ5wL
	S+P5DZhv9muIZBrdhRYuRiquqxagY8s8ve9s6Tiql9jDJF85/BaLcUy0FPbhkqts4VdCTIuV4/01C
	CGgknuhH1aVE3QKB6sURQ9A5lBHpjgGQFRYIIvCaL/C+VYlQzkpaN4cG8KiM5gt7oANf0CQUbyW7+
	ceemzr73G/w64/PCqLTH02djrVzfar1v8kCBf30thwPhL20ESYyZQZjT6TJHJCEQsj5ZI64VzSUXD
	YBZy7ro1C/e0XUH1Tm8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ5Z-00000001R0w-1K7u;
	Fri, 22 Nov 2024 02:08:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ12-00000001Q6s-05Dk
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 02:03:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALE68uJ021660;
	Fri, 22 Nov 2024 02:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KJWdiwdRQym
	BHeyTUoAYQ3RBhO3DtcCdoG/wmLUYUhk=; b=UzQjxCm1i9hHoi46/6/oRM2C+1m
	lhMu7Kl51KEdXlPu4Un36EV0KtC+PpDcM5LpKI9r9DYVra/KJM7imDWnayQHVI3v
	fOLGhVEC364F9cr+7k50UmQ92SeG+nagsi9+IMcg6beQcdpfz2pypVAEUBbuhHUu
	5m1ltB6j+giVNMXn0wfi6X0fQMlgDUPlqOuDeKHOyDHCgihCYHHMiLG5wvQ6ddqr
	SNbiOU4fI8og8anxfdwVmEbknt07Gn+V/RlWra3ujxkxXUM0tInPXTUjBuZBbYxK
	KrSVuUw3WZiF/k6XGfftZFUMI+2CYYARnfzYOJR2A9c5PakEKHc/j0XpyjA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4326at9kac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:13 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM23BQK029218;
	Fri, 22 Nov 2024 02:03:11 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 42xmfm3rk0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:11 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4AM23BqF029212;
	Fri, 22 Nov 2024 02:03:11 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4AM23A5s029203
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:11 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 9D82A17FC; Fri, 22 Nov 2024 10:03:08 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH v2 5/6] arm64: dts: qcom: qcs615: enable pcie for qcs615 soc
Date: Fri, 22 Nov 2024 10:03:04 +0800
Message-Id: <20241122020305.1584577-6-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
References: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: fXGzmO9Qxl8lf7-SFbTDbzWCrLDBe7JJ
X-Proofpoint-GUID: fXGzmO9Qxl8lf7-SFbTDbzWCrLDBe7JJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 clxscore=1015 mlxlogscore=986 lowpriorityscore=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_180324_059008_07A4DAA5 
X-CRM114-Status: GOOD (  11.14  )
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

Add configurations in devicetree for PCIe0, including registers, clocks,
interrupts and phy setting sequence.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 158 +++++++++++++++++++++++++++
 1 file changed, 158 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index 868808918fd2..c56cc30a59f3 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -678,6 +678,164 @@ rpmhpd_opp_turbo_l1: opp-9 {
 		};
 	};
 
+	pcie: pcie@1c08000 {
+		compatible = "qcom,pcie-qcs615";
+		reg = <0x0 0x01c08000 0x0 0x3000>,
+		      <0x0 0x40000000 0x0 0xf1d>,
+		      <0x0 0x40000f20 0x0 0xa8>,
+		      <0x0 0x40001000 0x0 0x1000>,
+		      <0x0 0x40100000 0x0 0x100000>,
+		      <0x0 0x01c0b000 0x0 0x1000>;
+
+		reg-names = "parf",
+			    "dbi",
+			    "elbi",
+			    "atu",
+			    "config",
+			    "mhi";
+
+		device_type = "pci";
+		linux,pci-domain = <0>;
+		bus-range = <0x00 0xff>;
+		num-lanes = <1>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+			 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "msi0",
+				  "msi1",
+				  "msi2",
+				  "msi3",
+				  "msi4",
+				  "msi5",
+				  "msi6",
+				  "msi7",
+				  "global";
+
+		interrupt-map = <0 0 0 0 &intc 0 0 0 140 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 0x7>;
+
+		interconnects = <&aggre1_noc MASTER_PCIE QCOM_ICC_TAG_ALWAYS
+				 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+				<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+				 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+			 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+			 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+			 <&rpmhcc RPMH_CXO_CLK>;
+
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a",
+			      "ref";
+
+		assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		operating-points-v2 = <&pcie_opp_table>;
+
+		resets = <&gcc GCC_PCIE_0_BCR>;
+		reset-names = "pci";
+
+		phys = <&pcie_phy>;
+		phy-names = "pciephy";
+
+		power-domains = <&gcc PCIE_0_GDSC>;
+
+		dma-coherent;
+
+		iommu-map = <0x0 &apps_smmu 0x400 0x1>,
+			    <0x100 &apps_smmu 0x401 0x1>;
+
+		status = "disabled";
+		pcie_opp_table: opp-table {
+			compatible = "operating-points-v2";
+
+			/* GEN 1 x1 */
+			opp-2500000 {
+				opp-hz = /bits/ 64 <2500000>;
+				required-opps = <&rpmhpd_opp_low_svs>;
+				opp-peak-kBps = <250000 1>;
+			};
+
+			/* GEN 2 x1 */
+			opp-5000000 {
+				opp-hz = /bits/ 64 <5000000>;
+				required-opps = <&rpmhpd_opp_low_svs>;
+				opp-peak-kBps = <500000 1>;
+			};
+
+			/* GEN 3 x1 */
+			opp-8000000 {
+				opp-hz = /bits/ 64 <8000000>;
+				required-opps = <&rpmhpd_opp_svs_l1>;
+				opp-peak-kBps = <984500 1>;
+			};
+		};
+
+		pcie@0 {
+			device_type = "pci";
+			reg = <0x0 0x0 0x0 0x0 0x0>;
+			bus-range = <0x01 0xff>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+		};
+	};
+
+	pcie_phy: phy@1c0e000 {
+		compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy";
+		reg = <0x0 0x01c0e000 0x0 0x1000>;
+
+		clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_0_CLKREF_CLK>,
+			 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
+			 <&gcc GCC_PCIE_0_PIPE_CLK>;
+		clock-names = "aux",
+			      "cfg_ahb",
+			      "ref",
+			      "refgen",
+			      "pipe";
+
+		clock-output-names = "pcie_0_pipe_clk";
+		#clock-cells = <0>;
+
+		#phy-cells = <0>;
+
+		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+		reset-names = "phy";
+
+		assigned-clocks = <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		status = "disabled";
+	};
+
 	arch_timer: timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
