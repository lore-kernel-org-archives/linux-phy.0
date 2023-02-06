Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E71C05027
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87PJLCVHw2AHRQgGdu6TkuNRGWLktkTpXbiDhPfvy90=; b=cljkBv/w3sMZ4M
	a4qFNWE5/TCK88R49W7pqE4vVucC4mjENIIpFSLeM3/ImSctPYjJvB9wF9NM/KNVhs0qCS3wXgiw6
	MKw8ix5q4MTgkw0mxsE07aWLnTClmxNFEn98YaGTCUUUE/dTEQU/2Quvfg6l8srelKWPOmGLHprV7
	b68gWN1zqKSp8++PLIuZtmwAIakO/D658XPTzsjNZkOr2IKuDdkTdKG5YvFjRXKYjqKsdrS+u3DXX
	eSR1F2u7Q3gvQ8WXSFbbJeU0rMoLryZTdE8mGK5QNpd/urcMIODH6BKUocuGHgJV9PC5KTA+nfjhV
	qkuqjJGeCUQJfxloLcog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90e-009zQ2-OR; Mon, 06 Feb 2023 21:26:45 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90a-009zFg-Fq
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:42 +0000
Received: by mail-wr1-x432.google.com with SMTP id j25so8209059wrc.4
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vTcKxcUt8UcvtjzuvcqpLc4t1QkvewNgVR/Nzaw35to=;
        b=UXhx0pLnFkyU9hKNP/LgssT5Bsb/WMmhnbGsHaYRAsO/jHqvA6OTHcjx2yDr7R9wmx
         Zv0MNYExsiCPLC6wHhB7AFA00BnlWEZNHawY1u0k8BXnTLPrHLB88JMwV8HdpW9C07f8
         KYptN+SxprgLa/MVYpS8TwVi7pN95nYRilCnIg4tZ+n3lq5txxutAzkTcT37b5Aj+bE9
         rJZhIs4P647IQkIi42beShlGJAO9RnN+FDDCK6ypFbi60yxMlShmAJk/YmVn4fUsSZiM
         tsWjnz+wikmrcgYE3DzpJtZQPcDjYuV/wvrAXLo/y8sdeigFcG2C4usaeaWA0g7CIoKa
         3tYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vTcKxcUt8UcvtjzuvcqpLc4t1QkvewNgVR/Nzaw35to=;
        b=sHS7iNhl3wL+KmhrFwGUi/3EkgKv0J7LpQBvulOzTsOGJ2IGESoJmij/98XHAXhDKU
         4BXu20NNnLSvVJEEtjeOOnAzdOG7+EnXxA//Jk0dKqdg134/wZuA+KNvIMbTTPWElXKt
         5/men5gzOe/lXaxZWIkLqKMbgjJXf8T1gGz7iJ6ZfL/8o903fyP+x7bZsohWigTNaq9P
         RLI6tPYbmyjS91gL1s9p90i979ZeEvPLWSI4euA/Uwyfw5EE1haWhTSkhwJVmyPtL0AJ
         kORk/KRsPM2td9bD585X3w4Jh2gs2xwN9ViG75AQmqjDTP2yALNc+dU4xw7dWBCZ70K2
         qotg==
X-Gm-Message-State: AO0yUKUTHeqds7yWYkiUL8sZjNbalVzr5hPboN41+iPh7rSEq8ojBceW
	IOZfj4Kxwh810BjwRXzIqQTdSg==
X-Google-Smtp-Source: AK7set/eVv0yUPOvoZU+FEyaYuidbnFi39tu67Wg6NfQX2p+rUzZghfnGTigwBSTTWZOw0tkhcUedQ==
X-Received: by 2002:a5d:4cc8:0:b0:2c3:ea4f:2daa with SMTP id c8-20020a5d4cc8000000b002c3ea4f2daamr414294wrt.31.1675718799973;
        Mon, 06 Feb 2023 13:26:39 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 11/11] arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes
Date: Mon,  6 Feb 2023 23:26:19 +0200
Message-Id: <20230206212619.3218741-12-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132640_548495_63101B81 
X-CRM114-Status: GOOD (  12.75  )
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

First, move the pinctrl related propeties out from SoC dtsi and into the
board dts and add blank lines before status properties in the PHY nodes
to be consistent with the rest of the nodes. Then drop the pipe clock
from the controller nodes. Rename the aggre0 and aggre1 clocks to more
generic noc_aggr. Add the cpu-pcie interconnects to both controller nodes.
Rename the pcie1 second reset to link_down and drop the unnecessary
enable-gpios. Switch the aux clock to GCC_PCIE_1_PHY_AUX_CLK for the pcie1
PHY and drop the aux_phy from clock-names. Also rename the nocsr reset to
phy_nocsr. With this changes we are now in line with the SC8280XP bindings.

