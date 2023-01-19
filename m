Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65FDBC00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GB8fFhpYLLZV7/9inHv9GdVr/5L42rs5U4tVC+Z46hI=; b=dBQ8Zu8VhIm6VV
	M+BMAa9S4oLcWnPLB7/QyuGzQtWuKDase6mID7fhpvQ6D9wdC6H0aHKZWq4MtLDlgwU1kJc8zE0ug
	d+5hP7oU8GJUIuIS/j37iF3TN/4vRqk+BKP69Rq8T0PDIY9MGmQ9dgCh+3MGmRlslfUg9eWAGWgn8
	lWPGO14zHo/fLg43h0TSNcnvDqWRIy+t46wGbdZhWisxBUxRN5V6wX6fA9/15/KjJkZSNSx8/ceZ7
	V6KgTMctjEA/APKFF3cTNN3l19IG5ibj0Zh1J+B1ITdlN0VZSSm2EH7/juWFsYJP/ffHjuYgtc3/j
	MI2A874gPFQ3Ei5rnsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXn-005EKU-MH; Thu, 19 Jan 2023 14:05:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXi-005EFu-9P
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:28 +0000
Received: by mail-wm1-x32d.google.com with SMTP id k16so1628102wms.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAv8RcQ1Bsx8gUbogF4715qXGJcbfiJKjivsfn1yiu0=;
        b=Un5qh1G61U2quJ4YHwSunBiI5bgC2y7hlWhl5OcJWpUokh8XTKIfJQEhIbMWzQYsWw
         IZuusnyHBXsiDSC+4bzZKWiCDmGwF1c8vzsTd1Ox5Ea7FbNLEB6yxOpQoZWWmDP3hxrL
         UYiFIb0rvKLjuZzLqUN5kKwAY8sZuAYtGzkFVMoMDqsSPNkb4Y9aV2t/2hlWojIgVceG
         OWyyaW8IPZzjl4Xr1w3S118riPD9eCHppjVmYui+h6iqJVIFO+sea2qvIhKwsSJ/aK90
         rom/7t75Dj47VPzUYMfmVEvAJzzzoP0p9a7JOZFPtZN5zx885WN9+Qrwd3kJ9PcwctZ0
         5qJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NAv8RcQ1Bsx8gUbogF4715qXGJcbfiJKjivsfn1yiu0=;
        b=YukZMfk8/GwYpm7mMIu5/RtApYq0Cq7FaDn6xs6X9cF6jOn+lGATprQjrO4pd6cblo
         eZH1lqezoY3GW3rIcpujtprDbgxAxQdPAB1TvlFM/DpKjzxdRc5f/6BmblPzx+kScHiY
         xqWiSwMqAx/eLhy/ydtkmz4UTIEmN68aFlayL5XZEbuf8MfKwCV1ZGUbBiULNNxiimzJ
         NFqdz2EsC6fh8xZzflOZSiXyheZGF59lryrZ92Ak+fa088h261Dq+JK1/Ua5sUcfr4Le
         Se6mEWidbNDPxN2WfoEm6xweUtLDtFB4MEmdKk+/AQwFifTyEuOfnw1/aKx8LR4LlFOd
         sbFQ==
X-Gm-Message-State: AFqh2konXv4EO3BWBmn38VV95rorAwy2JN2vG+79+oPcvNR9p679iUGQ
	xFzUNXMwgBtzpSKEQ+cEAmH1RA==
X-Google-Smtp-Source: AMrXdXvNimNVMZd4GNxnoKqiU8p7SMQZhUSbnav5PScz9DbZKO4L2hvQNsjkVD9T5qifKhNehJxhGA==
X-Received: by 2002:a05:600c:3514:b0:3c6:c6c9:d75e with SMTP id h20-20020a05600c351400b003c6c6c9d75emr10922437wmq.0.1674137124983;
        Thu, 19 Jan 2023 06:05:24 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:24 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 11/12] arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes
Date: Thu, 19 Jan 2023 16:04:52 +0200
Message-Id: <20230119140453.3942340-12-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060526_447245_1A9CAD2C 
X-CRM114-Status: GOOD (  13.03  )
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

Add PCIe controllers and PHY nodes.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This patch does not have a v3, but since it is now part of the same
patchset with the controller and the phy drivers patches, I had to
bump the version to 4.

Latest version was here (v2):
https://lore.kernel.org/all/20230118230526.1499328-2-abel.vesa@linaro.org/

Changes since latest version (v2):
 * renamed the pcie_1_link_down_reset to simply link_down
 * dropped the pipe from clock-names
 * renamed aggre clock-names to noc_aggr_4
 * dropped the _pcie infix from cnoc_pcie_sf_axi
 * dropped the aux_phy clock from the pcie1

Changes since v1:
 * ordered pcie related nodes alphabetically in MTP dts
 * dropped the pipe_mux, phy_pipe and ref clocks from the pcie nodes
 * dropped the child node from the phy nodes, like Johan suggested,
   and updated to use the sc8280xp binding scheme
 * changed "pcie_1_nocsr_com_phy_reset" 2nd reset name of pcie1_phy
   to "nocsr"
 * reordered all pcie nodes properties to look similar to the ones
   from sc8280xp


 arch/arm64/boot/dts/qcom/sm8550.dtsi | 207 ++++++++++++++++++++++++++-
 1 file changed, 204 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 3d47281a276b..8df226530d76 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -646,9 +646,9 @@ gcc: clock-controller@100000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
-				 <0>,
-				 <0>,
-				 <0>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
+				 <&pcie_1_phy_aux_clk>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1547,6 +1547,207 @@ mmss_noc: interconnect@1780000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		pcie0: pci@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sm8550";
+			reg = <0 0x01c00000 0 0x3000>,
+			      <0 0x60000000 0 0xf1d>,
+			      <0 0x60000f20 0 0xa8>,
+			      <0 0x60001000 0 0x1000>,
+			      <0 0x60100000 0 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr_4";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "pcie-mem";
+
+			iommus = <&apps_smmu 0x1400 0x7f>;
+			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
+				    <0x100 &apps_smmu 0x1401 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_0_GDSC>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pcie0_default_state>;
+
+			status = "disabled";
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c06000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		pcie1: pci@1c08000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sm8550";
+			reg = <0x0 0x01c08000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf1d>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x1000>,
+			      <0x0 0x40100000 0x0 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x40200000 0 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0 0x40300000 0x0 0x1fd00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <1>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 435 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr_4",
+				      "cnoc_sf_axi";
+
+			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_noc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "pcie-mem";
+
+			iommus = <&apps_smmu 0x1480 0x7f>;
+			iommu-map = <0x0   &apps_smmu 0x1480 0x1>,
+				    <0x100 &apps_smmu 0x1481 0x1>;
+
+			resets = <&gcc GCC_PCIE_1_BCR>,
+				<&gcc GCC_PCIE_1_LINK_DOWN_BCR>;
+			reset-names = "pci", "link_down";
+
+			power-domains = <&gcc PCIE_1_GDSC>;
+
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+
+			perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
+			enable-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pcie1_default_state>;
+
+			status = "disabled";
+		};
+
+		pcie1_phy: phy@1c0e000 {
+			compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy";
+			reg = <0x0 0x01c0e000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
+				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_1_PHY_BCR>,
+				 <&gcc GCC_PCIE_1_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy", "nocsr";
+
+			assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc PCIE_1_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie1_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
