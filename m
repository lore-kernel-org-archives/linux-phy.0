Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4386EB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbnaFnD+OUtrLTnsbyFC8TZ+lklTqo2h1ykN50jQ3c4=; b=PTy3gwh5cQsBBG
	f5W8zXFDuGpkdLyzsmAoSDwNUdUREK802V76PL9Af5lqnB/oUdrq4+JEDuOF1plssFI+0VV1TRITp
	s0tjcm+uzndxKUovo456Sl2HpzSgyhurHnPeLhObCIxSUf6d3voAaz76fnkASb8eqa/IcVKXYZ1v5
	b3ZA/6uOc/nXPfTMdDq2wnkeozQh5HVfXkNLmVHmre+3h0s+aCnNybLqsnVJZpguJj3XkhJFg0jsv
	odw1pLpGKG/Zi6ndeDJLdyjrHIpnnWO7t94iuCTrkzfIh6dlpMJdy8WcVHCrgneY38HtWe5ttb7bJ
	QvCVlydACUPzsby4uRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhu-00FBEb-1k;
	Wed, 05 Jul 2023 08:17:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhr-00FBDS-2o
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:17:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3656llTh024298;
	Wed, 5 Jul 2023 08:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=G1CBJnij9cSKtPpysHIBpDdDxy+ojc/2Tm12jyKhlZY=;
 b=Ce1CGzdW0/P182mJDlYffBwJimgyjMZuwLDCDzVHpfAymdZtuB8RtH8EWUkhz4VHAu7t
 CFB2fBiBkO1s9i7WvwPSGVpz15RcTkc1aIQf+C0ufFJRb1CN25jRC6Ti13vCSqjCqj5q
 dWHriZ6cqz9RRpqIbsoxvsUeYNTma2eK91BW2f5tZPIWpXdN23Hpy9PzAsd6HXJKKSLq
 R8cnTb364i7S4zBCodgYES9oKEDkJMrEafuFrffXpY18hrLlo47J09DwekhDdss7RgWy
 iK4nmcFn4hzKs/0tBsIdhf9xnwDjrZS8ZOCRMh46s+e1dcZsaa46ps3bZ8F35PhNW+LU Cg== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rn2cp88ut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jul 2023 08:17:40 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3658HTed021561;
	Wed, 5 Jul 2023 08:17:37 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3rjd7krn99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 05 Jul 2023 08:17:37 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3658HLrP021317;
	Wed, 5 Jul 2023 08:17:36 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3658HaOS022048;
	Wed, 05 Jul 2023 08:17:36 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id DC507244; Wed,  5 Jul 2023 13:47:35 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v1 5/6] arm64: dts: qcom: sa8775p: Add pcie0 and pcie1 nodes