Fixes: 98a4dc3a78fa ("arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This time, this patch actually fixes the already merged PCIe related
nodes. When compared to the earlier version of this patchset, this patch
leads to the PCIe nodes looking the same. Sorry for all this mess.

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 10 +++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 52 +++++++++----------------
 2 files changed, 28 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 725d3bc3ee72..56aab7cafcbc 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -414,18 +414,27 @@ &pcie_1_phy_aux_clk {
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_state>;
+
 	status = "okay";
 };
 
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l1e_0p88>;
 	vdda-pll-supply = <&vreg_l3e_1p2>;
+
 	status = "okay";
 };
 
 &pcie1 {
 	wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_state>;
+
 	status = "okay";
 };
 
@@ -433,6 +442,7 @@ &pcie1_phy {
 	vdda-phy-supply = <&vreg_l3c_0p91>;
 	vdda-pll-supply = <&vreg_l3e_1p2>;
 	vdda-qref-supply = <&vreg_l1e_0p88>;
+
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6ff135191ee0..bba1123ea374 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1672,25 +1672,24 @@ pcie0: pci@1c00000 {
 					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
 					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
 
-			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
-				 <&gcc GCC_PCIE_0_AUX_CLK>,
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
 				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
 				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
 				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
 				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>;
-			clock-names = "pipe",
-				      "aux",
+			clock-names = "aux",
 				      "cfg",
 				      "bus_master",
 				      "bus_slave",
 				      "slave_q2a",
 				      "ddrss_sf_tbu",
-				      "aggre0";
+				      "noc_aggr";
 
-			interconnect-names = "pcie-mem";
-			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
+			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
 
 			iommus = <&apps_smmu 0x1400 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
@@ -1704,12 +1703,6 @@ pcie0: pci@1c00000 {
 			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
-			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
-			wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
-
-			pinctrl-names = "default";
-			pinctrl-0 = <&pcie0_default_state>;
-
 			status = "disabled";
 		};
 
@@ -1771,8 +1764,7 @@ pcie1: pci@1c08000 {
 					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
 					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
 
-			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
-				 <&gcc GCC_PCIE_1_AUX_CLK>,
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
 				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
@@ -1780,21 +1772,21 @@ pcie1: pci@1c08000 {
 				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
 				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
 				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
-			clock-names = "pipe",
-				      "aux",
+			clock-names = "aux",
 				      "cfg",
 				      "bus_master",
 				      "bus_slave",
 				      "slave_q2a",
 				      "ddrss_sf_tbu",
-				      "aggre1",
-				      "cnoc_pcie_sf_axi";
+				      "noc_aggr",
+				      "cnoc_sf_axi";
 
 			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
 			assigned-clock-rates = <19200000>;
 
-			interconnect-names = "pcie-mem";
-			interconnects = <&pcie_noc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>;
+			interconnects = <&pcie_noc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_1 0>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
 
 			iommus = <&apps_smmu 0x1480 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1480 0x1>,
@@ -1802,20 +1794,13 @@ pcie1: pci@1c08000 {
 
 			resets = <&gcc GCC_PCIE_1_BCR>,
 				<&gcc GCC_PCIE_1_LINK_DOWN_BCR>;
-			reset-names = "pci",
-				"pcie_1_link_down_reset";
+			reset-names = "pci", "link_down";
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
 			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
-			perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
-			enable-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
-
-			pinctrl-names = "default";
-			pinctrl-0 = <&pcie1_default_state>;
-
 			status = "disabled";
 		};
 
@@ -1823,18 +1808,17 @@ pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy";
 			reg = <0x0 0x01c0e000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
 				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
-				 <&gcc GCC_PCIE_1_PIPE_CLK>,
-				 <&gcc GCC_PCIE_1_PHY_AUX_CLK>;
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
 			clock-names = "aux", "cfg_ahb", "ref", "rchng",
-				      "pipe", "aux_phy";
+				      "pipe";
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>,
 				 <&gcc GCC_PCIE_1_NOCSR_COM_PHY_BCR>;
-			reset-names = "phy", "nocsr";
+			reset-names = "phy", "phy_nocsr";
 
 			assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
