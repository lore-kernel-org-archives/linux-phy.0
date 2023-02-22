Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A644C677F1
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0SDHeCLqBG1e7EcDV0oEfy3jos7gs3uIjDO2KjAgqM=; b=nNEdPZjSqzHC2H
	drXPwWXWqks6o+E+O7Bw6W/GNzsGK02ujVZhif/hIg91aG3KcMiimxouVs2udAp+YWNqKmUf/KRzK
	WB8caFws+GhbIqZyBdEo4q8TsfbAi180xQYw65Am2OXnfgwpbN98gscYd2MNMoNCi4xN4k6ubWhid
	VloxItavtquj6fZXBZg4LSc7W7WDu5RmDf3yrCVmu9teaGVcfM62FS/jCBwM8bRk8UCqdueeeH3dr
	sOipsA2pARuKb5Hg/+vNOT5in2YAHcaZ5PkD0MgmcV+H2PhPrIpH1F3zxUSE8XfPUNDckoam9tyBI
	hzn5N5f9z1mcxC4Cz9cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUrai-00CxWo-Ld; Wed, 22 Feb 2023 16:03:36 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUraf-00CxVA-Jl
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 16:03:35 +0000
Received: by mail-lj1-x22d.google.com with SMTP id e9so8280997ljn.9
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 08:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NR4JoHyWqAKZMIzu2agHedJCOBnxsQp20MwXG8k1Puk=;
        b=XoG4ZrzArjsq7Gys9DInrt0BXC6yUUa10LZOtyr+49aL9ySph3lolrX2018HGVKZ9c
         qpO4Zw147BmOkwfn3oe/5r5a2jMqswgJfQ6lc2FJVRQip4Tlur8ueAu7BRXziLZR5BnA
         YaEtQuPRDbDg5adgJk3lciWCNJyQJ4F7uqiB45adtPy/eLy05Oh4/VucXwDka7SohsyD
         rvg51xSyI3BYAGvYEs++gjFIErrDcqvXXP/sg+tAnG5tw29R3eSfrFdSmgZyRHR0wJlQ
         l4n+fUfJP0VKZHUvQwUgVnZ4yOsfwhFEDU7snyW6nNoaNKBtAUWvJXb+FqySPKFPo/Z9
         S9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NR4JoHyWqAKZMIzu2agHedJCOBnxsQp20MwXG8k1Puk=;
        b=T42LNbTrrMRF6VT2xTrQ7LZTTdUmKvO2NxQQspHEYrx4Oajf2+mkyupXnp4lBj9jj2
         7BYmJOhDutO5Y7ZAbZXUpKLj0zyTp97xOEWnO2al15Fvdu72MZ4KlENeOJxwc9g9c4xB
         Zk/VVIfVZTbFAW5VP4P/9MXCbbABdnbIm8JYzcutKi4uEmymVxis94wo5CQlLKWILPSL
         5OGGS8LjVTrJ5Jga7BfZzhvE6FU3KI4ovBgg9DGRMyfgThjvvN7FFIOpgBdeWxnmTGBZ
         a8PxTRXNU6aK1Ta66XxjI0PvxVxK0N1z7XC+AZL97AVy6ubdeT3rqK4+mzOjrG9QSXqP
         4h3g==
X-Gm-Message-State: AO0yUKXJldmc3g7DqlzkfjLJRmf0NjSdcnbtxiGNR+H1LtJzzaH86HI/
	lEJ/MzESVUKGDZJgrTlOGvCyKw==
X-Google-Smtp-Source: AK7set+XvU2ChKqYyJqbPojwoDwwVPSMVn2b5ntpK4liomhLzTsVlLZCbwsFo/R0S13FKVlsQeiasg==
X-Received: by 2002:a05:651c:4c6:b0:294:751d:d734 with SMTP id e6-20020a05651c04c600b00294751dd734mr4567535lji.31.1677081810317;
        Wed, 22 Feb 2023 08:03:30 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id j16-20020a2e3c10000000b0029352e4ba6esm834767lja.90.2023.02.22.08.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 08:03:29 -0800 (PST)
Message-ID: <8881b90c-f276-6f14-e161-f07630845257@linaro.org>
Date: Wed, 22 Feb 2023 17:03:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 07/11] ARM: dts: qcom: sdx55: Add support for PCIe RC
 controller
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-8-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230222153251.254492-8-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_080333_690802_C650B97F 
X-CRM114-Status: GOOD (  15.37  )
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



On 22.02.2023 16:32, Manivannan Sadhasivam wrote:
> The PCIe controller in SDX55 can act as the RC controller also. Let's
> add support for it.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-sdx55.dtsi | 72 +++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index a1f4a7b0904a..768d7d7f6335 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -303,6 +303,78 @@ qpic_nand: nand-controller@1b30000 {
>  			status = "disabled";
>  		};
>  
> +		pcie_rc: pcie@1c00000 {
> +			compatible = "qcom,pcie-sdx55";
> +			reg = <0x01c00000 0x3000>,
> +			      <0x40000000 0xf1d>,
> +			      <0x40000f20 0xc8>,
> +			      <0x40001000 0x1000>,
> +			      <0x40100000 0x100000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config";
It'd be nice if this and interrupt-names could be turned into
a vertical list of entries, sort of like you have in clock-
names. And it'd be even nicer if you could fix that up in
both PCIe nodes.

Konrad
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x40200000 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x40300000 0x0 0x3fd00000>;
> +
> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi", "msi2", "msi3", "msi4",
> +					  "msi5", "msi6", "msi7", "msi8";
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 141 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 0 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 0 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 0 0 144 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			clocks = <&gcc GCC_PCIE_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_AUX_CLK>,
> +				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLEEP_CLK>;
> +			clock-names = "pipe",
> +				      "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "sleep";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			iommus = <&apps_smmu 0x0200 0x0f>;
> +			iommu-map = <0x0   &apps_smmu 0x0200 0x1>,
> +				    <0x100 &apps_smmu 0x0201 0x1>,
> +				    <0x200 &apps_smmu 0x0202 0x1>,
> +				    <0x300 &apps_smmu 0x0203 0x1>,
> +				    <0x400 &apps_smmu 0x0204 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc PCIE_GDSC>;
> +
> +			phys = <&pcie_lane>;
> +			phy-names = "pciephy";
> +
> +			status = "disabled";
> +		};
> +
>  		pcie_ep: pcie-ep@1c00000 {
>  			compatible = "qcom,sdx55-pcie-ep";
>  			reg = <0x01c00000 0x3000>,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
