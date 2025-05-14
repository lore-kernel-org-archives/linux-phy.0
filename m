Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54EF0C3ABC5
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 05:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u313iaVrbtrBCTjRseU9M0o94yza227Oiro5kEUTxKI=; b=eVAlJMGe6rFXnT
	ZkoAzGOVX1V0tRxCxBlNHxmirEBu6IAzKkp1rb/ZsVegdKsNFrthFNSaU7jas09ngY4IlTDjpMuMu
	B+nJqfqJEyylIRbWlbQsJsozlHfgIas1JAy++0f6himiAxtcw1RTeQRE3MzEFGF7fNEnFS0qAMYBs
	oT94oFhqMry+k8w/calOk6rkKX9c7e/DKyc76gac/6XqWKDec3KHczOqHbQBLCE7IoiP6Zso/jSA+
	KLaTH3ZG+Ku9vQQMx+BlsFZYzqyz+GpIrKqjptq+iHcgEQNXpN2JFKbe7uXDv+L9/ihlMEVVl0ExJ
	TbfV0klKuPWQElkr2GyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF52k-0000000E6tU-3W8T;
	Wed, 14 May 2025 05:52:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF52h-0000000E6sS-3Hp6
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 05:52:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3193B4A3BE;
	Wed, 14 May 2025 05:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD726C4CEEB;
	Wed, 14 May 2025 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747201953;
	bh=sl5S3py+PsmzdcMi50Xo1/5ZH5rrSt1MsKJo9izB46g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=aIlvKXYKqZczm9MJ8foYuW50Sh2mAiDPDf58Q41hstEsyxzoJcUhw68CV6NCiVdiZ
	 YomeG6LJFxzQpElsPeqbFg0r+sieJ1GzGwkVrdslBVcYxh7dbQZaDkFNWWKxWgoqqg
	 X5SRb3sC5OFXnjpRs5e08AacU+7eIPYr36YXhqG7hGrtQzlIvDGYkT0++kD9RyfwjG
	 LZ+yfBcFDyVw3Rt3HUsVlVC+2WAqHYVzeN07MhSpRv+XJewsesVXRPQynOFl+YybLH
	 9DpIO1fgSekIAZmG4vbm88tsHpGuFmS2XpMxQIkDcATIgVs+O0aSgwbXtbBvIyIv4g
	 nldsVmlSgrmIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB656C3ABD9;
	Wed, 14 May 2025 05:52:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 14 May 2025 09:52:13 +0400
Subject: [PATCH v10 1/2] arm64: dts: qcom: ipq5018: Add PCIe related nodes
MIME-Version: 1.0
Message-Id: <20250514-ipq5018-pcie-v10-1-5b42a8eff7ea@outlook.com>
References: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
In-Reply-To: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 20250317100029.881286-1-quic_varada@quicinc.com, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Sricharan R <quic_srichara@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747201951; l=7936;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=TQ9P5zDgZsiAzv1uV71g7uHJCIJJnk28uxRlry0aCGw=;
 b=qfXvlUA4GsgQ9/uqyApsJTsuqHru9BFsnuZvNmFwcDrO+F4yacr1gF7kx9b/x88UM7p4aH6NM
 nG46BnQg/+ABDBLm3LkMguguX7Tx9iILVP60K+gGZDXxLCvDFESMVaw
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_225235_872428_0677CF72 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Add phy and controller nodes for a 2-lane Gen2 and
a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
one global interrupt.

NOTE: the PCIe controller supports gen3, yet the phy is limited to gen2.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 240 +++++++++++++++++++++++++++++++++-
 1 file changed, 238 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 8914f2ef0bc47fda243b19174f77ce73fc10757d..76706fb1415d74858dc5a14444cdb2ee60a3a2df 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
 			status = "disabled";
 		};
 
+		pcie1_phy: phy@7e000 {
+			compatible = "qcom,ipq5018-uniphy-pcie-phy";
+			reg = <0x0007e000 0x800>;
+
+			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
+
+			resets = <&gcc GCC_PCIE1_PHY_BCR>,
+				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			num-lanes = <1>;
+
+			status = "disabled";
+		};
+
+		pcie0_phy: phy@86000 {
+			compatible = "qcom,ipq5018-uniphy-pcie-phy";
+			reg = <0x00086000 0x1000>;
+
+			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+
+			resets = <&gcc GCC_PCIE0_PHY_BCR>,
+				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			num-lanes = <2>;
+
+			status = "disabled";
+		};
+
 		tlmm: pinctrl@1000000 {
 			compatible = "qcom,ipq5018-tlmm";
 			reg = <0x01000000 0x300000>;
@@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
 			reg = <0x01800000 0x80000>;
 			clocks = <&xo_board_clk>,
 				 <&sleep_clk>,
-				 <0>,
-				 <0>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -387,6 +421,208 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		pcie1: pcie@80000000 {
+			compatible = "qcom,pcie-ipq5018";
+			reg = <0x80000000 0xf1d>,
+			      <0x80000f20 0xa8>,
+			      <0x80001000 0x1000>,
+			      <0x00078000 0x3000>,
+			      <0x80100000 0x1000>,
+			      <0x0007b000 0x1000>;
+			reg-names = "dbi",
+				    "elbi",
+				    "atu",
+				    "parf",
+				    "config",
+				    "mhi";
+			device_type = "pci";
+			linux,pci-domain = <1>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			/* The controller supports Gen3, but the connected PHY is Gen2-capable */
+			max-link-speed = <2>;
+
+			phys = <&pcie1_phy>;
+			phy-names ="pciephy";
+
+			ranges = <0x01000000 0 0x00000000 0x80200000 0 0x00100000>,
+				 <0x02000000 0 0x80300000 0x80300000 0 0x10000000>;
+
+			msi-map = <0x0 &v2m0 0x0 0xff8>;
+
+			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
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
+			interrupt-map = <0 0 0 1 &intc 0 0 142 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 143 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 144 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 145 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
+				 <&gcc GCC_PCIE1_AXI_M_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_CLK>,
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_AUX_CLK>,
+				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
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
+			reset-names = "pipe",
+				      "sleep",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "axi_m_sticky",
+				      "axi_s_sticky";
+
+			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0: pcie@a0000000 {
+			compatible = "qcom,pcie-ipq5018";
+			reg = <0xa0000000 0xf1d>,
+			      <0xa0000f20 0xa8>,
+			      <0xa0001000 0x1000>,
+			      <0x00080000 0x3000>,
+			      <0xa0100000 0x1000>,
+			      <0x00083000 0x1000>;
+			reg-names = "dbi",
+				    "elbi",
+				    "atu",
+				    "parf",
+				    "config",
+				    "mhi";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			/* The controller supports Gen3, but the connected PHY is Gen2-capable */
+			max-link-speed = <2>;
+
+			phys = <&pcie0_phy>;
+			phy-names ="pciephy";
+
+			ranges = <0x01000000 0 0x00000000 0xa0200000 0 0x00100000>,
+				 <0x02000000 0 0xa0300000 0xa0300000 0 0x10000000>;
+
+			msi-map = <0x0 &v2m0 0x0 0xff8>;
+
+			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
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
+			interrupt-map = <0 0 0 1 &intc 0 0 75 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 78 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 79 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_SYS_NOC_PCIE0_AXI_CLK>,
+				 <&gcc GCC_PCIE0_AXI_M_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_CLK>,
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_AUX_CLK>,
+				 <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>;
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
+			reset-names = "pipe",
+				      "sleep",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "ahb",
+				      "axi_m_sticky",
+				      "axi_s_sticky";
+
+			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
 	};
 
 	timer {

-- 
2.49.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
