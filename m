Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D83C4D49795
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 04:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAUeJtJ3pITrP0RqTAgzoCeF+of1iWa4Yx9NqB7M9Sw=; b=XLfO52K5gHOqQm
	bf4+IPs1Vn6VFWi4G8GRNMfkTWTe1SdIEQphf/PAxVykAOjBLmChKk3LUqKJeQ5cLOCnl84Orc61n
	VC3gAp9J8sOfleX8cBB3AnQzpnBzC/MSqtTc3RWaZeXzGycuX+4Zk3mLy9ioOzQcYOc3OhTrHqGX+
	q+FHySLLmKHzQLIQwEs+kfJQYN4vUoZQIxaFnGiZyE3JlHlK4rXLiD1S8w8dqFsmonhZYx65uqrx7
	uNTNB6olYpj2AHJVp8yaBdhLYrQjeEo9GAecLLsCfwN5RBZI/+wFLITlM4I6RHt5Ps3d4p7huO/Oi
	9wkTwcdM/Azb4tRahejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHy94-0000000537D-1CiV;
	Mon, 02 Dec 2024 04:34:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHy92-0000000536o-06SP
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 04:34:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 81BEBA40CD4;
	Mon,  2 Dec 2024 04:32:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64415C4CED2;
	Mon,  2 Dec 2024 04:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733114086;
	bh=oCme0MOKqzQQxi7TmLZDxECaBpW0/t9Pl6cMKvqD3hc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FFyHAcD+W1K+9b2zX+8KO1lJ/fnkAkuojJ9RJoJoJ0nBANBaFBFNT6pWvPfPeop0t
	 LD9FsUqhN7Fn5j9Wn11RJf7f7IEcAQtZFBiomWxi0vKSaP4VFbTfjaFeR3N50rIaLb
	 sB+XOyHfwxExrenWo4BQQbxVRgQYpIKlc4z9RPkrPFp6SPyoWC1xVGdlK4726gPgyp
	 EHkKj8pVgMVhjkZz1JgdcDJFUoBkX4tioB8kPKbUISysWhzDpngmVCXnra/GWTn+bP
	 vFE6ESo7ycEDtdlTPMHtgjTzU31SXzm6XMMEePkUStaRU7v0ksrtzHaRuGfmKp5zwL
	 LbclEbGLDCibA==
Date: Sun, 1 Dec 2024 22:34:42 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	konradybcio@kernel.org, quic_tsoni@quicinc.com, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcs615: enable pcie for qcs615
 soc
Message-ID: <jwfqxrfbnbijp7s54e44mzqxlmbq32bs4imnjcyjvvvs7deeza@pkylehjbxqib>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-6-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-6-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_203448_206701_AA5E7AEA 
X-CRM114-Status: GOOD (  15.14  )
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

On Fri, Nov 22, 2024 at 10:33:13AM +0800, Ziyue Zhang wrote:

The way we say "this is a DT patch for qcs615" is by prefixing the
subject "arm64: dts: qcom: qcs615: ", there's therefor no reason to
include "for qcs615" in the tail of the subject. You can further drop
the "soc" tail, as you said "qcs615" and not e.g. "qcs615-ride".

> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Patch has wrong Author.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 158 +++++++++++++++++++++++++++
>  1 file changed, 158 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 868808918fd2..c56cc30a59f3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -678,6 +678,164 @@ rpmhpd_opp_turbo_l1: opp-9 {
>  		};
>  	};
>  
> +	pcie: pcie@1c08000 {

This node looks to be in the wrong place.

Regards,
Bjorn

> +		compatible = "qcom,pcie-qcs615";
> +		reg = <0x0 0x01c08000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf1d>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x1000>,
> +		      <0x0 0x40100000 0x0 0x100000>,
> +		      <0x0 0x01c0b000 0x0 0x1000>;
> +
> +		reg-names = "parf",
> +			    "dbi",
> +			    "elbi",
> +			    "atu",
> +			    "config",
> +			    "mhi";
> +
> +		device_type = "pci";
> +		linux,pci-domain = <0>;
> +		bus-range = <0x00 0xff>;
> +		num-lanes = <1>;
> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +			 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
> +
> +		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "msi0",
> +				  "msi1",
> +				  "msi2",
> +				  "msi3",
> +				  "msi4",
> +				  "msi5",
> +				  "msi6",
> +				  "msi7",
> +				  "global";
> +
> +		interrupt-map = <0 0 0 0 &intc 0 0 0 140 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 0x7>;
> +
> +		interconnects = <&aggre1_noc MASTER_PCIE QCOM_ICC_TAG_ALWAYS
> +				 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +				<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +				 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
> +		interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +			 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +			 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +			 <&rpmhcc RPMH_CXO_CLK>;
> +
> +		clock-names = "aux",
> +			      "cfg",
> +			      "bus_master",
> +			      "bus_slave",
> +			      "slave_q2a",
> +			      "ref";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		operating-points-v2 = <&pcie_opp_table>;
> +
> +		resets = <&gcc GCC_PCIE_0_BCR>;
> +		reset-names = "pci";
> +
> +		phys = <&pcie_phy>;
> +		phy-names = "pciephy";
> +
> +		power-domains = <&gcc PCIE_0_GDSC>;
> +
> +		dma-coherent;
> +
> +		iommu-map = <0x0 &apps_smmu 0x400 0x1>,
> +			    <0x100 &apps_smmu 0x401 0x1>;
> +
> +		status = "disabled";
> +		pcie_opp_table: opp-table {
> +			compatible = "operating-points-v2";
> +
> +			/* GEN 1 x1 */
> +			opp-2500000 {
> +				opp-hz = /bits/ 64 <2500000>;
> +				required-opps = <&rpmhpd_opp_low_svs>;
> +				opp-peak-kBps = <250000 1>;
> +			};
> +
> +			/* GEN 2 x1 */
> +			opp-5000000 {
> +				opp-hz = /bits/ 64 <5000000>;
> +				required-opps = <&rpmhpd_opp_low_svs>;
> +				opp-peak-kBps = <500000 1>;
> +			};
> +
> +			/* GEN 3 x1 */
> +			opp-8000000 {
> +				opp-hz = /bits/ 64 <8000000>;
> +				required-opps = <&rpmhpd_opp_svs_l1>;
> +				opp-peak-kBps = <984500 1>;
> +			};
> +		};
> +
> +		pcie@0 {
> +			device_type = "pci";
> +			reg = <0x0 0x0 0x0 0x0 0x0>;
> +			bus-range = <0x01 0xff>;
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges;
> +		};
> +	};
> +
> +	pcie_phy: phy@1c0e000 {
> +		compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy";
> +		reg = <0x0 0x01c0e000 0x0 0x1000>;
> +
> +		clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_0_CLKREF_CLK>,
> +			 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
> +			 <&gcc GCC_PCIE_0_PIPE_CLK>;
> +		clock-names = "aux",
> +			      "cfg_ahb",
> +			      "ref",
> +			      "refgen",
> +			      "pipe";
> +
> +		clock-output-names = "pcie_0_pipe_clk";
> +		#clock-cells = <0>;
> +
> +		#phy-cells = <0>;
> +
> +		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +		reset-names = "phy";
> +
> +		assigned-clocks = <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
> +		assigned-clock-rates = <100000000>;
> +
> +		status = "disabled";
> +	};
> +
>  	arch_timer: timer {
>  		compatible = "arm,armv8-timer";
>  		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
