Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C61AEB64D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 06:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMzkLFo6hdntZjfh35CfZKTL/530JgZOmjIVClwd0lM=; b=L7xZOnvzrGW9K5
	7inpEwyvD4/DshAEH1UIk8vTh2k2h2yDBAGu0GaFwovs/Ymvnxlb06tsSFs0QOTpMsmYiI1rfY3cF
	UE/BG1NicChOkU5g27tzVFK0z2+EGCaPS6o6JMxG/po1P+STnJX1PV2kkq0FBc0XjMU1eU25303Nw
	WkNGXsKprTWQBpLPrLAR6kNJ00T+2nzdsrAtDeHoGfv7wBnhzm4/9Toao0N3gu6giSf3TwI/nny5b
	eNbfJ7bI7sFc69gMaDyvUH4kPHrEw7c/xUonm77sd+6RuYQfKyLomJNXztVOHNxivTXaA3QBqbNUv
	FFvHe/YYwmWVu8n8wOTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIdX-000fTB-0n;
	Thu, 06 Jul 2023 06:38:43 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIdR-000fQJ-34
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 06:38:39 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-991c786369cso37805766b.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 23:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688625510; x=1691217510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SzbDaaEINzDnrrek3iEpxYi20fNioqu6biTa2NhS4fM=;
        b=injOkU3hL1jr16jkt15zpH4C98XjRlyqXP/5gdSh5opjm4kgxt5ZAmgiHuyttMjyZ/
         9BOZopijMVK9aU5RzZ7LNcTb60k+mZS7DSaWtc5lNZrLWPMnjYgDG4SCofm4H2MP9WyL
         P8gxsmzz8YGk4AKKinmgL1w3QTtAOXVrArmnVaQhqZBMfYz1m9UVrJOTqigc8YQsxx2E
         ij6rTNP55i7lVjsZO+1MyqDgG3rtM2qibI9GxJSfDf8zZLsObPJBszBm3I4T1XJYRPxj
         jTpYju0/9f4DN1joM4Di1jS5Y/2m5bwWCH3ZbhuQO5Vm3Ld+/BgfxS7IUut7TecoWJBr
         P1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688625510; x=1691217510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzbDaaEINzDnrrek3iEpxYi20fNioqu6biTa2NhS4fM=;
        b=WHlsTh0tiiIEzYPyKF4nysxQ4BYryo0y7qium2boJxO1Aq9TXty5FrPgkytujRmxkr
         jneYmRqoPViXA7dLdTHltCjNu6elX9CHLJNgWgww1anME8hTPezk0nELQdVnHxaHYlwQ
         E8yKq+uAWvqPfix5eweeKSU+9NJaqtfJG0kH+v3YURhpXkxm8xTqfVcVJb/RpEws9kyM
         mFhD9SnBb4Qnq03Ylk8jUgLRb75C8hGQD7nniFrWoydEfkkPIFXJxDZg100yy/KdUESj
         2wOzEhBuCc4Ix/fuL6y+shUTMjfWY2+zH9F7c+boif9zG2u9jPa9tY+Vn8rIIh4aq4Pw
         oSNA==
X-Gm-Message-State: ABy/qLaINJkcRqKOki8CVTmiNryCerMHmsLWDiy3j0QZbNtJU1GTuCj5
	59cLC54RTTWS9YWHtSANXgFcFA==
X-Google-Smtp-Source: APBJJlHl+k5klXuLW1bGpjO5TxkRuvAL25oBwezF4bBVZb2+XKcQCS2Q+gcUHO2EUvAuj166Lj+l3w==
X-Received: by 2002:a17:906:7a17:b0:991:f427:2fe8 with SMTP id d23-20020a1709067a1700b00991f4272fe8mr699401ejo.2.1688625509779;
        Wed, 05 Jul 2023 23:38:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m9-20020a1709060d8900b00985bdb7dd5fsm381746eji.201.2023.07.05.23.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:38:29 -0700 (PDT)
Message-ID: <59414ba3-dee2-33c1-0752-ec3fbc369b99@linaro.org>
Date: Thu, 6 Jul 2023 08:38:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 5/6] arm64: dts: qcom: sa8775p: Add pcie0 and pcie1
 nodes
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_233837_994239_E0820C57 
X-CRM114-Status: GOOD (  13.85  )
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