Date: Wed,  5 Jul 2023 13:47:10 +0530
Message-Id: <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: of13ORcAeikGCUovEybWdpGe_MPxwoUX
X-Proofpoint-ORIG-GUID: of13ORcAeikGCUovEybWdpGe_MPxwoUX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-04_16,2023-07-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 suspectscore=0 impostorscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307050075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_011747_915300_70ACA29E 
X-CRM114-Status: GOOD (  15.05  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add pcie dtsi nodes for two controllers found on sa8775p platform.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 201 +++++++++++++++++++++++++-
 1 file changed, 199 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..88749cbaea8b 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -481,8 +481,8 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
-				 <0>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
 				 <0>,
 				 <0>,
 				 <0>;
@@ -2315,4 +2315,201 @@ arch_timer: timer {
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 12 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
+
+	pcie0: pci@1c00000{
+		device_type = "pci";
+		compatible = "qcom,pcie-sa8775p";
+		reg = <0x0 0x01c00000 0x0 0x3000>,
+		      <0x0 0x40000000 0x0 0xf20>,
+		      <0x0 0x40000f20 0x0 0xa8>,
+		      <0x0 0x40001000 0x0 0x4000>,
+		      <0x0 0x40100000 0x0 0x100000>,
+		      <0x0 0x01c03000 0x0 0x1000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges = <0x01000000 0x0 0x40200000 0x0 0x40200000 0x0 0x100000>,
+			<0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+		bus-range = <0x00 0xff>;
+
+		linux,pci-domain = <0>;
+		num-lanes = <2>;
+
+		interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "msi";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 0x7>;
+		interrupt-map = <0 0 0 1 &intc GIC_SPI 434 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 0 2 &intc GIC_SPI 435 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 0 3 &intc GIC_SPI 438 IRQ_TYPE_LEVEL_HIGH>,
+			<0 0 0 4 &intc GIC_SPI 439 IRQ_TYPE_LEVEL_HIGH>;
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+				"cfg",
+				"bus_master",
+				"bus_slave",
+				"slave_q2a";
+
+		assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
+		interconnect-names = "pcie-mem";
+
+		resets = <&gcc GCC_PCIE_0_BCR>;
+		reset-names = "pci";
+		power-domains = <&gcc PCIE_0_GDSC>;
+
+		phys = <&pcie0_phy>;
+		phy-names = "pciephy";
+
+		iommus = <&pcie_smmu 0x0000 0x1>;
+		iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
+			<0x100 &pcie_smmu 0x0001 0x1>;
+
+		perst-gpios = <&tlmm 2 1>;
+		wake-gpios = <&tlmm 0 0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie0_default_state>;
+
+		status = "disabled";
+	};
+
+	pcie0_phy: phy@1c04000 {
+		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
+		reg = <0x0 0x1c04000 0x0 0x2000>;
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_CLKREF_EN>,
+			 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+			 <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
+			 <&gcc GCC_PCIE_0_PIPE_CLK>,
+			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>;
+
+		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
+						"pipe", "pipediv2";
+
+		assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		power-domains = <&gcc PCIE_0_GDSC>;
+
+		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+		reset-names = "phy";
+
+		#clock-cells = <0>;
+		clock-output-names = "pcie_0_pipe_clk";
+
+		#phy-cells = <0>;
+
+		status = "disabled";
+	};
+
+	pcie1: pci@1c10000{
+		device_type = "pci";
+		compatible = "qcom,pcie-sa8775p";
+		reg = <0x0 0x01c10000 0x0 0x3000>,
+		      <0x0 0x60000000 0x0 0xf20>,
+		      <0x0 0x60000f20 0x0 0xa8>,
+		      <0x0 0x60001000 0x0 0x4000>,
+		      <0x0 0x60100000 0x0 0x100000>,
+		      <0x0 0x01c13000 0x0 0x1000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges = <0x01000000 0x0 0x60200000 0x0 0x60200000 0x0 0x100000>,
+			<0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x1fd00000>;
+		bus-range = <0x00 0xff>;
+
+		linux,pci-domain = <1>;
+		num-lanes = <4>;
+
+		interrupts = <GIC_SPI 519 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "msi";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 0x7>;
+		interrupt-map = <0 0 0 1 &intc GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 2 &intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 3 &intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 4 &intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
+
+		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+			<&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			<&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+			<&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+			<&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+				"cfg",
+				"bus_master",
+				"bus_slave",
+				"slave_q2a";
+
+		assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>;
+		interconnect-names = "pcie-mem";
+
+		resets = <&gcc GCC_PCIE_1_BCR>;
+		reset-names = "pci";
+		power-domains = <&gcc PCIE_1_GDSC>;
+
+		phys = <&pcie1_phy>;
+		phy-names = "pciephy";
+
+		iommus = <&pcie_smmu 0x0080 0x1>;
+		iommu-map = <0x0 &pcie_smmu 0x0080 0x1>,
+			<0x100 &pcie_smmu 0x0081 0x1>;
+
+		perst-gpios = <&tlmm 4 1>;
+		wake-gpios = <&tlmm 5 0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie1_default_state>;
+
+		status = "disabled";
+	};
+
+	pcie1_phy: phy@1c14000 {
+		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
+		reg = <0x0 0x1c14000 0x0 0x4000>;
+
+		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_CLKREF_EN>,
+			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
+			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
+			 <&gcc GCC_PCIE_1_PIPE_CLK>,
+			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
+
+		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
+						"pipe", "pipediv2";
+
+		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		power-domains = <&gcc PCIE_1_GDSC>;
+
+		resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+		reset-names = "phy";
+
+		#clock-cells = <0>;
+		clock-output-names = "pcie_1_pipe_clk";
+
+		#phy-cells = <0>;
+
+		status = "disabled";
+
+	};
 };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
