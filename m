Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB74DC982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06G3WiGTUW9tfmBnlJJwGtRpTH0yIRH8sDnq80+1xuY=; b=HwozCV8nHl8B+B
	ogNlT5ilkUoOgdRu6RcTeO7beJQJED96J7UmmtZ4oUpeGvQIcK/jQRTpNG2GtRO3UOnDoHl1ZOuNp
	+vkfmmwoZHwJkKoTIAhSjHQbkZMp+dZriJorRswlNmylNOZDutOi8xyhbzK6dVy37/2axhPV7+QJx
	VjFOQBQxRJWicsnEjh+oEKsUedd76xyMmWET6by9aW/aNDTZ2Ly9vkuG3v0vZE94Eg6p54HMENQbA
	65RiTL+lDVBwbY6l27gPIOxPEGFbIOu4MsqPq4jUOJDEMMHODxfDUFRBLWi0NmQE42qlHUeRUpe9v
	p/ZFdMcuFQJl/tOls4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjx-00000001ngS-1XRp;
	Mon, 21 Sep 2026 10:59:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjp-00000001nY5-14gF
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:59:11 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAdujh287308
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:59:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bxDVMzkLfjTB9Td7IISpP/51j56rq67Hcj0lw1/B75s=; b=L51C3IC6zElpYgt1
	kHHISR98gHQ/qveUspUUMni1bx7Dfeb/KQkkxlGeQBGXF2aIqxEkx/1ACLubCDfT
	uOp76IskUmbWe6iuirOgcnZsJL2gS/qHaxJBErbho+tAUuH82AfZMxyHa09hOB2w
	37SmBIuD3L/K1H+iIWR6GNuar8DM1aZ1HRQhUy+IDZxRwAq7QiuVFEd4WYkCnCA5
	cS2gCe3LVaqLlpblG4hCuax4LN1keuVC4fVbvGX1VmOjkLLd40ftxQyYDcGbNkeS
	iUY/LNd41mF0dhsqW2vMwg+d4ulvbSDDQDc4H1FqHKlTlBmO+AIAcA+PmoaEWFal
	14sNvA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu0rj0q4w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:59:08 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc4922b7c31so2840039a12.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988347; x=1790593147; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bxDVMzkLfjTB9Td7IISpP/51j56rq67Hcj0lw1/B75s=;
        b=Ezr6mMWJfLio3W25srZB8vNkpvVRh0me/NZDYUQGfdxMObZtXpLYT7ete+14ZXvEgu
         23lM1Dr3nBlfBQ84X3vHjzjttqTljHaB9FtWvdd8bCKV1C9fa+uEo8A6yT9o3h89HjFL
         ptxfhEth9KHVHfAk1W1POhctIm2MSeIRTF4tfbRa7eaEwqg3JO6yLBAD/+KXnCZQWBnm
         YrCq/qyPMZHTaY2n+90NqIqQS1+DchvKS9uK5b257mBr0qNAL4wqLlkj3VsOTUIJIwVE
         HiguhI++hP55lLRzjCyxf73KklcC0pp8qFM2PL1U2zVqyAAkfzUiCOsMf5opoplhvNxh
         e/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988347; x=1790593147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bxDVMzkLfjTB9Td7IISpP/51j56rq67Hcj0lw1/B75s=;
        b=xWSkfqF6Rgyv8SJ0lKsj5alog2PmpZhZFicig9vzWPaGwb2Uqj/IV5LQtoH9BlKWtD
         ZjepX5oF0hD41oxLve2TbuWSucA+jUFURoswvTuAeiq+BAQENP9QeGUBMECd1yzeITF8
         inp4m3PBfRqtTwQK9MtMnuKFXBdPYSeq4euQ95+hlelC7/ujBF8xcDaM1rxHUhQTcBUj
         DnVYQPDewX6+g0i0s6tikibp7Il8NUpSap2EQsPVOAkMlunqT/RuDr4zxbUB9lfxO3Fp
         nT0e4pjWIfa6SZ8I8w2l2xcddQBJ5LFRfMvITenVfCEVUnDizvtC3/XCgIo30J/Nji3l
         pNIA==
X-Forwarded-Encrypted: i=1; AKwUvByao49EL2LLTH3jrJ/dZ9K6hXLT9cUNw/PKpug3jX0JUeo5WWdyLXtkq+gM9l+dLL1jfu2Um5CzSr0=@lists.infradead.org
X-Gm-Message-State: AFuF++lDsa/d8EsTOkkb52AL3OAiX4us0WuxontwcCOk7H0aoeo32DhO
	V+fCrFMAyZqs5vY80C66W0RBEleyFWMdW7MojPve1ccnQPCxCYNpXmQ2zJ/HWiYCHeJwCgQOcxx
	3GCPHUGFB3OT82jZgazjb9gPW69cSpxSnmDF/y9TUVpuCFcjufb+RLXqPAgWdDF0ncthB
X-Gm-Gg: AYBFou3E0fXbq/gHyislWDKlg+gixy6oHl0aP30SxkSEjBiSmGwK3rWPF5+1d8nUiUg
	xtRFFP5tYVvPTB1GzQeB4M+g5xqughU3KhFvYsqeT0M8p7GNvHfCY3fN9Gt74ZylIPTny3spsoE
	5UYsH3XDNq2zeDotDKMTUZ5BKfBY5Q1PU2yz9qxOugnAfqaH/6rwxjws3HHgbqLfb8+Lga9CzIw
	tk+MDeeNJgdxWmAjGu9BZFNeDiTqBuffcbnNTAdG4cJhVK9AAk/7wo08I1qHikCa4YJPUBKDpnc
	i7xViVeHteJAsFErfPdg8hogSw5Gj2CgZ8fNAd+CEs9q1GlVng0b0ICtx8H4JuovBfrxzrfL3iE
	K/el2fGcE+rB8Oy2oh+z3c6RzN/AwmNeInA==
