Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AACA5C7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 08:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc1HCVTAksY2bcCA/hjYn/TARUCwa9GBOs0zYp+EHlw=; b=3CuuOTFYJ9fxKP
	f7O4Slz3e/DaknkIoHOjPJfs/ZfvBgordLLsdCswi1et1WZqf4Yjx9JbMw8706sbeAt1v46nvDxbH
	Ts6fW5lFk3yyVU/TaDZc7ao9/uHmfr9tRMcRDTpyU/9e5MaNd2IhogKFIGitv5TkXy+n5g2ugLXc0
	x8gzjz76v3pphz4vcHPjHjp//FZfkYEF3nbnRKYRKm9L6enkgdqaVb9lWlhlF+NDhozRoJf/SsB3d
	O8XRiWbKM2sf9mATlyitPuIc0LR7af7ajcDM1VTSx5svMm+gtPgsDAw7j/0auD1WeDL4KfVkbiJLJ
	E1DMS8didscDy7/vuKgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Nax-009TnY-14;
	Tue, 23 May 2023 08:42:15 +0000
Received: from mail-lf1-f44.google.com ([209.85.167.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Nau-009Tmz-2U
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 08:42:14 +0000
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so3154454e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 01:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684831271; x=1687423271;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mq0OsCPMU5Vo6tNW2wEnQJFjDwC7c5GtRXgcuxXmz8g=;
        b=YTQgpwbjdimEfN7EQMD0MCj66DvIGcvOUcAYPYtVN2m3rbuW51HaB88o0vIMZOH9U1
         8hZxsSuwEFyIxSJU4AC4RP187cfQeFG3C/bSTk+xx6YrZt9RIFB4FidH1rsCGWbHcoPo
         E3vJ5rnmKe2zx9SxIMFv6WKV34xuthSsgBV6k2yzCPKK3o2UqiQSUNvvfG7QzXaxw5yt
         Qzd0FqZR5utVptHfD4n9uR81G0VSt/AyTC9jbIwsoKSqUV3vE2H5maFpO8t06MBV/GKD
         MV1ReKB6gMinpjjDyxPw37Uvn2XcbeUJtAQZkS520StalLp9b8ODT/ZQkTntJIXT6vD1
         y4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684831271; x=1687423271;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mq0OsCPMU5Vo6tNW2wEnQJFjDwC7c5GtRXgcuxXmz8g=;
        b=YuvANtaZ0WzkzQKFIk6zDn0yaaPoenJRdI0GQA25KJb7NFQcGnqRsHT9KYGfAkEvSH
         CvrV5zODUQIP5vSxT9uWbLZVz0mnuHGOKGHpmbAuGozE30SdhDTNvyZ0Qq5Zxnb2HpFA
         mvCSaCtXG4Kynm+h1ns9oh1LPNJPxC3DVd2qusX5KBEB71T82WyqCsdQ2gF2GS6W5jBg
         2xB+BfHTZqDzTyo/ctoMFOF5O5HKOOjT9ZGJZdjHyj911+x7d3nCIbonZ/HtOeYNl0/+
         yuGbacCSDLTRUa6noaeNC49dAFOpnbL3gl2lSbAQaFYnROYfqZt8/WeXIdv1xx6ZXiZi
         wksA==
X-Gm-Message-State: AC+VfDwkiVzMYCe2rgZoW2MkLj04SFn0B9er/hDFKFCXVvCEgnPD5eZV
	67LNRaOzt9Wy2RDNY/eyBFvP8SkCkJgbd+jA+uU=
X-Google-Smtp-Source: ACHHUZ6mu5c54nkC3e1haaXh8hXhzAlko6vafPXaQqAEpS1kUghA9tz8uJGsl/soeweM5iHHYS4SfA==
X-Received: by 2002:ac2:4c39:0:b0:4f1:2986:3920 with SMTP id u25-20020ac24c39000000b004f129863920mr4011584lfq.41.1684831271196;
        Tue, 23 May 2023 01:41:11 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id x12-20020a19f60c000000b004f142edb3bcsm1240878lfe.199.2023.05.23.01.41.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 01:41:10 -0700 (PDT)
Message-ID: <2d5b28d3-83f9-15c4-84e0-e6edb3f3333d@linaro.org>
Date: Tue, 23 May 2023 10:41:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 05/10] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY
 to new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
 <20230521202321.19778-6-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521202321.19778-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_014212_834713_D8EB00C3 
X-CRM114-Status: GOOD (  14.72  )
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



On 21.05.2023 22:23, Dmitry Baryshkov wrote:
> Change the USB QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 57 ++++++++++------------------
>  1 file changed, 19 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index ea1ffade1aa1..b07a49e6829a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interconnect/qcom,sc7180.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/phy/phy-qcom-qusb2.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/reset/qcom,sdm845-aoss.h>
> @@ -2718,49 +2719,28 @@ usb_1_hsphy: phy@88e3000 {
>  			nvmem-cells = <&qusb2p_hstx_trim>;
>  		};
>  
> -		usb_1_qmpphy: phy-wrapper@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>  			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x3c>,
> -			      <0 0x088ea000 0 0x18c>;
> +			reg = <0 0x088e8000 0 0x3000>;
>  			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
>  
>  			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> -				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
>  				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
> +				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>;
These are unaligned

Other than that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe",
> +				      "cfg_ahb";
>  
>  			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
>  				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
>  			reset-names = "phy", "common";
>  
> -			usb_1_ssphy: usb3-phy@88e9200 {
> -				reg = <0 0x088e9200 0 0x128>,
> -				      <0 0x088e9400 0 0x200>,
> -				      <0 0x088e9c00 0 0x218>,
> -				      <0 0x088e9600 0 0x128>,
> -				      <0 0x088e9800 0 0x200>,
> -				      <0 0x088e9a00 0 0x18>;
> -				#clock-cells = <0>;
> -				#phy-cells = <0>;
> -				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> -				clock-names = "pipe0";
> -				clock-output-names = "usb3_phy_pipe_clk_src";
> -			};
> -
> -			dp_phy: dp-phy@88ea200 {
> -				reg = <0 0x088ea200 0 0x200>,
> -				      <0 0x088ea400 0 0x200>,
> -				      <0 0x088eaa00 0 0x200>,
> -				      <0 0x088ea600 0 0x200>,
> -				      <0 0x088ea800 0 0x200>;
> -				#clock-cells = <1>;
> -				#phy-cells = <0>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
>  		};
>  
>  		dc_noc: interconnect@9160000 {
> @@ -2840,7 +2820,7 @@ usb_1_dwc3: usb@a600000 {
>  				iommus = <&apps_smmu 0x540 0>;
>  				snps,dis_u2_susphy_quirk;
>  				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  				maximum-speed = "super-speed";
>  			};
> @@ -3148,8 +3128,9 @@ mdss_dp: displayport-controller@ae90000 {
>  					      "ctrl_link_iface", "stream_pixel";
>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>  						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> -				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
> -				phys = <&dp_phy>;
> +				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> +				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
>  				phy-names = "dp";
>  
>  				operating-points-v2 = <&dp_opp_table>;
> @@ -3206,8 +3187,8 @@ dispcc: clock-controller@af00000 {
>  				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
>  				 <&dsi_phy 0>,
>  				 <&dsi_phy 1>,
> -				 <&dp_phy 0>,
> -				 <&dp_phy 1>;
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>  			clock-names = "bi_tcxo",
>  				      "gcc_disp_gpll0_clk_src",
>  				      "dsi0_phy_pll_out_byteclk",

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
