Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDE7C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFVhqeQrWkEyrKykRvmDTLTESXPXKESrRGGkzbhJWxw=; b=j4Of7pvoq229jF
	tWhaBL843xV1r5X2gPJyvwbG2SoiXa0KFy374WoUXI7r7Ff1MGbhb+LCfM6yXbWjNFp/WDr0rDqWQ
	O7v7oycje+Nt5EBSuOP3ziGOxSLf0HdnxYwutgz5qfQqUqqcI2/YisTWSuecmwl3oy6/aEEHsv0wC
	hBqsDouNgSb8sk8JMGMFl7CI6T8UfBeWq/9qj3hB9U4s2G7MFY9c27ZQkaukivHckT9dWyW510k0Z
	Vp/tnTNtsydf0FzUZg5IgYhnvkinvJj5xjWTnrM2aFxcvolb3olpAuNF99tgxOyijzixYaurG0sXm
	GSMAnoD2qSHoWsGYoXTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwKN-00000000eUs-11M8;
	Tue, 28 May 2024 12:53:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwKJ-00000000eTJ-34sx
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 12:53:17 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5295a576702so935360e87.0
        for <linux-phy@lists.infradead.org>; Tue, 28 May 2024 05:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900794; x=1717505594; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IhfLeEz31nnpbep1wtfE79deZVn4RTMnQcliKUfwmsk=;
        b=oTpK9HPIgM+PRB6Bpac2um3pL3qyYJe420hX+CK/66VtEYY5RpXmkx2G+tW9ZJyqX2
         0S74OTRRMqN073tMoo+bmkuLcjPA/h2nkC7sNooVBB6wVi7A7nB3ISOr2NVLeaim4OFa
         zzyB6/82PpnUdf4E3cqu4ROlGTsJ9dFiRgIuD7Gd8aMzvfA+bmgLaCZOKHh6wgAj/e49
         JH4Hy3n2cx1aEGF7CM/JL42F6xX7rEjhWc8OXTV5fXbFYv1JvHg6htME1c/Zbmfx9cD8
         XM1YEdtRQKiQhRIlN6VBnZiT0k04yYhookaidjyuQPIqX0HhnSl6VqomgT/X2Ev8qArF
         2mRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900794; x=1717505594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IhfLeEz31nnpbep1wtfE79deZVn4RTMnQcliKUfwmsk=;
        b=KzvVE1XVpsoSphUmBmKy+A5nztRNBgCvjkTFMUqrjE7TsBIYQOnzJxNCEe1L/r3DAG
         JcQ9SrI8vaZVbYvLMR/wGqd1kftafSAu2k7KLhojzLK5ZP+WIzvJ+OYwgJeWSqrRxVmD
         byuiFQ2XXbuaYpP8OWc4y1qZbSzkKUsfw5kf30p2+OsHYtPcVVIde/Q7l3Q9oCfQ6MET
         AafKefpSU2qbqOqTo9W6jyVfQJc3lywEH6T8W1Bi/85yaKr7KsD4jMZuD2PZ09TMkkRs
         Rd0bp7W51sHul0woFOfGLv+TlVFZrgsdg7ZqktEw+26k0mbqEhl8Ya/Hw1ecepOJZalH
         Zc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUpWy+vaTJRBOod19EX5tFoE1G8y8FGkAfKaYQ+9/e/tr/CVk4yfL+n++Vntat8ObctWPCpjiCxBiw9kSkzHJ8TBu22oB41IF3XnSeArw==
X-Gm-Message-State: AOJu0Yw090sDCs2F+1lBtiBkBuCkFez8/ijcYeFmTnh8MDlV0wFZnQny
	Oo5XToRF4xvvCfcvSlgQ/CX0XzQ4iOSrpkemKg4t/nlxJhR569agcFkkfy3BOTI=
X-Google-Smtp-Source: AGHT+IH1jsEV56zssrINk6gB/epPAKvvSKLlj9VGr4Avz+U+gixZrxxt6NkzNDHCNSWzzaaBtLHF6g==
X-Received: by 2002:a19:380a:0:b0:516:d18b:eae8 with SMTP id 2adb3069b0e04-52964caa6damr6901115e87.41.1716900793703;
        Tue, 28 May 2024 05:53:13 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529712f1c0fsm949009e87.279.2024.05.28.05.53.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:53:13 -0700 (PDT)