X-Received: by 2002:a05:6a20:a10f:b0:3dd:a196:30a4 with SMTP id adf61e73a8af0-3dda19633d1mr9696191637.84.1789988347126;
        Mon, 21 Sep 2026 03:59:07 -0700 (PDT)
X-Received: by 2002:a05:6a20:a10f:b0:3dd:a196:30a4 with SMTP id adf61e73a8af0-3dda19633d1mr9696165637.84.1789988346686;
        Mon, 21 Sep 2026 03:59:06 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:59:06 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:17 +0530
Subject: [PATCH 6/6] arm64: qcom: monaco: Add PCIe Endpoint nodes
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-6-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=5508;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Y9MzhqW8PXyHjlYsNPbgyxZMbRfb9+ARhlcykvF5nuI=;
 b=NLJTJpRfvCihkHu/Mu2lK7vwZT6HDjHInRC/KmKYJT7DBvDeKQna5xui858Sf/joQD6oK0A0/
 Gs8qAt0eWdqDtVsR3T5xJvyJM5H4HdYOregyB5ahJN8J/JiYzXxkBP4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1OSBTYWx0ZWRfX0PRuGF3ehCNr
 Cuw1Qp+O0B3IZ98zWlzZEz8mzOFj8UNeawSvCImwRj38t/c5HaMDQmJlU9B5UbdEBDm/5ULXUKP
 eZW5h4bhH8LUhz2CMfaAMPoFIf0cv9w=
X-Authority-Analysis: v=2.4 cv=AsR7T+9P c=1 sm=1 tr=0 ts=6ab10dfc cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: -Wcw8NYK1F8X1zAlDxggX4X89bwnCEPw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1OSBTYWx0ZWRfX/rwbs6tHgXhs
 nDs3/rM/AVZQ+FBVliv4Xnrotow56/lKrHiWZHTDt0mCasZEkXQLFFa5qlkTMugzzJ2mPk5mW19
 NoZ7kLZavjkI7pvyA/zTT5C0QrfCs/Zc/gF9ub2dPh3Ts/+0oJjHdF3CiVvRXBnRrWK8d6sH06B
 58S7MrvK+5Dv2rv9I+upxCCfn4RmbJqajsr5GWyQWQgCm0/qzV9H/HjwOBltRIR8oC8flrcPRYF
 42d7l6aUa3vZQy71xeahZcuVqcWY/f0OFP4/nFiNu+fJStBKj0z50rxyeYBDtyYR1LbrtJuMHtg
 JW4EFSXwyP3wSXVo0Sj0zzAQowMVCVPhXu82w3sSYukzhKDrXazBaRRpZELQnQEdnFn9mW4s0L7
 9SWtBsM3WklyOsbn55V2NxdhGhejhrRT+XJnyeOj0Lrp6Kfq7yIoD2V3amPNM5qxpYkbwPNBlQj
 iRspYblCfS9kut42I5w==
X-Proofpoint-ORIG-GUID: -Wcw8NYK1F8X1zAlDxggX4X89bwnCEPw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 impostorscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_035910_597271_E510FC16 
X-CRM114-Status: GOOD (  10.34  )
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

Monaco has two PCIe controllers that can operate in Endpoint mode.
Describe the Endpoint nodes for both controllers, including their
register regions, clocks, interrupts, interconnects, IOMMU mappings,
resets, power domains, and PHY connections etc.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 144 +++++++++++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index d7d135e87a8c..8f2f0941383a 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2405,6 +2405,55 @@ pcieport0: pcie@0 {
 			};
 		};
 
+		pcie0_ep: pcie-ep@1c00000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf20>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x4000>,
+			      <0x0 0x40200000 0x0 0x1fe00000>,
+			      <0x0 0x01c03000 0x0 0x1000>,
+			      <0x0 0x40005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0000 0x7f>;
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+			pinctrl-0 = <&pcie0_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <2>;
+			linux,pci-domain = <0>;
+
+			status = "disabled";
+		};
+
 		pcie0_phy: phy@1c04000 {
 			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
 			reg = <0x0 0x01c04000 0x0 0x2000>;
@@ -2596,6 +2645,55 @@ pcieport1: pcie@0 {
 			};
 		};
 
+		pcie1_ep: pcie-ep@1c10000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c10000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf20>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x4000>,
+			      <0x0 0x60200000 0x0 0x1fe00000>,
+			      <0x0 0x01c13000 0x0 0x1000>,
+			      <0x0 0x60005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0080 0x7f>;
+			resets = <&gcc GCC_PCIE_1_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_1_GDSC>;
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+			pinctrl-0 = <&pcie1_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <4>;
+			linux,pci-domain = <1>;
+
+			status = "disabled";
+		};
+
 		pcie1_phy: phy@1c14000 {
 			compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
 				     "qcom,sa8775p-qmp-gen4x4-pcie-phy";
@@ -6225,6 +6323,52 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			pcie0_ep_default_state: pcie0-ep-default-state {
+				wake-pins {
+					pins = "gpio0";
+					function = "gpio";
+					drive-strength = <2>;
+					output-low;
+				};
+
+				clkreq-pins {
+					pins = "gpio1";
+					function = "pcie0_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio2";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
+			pcie1_ep_default_state: pcie1-ep-default-state {
+				wake-pins {
+					pins = "gpio21";
+					function = "gpio";
+					drive-strength = <2>;
+					output-low;
+				};
+
+				clkreq-pins {
+					pins = "gpio22";
+					function = "pcie1_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio23";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
 			cam0_default: cam0-default-state {
 				pins = "gpio67";
 				function = "cam_mclk";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
