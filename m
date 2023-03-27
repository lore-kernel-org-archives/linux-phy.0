Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 702ACC761AF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWC0ZUiLLKkSw9OBrRhuWsoCCYx0L+2XgNokU/VfY7Y=; b=V7kJq6E7dyFw0T
	4weO7v+8LylvBsQ258oLClOwFFxr6Zz41R+hXsVPcgVuDWit/lR28aIftgSpd9i9XxTAEWrhg7qTc
	mtvq2SNT8jwvGeLKalN0jiuuPeImZlgCnxRl03dZUiQfXbZuTAL0utBMpUS2fqbJttuxYRS3Txkfc
	ElkjP2VtgzmTi9zD0s1S4OOlVRis5kAiHMtm1y8lref26OGhOLQbfeoOkAAKZvYSriq725hjLlgFr
	CEfN0yjwBvSpP/2c+eVZAWkmt4kbH3ZGlhzyltsxi5fjNxHvamcn5GZJwQFao9tEfvbBoWle/b0e8
	2NFfV8BWM4Y/d7mvOoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghxn-00ABZV-0N;
	Mon, 27 Mar 2023 08:12:23 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghxk-00ABYH-29
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:12:22 +0000
Received: by mail-wr1-x435.google.com with SMTP id m2so7706611wrh.6
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904739;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KBfO/oFMbTKt7WQEfeOuO2ERZ7+hWklfjpQd73i51jE=;
        b=xInh/mRq9zL3iWJW/LVrlrdt7sKz1u9ejAVy3pSlpHX1W/4/2fFJUfZXF0sFyr9pDU
         mV7sJXGXx5LeMvo1J4T42eweggdNm83y0iyOae/8nU5NSYeA27/AM8VlFfUzGqFEFnZL
         xe4MpU6nSyogwVFnObfKVk9IceTa3guueWNNdZ6MBmencI9lONOw05rjW/lYKX9HO2YP
         PQ5iGHqZMYDZHxCmNFqA5oASrRwlQDCXA/r9ntU3R72uBh35cOI6L7i6mYDI+tnIJT3l
         dRNGeNGr6Qgp6i9ZtE0MyTufX8+ZnH7LwRJXRBCvRa8KvWvln+VOkqJed09gXd+aH4T5
         3hXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904739;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBfO/oFMbTKt7WQEfeOuO2ERZ7+hWklfjpQd73i51jE=;
        b=gcZk9nLN5KKvr9fyWzkxuO5CdX5kS+0QAQFwt+1gBsBmW2F/v/Fg251CsRtnTAQQO7
         PDS1++Vvhjshe5qve3aNgm6ez70X987yUdB6goeZg+Q6KM648a70uetikVF/yEDwA1P1
         CSjmRl2E0qmcEza046ct3Yl6z1eDmZ/CxDNbu7pH9Kbm4jq/6nB23jZ3qmVbeOp7tv5i
         Zy369o8WFdsVHptf4oamjgrNmRagqQb9dMtdFwUfRiszamugpYHYLz6LDviIggRB6hls
         okyCcMqkejiZlGCA545yJPa+W77jRSoJ0wB8rPHkrbrA6dQ3k55nW4BmNvuL43LZThBl
         AqJg==
X-Gm-Message-State: AAQBX9cUAjRTFgIbB8lzpVCA+y3CmIhixjRfTt5f/7pQ+U0Amyb8Tl3A
	uLA8BfDA4dRcQTLYxDyp6MgO9w==
X-Google-Smtp-Source: AKy350auFzMlC4w9kxnIeWd9u8zmLg6N8VYeAGBRNLrH6OS+QBEgMkTj/PNX2qyN7EUxaSyT9O8rpw==
X-Received: by 2002:a5d:66ca:0:b0:2d3:bde8:9ff with SMTP id k10-20020a5d66ca000000b002d3bde809ffmr9388618wrw.34.1679904739019;
        Mon, 27 Mar 2023 01:12:19 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id a8-20020a056000100800b002d8566128e5sm15971130wrx.25.2023.03.27.01.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:12:18 -0700 (PDT)
Message-ID: <be4af5a9-6c82-138d-28dc-73b485fa1a00@linaro.org>
Date: Mon, 27 Mar 2023 10:12:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 6/9] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to
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
 <20230326005733.2166354-7-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_011220_710740_E479E858 
X-CRM114-Status: GOOD (  14.18  )
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
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 57 +++++++++-------------------
>   1 file changed, 18 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 5e6f9f441f1a..887c490bdd14 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -18,6 +18,7 @@
>   #include <dt-bindings/interconnect/qcom,sc7280.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>   #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/reset/qcom,sdm845-aoss.h>
>   #include <dt-bindings/reset/qcom,sdm845-pdc.h>
> @@ -3327,49 +3328,26 @@ usb_2_hsphy: phy@88e4000 {
>   			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
>   		};
>   
> -		usb_1_qmpphy: phy-wrapper@88e9000 {
> -			compatible = "qcom,sc7280-qmp-usb3-dp-phy",
> -				     "qcom,sm8250-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x200>,
> -			      <0 0x088e8000 0 0x40>,
> -			      <0 0x088ea000 0 0x200>;
> +		usb_1_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sc7280-qmp-usb3-dp-phy";
> +			reg = <0 0x088e8000 0 0x3000>;
>   			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
>   
>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>   				 <&rpmhcc RPMH_CXO_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "ref_clk_src", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
>   
>   			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>   				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>   			reset-names = "phy", "common";
>   
> -			usb_1_ssphy: usb3-phy@88e9200 {
> -				reg = <0 0x088e9200 0 0x200>,
> -				      <0 0x088e9400 0 0x200>,
> -				      <0 0x088e9c00 0 0x400>,
> -				      <0 0x088e9600 0 0x200>,
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
> -				#phy-cells = <0>;
> -				#clock-cells = <1>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
>   		};
>   
>   		usb_2: usb@8cf8800 {
> @@ -3694,7 +3672,7 @@ usb_1_dwc3: usb@a600000 {
>   				iommus = <&apps_smmu 0xe0 0x0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   				maximum-speed = "super-speed";
>   			};
> @@ -3799,8 +3777,8 @@ dispcc: clock-controller@af00000 {
>   				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
>   				 <&mdss_dsi_phy 0>,
>   				 <&mdss_dsi_phy 1>,
> -				 <&dp_phy 0>,
> -				 <&dp_phy 1>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
>   				 <&mdss_edp_phy 0>,
>   				 <&mdss_edp_phy 1>;

The gcc usb3_phy_wrapper_gcc_usb30_pipe_clk entry is missing, it was already missing with legacy bindings.

Neil

>   			clock-names = "bi_tcxo",
> @@ -4138,8 +4116,9 @@ mdss_dp: displayport-controller@ae90000 {
>   						"stream_pixel";
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


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
