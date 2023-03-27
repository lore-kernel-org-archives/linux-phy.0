Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E52C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q58GgLGRPaWf2ZMk7OPNrZGZlaLAAuXVPKAbGPEpMhg=; b=Ci+pC6Z1u0aZ/y
	cKHsqVsdUKlchkcycr7F99HBEUhgXty0EOumP8YD0TbZ5V73I1/p3FrunLmopx0NBruxwGp3OfLcu
	6bctVCEZ+zJA2I5d4YpLmzm2FpupyRjPi3EKHmbeBlOg1eoVZgCytyJ1fQKJFKNT5Ffv6Zy9l2S24
	oNP4nI8boTXrmER4Fib0MqTEqe34QNCuP2AGVlHoYg1u97R2/PIRl9J2lAoRoMl0qpMh+rHG+ONFa
	cfI4aCu+aMKupm67yIv2hvZdQyAxV3r8j2qyh8bYplhGPQI7tv7bwklHR4FWBpSoI6X5jnjcDvlFk
	dYKbXg0FyryfzelHxcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghvT-00AB4X-1U;
	Mon, 27 Mar 2023 08:09:59 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghvQ-00AB2q-1P
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:09:57 +0000
Received: by mail-wm1-x333.google.com with SMTP id n19so4511787wms.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904591;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ESC+h5a5L+0QAStOf0nm0G7C56coJgIIvWvF2IVlW7A=;
        b=RJCp8u0D7Y+BJT4d9sHYZqHYdgS6/bS9cqSDE1yqhvqXQBBfwcx+3a6mU6GEmWF2EK
         wYLsvirQfCWw/ufuni09wqNubJ0Bn+MVAJoxP+v3SWwTPG9J5/Pbg2kB9ts4dqmEJC7L
         YktG2HGf5I878ceRj5KES0oeuvO2WV4WVDrB9yg26oLAUMO1Ok80sQ+J+aMHVHnMAWgy
         zw7v8K3/TkLONwqaNxqgEQOlQc32F6Nres7WTXtfLo9J2vvw59YGUGxg1EjWrDLwFd/k
         Hmx2nzXEz30BI7E2DtZwqNtkK2J5jCRMrwq6oYu4lRLI8wMCpbrRHZCfoEY9gq8QBXDk
         gFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904591;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESC+h5a5L+0QAStOf0nm0G7C56coJgIIvWvF2IVlW7A=;
        b=6xHLBWIy7tgzw2PbbZ2nWDEMqaXnb2jiGywnBKOuwCkE0HkYdUYaTYL/OZq727W7Xw
         D6852s1+Gbq4M06/erzhVZbkGpFvwKaMr2dPh4WUO0al9T10bgAeh38DJOkQmIw3vAIn
         vDq/UjpBeOxjX1TPV2ZzmSIYHs4od6u+PmSlta8vZJ5ndKGyw1Zrg+8GdQ2IQQb7n9Mv
         J+02mq4iLngzffoRIAXZMZsfpzpZeC9n9VBBZNiahcbx3b2NL4kt6+c98joSb4CK3VhG
         7BDT+yvNAql2KiaB923UkBFkXn+SROgkH9c1Mwa43OUzgUNx4u9DVCIS5uRRVDjH670G
         uYaQ==
X-Gm-Message-State: AO0yUKWEfPbDRRPANq7obuHWu6ySJymHFWXnbU8Dxf3XJhvVHh4GSx/m
	kQ8GVj7+M4ZabF5drXA4JsWwBFKfXPCqCh38OYsUVg==
X-Google-Smtp-Source: AK7set+7SXVjbBDjDfD+QIY9ofKP1turU4YPCc57g+4P6wMTaOxGHtdXngsVkcq1nK2Jsr16WIHZyQ==
X-Received: by 2002:a7b:c8d9:0:b0:3ed:245f:97a with SMTP id f25-20020a7bc8d9000000b003ed245f097amr8879158wml.19.1679904591668;
        Mon, 27 Mar 2023 01:09:51 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id l10-20020a7bc44a000000b003ed246c1d28sm12593795wmi.44.2023.03.27.01.09.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:09:51 -0700 (PDT)
Message-ID: <ab495295-fc33-a195-e39c-4de4a2685cef@linaro.org>
Date: Mon, 27 Mar 2023 10:09:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 5/9] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-6-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_010956_476935_EADD0006 
X-CRM114-Status: GOOD (  13.78  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> Change the USB QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc7180.dtsi | 57 ++++++++++------------------
>   1 file changed, 19 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 3c799b564b64..98004b02b762 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -14,6 +14,7 @@
>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>   #include <dt-bindings/interconnect/qcom,sc7180.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/phy/phy-qcom-qusb2.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/reset/qcom,sdm845-aoss.h>
> @@ -2713,49 +2714,28 @@ usb_1_hsphy: phy@88e3000 {
>   			nvmem-cells = <&qusb2p_hstx_trim>;
>   		};
>   
> -		usb_1_qmpphy: phy-wrapper@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>   			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x3c>,
> -			      <0 0x088ea000 0 0x18c>;
> +			reg = <0 0x088e8000 0 0x3000>;
>   			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
>   
>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> -				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
>   				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
> +				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe",
> +				      "cfg_ahb";
>   
>   			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
>   				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
>   			reset-names = "phy", "common";
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
>   		};
>   
>   		dc_noc: interconnect@9160000 {
> @@ -2835,7 +2815,7 @@ usb_1_dwc3: usb@a600000 {
>   				iommus = <&apps_smmu 0x540 0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   				maximum-speed = "super-speed";
>   			};
> @@ -3143,8 +3123,9 @@ mdss_dp: displayport-controller@ae90000 {
>   					      "ctrl_link_iface", "stream_pixel";
>   				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>   						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> -				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
> -				phys = <&dp_phy>;
> +				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> +				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
>   				phy-names = "dp";
>   
>   				operating-points-v2 = <&dp_opp_table>;
> @@ -3201,8 +3182,8 @@ dispcc: clock-controller@af00000 {
>   				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
>   				 <&dsi_phy 0>,
>   				 <&dsi_phy 1>,
> -				 <&dp_phy 0>,
> -				 <&dp_phy 1>;
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>   			clock-names = "bi_tcxo",
>   				      "gcc_disp_gpll0_clk_src",
>   				      "dsi0_phy_pll_out_byteclk",

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
