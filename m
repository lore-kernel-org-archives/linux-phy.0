Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D691C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 12:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Jw/dDpJitfl8jRDsU7W0nt5GV8mLmKhPyzVe3q+L9g=; b=NqRPtqNnUBAs4/
	4Eo1jeyIiz03FrbOt2W4MKPVcaugtiYff1psf7xGAHtOyB8VgzxwgEL35YoAjl7LHS3fK6FzQz01u
	0t3xY2Yb0hBHiiaMdy/XGD9LlYaRybL5/aQJWcLaJuUXgwORRaG9JMV25rP9qKhEuw4GNekoTrB0c
	+EaMwQ+NNeTn82JEj0vvz6rZsi9ZUrzHZtBi5nnUfByT7VCrHO6SnDcvXYMUnoRPXtxBSnyzNSD2m
	Xc/GI1EFbBpSRfwucrlf8mer9zeVX4Pscu/5f4LP+uoqo2ff0sw1D/f3y/A+iYY9UDX1r17MBeRO1
	opVqETHiAVJ2y/zf84iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5eH-00DIq5-SB; Mon, 21 Nov 2022 12:11:41 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5eE-00DIdx-Bd
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 12:11:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id l12so18499508lfp.6
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 04:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7qhOMct1HtHorGbIWxyZEdTxvsTx5R3VBHmP3l2woMg=;
        b=rOgOeCRWpjxZg5nXP82q7tc9S0QzvizVoefqoQzE2Q7H86DBuFTopuoD1mNZ5sPC4w
         92LR2HCe2f0niGUYjXVAgkj3CgjHkIIJP4c/FaNkPVIYy1kwyTkuXSkoLygGnmvi/jst
         imcQn5rkWlnFProwvMfFtxz5Hy9UDchjTMZGqJdQcNGdSkPZCzKKueQiMuiUhbuzPyKj
         DTJLiye9/PufyxJsnjqipi7wyoayFR5DAInUve/lu0v07p92+EvTAYJMpWwk/7ImGKK/
         MwIant5rN7BDSi0jJdmn094NsfnOvSb7KBWDqtHLQYrNl06EDQK81HZhMyEoOVgry0Xm
         A6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7qhOMct1HtHorGbIWxyZEdTxvsTx5R3VBHmP3l2woMg=;
        b=tSYdMqCE0RlZ75W9QNcSmMzaItKfNDgj9+8JHSQkas2PBDs6hNXGzuBCitOxr4cUzd
         F4mzsYZF9y4d6DT26k0rG0S83P/WL4lAmCmS4FUw+lOam3Y06ejh6oedQ8BSIEvQfBR2
         YYAg0jZ/XZ9ny55hs69moedeRb5sIOadvHBkicOh4EuR9BwS99xdaIbSgP4fxH3ki9eL
         9//PU11+V+3Uu2M6zGO4HEQNjug15ceLAIgYdBn957dYfVhRHSzWcaZe2vdpu/obfalj
         avFWi54gv380w/n2xJ/iL3KfUvOiVRRamfARZh27pW29EgkAeuAIDbCZGDxMR/OtxN+C
         9ZDA==
X-Gm-Message-State: ANoB5pmiG8MRhYITUDXO9g2+YWyLyfXmXRa8McXCJAEWM085jzOchB5S
	E850iWaJYdBQRLypzVWMBiD2Ww==
X-Google-Smtp-Source: AA0mqf7xZ0mWUdJCN+6VFR2cUJVKZcxOD17BCaNQ2fbAP6LUKcuL2AlNDQkkD7XCO/YE1IbrdhUIRw==
X-Received: by 2002:ac2:58ca:0:b0:4b4:eed:ec3e with SMTP id u10-20020ac258ca000000b004b40eedec3emr5710487lfo.446.1669032695820;
        Mon, 21 Nov 2022 04:11:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w2-20020a19c502000000b004a05767bc07sm1996327lfe.28.2022.11.21.04.11.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:11:35 -0800 (PST)
Message-ID: <0149c0e5-f3d6-1e15-cadb-5b88ed4b3dbf@linaro.org>
Date: Mon, 21 Nov 2022 13:11:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 5/6] arm64: dts: fsd: Add PCIe support for Tesla FSD SoC
Content-Language: en-US
To: Shradha Todi <shradha.t@samsung.com>, bhelgaas@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, lpieralisi@kernel.org, kw@linux.com, mani@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, alim.akhtar@samsung.com,
 ajaykumar.rs@samsung.com, rcsekar@samsung.com, sriranjani.p@samsung.com,
 bharat.uppal@samsung.com, s.prashar@samsung.com, aswani.reddy@samsung.com,
 pankaj.dubey@samsung.com, p.rajanbabu@samsung.com, niyas.ahmed@samsung.com,
 chanho61.park@samsung.com
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20221121105210.68596-1-shradha.t@samsung.com>
 <CGME20221121104741epcas5p31e1320bc4c0912485c1fabe52ea19988@epcas5p3.samsung.com>
 <20221121105210.68596-6-shradha.t@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121105210.68596-6-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_041138_451951_7F7F86C5 
