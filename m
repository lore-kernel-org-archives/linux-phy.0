Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAAE9C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 22:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3frj4CJXu/tHByR7wgEgERlXN6H1Coabs+D6Qh03Io=; b=LhcuadM5+6udvJ
	I8hYUN//ktU6D4Nz/6Tl1RQf+QdBK20h8TFw4nRX+e4+o+e4F/0oAXWvZMv3qNLU2T42a+a03IV8w
	UEdLqgTBr06iUYqlzaJ1/SC3+csrfcbl9g72IkHdjV5opvG14oslP+JVJmHX7sCuxOpkH2k8xi+R+
	yZ5oFuH6Ns1+e1ba9HObwOOKAiWK8qye2LEQ0TIBkwKlD/8GESDRnsUNK1a/JHOou1fcD6XKBLgzz
	ApTMG1tSBg+3Rh5DA4f/Y3gQnGCpDNPqeF4jfeGB9DdAgIf3OEX6jPD8+gHBY2kXJWuRpNWWnrf+H
	kCahDlyNSNSoDVontPSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxcri-002zY5-DS; Wed, 15 Dec 2021 22:35:14 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxcrf-002zXP-Kh
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 22:35:13 +0000
Received: by mail-ot1-x32f.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso26746365otj.1
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 14:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DrRoCw7l3D7/9CGJqJ4R7z395m+W9pLZaas2T1HokPE=;
 b=NnwvJspKiha/Rl8EShdutwtVGV78a5SwE6iiRfdpg6nh16rmzSM5gJ+/nO6Tec754s
 Y+gJoXY+nfVXfAz/3jSJcy8Unl6Rw8RQz5Jdy9d8MJWogcfu6HTC6e7jn2GMnFzaytvS
 ANdWDvAcvCzezpQfZyjstxUGM2sGNaOM2c/GCjxckEGdPtyFhQ14LNcivyUglq/kiTqH
 dtEiNExkfzOR76VSEaKA6UjRyYsri8luOQqP/x+goQEfQaXyzSS63Oq83YDS99/u6hSA
 XlPXEZOCDQl+aRKFln1e7XIGHlp+7GMjaIcUDysbTURnRzbzsvr/BioiCpCQjUrU+7yI
 H+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DrRoCw7l3D7/9CGJqJ4R7z395m+W9pLZaas2T1HokPE=;
 b=dgbjY9d9bCxY9mk/FPOd73Zd+r81TovNPBq8Q7L5krs87idyYMos76c+TvUt2WaWHE
 O9mFcylC6aFoB2TvQNfOayFOW3cBZcESkJDUf6cA17oPzZ9dfAbtZpZTUkqGfhTLc9rZ
 iBCWahS6jCMulaONLz1NIFeoHuo4g3H7dQ2HzBPX2taEcvwOQiJTwTkjAOkfPGSvuiAL
 v5T/xyB1cTEvn+55EDSvSkduTJnYv6Uo/pKaX1yChJgkV5d18UGLvv2udkJ7miK6P0XH
 0uAmzaDn5ldFrcLMCm/gEIFTIMGRGU1QHoxyN/uTG5jaQ9fEqyHIOhRhLpxRbq3plIHN
 3Myg==
X-Gm-Message-State: AOAM532YBMe7V1FOKRWEUjndOnzbWZ1Rrvab9jmC9TsVpwJtVHj67kr6
 ktyBm3qgESH0QBX5p86+qFgJSg==
X-Google-Smtp-Source: ABdhPJwOQVNpU4KGRwikBNvh7yK6qAC+L8kEQepBFOThQIcssf+d3eBXVXm/ezaqNUWvTeLv3TFMFQ==
X-Received: by 2002:a9d:6653:: with SMTP id q19mr10861621otm.116.1639607710366; 
 Wed, 15 Dec 2021 14:35:10 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id p23sm696362otf.37.2021.12.15.14.35.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 14:35:09 -0800 (PST)
Date: Wed, 15 Dec 2021 16:35:05 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Wilczy??ski <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Message-ID: <YbptmeteGVt75NuO@builder.lan>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
 <20211211021758.1712299-9-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211021758.1712299-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_143511_711950_C1D15368 
X-CRM114-Status: GOOD (  15.62  )
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

On Fri 10 Dec 20:17 CST 2021, Dmitry Baryshkov wrote:

> Add device tree node for the first PCIe host found on the Qualcomm
> SM8450 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index a047d8a22897..09087a34a007 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -627,6 +627,84 @@ i2c14: i2c@a98000 {
>  				#size-cells = <0>;
>  				status = "disabled";
>  			};
> +		];
> +
> +		pcie0: pci@1c00000 {
> +			compatible = "qcom,pcie-sm8450";
> +			reg = <0 0x01c00000 0 0x3000>,
> +			      <0 0x60000000 0 0xf1d>,
> +			      <0 0x60000f20 0 0xa8>,
> +			      <0 0x60001000 0 0x1000>,
> +			      <0 0x60100000 0 0x100000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
> +
> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */

You need to pad these with a couple more zeros, see 0ac10b291bee
("arm64: dts: qcom: Fix 'interrupt-map' parent address cells")

> +
> +			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
> +				 <&pcie0_lane>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
> +			clock-names = "pipe",
> +				      "pipe_mux",
> +				      "phy_pipe",
> +				      "ref",
> +				      "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ddrss_sf_tbu",
> +				      "aggre0",
> +				      "aggre1";
> +
> +			iommus = <&apps_smmu 0x1c00 0x7f>;
> +			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> +				    <0x100 &apps_smmu 0x1c01 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_0_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc PCIE_0_GDSC>;
> +			power-domain-names = "gdsc";
> +
> +			phys = <&pcie0_lane>;
> +			phy-names = "pciephy";
> +
> +			perst-gpio = <&tlmm 94 GPIO_ACTIVE_LOW>;
> +			enable-gpio = <&tlmm 96 GPIO_ACTIVE_HIGH>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pcie0_default_state>;
> +
> +			interconnects = <&pcie_noc MASTER_PCIE_0 &mc_virt SLAVE_EBI1>;
> +			interconnect-names = "pci";
> +
> +			status = "disabled";
>  		};
>  
>  		pcie0_phy: phy@1c06000 {
> @@ -763,6 +841,29 @@ tlmm: pinctrl@f100000 {
>  			gpio-ranges = <&tlmm 0 0 211>;
>  			wakeup-parent = <&pdc>;
>  
> +			pcie0_default_state: pcie0-default {

Binding states that the node name needs to have the suffix "-state".

Regards,
Bjorn

> +				perst {
> +					pins = "gpio94";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				clkreq {
> +					pins = "gpio95";
> +					function = "pcie0_clkreqn";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				wake {
> +					pins = "gpio96";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
> +
>  			qup_i2c13_default_state: qup-i2c13-default-state {
>  				mux {
>  					pins = "gpio48", "gpio49";
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
