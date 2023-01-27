Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19059C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 12:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QLrqxoGau7hQJrWaTRPTA7teIBAcXyLFKmikL98IAI=; b=zV+hK1vDb3elwX
	sA8w0H2qE7FhpW7C8Ntp/RqZYPoO0mDaxcspJ4621f+gSMZIZ3T5KxcjI/PpkPA5vlkwJK83jW7iZ
	lxsS66MzrZJLBumSDul/eR6dvqEymWNVL93MGR96eDZkyGpj+GecTzdibGWXwaejfZzZ3oGAm6/K+
	1WZJMwqGXhcPh1/CrayXwYnp+01CuRxTpbDOq+8rgG82fvkQfpAArwzuGjch76GshnSzI33B8lJnn
	xx3bjmFNCMiJZaV1L58zkPyLzgFKbVX041QRZmtPCY/EVyj1/AxbO9Y8ujwLskjruQYjpnNda9E5c
	h1hSWMzdhvLlk7X/1cGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLOCn-00Ej0R-RQ; Fri, 27 Jan 2023 12:51:45 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLNGC-00EHpq-9Q
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 11:51:16 +0000
Received: by mail-wr1-x42e.google.com with SMTP id d14so4727985wrr.9
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 03:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VUxkjbPI2hGs2bTAnhOWhZx0Y3u570fRt/MEL0+XvDc=;
        b=nPrIxS6CM21G3+sUYx9go7df0QKfN3/Dtsq+WpA/kOh5cKqckydPi/hrYpQrqkUKAZ
         QIgTraYG/K8jnwZsSQq8ymhiarXYxgGcNmaXEJBiuZUy1gEgkcb0aRm8TbSfLwCGOz8Z
         IyoTBq5NwNaOPQdwoVrKMQAOHmUdK/7LjNJmKRHYMLnTlqvY+slLeTtIXtOu/GWf766p
         Taxs8meQgkIFyjj22jSYK0We4LS0nKuMo01qrQ2CR2DCa6d7qGQ2OmG4ax8pb+3vpTRK
         mfQe5Tewu6PrfbGmvyFSLdx480x+SOLB8FTvch5JebZVHMbGryve27Q325tOj62McMmS
         3QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VUxkjbPI2hGs2bTAnhOWhZx0Y3u570fRt/MEL0+XvDc=;
        b=iLrMgpui+eEahnF0hrjCpNVwE65PohJzAX/254uL104gRa3EU6WJFTHXtwT0yLttNF
         SGcpOxltJbKY5dd3YNmJ25IrVvIxt8QeeFAZ1/3rDROb+4/vbnjxBAp95hQaSNsi5JKU
         YcfGzauz+qsEJbXDy6LwOMnCTPZGmnfK9epNdJN8u7yl2H83OHZTx4DL1sRVxaUZCTs8
         sdrFGQoS+PfUbO0gVXaOq9H+fPdVafVofiklDn52Z3UkXYN0LbJXK72paWRgCVA2cET/
         kxFuqd4cz57RQpX4E3oNQqULpSEhZG0bVsm7QvnYVweaimwkx72WeFl1oXXwOSzVMEJ4
         BrNA==
X-Gm-Message-State: AFqh2kqUv5Ob5HG+gt7POvIfcehuOSa30i93Hnxea0UJZOB4pYenNg3Q
	+zhVq6g6LrrrtCa0Ndt1Z/tw5A==
X-Google-Smtp-Source: AMrXdXu/ppR95kNTQmFZaEgCcnWnz2FywoDoW01+9eBW7RnHLZ/01Gr9HpcBmhdtrkOjZiIM+x1cyw==
X-Received: by 2002:adf:e18c:0:b0:2be:493f:3b34 with SMTP id az12-20020adfe18c000000b002be493f3b34mr33144295wrb.26.1674820267487;
        Fri, 27 Jan 2023 03:51:07 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d4582000000b002b6bcc0b64dsm3804434wrq.4.2023.01.27.03.51.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 03:51:07 -0800 (PST)
Message-ID: <2d368c6f-5240-8aec-ef27-a86b2a361856@linaro.org>
Date: Fri, 27 Jan 2023 12:51:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
 <20230126124651.1362533-8-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126124651.1362533-8-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_035112_409359_6DE4A6EC 
X-CRM114-Status: GOOD (  18.48  )
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

On 26/01/2023 13:46, Abel Vesa wrote:
> Add USB host controller and PHY nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> NOTE: This patch has been already merged. It is here only to provide
> context for the rest of the patchset. There is a change with respect to the
> clocks, but that will be sent as a separate/individual fix patch.
> 
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 92 +++++++++++++++++++++++++++-
>  1 file changed, 91 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 4daf1f03d79f..6801454bbe10 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -13,6 +13,7 @@
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
>  / {
> @@ -652,7 +653,7 @@ gcc: clock-controller@100000 {
>  				 <&ufs_mem_phy 0>,
>  				 <&ufs_mem_phy 1>,
>  				 <&ufs_mem_phy 2>,
> -				 <0>;
> +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>  		};
>  
>  		ipcc: mailbox@408000 {
> @@ -1924,6 +1925,95 @@ opp-202000000 {
>  			};
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {
> +			compatible = "qcom,sm8550-snps-eusb2-phy";
> +			reg = <0x0 0x088e3000 0x0 0x154>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x3000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> +
> +			power-domains = <&gcc USB3_PHY_GDSC>;
> +
> +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8550-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&rpmhcc TCSR_USB3_CLKREF_EN>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "hs_phy_irq",
> +					  "ss_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "dp_hs_phy_irq";
> +
> +			power-domains = <&gcc USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;

This part was merged but it is not correct without [1]. Are we going to
revive [1] or should we drop it?

[1] https://lore.kernel.org/all/YXcBK7zqny0s4gd4@ripper/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
