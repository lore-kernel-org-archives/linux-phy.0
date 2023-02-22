Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 311D1C636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WfiAJidSWVYE4sHgEt6Y2Uwev8prRrpqyFZOQ2EOcg=; b=Ehdq+MlrNCxf6j
	TG1J6n3cW7GOZr8GV6B04af8JqJqCGArgOSIENirLNpUimrHwcqpOE+KLTwfaiurESk49v2p9u9Wc
	vIzTZzCE56PnNxouIIvIpsGY5Da7x4jwsTWTwabrVPXiUV/NvQgY4PoVChHY0kS8xjkMGRgavtocT
	cxQylSi360VmWx1vD9NDa0B4zhlixgGabMVpkYX8xPTiON+wx3xtfXI8TYqEr0Zygdo/6S0CpKdVe
	UrwZAK/OpEzjCDB6EhAl3MBGpmhe96/GXmQSyHO4+Y02BK8FZAA9EbP2t1iBW52HKKyDdAki8PTH3
	uB478EHd+sqzQoWO1sZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUrZU-00CxKl-Hn; Wed, 22 Feb 2023 16:02:20 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUrZS-00CxIU-1T
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 16:02:19 +0000
Received: by mail-lf1-x12f.google.com with SMTP id f18so10668515lfa.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 08:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jSdhRobWaqOAm27ryt5Kscp+dhvkPeaZ2BJlCY0wWLk=;
        b=EIwtevyUNGf2HYgSCrjgmy9sAl0XCWkpUV72FBpIz7ovAIl60OY539ULmVFjR+CdVu
         VqXN15tKHquQGVJOlwji2u4NO36PtYcysSFLvtR786KkfIKgRiwA58UAtSi1Oeru65Qj
         YBN1qiuB61qQFt/B4Xm9Y9/Wv0yzZvBJxL3Ef+eCKs4xKI5HRPS7eHQhPRUFitk/fFkT
         5iQehtLX5K5LI9DPDLTe2+eAQZ5FmDjiCv7iTXOrl+XVaKC363rCBY3duN6LAs+XNeaO
         mRR9M2Ku30K5DQ7Z8dayupQnAoKo5jEzmVgcRCW5FLIVOkARbdGn3UFAg6fMa4wtDAX1
         jZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jSdhRobWaqOAm27ryt5Kscp+dhvkPeaZ2BJlCY0wWLk=;
        b=6WStoYybL94CUrncFbP2i6xj7CZJRHMXND7l1gf6iMwYC9fT3lX5dTgKJSNQJyLaxw
         6a7LVY+zMrdXazIQBC1xHxNkWno6FxSS52G/NoEyLV9q8ClTky3W16AieFzbsh+l/RwS
         gdDvT9Y9laxDSfX25YcJ+IF56qaMZLAo3ckAAu3YEzVQyt1xs2tZWFfsh5eiQYJjcDUQ
         ngVHSio5X+JIU2L9f8+YXWgzudux3Dun4sAAcqNQ3AK6PlMZbT5t2hoeVM+Q18wjVJs4
         jXU11lxgIWcv2JqVGnKrlD1wNq+4NQhwuAXU9wPfqNVZQeAASFM6GSGpIiEoIfTroJdj
         O86g==
X-Gm-Message-State: AO0yUKXCTA+SbEO+ue4y+wUWB0IzPLTFKCV12+wM9ShYTr7kjIZEmtBp
	jyiW5tIQtFVzta4104QRUGLDvw==
X-Google-Smtp-Source: AK7set/Orkhmd+KdiXYqhDJGz7PxjwRoB51xjhB//Z3PfG1F7TVTGggVpicE/PDpLt+nQ9kBoIGPCA==
X-Received: by 2002:ac2:5985:0:b0:4d6:df2e:16f6 with SMTP id w5-20020ac25985000000b004d6df2e16f6mr2229559lfn.36.1677081731007;
        Wed, 22 Feb 2023 08:02:11 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id d8-20020ac24c88000000b004dc4b0a0543sm205223lfl.58.2023.02.22.08.02.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 08:02:10 -0800 (PST)