On 05/07/2023 10:17, Mrinmay Sarkar wrote:
> Add pcie dtsi nodes for two controllers found on sa8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 201 +++++++++++++++++++++++++-
>  1 file changed, 199 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b130136acffe..88749cbaea8b 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -481,8 +481,8 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie0_phy>,
> +				 <&pcie1_phy>,
>  				 <0>,
>  				 <0>,
>  				 <0>;
> @@ -2315,4 +2315,201 @@ arch_timer: timer {
>  			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>  			     <GIC_PPI 12 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
>  	};
> +
> +	pcie0: pci@1c00000{
> +		device_type = "pci";
> +		compatible = "qcom,pcie-sa8775p";
> +		reg = <0x0 0x01c00000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf20>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x4000>,
> +		      <0x0 0x40100000 0x0 0x100000>,
> +		      <0x0 0x01c03000 0x0 0x1000>;
> +		reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges = <0x01000000 0x0 0x40200000 0x0 0x40200000 0x0 0x100000>,
> +			<0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
> +		bus-range = <0x00 0xff>;
> +
> +		linux,pci-domain = <0>;
> +		num-lanes = <2>;
> +
> +		interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "msi";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 0x7>;
> +		interrupt-map = <0 0 0 1 &intc GIC_SPI 434 IRQ_TYPE_LEVEL_HIGH>,
> +			<0 0 0 2 &intc GIC_SPI 435 IRQ_TYPE_LEVEL_HIGH>,
> +			<0 0 0 3 &intc GIC_SPI 438 IRQ_TYPE_LEVEL_HIGH>,
> +			<0 0 0 4 &intc GIC_SPI 439 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
> +
> +		clock-names = "aux",
> +				"cfg",
> +				"bus_master",
> +				"bus_slave",
> +				"slave_q2a";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
> +		interconnect-names = "pcie-mem";
> +
> +		resets = <&gcc GCC_PCIE_0_BCR>;
> +		reset-names = "pci";
> +		power-domains = <&gcc PCIE_0_GDSC>;
> +
> +		phys = <&pcie0_phy>;
> +		phy-names = "pciephy";
> +
> +		iommus = <&pcie_smmu 0x0000 0x1>;
> +		iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
> +			<0x100 &pcie_smmu 0x0001 0x1>;
> +
> +		perst-gpios = <&tlmm 2 1>;
> +		wake-gpios = <&tlmm 0 0>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie0_default_state>;
> +
> +		status = "disabled";
> +	};
> +
> +	pcie0_phy: phy@1c04000 {
> +		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
> +		reg = <0x0 0x1c04000 0x0 0x2000>;
> +
> +		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_CLKREF_EN>,
> +			 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +			 <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_0_PIPE_CLK>,
> +			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>;
> +
> +		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
> +						"pipe", "pipediv2";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> +		assigned-clock-rates = <100000000>;
> +
> +		power-domains = <&gcc PCIE_0_GDSC>;
> +
> +		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +		reset-names = "phy";
> +
> +		#clock-cells = <0>;
> +		clock-output-names = "pcie_0_pipe_clk";
> +
> +		#phy-cells = <0>;
> +
> +		status = "disabled";
> +	};
> +
> +	pcie1: pci@1c10000{
> +		device_type = "pci";

compatible is always first property, then reg, then reg-names, then
ranges. Always.

> +		compatible = "qcom,pcie-sa8775p";
> +		reg = <0x0 0x01c10000 0x0 0x3000>,
> +		      <0x0 0x60000000 0x0 0xf20>,
> +		      <0x0 0x60000f20 0x0 0xa8>,
> +		      <0x0 0x60001000 0x0 0x4000>,
> +		      <0x0 0x60100000 0x0 0x100000>,
> +		      <0x0 0x01c13000 0x0 0x1000>;
> +		reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges = <0x01000000 0x0 0x60200000 0x0 0x60200000 0x0 0x100000>,
> +			<0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x1fd00000>;
> +		bus-range = <0x00 0xff>;
> +
> +		linux,pci-domain = <1>;
> +		num-lanes = <4>;
> +
> +		interrupts = <GIC_SPI 519 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "msi";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 0x7>;
> +		interrupt-map = <0 0 0 1 &intc GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 2 &intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 3 &intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 4 &intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			<&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			<&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> +			<&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> +			<&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
> +
> +		clock-names = "aux",
> +				"cfg",
> +				"bus_master",
> +				"bus_slave",
> +				"slave_q2a";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>;
> +		interconnect-names = "pcie-mem";
> +
> +		resets = <&gcc GCC_PCIE_1_BCR>;
> +		reset-names = "pci";
> +		power-domains = <&gcc PCIE_1_GDSC>;
> +
> +		phys = <&pcie1_phy>;
> +		phy-names = "pciephy";
> +
> +		iommus = <&pcie_smmu 0x0080 0x1>;
> +		iommu-map = <0x0 &pcie_smmu 0x0080 0x1>,
> +			<0x100 &pcie_smmu 0x0081 0x1>;
> +
> +		perst-gpios = <&tlmm 4 1>;
> +		wake-gpios = <&tlmm 5 0>;

Use proper defines.

> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie1_default_state>;
> +
> +		status = "disabled";
> +	};
> +
> +	pcie1_phy: phy@1c14000 {
> +		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
> +		reg = <0x0 0x1c14000 0x0 0x4000>;
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_CLKREF_EN>,
> +			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> +			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPE_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
> +
> +		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
> +						"pipe", "pipediv2";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
> +		assigned-clock-rates = <100000000>;
> +
> +		power-domains = <&gcc PCIE_1_GDSC>;
> +
> +		resets = <&gcc GCC_PCIE_1_PHY_BCR>;
> +		reset-names = "phy";
> +
> +		#clock-cells = <0>;
> +		clock-output-names = "pcie_1_pipe_clk";
> +
> +		#phy-cells = <0>;
> +
> +		status = "disabled";
> +

No stray blank lines.

> +	};
>  };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