X-CRM114-Status: GOOD (  16.25  )
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

On 21/11/2022 11:52, Shradha Todi wrote:
> Add the support for PCIe controller driver and phy driver
> for Tesla FSD. It includes support for both RC and EP.
> 
> Signed-off-by: Niyas Ahmed S T <niyas.ahmed@samsung.com>
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> ---
>  arch/arm64/boot/dts/tesla/fsd-evb.dts      |  48 ++++++
>  arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi |  65 ++++++++
>  arch/arm64/boot/dts/tesla/fsd.dtsi         | 171 +++++++++++++++++++++
>  3 files changed, 284 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> index 1db6ddf03f01..cda72b0f76f8 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> @@ -41,3 +41,51 @@
>  &ufs {
>  	status = "okay";
>  };
> +
> +&pcie_phy0 {
> +	status = "disabled";

It's a double disable, isn't it?

> +};
> +
> +&pcie_phy1 {
> +	status = "disabled";
> +};
> +
> +&pcie4_rc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie1_clkreq>, <&pcie1_wake>, <&pcie1_preset>,
> +			<&pcie0_slot1>;
> +	status = "disabled";

???

> +};
> +
> +&pcie4_ep {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie1_clkreq>, <&pcie1_wake>, <&pcie1_preset>,
> +			<&pcie0_slot1>;
> +	status = "disabled";
> +};
> +
> +&pcie0_rc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> +			 <&pcie0_slot0>;
> +	status = "disabled";
> +};
> +
> +&pcie0_ep {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> +			 <&pcie0_slot0>;
> +	status = "disabled";
> +};
> +
> +&pcie1_rc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> +	status = "disabled";
> +};
> +
> +&pcie1_ep {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> +	status = "disabled";

Ordering is broken. All overrides/extends are ordered by label name.

> +};
> diff --git a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> index d0abb9aa0e9e..edae62dfa987 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> @@ -64,6 +64,27 @@
>  		samsung,pin-pud = <FSD_PIN_PULL_NONE>;
>  		samsung,pin-drv = <FSD_PIN_DRV_LV2>;
>  	};
> +
> +	pcie1_clkreq: pcie1-clkreq {

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

(...)

>  
>  &pinctrl_pmu {
> diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
> index f35bc5a288c2..2177f6964553 100644
> --- a/arch/arm64/boot/dts/tesla/fsd.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
> @@ -32,6 +32,14 @@
>  		spi0 = &spi_0;
>  		spi1 = &spi_1;
>  		spi2 = &spi_2;
> +		pciephy0 = &pcie_phy0;
> +		pciephy1 = &pcie_phy1;
> +		pcierc0 = &pcie0_rc;
> +		pcieep0 = &pcie0_ep;
> +		pcierc1 = &pcie1_rc;
> +		pcieep1 = &pcie1_ep;
> +		pcierc2 = &pcie4_rc;
> +		pcieep2 = &pcie4_ep;

Since these are disabled, aliases do not belong to DTSI, but to board.

Also, explain why do you need them.

>  	};
>  
>  	cpus {
> @@ -860,6 +868,169 @@
>  			clocks = <&clock_fsys0 UFS0_MPHY_REFCLK_IXTAL26>;
>  			clock-names = "ref_clk";
>  		};
> +
> +		pcie_phy0: pcie-phy@15080000 {
> +			compatible = "tesla,fsd-pcie-phy";
> +			#phy-cells = <0>;
> +			reg = <0x0 0x15080000 0x0 0x2000>,
> +			      <0x0 0x150A0000 0x0 0x1000>;
> +			reg-names = "phy", "pcs";
> +			samsung,pmureg-phandle = <&pmu_system_controller>;
> +			tesla,pcie-sysreg = <&sysreg_fsys0>;
> +			phy-mode = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie_phy1: pcie-phy@16880000 {
> +			compatible = "tesla,fsd-pcie-phy";
> +			#phy-cells = <0>;
> +			reg = <0x0 0x16880000 0x0 0x2000>,
> +			      <0x0 0x16860000 0x0 0x1000>;
> +			reg-names = "phy", "pcs";
> +			samsung,pmureg-phandle = <&pmu_system_controller>;
> +			tesla,pcie-sysreg = <&sysreg_fsys1>;
> +			phy-mode = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie4_rc: pcie@15400000 {

Not ordered. Keep nodes sorted by unit address, at least within the
group of devices you add.

> +			compatible = "tesla,fsd-pcie";

reg is second property. reg-names and ranges follow.

> +			clocks = <&clock_fsys0 PCIE_SUBCTRL_INST0_AUX_CLK_SOC>,
> +				 <&clock_fsys0 PCIE_SUBCTRL_INST0_DBI_ACLK_SOC>,
> +				 <&clock_fsys0 PCIE_SUBCTRL_INST0_MSTR_ACLK_SOC>,
> +				 <&clock_fsys0 PCIE_SUBCTRL_INST0_SLV_ACLK_SOC>;
> +			clock-names = "aux_clk", "dbi_clk", "mstr_clk", "slv_clk";
> +			#address-cells = <3>;
> +			#size-cells = <2>;

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
