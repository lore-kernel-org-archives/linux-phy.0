Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF4ECA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 05:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2+Ln2wVN5HKQDYaOjmv5wO0lLpVdXQT1Dz9mGmrLUM=; b=TMNxx3D9l8t1B6
	pAZpvRSRgnhY719ZOzVEft9iJbypM8fcfmMWIfWGmrjInCflhzrLwyWhKP1xFoXgSQDUyb252NYQ9
	Il1+eiQ903HZWM19RVEJ6cmgfnKd4EB+3aj+yEzQEIuESWXIrI+MM19SHp1XaCdhCPo0zlbml7wyW
	PANVHhorafEidOzD7xzn/RpWFDltfGpzv/rN9IeiIpcuyfZcNurxFYwKjn4rVbr52NE5Pm5xMeGaw
	cFGjfr+1OLrjPQfkOqMxqrJFgiZqUcqj6ju5fG0Bw4dm6U98vBNr4pEMb54UqDlu0F+Mr7LSrDzVR
	I86SOhHy4zZSyx07cPOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm55-0000000AZr7-03ZK;
	Tue, 26 Aug 2025 05:18:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm51-0000000AZoy-29Gi
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 05:18:49 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PHoTbM023313
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IxIQhQomQAS30o8yPqwEl7kh8ZQDR41lcq928axCQDI=; b=iZQFJmYgymzD0KwO
	hq0Ilgf4IShgyC8RalL6l8DoOy6K0BUGAYgNz5Rjz0EWVPKoNBNsKW0acwJQXxTW
	7sIlOEEi/2VVmLWfVwRGCnwiimJ9ERDrJmvBNFY8tsnbMc6u8z+pJvl02sEkX2M8
	H6byKAAX/Yo+zVdy01wYNAHrkFpbJH8mMiRD/fSV/Zapus96ryZ3lvDwPbeJbkxK
	PkMdIPxsDYYrPHFxi8hgi2zjgDSdAtyNblzkkbFoXDQYOCM/nRK6ksQ5V9MpH+tT
	YACTSLJwtRfP7ivbLgesbyCQXJj/ja1YishqM7VpQ1Gk7iIc5LoLZPkT0cFMk9r8
	AK/ClA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5fby1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458274406so106662745ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 22:18:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185524; x=1756790324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxIQhQomQAS30o8yPqwEl7kh8ZQDR41lcq928axCQDI=;
        b=iwdoiM9jLCmsPfzmqHhicvVg91Z2tgYEsgvFwsWNLwEFU15BOY6cgyqQspG5mZP4fz
         mCqLTVOmtARohcHQwnyUWilHyc1udRWpuPPb33zx4Oo39JxJD5CFFatMpmxgQ+nrtF6P
         KokMPMqk0dA+PfDW6X/tutpqfc+oa/PM/hLFWeOGWLCn8Y6PvEzyxbouM4DfCvduavYb
         zggAlqwFkFb/1KCxMYoWgeGCPVxgahVJJscO+xzC0g7VvLCrIyXjuR0JOuaW/oMqYqEY
         RvjjWUZ279KCg/I1echpEwWl7aLF388Q/02M32GEVjCao70A8zWhKSYB2WiRC38X8HYn
         IIRg==
X-Forwarded-Encrypted: i=1; AJvYcCVxfz2tgE2JSkPDRNzKspx1fatM/UqR6DjZb3c8WrI96+4lTF14iGRtwYFzzVeI0PHHMpkX1Q9V12c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7NVNCd9f/00halhjeYt7XM+qOMMTZ3SN5o8eZwy1MrX1av4VA
	Py6v5uaqNaKrBTYTTmwLL5mNWY1wdhmbU5d6aqybgSCx9P6hKJ/loDaX+SeRW6kfM87zQfj38jh
	l4iNjOLAODJOzdfzo/0JJ+LLBfBxgH7ZYWXFM3F4gq0jdJQf7YcHGss5CAMOS/zMbfWAB
X-Gm-Gg: ASbGnctasJ1C0MJguNQGelFXLT+WeaKitvbbzv9Yy2MdKGB+gkvpQDLex508qwWb995
	x+doDUUfvsb1ybTZEoOfkiWUBcZoHlUxn2cIYDPYBlsLHwiardGwa+dXcJJBAyEVQPIGxkk7aTY
	DY50OYdsYPv6V38nkftn76LeQpzuemISNbKZLj8nGwIimj/9sDRHwUoPpz85WcVNwY2/ZtPVHS0
	d/KtipC2UjV1nIkAIaA8Bmo98gYd5uE1+idZOwN/OrkyoAEuBto35B62QuZaT5edPGLeABUDu0j
	S/AnucuQGGpC5/oLXdvdsPpVUWGID+jn5BXVG2q2SOvR+XxHRnNjzqDG1HKapZUHMXpXiPP7D4s
	=
