Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BD3C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 12:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE1AJn/Lp83qk9ntPZqXwHGJwTDUr8fiYAKkQAJ8g9o=; b=R6uM3Nuz9GkqZx
	F0obwbWB2YqUJEh631hdudRQPenL6lT6fnn2cOdGBVcEfLqDAkwAXxvNeaVvP12D6iNZDQYhZOdqX
	xdhcT8oBJEt01wPePGaXjG6H11ykmlJjplmD3OXW0/rZR32v6s9vSsEVVuap8M96XtdikNRuS+ulY
	6p9/zKXK4ynwz1UslEgCmi2xBGeUxO+hlX/ahZlrAZLk855uPIjJY9fGHAV/uOIGXkxOssIEy/NK4
	So9auOUoFro11Vlk1pCuRUT5hjetXfY69WFADHOUj0uXRdnJ9mYWQwPcGq5faPMbvaBiq6nsBTw12
	bKBp0++klZI4klmolA+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJw9v-00HB1m-3D; Mon, 23 Jan 2023 12:42:47 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJw7F-00HA2B-Lc
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 12:40:07 +0000
Received: by mail-wr1-x429.google.com with SMTP id z5so10669560wrt.6
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 04:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hGcqkugPesJoNl4KrC0rKPJbORJBc6uYhEjoOAE7VC8=;
        b=KM66Bl/rIGgJQkNextXmKu5IfhETtPny6WN6mK4hQjTRynkx9GGPo217cQqBEbkQra
         2Ccj727ubSHFm7COhbJ4ekCjBLCaHjmYwWQRfNSIit3zJq/B+RY170tCOna1ZqlWFvTD
         PwQFaBDJRgHf/vA3BzHHJjULx7EK9JZU1+LhWVWoOa5WTKP5mqmLbMm2xvniqtf8uNfv
         YJmlqk4Y+dAOU14mF2at+UULYeIyysFUqeZHCCvYSSbsvHbBZdsnJgPfx5n3mv7h4Q/Y
         pTDTbIqa+kR5dsqpbO76qEiN2KbBkHApamwHuSJyfMk5GA35vwvZmZ2jc5gtszSOOhtN
         RHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGcqkugPesJoNl4KrC0rKPJbORJBc6uYhEjoOAE7VC8=;
        b=F5CI3+lz/Cppp7xBHrIsAPI7sK07kbVoqtz4tOPLW7MiR5cd5/m1qNt2NcB5X0LNTC
         NXDN8rUekiSaXcMeMFI+lCEzHizWtBxItkBmXPdhL6bM1Oa44N8bQKppgyGIkThi59ov
         x7dZRAQjMp1I6z/RrEcrUYqRErN0UNwKalvCgZVe4Y6f9K7wbhRDWJKS18hjTsbTv9St
         /DojY73xxSfPTjLsO4cPRFQODQFSsjBbn5Y7rcBeX7JMJSLKuHr3i0eakoygQ9wteLVc
         ZGFXdFVARQqR9lcOoI3KIpnfBG4OIGLXfsMsCmue9w5IgGYGwEyjeUdJBhn3omgTS70w
         eyyg==
X-Gm-Message-State: AFqh2kp242xejWeDa0DlaTsao8m7RxHlZJwMMKkmfpEf5C2Nly7fEFno
	fDZHubDyQGAqCNpAtv0EszAQQg==
X-Google-Smtp-Source: AMrXdXsTs3VFNyrblQ1uSf/LVsTTe/zi6mstoZMg0f8LEgNWyuY+AuilQ4VVfiR3aY0btbpnukwWWQ==
X-Received: by 2002:adf:eacd:0:b0:2bb:f4bf:e763 with SMTP id o13-20020adfeacd000000b002bbf4bfe763mr31538409wrn.51.1674477597069;
        Mon, 23 Jan 2023 04:39:57 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r9-20020adff709000000b00291f1a5ced6sm21406540wrp.53.2023.01.23.04.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:39:56 -0800 (PST)
