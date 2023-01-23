Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44DF8C54EAA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 16:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJFUZotl5LLLNxUtOqQ/viCzaxLPM7Cf/1eY399skS4=; b=1nJ5Wk7cXRkeK6
	kRNFDkI7W61NAjse4gcHghvWbdNH998wOnrpIWNGgomOob0zyM7lSY6Cr2JelpxDLEEgaaxc2/XiY
	jxXvD4K99uqj1oH0trvgJm7d1ejbVAzPRtc3Tig07Zs7Dzoa1Jn386wkYceXR9eiPyxD7hqJgfAJw
	oy+WEfMzotNJLQNtpN3YAW/1RCZAT6AZOcnCLUZ+S4KBzWTFVwXTZkXFOGEXpmm7Ni5g2H0y5k7Nn
	l6fPqT9FwFcySIzipPQleVy+yPfI3JmR52ObglHEz+2p15EcYwc+sm8cFtTXXKHQ6nzW8IvmLWXdX
	1D3a+i2ZDe8BEAOYMAoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJznY-000aVh-LX; Mon, 23 Jan 2023 16:35:56 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJzeO-000Wss-Gr
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 16:26:30 +0000
Received: by mail-ej1-x62b.google.com with SMTP id mp20so31908201ejc.7
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 08:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lab8GS0BsXttrEIIOF5NuoFe5yEpMq3XNGpFEieVFus=;
        b=oF4rD6jd7XwszpEixf28vjQe5BHyTMqbDMbb0myXN7sNdrC+JWF7pbvptfZlr7EEZu
         HCOfmKYSseWmcGQZrMEirBmnWHakJk4wj4YR3gUJPzu6+oTCwtccIThIC1wRNBsyWMXu
         UA1QfgF5DJysHFZOaK/HO8gZU+urYcCCf9sVVohIfO94u8tzqW8/b5tggtzRQWLaG37+
         7XiMVCZk+HTLtDhrNOTeALvlSHaIBTmfV9EKcQWB56KGNvKJU6JAWK9srHD5ActxyIWq
         Wrh53EiA1YID0pZF750/wIkqkgG7oi6bMdLd8VzYTe5cs8JuMpY5jjkdg3M6pTcU/vrY
         3j0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lab8GS0BsXttrEIIOF5NuoFe5yEpMq3XNGpFEieVFus=;
        b=YRoBlWfzdbi/2kDpOU4GhGjjyqYW5uCl9Tk2SZgyo/d4SHH0Q7IQuSY2fY7mwzhxjH
         tkkRdLgUqtSeGgK4l8wxyqYD96i4a9ekPNbW/zmJI7vl86EJ/q9JwQAPL0+7hSrzA4Lx
         ZySFjMBMq0a6f39ZzOiiYtt2HESKyQLzBQNRviblTwpNXC+h+etAzuNfd0Gkfe3rUV8s
         6EYCNNjWttz2o7qqYsljvX1nZ2ONdc5q+iPEwUTeo9L50B99V6A542Q57CXL1Bx7mOh3
         Jgfxo9aIT6f0Yd6qwYlEEFIrNc3bUvWbzm4jYZIhvFxVRNDTVuEDkoT6J5uHO9SVucjW
         MX5w==
X-Gm-Message-State: AFqh2kqGqp0j2MQ6gt1bUUx2PDmQ3A+uNNZITBqE9RutwuUNBbpZR1/U
	H/I7Tyn9bt/jPP0yYWJ2SdreYw==
X-Google-Smtp-Source: AMrXdXsLNSc/qQBnWGQwUSUQ/FzBERvIWV6+ygvsH14hClyHcGWFZRhHiJquSdlWNG5cIgsdJW1j7g==
X-Received: by 2002:a17:906:78b:b0:7c1:9b07:32cd with SMTP id l11-20020a170906078b00b007c19b0732cdmr26403478ejc.39.1674491186264;
        Mon, 23 Jan 2023 08:26:26 -0800 (PST)
Received: from [192.168.1.101] (abxi24.neoplus.adsl.tpnet.pl. [83.9.2.24])
        by smtp.gmail.com with ESMTPSA id f6-20020a17090631c600b008779b5c7db6sm5411656ejf.107.2023.01.23.08.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 08:26:25 -0800 (PST)
Message-ID: <2f0881e3-9f6c-1c77-c6ca-3e291b37bd12@linaro.org>
Date: Mon, 23 Jan 2023 17:26:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sm6350: Use specific qmpphy
 compatible
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
 <20230120-sm6350-usbphy-v4-3-4d700a90ba16@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230120-sm6350-usbphy-v4-3-4d700a90ba16@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_082628_653101_F1109E2B 
X-CRM114-Status: GOOD (  17.16  )
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



On 23.01.2023 14:29, Luca Weiss wrote:
> The sc7180 phy compatible works fine for some cases, but it turns out
> sm6350 does need proper phy configuration in the driver, so use the
> newly added sm6350 compatible.
> 
> Because the sm6350 compatible is using the new binding, we need to
> change the node quite a bit to match it.
> 
> This fixes qmpphy init when no USB cable is plugged in during bootloader
> stage.
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 54 +++++++++++-------------------------
>  1 file changed, 16 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 8224adb99948..128dbbe23ef5 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -13,6 +13,7 @@
>  #include <dt-bindings/interconnect/qcom,sm6350.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  
> @@ -1314,49 +1315,26 @@ usb_1_hsphy: phy@88e3000 {
>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>  		};
>  
> -		usb_1_qmpphy: phy@88e9000 {
> -			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x200>,
> -			      <0 0x088e8000 0 0x40>,
> -			      <0 0x088ea000 0 0x200>;
> -			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +		usb_1_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm6350-qmp-usb3-dp-phy";
> +			reg = <0 0x088e8000 0 0x3000>;
>  
>  			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> -				 <&xo_board>,
> -				 <&rpmhcc RPMH_QLINK_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> +
> +			power-domains = <&gcc USB30_PRIM_GDSC>;
>  
> -			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> -				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
>  			reset-names = "phy", "common";
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
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
>  
> -			dp_phy: dp-phy@88ea200 {
> -				reg = <0 0x088ea200 0 0x200>,
> -				      <0 0x088ea400 0 0x200>,
> -				      <0 0x088eaa00 0 0x200>,
> -				      <0 0x088ea600 0 0x200>,
> -				      <0 0x088ea800 0 0x200>;
> -				#phy-cells = <0>;
> -				#clock-cells = <1>;
> -			};
> +			status = "disabled";
>  		};
>  
>  		dc_noc: interconnect@9160000 {
> @@ -1430,7 +1408,7 @@ usb_1_dwc3: usb@a600000 {
>  				snps,dis_enblslpm_quirk;
>  				snps,has-lpm-erratum;
>  				snps,hird-threshold = /bits/ 8 <0x10>;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  			};
>  		};
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
