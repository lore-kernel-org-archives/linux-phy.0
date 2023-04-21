Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFEA6C7618E
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 21:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XO6YHrc5EkL4gOT+8U3NrA4CrzM17QdiKSjAz3EOSYA=; b=tLKsEqQKBrv4oCn4P7Bzdj+3cc
	mQ6dvNHNJygoOq4bEGSk3fI9T+cfDOfqLwk1+WpEsDQUHDPF4MVLUM5QwKreIQlWd1Iu8oM5dxIYg
	fr62dy+0J8cO04PR3UzncWubUkE27IpOEQfU9m16mYKupFsRxPBQLFTO5b2vJNSx8YZiHcu2biPmB
	2NuHWuTGwPAkbb1x4lw72NtWdfZ+J1GdqWeN1IvcQH6Jnp+03ZE8tZ4PAjZd0/S3ywCpxKXHXbDNY
	aL8s5h7mws5LdTGUr03PCPKEPRFDOoS+i0S/RW+QNHuVOrJncg8bYrwtGVc+9lH92II0nS12xatsn
	Nr6oD73g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppxyF-00Br6U-23;
	Fri, 21 Apr 2023 21:07:07 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppxyC-00Br5r-2f
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 21:07:06 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4ec816c9b62so2208091e87.2
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682111222; x=1684703222;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=82dMk4mt/EjUUXDK3gwazIb7If9XP1IvoU6IArIL6n8=;
        b=dPdnLjphGPi5Yca8Po1OlnshGQ8H0HTl0QRcZVZ2+e0BY/y4/MsiOczEkloFJ9wUbo
         tbNCvXliE+TRW5odTMh0hV3if8bE4XAhUiF7AaVQsktkO9llNzf8BvORpSGk0D8w2ccg
         5Lik5Bvz4m/TNcrhkGi2kkpn3S6OXGX35uebgnWyxb+sqM841fkLkVDG4u9EGKtK/E7p
         d/Wwx6hzO4E62WdK9ctkbeOl0rOb9NyTXGIfpXp4gGWaivRs2w7YyNlf/YthwcFxvaj/
         FBVZf7R2S6JcWtJZ6qv1KrAoDL50YYSk8Jc4HzAv8F3JaTg15c46MFpRmg6I+4tz0blo
         hodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682111222; x=1684703222;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=82dMk4mt/EjUUXDK3gwazIb7If9XP1IvoU6IArIL6n8=;
        b=GGpd2YsVdO0enyidf7WD8BSORut0mSbC3YDtmVsdouOD+LkMsROUZ9xKN/uks2qOaG
         R9o1oRwMueur1ic7QJanVq3pM8CYUToZvNwo2QPOQ+KGnoCIXieO0cSkDfQfJ3kPWTOt
         tzMzuW9hAu7ixY18miTnuNXELEXkgqu10t3DJvHUdX2mwEBgy4SLu1Raw04JmsP7Vhtr
         Cguv4o2KbPDNDNXZKfKhTBahZv10Mq49jfo+lh1r7Y5rN/8sHdwzUE6ZrugoEIDhRSub
         ay93UiGQOYTTzzBD7P0w98IZdVITDF4hpKRCo3u7+E1wJFgkIZJZCoLI1Sbj0sLhU2Qk
         gkZw==
X-Gm-Message-State: AAQBX9dlsvO3Xw418bVHKxezUaxh9vbqyjc8CCoa0LODvTsc03pUuaXi
	00DKRWBqSwQFTxsMNRnMjW2O+Q==
X-Google-Smtp-Source: AKy350bqoCFN01OEXtQlGn2CeqSMEabbxAwFrZ72ZtfGWyK5b3OyapH7u9ISCIcCajwZC32ofWYANg==
X-Received: by 2002:ac2:5098:0:b0:4ed:c3c9:cb06 with SMTP id f24-20020ac25098000000b004edc3c9cb06mr1517113lfm.27.1682111222182;
        Fri, 21 Apr 2023 14:07:02 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d9-20020a05651221c900b004edca9174bbsm673949lft.148.2023.04.21.14.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 14:07:01 -0700 (PDT)