Date: Mon, 23 Jan 2023 14:39:55 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
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
Message-ID: <Y86AG7ev++wYiza4@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-12-abel.vesa@linaro.org>
 <Y85KiKD+iQamchB5@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y85KiKD+iQamchB5@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_044001_771138_4070E29C 
X-CRM114-Status: GOOD (  43.19  )
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

On 23-01-23 09:51:20, Johan Hovold wrote:
> On Thu, Jan 19, 2023 at 04:04:52PM +0200, Abel Vesa wrote:
> > Add PCIe controllers and PHY nodes.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > This patch does not have a v3, but since it is now part of the same
> > patchset with the controller and the phy drivers patches, I had to
> > bump the version to 4.
> > 
> > Latest version was here (v2):
> > https://lore.kernel.org/all/20230118230526.1499328-2-abel.vesa@linaro.org/
> > 
> > Changes since latest version (v2):
> >  * renamed the pcie_1_link_down_reset to simply link_down
> >  * dropped the pipe from clock-names
> >  * renamed aggre clock-names to noc_aggr_4
> >  * dropped the _pcie infix from cnoc_pcie_sf_axi
> >  * dropped the aux_phy clock from the pcie1
> > 
> > Changes since v1:
> >  * ordered pcie related nodes alphabetically in MTP dts
> >  * dropped the pipe_mux, phy_pipe and ref clocks from the pcie nodes
> >  * dropped the child node from the phy nodes, like Johan suggested,
> >    and updated to use the sc8280xp binding scheme
> >  * changed "pcie_1_nocsr_com_phy_reset" 2nd reset name of pcie1_phy
> >    to "nocsr"
> >  * reordered all pcie nodes properties to look similar to the ones
> >    from sc8280xp
> > 
> > 
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 207 ++++++++++++++++++++++++++-
> >  1 file changed, 204 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > index 3d47281a276b..8df226530d76 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -646,9 +646,9 @@ gcc: clock-controller@100000 {
> >  			#reset-cells = <1>;
> >  			#power-domain-cells = <1>;
> >  			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
> > -				 <0>,
> > -				 <0>,
> > -				 <0>,
> > +				 <&pcie0_phy>,
> > +				 <&pcie1_phy>,
> > +				 <&pcie_1_phy_aux_clk>,
> >  				 <&ufs_mem_phy 0>,
> >  				 <&ufs_mem_phy 1>,
> >  				 <&ufs_mem_phy 2>,
> > @@ -1547,6 +1547,207 @@ mmss_noc: interconnect@1780000 {
> >  			qcom,bcm-voters = <&apps_bcm_voter>;
> >  		};
> >  
> > +		pcie0: pci@1c00000 {
> > +			device_type = "pci";
> > +			compatible = "qcom,pcie-sm8550";
> > +			reg = <0 0x01c00000 0 0x3000>,
> > +			      <0 0x60000000 0 0xf1d>,
> > +			      <0 0x60000f20 0 0xa8>,
> > +			      <0 0x60001000 0 0x1000>,
> > +			      <0 0x60100000 0 0x100000>;
> > +			reg-names = "parf", "dbi", "elbi", "atu", "config";
> > +			#address-cells = <3>;
> > +			#size-cells = <2>;
> > +			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
> > +				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
> > +			bus-range = <0x00 0xff>;
> > +
> > +			dma-coherent;
> > +
> > +			linux,pci-domain = <0>;
> > +			num-lanes = <2>;
> > +
> > +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "msi";
> > +
> > +			#interrupt-cells = <1>;
> > +			interrupt-map-mask = <0 0 0 0x7>;
> > +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> > +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> > +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> > +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> > +
> > +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> > +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> > +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> > +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> > +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
> > +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>;
> > +			clock-names = "aux",
> > +				      "cfg",
> > +				      "bus_master",
> > +				      "bus_slave",
> > +				      "slave_q2a",
> > +				      "ddrss_sf_tbu",
> 
> You're reusing a clock name which doesn't seem to match this SoC. I
> don't know what "QTB" refers to here and if it's just some Qualcomm
> alternate name for "TBU" which could make this ok.

I'll come back later with an answer here, once I know exactly what QTB
means.

> 
> > +				      "noc_aggr_4";
> 
> The 4 here comes from the fact that the clock was named this way on
> sc8280xp. Perhaps 'noc_aggr' would have been a better generic name for
> the interconnect clock.
> 

So should I rename it to noc_aggr as part of this patchset then?

> > +
> > +			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
> > +			interconnect-names = "pcie-mem";
> > +
> > +			iommus = <&apps_smmu 0x1400 0x7f>;
> > +			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
> > +				    <0x100 &apps_smmu 0x1401 0x1>;
> > +
> > +			resets = <&gcc GCC_PCIE_0_BCR>;
> > +			reset-names = "pci";
> > +
> > +			power-domains = <&gcc PCIE_0_GDSC>;
> > +
> > +			phys = <&pcie0_phy>;
> > +			phy-names = "pciephy";
> > +
> > +			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
> > +			wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
> > +
> > +			pinctrl-names = "default";
> > +			pinctrl-0 = <&pcie0_default_state>;
> 
> For sc8280xp we decided to keep all pin configuration (and the gpios
> properties above) in the dts file. I believe this should be done also
> for any new SoCs.

Right, I'll move the pinctrl properties to the dts node instead.

> 
> Either way, the pin nodes should be added along with the consumer.
> 

The pin nodes have been added already, back when the initial dtsi was sent.

> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		pcie0_phy: phy@1c06000 {
> > +			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
> > +			reg = <0 0x01c06000 0 0x2000>;
> > +
> > +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> > +				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
> > +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> > +				 <&gcc GCC_PCIE_0_PIPE_CLK>;
> > +			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> > +				      "pipe";
> > +
> > +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> > +			reset-names = "phy";
> > +
> > +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> > +			assigned-clock-rates = <100000000>;
> > +
> > +			power-domains = <&gcc PCIE_0_PHY_GDSC>;
> > +
> > +			#clock-cells = <0>;
> > +			clock-output-names = "pcie0_pipe_clk";
> > +
> > +			#phy-cells = <0>;
> > +
> > +			status = "disabled";
> > +		};
> 
> > +		pcie1_phy: phy@1c0e000 {
> > +			compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy";
> > +			reg = <0x0 0x01c0e000 0x0 0x2000>;
> > +
> > +			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> > +				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
> > +				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> > +				 <&gcc GCC_PCIE_1_PIPE_CLK>;
> > +			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> > +				      "pipe";
> > +
> > +			resets = <&gcc GCC_PCIE_1_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_1_NOCSR_COM_PHY_BCR>;
> > +			reset-names = "phy", "nocsr";
> 
> Do you know why only the second PHY uses two resets here? Did you intend
> to add it also for the first PHY?

Please notice that this is a g4x2 phy. The documentation specifically
says that both the pciephy_reset and pciephy_nocsr_reset should be
asserted on power-up. Now, even the g3x2 has the nocsr reset (at least
in GCC) but its documentation doesn't seem to say anything about
nocsr needed to be asserted (ever).

> 
> Both of these resets exists also on sc8280xp, and I believe downstream
> used the NOCSR_COM variant, which does not reset all registers in the
> PHY so you could unknowingly be relying on firmware to setup things up
> for you.

That is also the case for the g3x2 phy on sm8550.

> 
> I did a fair bit of reverse engineering to determine the init sequences
> and opted to use the full reset for the PHYs here in the end.
> 
> I don't think you should be using both, but someone with access to
> documentation may provide more insight.

Again, the documentation I have access to, seems to suggest otherwise.

> 
> Have you tested both pci0 and 1 by the way?

Only the pcie0 can be tested with the MTP I have access to. So only
pcie0 was tested.

> 
> > +
> > +			assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
> > +			assigned-clock-rates = <100000000>;
> > +
> > +			power-domains = <&gcc PCIE_1_PHY_GDSC>;
> > +
> > +			#clock-cells = <0>;
> > +			clock-output-names = "pcie1_pipe_clk";
> > +
> > +			#phy-cells = <0>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> >  		cryptobam: dma-controller@1dc4000 {
> >  			compatible = "qcom,bam-v1.7.0";
> >  			reg = <0x0 0x01dc4000 0x0 0x28000>;
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