Message-ID: <e8e714ac-610e-4507-82ed-27a38c7be8fb@linaro.org>
Date: Tue, 28 May 2024 14:53:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] arm64: dts: qcom: sc8180x: Add USB MP controller
 and phys
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_055315_812129_9D0D723F 
X-CRM114-Status: GOOD (  15.57  )
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



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X platform comes with a multiport DWC3 controller with two
> ports, each connected to a pair of HighSpeed and QMP SuperSpeed PHYs.
> 
> Describe these blocks.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8180x.dtsi | 146 ++++++++++++++++++++++++++++++++++
>   1 file changed, 146 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> index 9ef3fa40e1d8..0950dc7adb20 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> @@ -2511,6 +2511,34 @@ usb_sec_hsphy: phy@88e3000 {
>   			status = "disabled";
>   		};
>   
> +		usb_mp0_hsphy: phy@88e4000 {

Even though the register names are MPn, I think this is a bit confusing..

There's only one MP controller, so perhaps usb_mp_hsphy0?

[...]

> +			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;

PIPE_1_CLK

> +			clock-names = "aux", "ref", "com_aux", "pipe";

This could be a vertical list

> +
> +			resets = <&gcc GCC_USB3_UNIPHY_MP1_BCR>,
> +				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
> +			reset-names = "phy", "phy_phy";
> +
> +			power-domains = <&gcc USB30_MP_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb2_phy1_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>   		usb_sec_qmpphy: phy@88ee000 {
>   			compatible = "qcom,sc8180x-qmp-usb3-dp-phy";
>   			reg = <0 0x088ee000 0 0x18c>,
> @@ -2662,6 +2738,76 @@ gem_noc: interconnect@9680000 {
>   			qcom,bcm-voters = <&apps_bcm_voter>;
>   		};
>   
> +		usb_mp: usb@a4f8800 {
> +			compatible = "qcom,sc8180x-dwc3-mp", "qcom,dwc3";
> +			reg = <0 0x0a4f8800 0 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			dma-ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_MP_AXI_CLK>,
> +				 <&gcc GCC_USB30_MP_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_MP_AXI_CLK>,
> +				 <&gcc GCC_USB30_MP_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_USB3_SEC_CLKREF_CLK>;

This is used by the secondary DWC3 (non-MP). Are you sure?

Actually, are we sure that these clocks are really supplying the DWC3s?

> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			interconnects = <&aggre1_noc MASTER_USB3_2 0 &mc_virt SLAVE_EBI_CH0 0>,
> +					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_USB3_2 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";
> +
> +			assigned-clocks = <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_MP_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 656 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 658 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 59 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 46 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 71 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 68 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 7 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 30 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event_1", "pwr_event_2",
> +					  "hs_phy_1",	 "hs_phy_2",
> +					  "dp_hs_phy_1", "dm_hs_phy_1",
> +					  "dp_hs_phy_2", "dm_hs_phy_2",
> +					  "ss_phy_1",	 "ss_phy_2";
> +
> +			power-domains = <&gcc USB30_MP_GDSC>;
> +
> +			resets = <&gcc GCC_USB30_MP_BCR>;
> +
> +			status = "disabled";
> +
> +			usb_mp_dwc3: usb@a400000 {
> +				compatible = "snps,dwc3";
> +				reg = <0 0x0a400000 0 0xcd00>;
> +				interrupts = <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0x60 0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;

sa8195-usb.dtsi lists a bunch more fluff:

snps,has-lpm-erratum;
snps,hird-threshold = /bits/ 8 <0x0>;
snps,is-utmi-l1-suspend;
snps,ssp-u3-u0-quirk;
snps,dis-u1-entry-quirk;
snps,dis-u2-entry-quirk;
snps,dis_u3_susphy_quirk;
snps,force-gen1;
maximum-speed = "super-speed";

the irq numbers look good

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
