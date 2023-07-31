Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E361C04A94
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 19:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHRLvioLUfiXRR4wAKdbWTUfmfWMt9NSnt7+ZZjgLII=; b=GOcOcyFbCytAFE
	/FkUl3YPqCzLmmBW1DvueTjfJcOJ2tV1DiueufNdbF0s1aVS58AzXe5Uibz0W3vQgjIE0s/ZeTzTV
	pqDuGoPUVXGY1lrkknkrucPjLVRGO7WGO0Lg9kCtp9hJwsOWFw5GwGQAAGJg28745WqIEVlAFQEhY
	zYZwWWtkfu2ak4bK7Igsl0xdMcSP5Iw9pV/pNG3UOy6O2auazZz10TdGPCzAPEjNPDKIqHAdc8ssA
	PmmYIEmpioMaN8LszhgEDbxOWbNjEY4OvI1TMOhDoT2UjGsUo9meJ+UWjG6ugBrPAqXjbfvPZu2gh
	RynEQ6OqlxnvI8WzHZUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQYVw-00H7AO-2m;
	Mon, 31 Jul 2023 19:25:08 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQYVt-00H79g-2B
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 19:25:07 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4fe0e201f87so6087370e87.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 12:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690831503; x=1691436303;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HWqGC8aHaHIwbxno57AsOHIuJAr5Wb2cUPzFNTf8hqA=;
        b=QZlctvJ4jECIWXyM9+rXBUrqf4Adimr2SUu5jSq2Shof/Gml247IHpYUT9eVCmpOTp
         hgZeoOuBw3vhU4PiIq/CD7xu2/MYxtOC9d6EJ7rxIBpB+VmhnJmWHk8+7800R3ZpykMK
         Kf/h7ygDTBSDVdLciXMZGBZ7gYjDbaVuv1gvRj2Iy7ZQeLp9f0bWfEWFae80rx9KAs6G
         o2IkCJkIRz7vAKDhAjaSQWkdMqo2SDg6MQ3I5gdw6EguR48Nqy2tw/5wQILs6iQgyr+6
         LhQFUK6woeP7qHN7lAZQWgbC2Rg04/CaATqgq+aa3HiHEaA86zD49hXTcFERrrfixbq2
         15lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690831503; x=1691436303;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HWqGC8aHaHIwbxno57AsOHIuJAr5Wb2cUPzFNTf8hqA=;
        b=AXhYEhniqDKP8Y9ut0L3OskJUQ7bM+kVbJKM4kgTDGKXiVt7vxVq159/gXZU7BjJny
         KG4kagHe7PzqDVCQPT1+5e0FcZZV4g/s8TGAQYO4Kudbx/xj/3HExK8fT/7xYSUqS+zA
         MqXs0nP0mzjFYTpauPt5ywjFiAyT29qiPE2rdkpa5n2M+k7lCErxZOpl6vvdblNm64fM
         +BoibnIET8C2FC5MXToyT1fIL1BfVTzp27cTCIB+xeOlRJkb5UsFFufSBnhIlyBVaVQN
         7rmwcBVcR0NK7JOuTevczlxIQLOF1QvelLzyuK3+Rr2h9yvK4s79FMUjI4Q9DSSym5Ar
         G0DA==
X-Gm-Message-State: ABy/qLa8olNa4cDI7uDvAh1knjltjSRRQKUY5wARq7+HHzH4RuvJaU7X
	WYsD0rHO4/+WWTIBZoRi1ROkgA==
X-Google-Smtp-Source: APBJJlG1z5hrdowSlDG5GhZQrJA8cGX8M+jOUwko2f2D+6Ib3rD3ImZKjhJN5UvinMKFQjHMdhr0xw==
X-Received: by 2002:ac2:523c:0:b0:4f8:6ac4:1aa9 with SMTP id i28-20020ac2523c000000b004f86ac41aa9mr217624lfl.21.1690831502836;
        Mon, 31 Jul 2023 12:25:02 -0700 (PDT)
Received: from [192.168.1.101] (abyk53.neoplus.adsl.tpnet.pl. [83.9.30.53])
        by smtp.gmail.com with ESMTPSA id u7-20020ac248a7000000b004fba6f38f87sm2190572lfg.24.2023.07.31.12.25.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 12:25:02 -0700 (PDT)
Message-ID: <eeadacfd-64bd-ff91-c2b8-ff7db8313225@linaro.org>
Date: Mon, 31 Jul 2023 21:25:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] arm64: dts: qcom: sc7280: switch PCIe QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
 <20230731105759.3997549-8-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230731105759.3997549-8-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_122505_720321_C62A46CD 
X-CRM114-Status: GOOD (  11.82  )
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

On 31.07.2023 12:57, Dmitry Baryshkov wrote:
> Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 36 ++++++++++------------------
>  1 file changed, 12 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 4353f7265877..670092731c6c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -869,7 +869,7 @@ gcc: clock-controller@100000 {
>  			reg = <0 0x00100000 0 0x1f0000>;
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
> -				 <0>, <&pcie1_lane>,
> +				 <0>, <&pcie1_phy>,
>  				 <0>, <0>, <0>,
>  				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>  			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
> @@ -2121,7 +2121,7 @@ pcie1: pci@1c08000 {
>  
>  			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
>  				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> -				 <&pcie1_lane>,
> +				 <&pcie1_phy>,
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&gcc GCC_PCIE_1_AUX_CLK>,
>  				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> @@ -2155,7 +2155,7 @@ pcie1: pci@1c08000 {
>  
>  			power-domains = <&gcc GCC_PCIE_1_GDSC>;
>  
> -			phys = <&pcie1_lane>;
> +			phys = <&pcie1_phy>;
>  			phy-names = "pciephy";
>  
>  			pinctrl-names = "default";
> @@ -2171,15 +2171,18 @@ pcie1: pci@1c08000 {
>  
>  		pcie1_phy: phy@1c0e000 {
>  			compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
> -			reg = <0 0x01c0e000 0 0x1c0>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01c0e000 0 0x1000>;
>  			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
>  				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
>  				 <&gcc GCC_PCIE_CLKREF_EN>,
> -				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>;
> -			clock-names = "aux", "cfg_ahb", "ref", "refgen";
> +				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_1_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "ref", "refgen", "pipe";
1 per line, pretty please?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
