Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41467C0032E
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 13:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ub7ehnQkXQecb6Xxs6wU4Ocsc6j7M2dLYktudeEOpY=; b=zF4OjOVqcOL019
	SD2Jy9ZznA+1eD4Z0LXYHkSXaWL9YDBI2tVS/TNpfGPGyX5Hcj3BCfkq4xK7SU3VZNiG+2410gplx
	uXXW3NbFo8nKTv8sA/cK6ZTLjaGQEA3/2+DJzf+EvHxOk8plclPpx0AYy82yUYrLFAgaaKt4sXPP2
	21JqatxGVCyhvkA9CLQVXt36214VhAxOrVvVW9mhcJSsXta8auvzWJ+QVMyqPGMTvCuYy3HRNR6yl
	m+OsVQz6IrWyriWMbMac1YUoNmujDY5bTjA7xZPv/qQi+X84MsIOJ2TgYjzZaHZ1pYpxyB4c+6qCI
	NSzM/vmyRJh5/e8FPe7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LlZ-001ZXT-34;
	Tue, 07 Nov 2023 13:05:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LlX-001ZVH-1C
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 13:05:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A7BUEgO011638;
	Tue, 7 Nov 2023 13:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=LYIjBF5JP/2bLliJ47+748C3UONippzd0SirokcGhoQ=;
 b=Da/+w396bv3hPS0OIvgwI24w5QCdQ51IAEtgT2161YDvpPn9K1fj2/4u7VPPcm0mtKxq
 Jlr01RbGePRj3JmX7WirnBvasTdizdQYaSUlcBuwmGYdqzE0WotiYEyuf3qN6JBgmtaM
 jkTGGu+ShAh1Hvwci8mlMZcadYGFAyFWrjNYUSHG4UlaqgcWDpXS7HEwZpI0eD3h6Ffq
 n8znGZLNO5eFcU85eS5CXrk0gCQclxOL6+0Ens+AkGm4ttm4/HraHbMkC23UPwrGdIIj
 nTDRVqv1tLss7odY+6Itb6cQLuYAK64F2TJ5aCTjWWezy28mU0+8D50HVJorK2fq8Y3N 5w== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u758n237f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Nov 2023 13:05:02 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3A7D4vmV010872;
	Tue, 7 Nov 2023 13:04:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3u5f1kwjg6-1;
	Tue, 07 Nov 2023 13:04:59 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3A7D4xKV010909;
	Tue, 7 Nov 2023 13:04:59 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3A7D4wQ2010907;
	Tue, 07 Nov 2023 13:04:59 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id CA6184C76; Tue,  7 Nov 2023 18:34:57 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org,
        robh+dt@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
        quic_schintav@quicinc.com, quic_shijjose@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1 controller node
Date: Tue,  7 Nov 2023 18:34:53 +0530
Message-Id: <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WQQYaKHxbPVlsMUQkAf1BeCwVuVPH4so
X-Proofpoint-ORIG-GUID: WQQYaKHxbPVlsMUQkAf1BeCwVuVPH4so
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-07_04,2023-11-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310240000 definitions=main-2311070108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_050511_427313_9C603E1A 
X-CRM114-Status: GOOD (  13.29  )
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

Add ep pcie dtsi node for pcie1 controller found on sa8775p platform.
It supports gen4 and x4 link width. Limiting the speed to Gen3 due to
stability issues.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 7eab458..acd7bd8 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3732,6 +3732,54 @@
 		status = "disabled";
 	};
 
+	pcie1_ep: pcie-ep@1c10000 {
+		compatible = "qcom,sa8775p-pcie-ep";
+		reg = <0x0 0x01c10000 0x0 0x3000>,
+		      <0x0 0x60000000 0x0 0xf20>,
+		      <0x0 0x60000f20 0x0 0xa8>,
+		      <0x0 0x60001000 0x0 0x4000>,
+		      <0x0 0x60200000 0x0 0x100000>,
+		      <0x0 0x01c13000 0x0 0x1000>,
+			  <0x0 0x60005000 0x0 0x2000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			    "mmio", "dma";
+
+		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+			 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+			 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a";
+
+		interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+					 <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+					 <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+
+		interrupt-names = "global", "doorbell", "dma";
+
+		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		dma-coherent;
+
+		iommus = <&pcie_smmu 0x80 0x7f>;
+		resets = <&gcc GCC_PCIE_1_BCR>;
+		reset-names = "core";
+		power-domains = <&gcc PCIE_1_GDSC>;
+		phys = <&pcie1_phy>;
+		phy-names = "pciephy";
+		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
+		num-lanes = <4>;
+
+		status = "disabled";
+	};
+
 	pcie1_phy: phy@1c14000 {
 		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 		reg = <0x0 0x1c14000 0x0 0x4000>;
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
