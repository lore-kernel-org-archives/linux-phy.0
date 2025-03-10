Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95CCAC2BA1B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 06:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruwGAl9TF/vekU5IKTdSx7a1XaAkYFDOPnf+8N0mW+E=; b=bjW3MJDmkx1p9V
	vGu48BAQdp/qBkqcZq2AbY8GEHS+sryZqGa3yA8C/0RSSWbSi50znrTMIKmZWIro6/vUVFcDsFEfM
	1eVcZPhliF9rE9/JHArPYYsPJZZq/ys+nL+ZRpkWbfYz1fEOg6LMyxCtrmdInL6gOCgvlLPckgjJe
	toeZGEKUxFGBDuuGpzDmeeGFTw5kC2OLsmZlU7/DmB/jXokjzPcqt7LSJZJhPTFNt0htVHftwR1Ir
	nayhI4sD2kDXsPnabShMFOK2rFs2L0aNpditmckA80L+v5TinQTbWnbEl+ydKNyxXBMgt9D7NlPvX
	TOODLvjISXGGXltT1/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trX3y-00000001gu7-0tBh;
	Mon, 10 Mar 2025 06:56:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trX3v-00000001gsZ-1yEe
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 06:56:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529NmshL013087;
	Mon, 10 Mar 2025 06:56:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sor3wpJ3qyY
	EQJkvUjEK0ImpFThsXJG6ebNS1IWPodQ=; b=T5c/Yx1UdBwZyWRQcvdUUiq4hfp
	50BEuHY405RVk/N1pRRhGjhzFqomKQtSB2hLUPFbTe9mzH/c9MFpH8YlMHLetIah
	S5SPyoXYHGZPSvXVw6Bb3pVw7vwDT8Kc6RlAQmNKIi60R+L2hdtzVcOcjuYfatGk
	IqSpXqLCQqpdjIUCug+rW3tjAmmQtRTGJdQG5WmCjqRlW2QgChuIXMWMraRZY5oj
	jsaigqSc5nryRYoKkpkGBP5D9cVJpLhXfycmqH1xSYJ/KSyXlLKNRZd5lHg8SECS
	XRBonZbxueLmRpIhqRl5oehW36nqIBOUTxb+RoJPmsWdE437/De9zUTD3IQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyubsab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:19 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52A6uHRv004009;
	Mon, 10 Mar 2025 06:56:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 458yu87jb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:17 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52A6uGKg004000;
	Mon, 10 Mar 2025 06:56:17 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 52A6uGvl003993
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:16 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 8EC0827CD; Mon, 10 Mar 2025 14:56:15 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org
Cc: quic_ziyuzhan@quicinc.com, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v3 2/4] arm64: dts: qcom: qcs615: enable pcie
Date: Mon, 10 Mar 2025 14:56:11 +0800
Message-Id: <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67ce8d13 cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=a7g5JL7BKH_OspJsBfYA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PoZ_QSce8KXh2cy9umrrtDEFKHWQld20
X-Proofpoint-GUID: PoZ_QSce8KXh2cy9umrrtDEFKHWQld20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_02,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_235631_635257_4D57AC1C 
X-CRM114-Status: GOOD (  10.56  )
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add configurations in devicetree for PCIe0, including registers, clocks,
interrupts and phy setting sequence.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 142 +++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f4abfad474ea..282072084435 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1001,6 +1001,148 @@ mmss_noc: interconnect@1740000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+	pcie: pcie@1c08000 {
+		device_type = "pci";
+		compatible = "qcom,pcie-sm8550", "qcom,qcs615-pcie";
+		reg = <0x0 0x01c08000 0x0 0x3000>,
+		      <0x0 0x40000000 0x0 0xf1d>,
+		      <0x0 0x40000f20 0x0 0xa8>,
+		      <0x0 0x40001000 0x0 0x1000>,
+		      <0x0 0x40100000 0x0 0x100000>,
+		      <0x0 0x01c0b000 0x0 0x1000>;
+		reg-names = "parf",
+			    "dbi",
+			    "elbi",
+			    "atu",
+			    "config",
+			    "mhi";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+			 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+		bus-range = <0x00 0xff>;
+
+		dma-coherent;
+
+		linux,pci-domain = <0>;
+		num-lanes = <1>;
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
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 0x7>;
+		interrupt-map = <0 0 0 0 &intc 0 0 0 140 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+			 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+			 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+			 <&rpmhcc RPMH_CXO_CLK>;
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a",
+			      "ref";
+		assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		interconnects = <&aggre1_noc MASTER_PCIE QCOM_ICC_TAG_ALWAYS
+				 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+				<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+				 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		iommu-map = <0x0 &apps_smmu 0x400 0x1>,
+			    <0x100 &apps_smmu 0x401 0x1>;
+
+		resets = <&gcc GCC_PCIE_0_BCR>;
+		reset-names = "pci";
+
+		power-domains = <&gcc PCIE_0_GDSC>;
+
+		phys = <&pcie_phy>;
+		phy-names = "pciephy";
+
+		operating-points-v2 = <&pcie_opp_table>;
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
+		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+		reset-names = "phy";
+
+		assigned-clocks = <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		#clock-cells = <0>;
+		clock-output-names = "pcie_0_pipe_clk";
+
+		#phy-cells = <0>;
+
+		status = "disabled";
+	};
+
 		ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x0 0x01d84000 0x0 0x3000>,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
