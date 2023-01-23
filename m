Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285A1C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 08:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHZAfSX8h674WeEpp7hqHy7XkKE1MgLWB1KO+meqBNg=; b=cmMRvmtvm/CrNr
	6jTEM/9P4J0mEQOFEu89im3M8GXU08NGy8buhlHVd/YZtV+miFSqBWA79Ntz8YOod65GlQq3STboe
	2AE03r8l7NlEak6fmSubKiJUwWcSlEy94v4cUoYtDNh21WgDegvTmKAqGz5zCl8CByDYo0kFHxut1
	JAmmJvbGQIPrATKYHhfbfwn3nsI0nTMjb2p0EAaOdZVBGe+OtaFfB1cJLGExPuleEA9VQdDMx57jx
	2EwOccDrRUwjzgIF+ZaPEZ1ociSjgMbNN0+kTSBhJR1tD/ZsT+EUGm9q0LPsPVWPAiSdoNUuEF3Me
	h72EIQyOyXMsHd0xnOVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsY6-00GPbs-H3; Mon, 23 Jan 2023 08:51:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsY1-00GPZu-3a
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 08:51:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6760660DEA;
	Mon, 23 Jan 2023 08:51:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09460C4339B;
	Mon, 23 Jan 2023 08:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674463884;
	bh=5R0r5RNGt2ey5hflF/jJTiQCb4o00CqqvdoXWE5GF6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ifPKWQaCBY0RDEsj8Cf2hBAR/vYoIJIEwiVSsgv35TRYdmLEKiJIffr/TSrZyLv90
	 a4DXPNCsPl+lXlMLm5tBWspXlD3YUlhrj/Gxj7OLLmA3xsIYm4bBq24dr+g9VSo1J8
	 j3roIXvPBjrfcjY7clZWy6wnpLAzTqLpsHmRJrv1xiWcogs5UPwennVUomeLtl5OI0
	 A/ri8H6S6QENz9vlYTFTYhfZpAFiWpoAcfFlt3TX7HXG9US+4uKqhXnl3k2PjNuoWT
	 zgNT2zZPUjL6wNcTKRgo2a9oWDMbl7pA0sWmVXV3mHP9Wul1j8IroCfAK0slySZcFc
	 ID1vsbPXMLHSQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJsXw-00086s-5c; Mon, 23 Jan 2023 09:51:20 +0100
Date: Mon, 23 Jan 2023 09:51:20 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 11/12] arm64: dts: qcom: sm8550: Add PCIe PHYs and
 controllers nodes
Message-ID: <Y85KiKD+iQamchB5@hovoldconsulting.com>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-12-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230119140453.3942340-12-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_005125_271099_A9842750 
X-CRM114-Status: GOOD (  32.80  )
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

On Thu, Jan 19, 2023 at 04:04:52PM +0200, Abel Vesa wrote:
> Add PCIe controllers and PHY nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> This patch does not have a v3, but since it is now part of the same
> patchset with the controller and the phy drivers patches, I had to
> bump the version to 4.
> 
> Latest version was here (v2):
> https://lore.kernel.org/all/20230118230526.1499328-2-abel.vesa@linaro.org/
> 
> Changes since latest version (v2):
>  * renamed the pcie_1_link_down_reset to simply link_down
>  * dropped the pipe from clock-names
>  * renamed aggre clock-names to noc_aggr_4
>  * dropped the _pcie infix from cnoc_pcie_sf_axi
>  * dropped the aux_phy clock from the pcie1
> 
> Changes since v1:
>  * ordered pcie related nodes alphabetically in MTP dts
>  * dropped the pipe_mux, phy_pipe and ref clocks from the pcie nodes
>  * dropped the child node from the phy nodes, like Johan suggested,
>    and updated to use the sc8280xp binding scheme
>  * changed "pcie_1_nocsr_com_phy_reset" 2nd reset name of pcie1_phy
>    to "nocsr"
>  * reordered all pcie nodes properties to look similar to the ones
>    from sc8280xp
> 
> 
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 207 ++++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 3d47281a276b..8df226530d76 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -646,9 +646,9 @@ gcc: clock-controller@100000 {
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
>  			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
> -				 <0>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie0_phy>,
> +				 <&pcie1_phy>,
> +				 <&pcie_1_phy_aux_clk>,
>  				 <&ufs_mem_phy 0>,
>  				 <&ufs_mem_phy 1>,
>  				 <&ufs_mem_phy 2>,
> @@ -1547,6 +1547,207 @@ mmss_noc: interconnect@1780000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		pcie0: pci@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-sm8550";
> +			reg = <0 0x01c00000 0 0x3000>,
> +			      <0 0x60000000 0 0xf1d>,
> +			      <0 0x60000f20 0 0xa8>,
> +			      <0 0x60001000 0 0x1000>,
> +			      <0 0x60100000 0 0x100000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
> +			bus-range = <0x00 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <0>;
> +			num-lanes = <2>;
> +
> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ddrss_sf_tbu",

You're reusing a clock name which doesn't seem to match this SoC. I
don't know what "QTB" refers to here and if it's just some Qualcomm
alternate name for "TBU" which could make this ok.

> +				      "noc_aggr_4";

The 4 here comes from the fact that the clock was named this way on
sc8280xp. Perhaps 'noc_aggr' would have been a better generic name for
the interconnect clock.

> +
> +			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
> +			interconnect-names = "pcie-mem";
> +
> +			iommus = <&apps_smmu 0x1400 0x7f>;
> +			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
> +				    <0x100 &apps_smmu 0x1401 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_0_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc PCIE_0_GDSC>;
> +
> +			phys = <&pcie0_phy>;
> +			phy-names = "pciephy";
> +
> +			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
> +			wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pcie0_default_state>;

For sc8280xp we decided to keep all pin configuration (and the gpios
properties above) in the dts file. I believe this should be done also
for any new SoCs.

Either way, the pin nodes should be added along with the consumer.

> +
> +			status = "disabled";
> +		};
> +
> +		pcie0_phy: phy@1c06000 {
> +			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
> +			reg = <0 0x01c06000 0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +			reset-names = "phy";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc PCIE_0_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie0_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};

> +		pcie1_phy: phy@1c0e000 {
> +			compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x01c0e000 0x0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_1_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_PCIE_1_PHY_BCR>,
> +				 <&gcc GCC_PCIE_1_NOCSR_COM_PHY_BCR>;
> +			reset-names = "phy", "nocsr";

Do you know why only the second PHY uses two resets here? Did you intend
to add it also for the first PHY?

Both of these resets exists also on sc8280xp, and I believe downstream
used the NOCSR_COM variant, which does not reset all registers in the
PHY so you could unknowingly be relying on firmware to setup things up
for you.

I did a fair bit of reverse engineering to determine the init sequences
and opted to use the full reset for the PHYs here in the end.

I don't think you should be using both, but someone with access to
documentation may provide more insight.

Have you tested both pci0 and 1 by the way?

> +
> +			assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc PCIE_1_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie1_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		cryptobam: dma-controller@1dc4000 {
>  			compatible = "qcom,bam-v1.7.0";
>  			reg = <0x0 0x01dc4000 0x0 0x28000>;

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
