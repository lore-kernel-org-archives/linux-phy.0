Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D8BC76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDjPmGaeqcM7zOm7+wOo2w2sVtngPs4gRaevp1eX+oM=; b=sqVeHQ8NYrnihG
	qC0JzYsVra74SzC+M2hN2MoSxs/ZLSETxUWDMxQXB0fdFm1FkU2efgPyQ6vAWTuuTL/XkcJuY8cJb
	4aQusDZU92n344leJTaNM5DlP7A74/sBLLz4QLtlSBcdcNqhkxHReQEZf3kzvLuYX7wC8Gi10IgtG
	Ej0oLuKw0iTZZsz4YCgW5TcrVMoDGt7nVrE2i2qjpaLT6oFf6aaACgC8DrguxyK9UbcGaPV/WxpWx
	2jbMDV6UeoNhqx7/sQReFL2skaYOVLXBAqIk5/xetZ+DFh00g2nmElXzDs9HXwvHyxFBKCQxXwEap
	FW0hgyuwLTJFvNQdEGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghyq-00ABlc-0G;
	Mon, 27 Mar 2023 08:13:28 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghyn-00ABkB-2a
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:13:27 +0000
Received: by mail-wr1-x432.google.com with SMTP id d17so7692179wrb.11
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904802;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HPoK9rzdnsMJkfHLl9TYJjlPiSjh4bu8x7Ea1/hutjM=;
        b=FScLNr8irLBxk+8gdxXBExiz+sbJm9GuV4TyToLfC4GX1ObC8W2nDRK2Us0MHGJT99
         m3J3M+Rj0qCiJh1Iq0AJ/Sc1ETnJlXdMdWvlQWyAu+aQqcIXTgUhbSd10s6pV+HVM9OR
         YVgiKuB2kEZpAy/OHAgsI64FVCt1T8cQ9emy0I42PRyVMpe/iN6gHE6S5VLt1DU/ZSfG
         s+WCiQ4ELfylnwvSiX3c0UlJpW9pY2KUVdVx16kPbhYbvCw6UalAYXvHRHhogNAdMDB3
         XqpoT+0S0kK+Jm/BZOpG29Kye6zyUYSSQQX3mDXbWHPxFaXku5/HeBXbuwJdvHxZP8e0
         riww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904802;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPoK9rzdnsMJkfHLl9TYJjlPiSjh4bu8x7Ea1/hutjM=;
        b=bJAwp97aX/cz73J0pecO2HLCNXFM1MdeUpWyNDGHNmzxH3M44baHF/H0UCRoqpQTYp
         NU6vfQj/c0X/FQivmYSQKYJ4+a+oJCOwPraDxIJwY0pNEy2Pp8um8pad1UWUaFVFAwfW
         FpTj0Sw9qPqtr8snNjGKPWhDvaHtckHBT24Xn/CqRPvug9LQFFvU9QzWKwpF+dYKFgjL
         1i9Oo7goBDtBKnK5elhL/9tImqIRgkh2GXU0NlkZcRQ/nMcLYTF0bMa5ahQOpLQDNvfE
         vrL3A+bAUzH/RuxeqIYEJHkgDe1FK/2YruxMrtUNuM/aoFd78K+s8E0QXeAGPm7owstx
         /1yg==
X-Gm-Message-State: AAQBX9d4UQn2bds2rG/+x+6+EJ0b6BuK1fjxSmBbcucC8/p9uP1zfThs
	aWEERGVMicZg7u+rnQzVUCnijw==
X-Google-Smtp-Source: AKy350ZPboEvskTQ94Fye172/HB5JXnEshyRZeXS7QR1T4u4vdC4qh7T+ueGn5eUoqmyri48/P1FSg==
X-Received: by 2002:adf:e4c9:0:b0:2dd:af9:e1d2 with SMTP id v9-20020adfe4c9000000b002dd0af9e1d2mr8074396wrm.5.1679904801833;
        Mon, 27 Mar 2023 01:13:21 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id q10-20020adff94a000000b002ca864b807csm24558430wrr.0.2023.03.27.01.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:13:21 -0700 (PDT)
Message-ID: <fe277e43-2086-74d4-d9b6-04c3205c1b71@linaro.org>
Date: Mon, 27 Mar 2023 10:13:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to
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
 <20230326005733.2166354-8-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-8-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_011325_843261_EF764028 
X-CRM114-Status: GOOD (  13.59  )
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
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 57 ++++++++++------------------
>   1 file changed, 19 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 2f32179c7d1b..aff8b9278914 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -17,6 +17,7 @@
>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>   #include <dt-bindings/interconnect/qcom,sdm845.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/phy/phy-qcom-qusb2.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/reset/qcom,sdm845-aoss.h>
> @@ -3909,49 +3910,28 @@ usb_2_hsphy: phy@88e3000 {
>   			nvmem-cells = <&qusb2s_hstx_trim>;
>   		};
>   
> -		usb_1_qmpphy: phy@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>   			compatible = "qcom,sdm845-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x38>,
> -			      <0 0x088ea000 0 0x40>;
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
> -				      <0 0x088e9a00 0 0x100>;
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
>   		usb_2_qmpphy: phy@88eb000 {
> @@ -4031,7 +4011,7 @@ usb_1_dwc3: usb@a600000 {
>   				iommus = <&apps_smmu 0x740 0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   			};
>   		};
> @@ -4499,8 +4479,9 @@ mdss_dp: displayport-controller@ae90000 {
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
> @@ -4838,8 +4819,8 @@ dispcc: clock-controller@af00000 {
>   				 <&dsi0_phy 1>,
>   				 <&dsi1_phy 0>,
>   				 <&dsi1_phy 1>,
> -				 <&dp_phy 0>,
> -				 <&dp_phy 1>;
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>   			clock-names = "bi_tcxo",
>   				      "gcc_disp_gpll0_clk_src",
>   				      "gcc_disp_gpll0_div_clk_src",

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
