Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83F94C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 10:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/HUip06sAtJ+WwBFMS0NW6CvG0LNvZshSFvcoU8cfM=; b=T6W+kzizko96Uk
	M4nWzsKhn9IV0jym/S/XmTIRGp6/ig8HokNPDdeLKG7SYhxy6Af7qi7y26YIW+9BKItqViDGVRLxi
	24lbvJBsw7G0h9zl+PCr4Sr2VvkEQ4ke4LuL9R5BvoRp07ekYp+OtUOfs6hm5RmrjHiQ3XGVGEF2u
	WCrEKPmWZqFkj6UJ2EFpfRhstD/uMgOZhxfc7ovdx1r8CVZqLoKksISv1E23U4UPk/7kJjmNMFGjK
	NRFPx4B15cSyLtRDrfvMv4JUc+939yD3H0xXIrwXNLShU940TqozwDGVxCK4EgUR1yVGl5CddnkdM
	yvnsgSe6qlAHHGgVl61A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitoK-0000000Aszv-0Fbl;
	Tue, 27 Aug 2024 10:52:28 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitoH-0000000Asz5-0sJf
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 10:52:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 60A39A41804;
	Tue, 27 Aug 2024 10:52:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A98C8B7B1;
	Tue, 27 Aug 2024 10:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724755351;
	bh=P11y2Il6+3Jb8mnyXTSgji9V0QqiqJkuHWp8Rnzmnr8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qXpe/BeC0gmds0QZGm5M3CnZaRX6pdjD5TwOixdqfWPxKIub1gLsAs7aDv0+8uQ95
	 /ajaGibnWMsHBy2aaP/9AVzCqbyvWcOD20VQ6EEkX9NNonfW5lqXx6HgwQiw/DbgnU
	 Iwesg+IVNCTZOA2vqAl3NbC/HarwqUl/RYMuFZhATv8551s0HjOOCiMp+Fytw31Zxn
	 KdukH25cM1bynkxx1oevhAI6YSdqnZA//xtjckq3w2WDHEoA11QUWU0XnHxm7RKhv4
	 eEQcxaQ4zJrM9/Q1NeFU9OOxwK4RCGo4OUTHgsHzd8aJfxKKDzJzr5ImL4+TWuHAxO
	 lPAKqPhQ3O0Fw==
Message-ID: <41d4bc67-e47c-4b6e-a620-b83f48f43103@kernel.org>
Date: Tue, 27 Aug 2024 12:42:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] arm64: dts: qcom: x1e80100: Add support for PCIe3 on
 x1e80100
To: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-5-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240827063631.3932971-5-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_035225_396090_F9240841 
X-CRM114-Status: GOOD (  15.00  )
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

On 27.08.2024 8:36 AM, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 205 ++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 74b694e74705..55b81e7de1c7 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -744,7 +744,7 @@ gcc: clock-controller@100000 {
>  
>  			clocks = <&bi_tcxo_div2>,
>  				 <&sleep_clk>,
> -				 <0>,
> +				 <&pcie3_phy>,
>  				 <&pcie4_phy>,
>  				 <&pcie5_phy>,
>  				 <&pcie6a_phy>,
> @@ -2879,6 +2879,209 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		pcie3: pci@1bd0000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-x1e80100";
> +			reg = <0 0x01bd0000 0 0x3000>,
> +			      <0 0x78000000 0 0xf1d>,
> +			      <0 0x78000f40 0 0xa8>,
> +			      <0 0x78001000 0 0x1000>,
> +			      <0 0x78100000 0 0x100000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config";

There's a "mhi" region at 0x01bd3000, 0x1000-wide too, please add it

> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0 0x00000000 0 0x78200000 0 0x100000>,
> +				 <0x02000000 0 0x78300000 0 0x78300000 0 0x3d00000>;

There's 64bit BAR space as well:

<0x03000000 0x7 0x40000000 0x7 0x40000000 0x0 0x40000000>;

> +			bus-range = <0 0xff>;

0x00 please

> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <3>;
> +			num-lanes = <8>;
> +
> +			interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 220 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 221 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 237 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 238 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_3_PIPE_CLK_SRC>,

We don't toggle source clocks from dt, this is upstream of the pipe
div clocks and is taken care of by the common clock framework,
please drop.

> +				 <&gcc GCC_PCIE_3_AUX_CLK>,
> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_3_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_3_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_3_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_CFG_NOC_PCIE_ANOC_SOUTH_AHB_CLK>,

GCC_CFG_NOC_PCIE_ANOC_NORTH_AHB_CLK

> +				 <&gcc GCC_CNOC_PCIE_NORTH_SF_AXI_CLK>;
> +			clock-names = "pipe_clk_src",
> +				      "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "noc_aggr",
> +				      "cnoc_sf_axi";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_3_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_south_anoc MASTER_PCIE_3 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &cnoc_main SLAVE_PCIE_3 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "pcie-mem",
> +					     "cpu-pcie";
> +
> +			resets = <&gcc GCC_PCIE_3_BCR>,
> +				 <&gcc GCC_PCIE_3_LINK_DOWN_BCR>;
> +			reset-names = "pci",
> +				      "link_down";
> +
> +			power-domains = <&gcc GCC_PCIE_3_GDSC>;
> +
> +			phys = <&pcie3_phy>;
> +			phy-names = "pciephy";
> +
> +			operating-points-v2 = <&pcie3_opp_table>;
> +
> +			status = "disabled";
> +
> +			pcie3_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 1 x4 and GEN 2 x2*/

Missing ' '

> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 1 x8 and GEN 2 X4 */

Inconsistent capitalization, please use lowercase 'x'

[...]

> +		pcie3_phy: phy@1be0000 {
> +			compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
> +			reg = <0 0x01be0000 0 0x10000>;
> +
> +			clocks = <&gcc GCC_PCIE_3_AUX_CLK>,

This clock doesn't belong here, the PHY is clocked by PHY_AUX

> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,

This is unnecessary as commented before

> +				 <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
> +				 <&gcc GCC_PCIE_3_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_3_PIPEDIV2_CLK>,
> +				 <&tcsr TCSR_PCIE_8L_CLKREF_EN>;

This should be the 'ref' here

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