X-Received: by 2002:a17:903:943:b0:242:fbc6:6a83 with SMTP id d9443c01a7336-2462eb56b82mr177780715ad.0.1756185524170;
        Mon, 25 Aug 2025 22:18:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFX3TMLLF5RGUjImujhUiJJJdz06q4Fy/jsgcEQz16clUz8K2CImmOBj3T4PPf1c1qbPHaODg==
X-Received: by 2002:a17:903:943:b0:242:fbc6:6a83 with SMTP id d9443c01a7336-2462eb56b82mr177780335ad.0.1756185523609;
        Mon, 25 Aug 2025 22:18:43 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889f188sm84348085ad.146.2025.08.25.22.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:18:43 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 10:48:18 +0530
Subject: [PATCH v2 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
MIME-Version: 1.0
Message-Id: <20250826-pakala-v2-2-74f1f60676c6@oss.qualcomm.com>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756185504; l=5880;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=uCwKakbnHqxRUEDYJHDENZK4dZF8AH52XyIcvvLd2js=;
 b=ise42hD2nTQ10dwjroKa9xdReGeV1dtmySWMmkUqMGZo+f1azalWvfjiqUG10TzJPTeujMLE2
 0H+JqeFsKG6CNY/lgKTNB54NE/IwCPGS1uQkArNUKJPSGLUyI/PPAY4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7o70tHmFm9Cb
 Riwyd13YEyeGshhPCmVNVq7du6c4FbuBQIXsm4Ao7KacaxKLkeAPZeUsXA5KomWqIjYSWoCpOHK
 vtEfnHypVSAML4AXUUcs4BbGVFXNS2HjAEL547pvOINxnTx7O6vhtZN2HF5+bVolcVbbu3JoksA
 0JMviSCK/ZJO5mhPDMEmcwRM2ZnYsX/gCyAU/mWKFfc3zOmzXbgazDO5WniobZQshvVxAQAhpCI
 VsWY5VTSVwnOzDR6c63gk02Pf/1jIFjJ1RzXUU/JgE4e6cUGYH3h5S94I48a3QJDGSq27xZptfU
 I/y3SsG/q++Q/nS/SXHJ3XjVKggQnRDYnz6sF4OVbdPU0ydy03j1uX8FXRe0J6JHOW6BDLKuHqy
 brSaASI2
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ad43b6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9
 a=3hQ7FE4IOERBLyhA:21 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 62NeVFVUOV6ctJYEdk0WsBpSI3-8ZprA
X-Proofpoint-ORIG-GUID: 62NeVFVUOV6ctJYEdk0WsBpSI3-8ZprA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_221847_680048_A7E14281 
X-CRM114-Status: GOOD (  14.18  )
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

Add PCIe controller and PHY nodes which supports data rates of 8GT/s
and x2 lane.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 180 ++++++++++++++++++++++++++++++++++-
 1 file changed, 179 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 4643705021c6ca095a16d8d7cc3adac920b21e82..b47668a64bcead3e48f58eeb2e41c04660493cb7 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
 			clocks = <&bi_tcxo_div2>,
 				 <0>,
 				 <&sleep_clk>,
-				 <0>,
+				 <&pcie0_phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -3304,6 +3304,184 @@ gic_its: msi-controller@16040000 {
 			};
 		};
 
+		pcie0: pcie@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf1d>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x1000>,
+			      <0x0 0x40100000 0x0 0x100000>,
+			      <0x0 0x01C03000 0x0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x23d00000>,
+				 <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x00000000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+
+			msi-map = <0x0 &gic_its 0x1400 0x1>,
+				  <0x100 &gic_its 0x1401 0x1>;
+			msi-map-mask = <0xff00>;
+
+			num-lanes = <2>;
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
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "cnoc_sf_axi";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
+				    <0x100 &apps_smmu 0x1401 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			operating-points-v2 = <&pcie0_opp_table>;
+
+			status = "disabled";
+
+			pcie0_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+
+			};
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				phys = <&pcie0_phy>;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c06000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8750-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
