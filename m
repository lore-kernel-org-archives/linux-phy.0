Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9D9606A31B
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 22:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S8CjwQ0S;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ZvynyYdM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z68wL5lJedkQ/xedu4OdMDf+XSM0/nVq9Gc89Ivp61s=; b=S8CjwQ0Sxkvrr7iOJ+lRNXRAZO
	63ilRYY7doc9t/Cb/6fxAO4CIOIplxUXhBT8BVASZL9WouSpotujU8lyMDO4fgiy3S9t6drMGH9uR
	JfPO7lEek042eacQ0vgXRvf5ZDAvYKsIXwozgmhnwohFrqd3AkEkcKvyKj9mMyOgaCbVy4twtKsn/
	YxCRdZLTEbwfnOKcruD7tgWVomJMUzyPqEYuIZNzf1G/H6Y/YRoqAQ8PZ5n8W0my0nNUVGypnlUcC
	6ekUso/MWG7tXgg9w6IExSDrq4ZysJOIjPQBTyZRy1Pr7ogvFEC5fi7ZR84GuyXPTx5Vs75cEnFuB
	4rlmczuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWR-00000003Nw8-3dka;
	Mon, 26 Oct 2026 22:50:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWQ-00000003Nvx-46Bs
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 22:50:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2C180601FE;
	Mon, 26 Oct 2026 22:50:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 127041F01828;
	Mon, 26 Oct 2026 22:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793055029;
	bh=Yymwnu6zD+vpaCEhbkClPScnqg2Frrzq7tYxOW9Q5bM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ZvynyYdMCDALgwVEZCxDgJMmutrvexEy4mofrRT+G/sqGWK9LzLeBL729MGYzCwf7
	 1PddGBbjVAhsKkP1TFcZeTM25WoIlVrzTEbCLl16TfxWZy77spwrCGzRFLi3aHPRdj
	 /dBTYt2ShWbbx6BB3q1caZ5m1eRrmDOhIkXz4ixMhRE2CSl3yCj/f+L4V2hpnIbsQu
	 CZqbr2bqcbzmHoXx+ox58E7ZimIVK4AV8xoVSm8Dgy1CrT85NDmYprriZtEUImuFfY
	 N/FAlc34Ls87mJECO5g+fZb2/TWN+IMC4gL0EAzU78yvx17/uFiN/+z8HfIYy0wPLA
	 AKLqJf5v1MKMg==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 6/7] arm64: dts: qcom: sm8450: Add CAMSS device tree node
Date: Tue, 27 Oct 2026 00:49:56 +0200
Message-ID: <20261026224957.1115370-7-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261026224957.1115370-1-vz@kernel.org>
References: <20261026224957.1115370-1-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add Qualcomm SM8450 CAMSS device tree node to the platform dtsi file,
the CAMSS input ports are connected to output ports of CSIPHY devices.

Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 173 +++++++++++++++++++++++++++
 1 file changed, 173 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index f429dcaf1075..b4f7672cec94 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3310,6 +3310,173 @@ cci1_i2c1: i2c-bus@1 {
 			};
 		};
 
+		camss: isp@acb6000 {
+			compatible = "qcom,sm8450-camss";
+
+			reg = <0 0xacb6000 0 0x1000>,
+			      <0 0xacb7000 0 0x1000>,
+			      <0 0xacb9000 0 0x1000>,
+			      <0 0xacbb000 0 0x1000>,
+			      <0 0xacc6000 0 0x1000>,
+			      <0 0xacca000 0 0x1000>,
+			      <0 0xacf6000 0 0x1000>,
+			      <0 0xacf7000 0 0x1000>,
+			      <0 0xacf8000 0 0x1000>,
+			      <0 0xac62000 0 0x3000>,
+			      <0 0xac71000 0 0x3000>,
+			      <0 0xac80000 0 0x3000>,
+			      <0 0xacc7000 0 0x2000>,
+			      <0 0xaccb000 0 0x2000>;
+			reg-names = "csid_wrapper",
+				    "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "tpg0",
+				    "tpg1",
+				    "tpg2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite0",
+				    "vfe_lite1";
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_2_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_2_CLK>,
+				 <&camcc CAM_CC_IFE_2_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+			clock-names = "camnoc_axi",
+				      "core_ahb",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe2",
+				      "cpas_vfe_lite",
+				      "csid",
+				      "csiphy_rx",
+				      "gcc_hf_axi",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe2",
+				      "vfe2_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite0",
+					  "vfe_lite1";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC 0
+					 &config_noc SLAVE_CAMERA_CFG 0>,
+					<&mmss_noc MASTER_CAMNOC_HF 0
+					 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "ahb",
+					     "hf_mnoc";
+
+			iommus = <&apps_smmu 0x800 0x460>;
+
+			power-domains = <&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc IFE_2_GDSC>,
+					<&camcc TITAN_TOP_GDSC>;
+			power-domain-names = "ife0", "ife1", "ife2", "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					camss_csiphy0_inep: endpoint {
+						remote-endpoint = <&csiphy0_out_ep>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					camss_csiphy1_inep: endpoint {
+						remote-endpoint = <&csiphy1_out_ep>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					camss_csiphy2_inep: endpoint {
+						remote-endpoint = <&csiphy2_out_ep>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					camss_csiphy3_inep: endpoint {
+						remote-endpoint = <&csiphy3_out_ep>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+
+					camss_csiphy4_inep: endpoint {
+						remote-endpoint = <&csiphy4_out_ep>;
+					};
+				};
+
+				port@5 {
+					reg = <5>;
+
+					camss_csiphy5_inep: endpoint {
+						remote-endpoint = <&csiphy5_out_ep>;
+					};
+				};
+			};
+		};
+
 		csiphy0: phy@ace4000 {
 			compatible = "qcom,sm8450-csi2-phy", "qcom,x1e80100-csi2-phy";
 			reg = <0 0x0ace4000 0 0x2000>;
@@ -3349,6 +3516,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy0_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy0_inep>;
 					};
 				};
 			};
@@ -3393,6 +3561,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy1_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy1_inep>;
 					};
 				};
 			};
@@ -3437,6 +3606,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy2_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy2_inep>;
 					};
 				};
 			};
@@ -3481,6 +3651,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy3_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy3_inep>;
 					};
 				};
 			};
@@ -3525,6 +3696,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy4_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy4_inep>;
 					};
 				};
 			};
@@ -3569,6 +3741,7 @@ port@1 {
 					reg = <1>;
 
 					csiphy5_out_ep: endpoint {
+						remote-endpoint = <&camss_csiphy5_inep>;
 					};
 				};
 			};
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
