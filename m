Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F205BC77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7AXF9WObZYwXJvjV452NgMVVYnX/s6KdO7Lj0pp1SY=; b=c6dgS65hp/hm4T
	Px1bixq8s243uDat/wPGxILny22+1RjXfDLP1IIabOvAcQ6JIAr3pd5XxHd/kn5yueWjaZ8mf7RDZ
	+vtkgnFY/ObOSFs4Mc1wInUyzHx4mUTt/ai4e3cam4wxHLrzlazS96IKQ9YssBKwYotmBgRiIFYcZ
	HUY32gv5hzyWC9DT4XfUakLy4pidFEke9jBjMBivZ8nOcktONmp2fYPmOa1rBKI8wq2SkBsoGSx1v
	amDyNEKixVwAhuPhmcxt8Hk+b+xs0T0Pa+XZxa1oNb4BWy8JbGYS526tBItE7kWX6+XIrCPCQ/Vz4
	BV16GQwHtVb41PimjODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGjR-0000000Auzm-35ne;
	Thu, 03 Jul 2025 09:59:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgY-0000000AuSJ-1zTs
	for linux-phy@bombadil.infradead.org;
	Thu, 03 Jul 2025 09:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JqIX9rFpG6neNeKrc6CB7qwOOUGY5Qw523TOvTTnG0E=; b=Rk8ZQYLgoP5FYuJiGHEH7kz/aB
	HpfAPrwlnBGa5yK3rLXMkpS8Sciz3mawze2ZKQCDRieJyCQiRPxlNl27EA16a7Oa9+ghq7lJbWq42
	6xyMJmCXtvGyeiyefKvFd7Os7Gmu5KIL4g5lDrutfqnDv5fICVX/1gUFok5oxH9ICZ0ewvOstyzVc
	nADzHKIGtrv7FeAaEpq8VPAJFhcdqxRWqQEOXwp89DwkeCSDZeYJ/MnKIwDLy3gMSol49w7+xDHBO
	UYljDZIk8CtY6s7m90/ZhRm/Kfx/7ur+1fJhhT0C8n20uk/NosPw/pKqBdk2yY9fB3bVxEOlMGs3U
	Ly6VjQzQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgU-00000007f56-2KBX
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 09:56:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5632FSZK032762;
	Thu, 3 Jul 2025 09:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JqIX9rFpG6n
	eNeKrc6CB7qwOOUGY5Qw523TOvTTnG0E=; b=U4ekdxRERw1sDzQQOse9bWkbT2E
	hpSDGzDGZZkArE8pUshcxRkzzBzmQfMX07kVyCG7nOYOcv91Fldl6wMDhr0YYu9T
	d5srqigafQfIUQ0RXHlrpZWokbz5MEYDSLoJASv2+n0XnQFuQz0H2+3CUoGVjHUJ
	rrZNyBHAys6EhqqjHnlMNdQUsA4Ygz3fMyuzIzwq7pX/eIArDJFBoj20zxQBwDHh
	VRreVqc1kH01kkKZLYSpMrahu2SSSXtVc/NQOe6Ez/xg3a/48DhCWEzaRbpbQ+hG
	XV69CK8IHM0ilNamXbseIQ7IcI0tyhxCytP++UasVaiEsQRpUG3URdTh09w==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qmftf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:36 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5639uZDe019865;
	Thu, 3 Jul 2025 09:56:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 47npknrphy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:35 +0000
Received: from NALASPPMTA05.qualcomm.com (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5639uZKB019859;
	Thu, 3 Jul 2025 09:56:35 GMT
Received: from hu-devc-lv-u22-a.qualcomm.com (hu-ziyuzhan-lv.qualcomm.com [10.81.25.41])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 5639uZAH019855
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:35 +0000
Received: by hu-devc-lv-u22-a.qualcomm.com (Postfix, from userid 4438065)
	id 890545A9; Thu,  3 Jul 2025 02:56:35 -0700 (PDT)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v8 2/3] arm64: dts: qcom: qcs615: enable pcie
Date: Thu,  3 Jul 2025 02:56:29 -0700
Message-Id: <20250703095630.669044-3-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=686653d5 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=njE0_qILy6epUr2_7ooA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: v0Q5lgTzXkb1a7tv0-wT-2Pd4LmKQSrN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDA4MSBTYWx0ZWRfX13YDAFMYWmh5
 SnGCFe6k/CsT8Dvouy2QuqacRH/dRREWQeYXPc/YVFFGP3P+Huo1rw3O6iaG8eewKvrLc7DlPoR
 63NVzcVGxiVehmCulkIHu1A0meimgRwPt4YucsAFBQlarfmw5N8DYIMCHc7nilUCgTDJZ0tlyin
 fT+rGX2DbVIk68FDtHPhta6bEPUwgNYCyBz7Pk2losOgMaFgBw4hhidvlHyqa2By1zCuv5LA/Ei
 puBtgKdjmLrH9GeijdYAK5BWEeFMeFUhNS7wve+EeH53kX+I+wzVDs7W90F8s9beKuDOj7jbl30
 eC6QoNw9IDrk9Cew3aW01QUkpmHqn4i9rfimS65BlzV6dKISYZ+qoKEVOlaJ11MJJ+jiIdG2fm6
 1ersMhTVwXCfe/D2Aeq+OH5HovXW74vMXMUPyKOGRh62qyPOO8jZJo45TeNDt/EKsDAgDVJ7
X-Proofpoint-GUID: v0Q5lgTzXkb1a7tv0-wT-2Pd4LmKQSrN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_105651_081378_23FDE59F 
X-CRM114-Status: GOOD (  11.08  )
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

Add PCIe lane equalization preset properties for 8 GT/s.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 138 +++++++++++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index bfbb21035492..f4b51cca17de 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1066,6 +1066,144 @@ mmss_noc: interconnect@1740000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		pcie: pcie@1c08000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-qcs615", "qcom,pcie-sm8150";
+			reg = <0x0 0x01c08000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf1d>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x1000>,
+			      <0x0 0x40100000 0x0 0x100000>,
+			      <0x0 0x01c0b000 0x0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+			num-lanes = <1>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
+				 <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+			clock-names = "pipe",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&aggre1_noc MASTER_PCIE QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			iommu-map = <0x0 &apps_smmu 0x400 0x1>,
+				    <0x100 &apps_smmu 0x401 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_0_GDSC>;
+
+			phys = <&pcie_phy>;
+			phy-names = "pciephy";
+
+			max-link-speed = <2>;
+
+			operating-points-v2 = <&pcie_opp_table>;
+
+			status = "disabled";
+
+			pcie_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+			};
+		};
+
+		pcie_phy: phy@1c0e000 {
+			compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy";
+			reg = <0x0 0x01c0e000 0x0 0x1000>;
+
+			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
+				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie_0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x0 0x01d84000 0x0 0x3000>,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