Message-ID: <4e61522d-075d-c77d-b1f6-c9f4c25e1cf2@linaro.org>
Date: Wed, 22 Feb 2023 17:02:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 05/11] ARM: dts: qcom: sdx55: Fix the unit address of PCIe
 EP node
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-6-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230222153251.254492-6-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_080218_119727_4115C87D 
X-CRM114-Status: GOOD (  14.52  )
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
> Unit address of PCIe EP node should be 0x1c00000 as it has to match the
> first address specified in the reg property.
> 
> This also requires sorting the node in the ascending order.
> 
> Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
Unsure, we aren't fixing the bindings..


> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
For the dt change:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55.dtsi | 78 +++++++++++++++----------------
>  1 file changed, 39 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index 93d71aff3fab..e84ca795cae6 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -303,6 +303,45 @@ qpic_nand: nand-controller@1b30000 {
>  			status = "disabled";
>  		};
>  
> +		pcie_ep: pcie-ep@1c00000 {
> +			compatible = "qcom,sdx55-pcie-ep";
> +			reg = <0x01c00000 0x3000>,
> +			      <0x40000000 0xf1d>,
> +			      <0x40000f20 0xc8>,
> +			      <0x40001000 0x1000>,
> +			      <0x40200000 0x100000>,
> +			      <0x01c03000 0x3000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +				    "mmio";
> +
> +			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
> +
> +			clocks = <&gcc GCC_PCIE_AUX_CLK>,
> +				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLEEP_CLK>,
> +				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
> +			clock-names = "aux", "cfg", "bus_master", "bus_slave",
> +				      "slave_q2a", "sleep", "ref";
> +
> +			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global", "doorbell";
> +			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> +			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> +			resets = <&gcc GCC_PCIE_BCR>;
> +			reset-names = "core";
> +			power-domains = <&gcc PCIE_GDSC>;
> +			phys = <&pcie0_lane>;
> +			phy-names = "pciephy";
> +			max-link-speed = <3>;
> +			num-lanes = <2>;
> +
> +			status = "disabled";
> +		};
> +
>  		pcie0_phy: phy@1c07000 {
>  			compatible = "qcom,sdx55-qmp-pcie-phy";
>  			reg = <0x01c07000 0x1c4>;
> @@ -400,45 +439,6 @@ sdhc_1: mmc@8804000 {
>  			status = "disabled";
>  		};
>  
> -		pcie_ep: pcie-ep@40000000 {
> -			compatible = "qcom,sdx55-pcie-ep";
> -			reg = <0x01c00000 0x3000>,
> -			      <0x40000000 0xf1d>,
> -			      <0x40000f20 0xc8>,
> -			      <0x40001000 0x1000>,
> -			      <0x40200000 0x100000>,
> -			      <0x01c03000 0x3000>;
> -			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> -				    "mmio";
> -
> -			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
> -
> -			clocks = <&gcc GCC_PCIE_AUX_CLK>,
> -				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> -				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> -				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> -				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> -				 <&gcc GCC_PCIE_SLEEP_CLK>,
> -				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
> -			clock-names = "aux", "cfg", "bus_master", "bus_slave",
> -				      "slave_q2a", "sleep", "ref";
> -
> -			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "global", "doorbell";
> -			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> -			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> -			resets = <&gcc GCC_PCIE_BCR>;
> -			reset-names = "core";
> -			power-domains = <&gcc PCIE_GDSC>;
> -			phys = <&pcie0_lane>;
> -			phy-names = "pciephy";
> -			max-link-speed = <3>;
> -			num-lanes = <2>;
> -
> -			status = "disabled";
> -		};
> -
>  		remoteproc_mpss: remoteproc@4080000 {
>  			compatible = "qcom,sdx55-mpss-pas";
>  			reg = <0x04080000 0x4040>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