Message-ID: <e142ff5d-543f-80bb-94f9-3f1fb90f1b83@linaro.org>
Date: Sat, 22 Apr 2023 00:07:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <55db8487a7cbf3354749dd2d3a35c05bfd9fa4fc.1680693149.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <55db8487a7cbf3354749dd2d3a35c05bfd9fa4fc.1680693149.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_140704_866938_561E6860 
X-CRM114-Status: GOOD (  20.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/04/2023 14:41, Varadarajan Narayanan wrote:
> Add USB phy and controller related nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   Changes in v8:
> 	- Change clocks order to match the bindings
>   Changes in v7:
> 	- Change com_aux -> cfg_ahb
>   Changes in v6:
> 	- Introduce fixed regulators for the phy
> 	- Resolved all 'make dtbs_check' messages
> 
>   Changes in v5:
> 	- Fix additional comments
> 	- Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 	- 'make dtbs_check' giving the following messages since
> 	  ipq9574 doesn't have power domains. Hope this is ok
> 
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
>          	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
>          	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> 
>   Changes in v4:
> 	- Use newer bindings without subnodes
> 	- Fix coding style issues
> 
>   Changes in v3:
> 	- Insert the nodes at proper location
> 
>   Changes in v2:
> 	- Fixed issues flagged by Krzysztof
> 	- Fix issues reported by make dtbs_check
> 	- Remove NOC related clocks (to be added with proper
> 	  interconnect support)
> ---
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 120 ++++++++++++++++++++++++++++++++++
>   1 file changed, 120 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 43a3dbe..1242382 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -150,6 +150,33 @@
>   		method = "smc";
>   	};
>   
> +	reg_usb_3p3: s3300 {

The node names do not look generic enough. Please take a look at other 
platforms.

> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "usb-phy-vdd-dummy";

This also doesn't look correct. This regulator should not just fill the 
gap. Does it represent a generic voltage network on the board?

Please do not add 'dummy' voltage regulators if there is no real voltage 
wire.

> +	};
> +
> +	reg_usb_1p8: s1800 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "usb-phy-pll-dummy";
> +	};
> +
> +	reg_usb_0p925: s0925 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <925000>;
> +		regulator-max-microvolt = <925000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "usb-phy-dummy";
> +	};
> +
>   	reserved-memory {
>   		#address-cells = <2>;
>   		#size-cells = <2>;
> @@ -179,6 +206,52 @@
>   		#size-cells = <1>;
>   		ranges = <0 0 0 0xffffffff>;
>   
> +		usb_0_qusbphy: phy@7b000 {
> +			compatible = "qcom,ipq9574-qusb2-phy";
> +			reg = <0x0007b000 0x180>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&xo_board_clk>;
> +			clock-names = "cfg_ahb",
> +				      "ref";
> +
> +			vdd-supply = <&reg_usb_0p925>;
> +			vdda-pll-supply = <&reg_usb_1p8>;
> +			vdda-phy-dpdm-supply = <&reg_usb_3p3>;
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			status = "disabled";
> +		};
> +
> +		usb_0_qmpphy: phy@7d000 {
> +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> +			reg = <0x0007d000 0xa00>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> +				 <&xo_board_clk>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_USB0_PHY_BCR>,
> +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_phy";
> +
> +			vdda-pll-supply = <&reg_usb_1p8>;
> +			vdda-phy-supply = <&reg_usb_0p925>;
> +
> +			status = "disabled";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb0_pipe_clk";
> +		};
> +
>   		pcie0_phy: phy@84000 {
>   			compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
>   			reg = <0x00084000 0x1000>;
> @@ -548,6 +621,53 @@
>   			status = "disabled";
>   		};
>   
> +		usb3: usb@8a00000 {
> +			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_SNOC_USB_CLK>,
> +				 <&gcc GCC_USB0_MASTER_CLK>,
> +				 <&gcc GCC_ANOC_USB_AXI_CLK>,
> +				 <&gcc GCC_USB0_SLEEP_CLK>,
> +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi";
> +
> +			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +			assigned-clock-rates = <200000000>,
> +					       <24000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event";
> +
> +			resets = <&gcc GCC_USB_BCR>;
> +			status = "disabled";
> +
> +			dwc_0: usb@8a00000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x8a00000 0xcd00>;
> +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				clock-names = "ref";
> +				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +				phys = <&usb_0_qusbphy>, <&usb_0_qmpphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
> +				tx-fifo-resize;
> +				snps,is-utmi-l1-suspend;
> +				snps,hird-threshold = /bits/ 8 <0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_u3_susphy_quirk;
> +				dr_mode = "host";
> +			};
> +		};
> +
>   		intc: interrupt-controller@b000000 {
>   			compatible = "qcom,msm-qgic2";
>   			reg = <0x0b000000 0x1000>,  /* GICD */

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
