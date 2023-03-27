Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E92C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQro7/6jaNccwgENBSnKoyDg9Bhz5QWDlgQ30tui11A=; b=lAhdFPV8Wwr/up
	qWIlrF6hbbi/J+tA96HMlXz9wmM0UAB8tW52S0iIRtKD5FjnLvfQJpVk2yYE8UwQghQv+ENQsma/P
	Zhv/5vsp1Ydi/QM14rDgUrcJQqeMc6hP+OJuayLyzFWruf529zW/W8vKDDxEecDqNIOmV39vHow4g
	/ctqyKEqDE8l7aFTqX38B03EQX/loqcWVWx0+HCoOgj9+QJA1SZN4R952zHiv+q2xFhBJMFEsuELc
	Fop+Ns+NVVkrQuoBWHzZ6156TVyiijEz+WFxf0h9F4ynMTCx1OEP35eugNK8JpxbSD9jrz/ANCGvT
	xtOwYVNqGIUPsaD995qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghzV-00ABuS-1x;
	Mon, 27 Mar 2023 08:14:09 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghzS-00ABt4-12
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:14:07 +0000
Received: by mail-wm1-x331.google.com with SMTP id q7-20020a05600c46c700b003ef6e809574so1289696wmo.4
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904844;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w3xDgiQj65tQODsa0Qr/kRJotjgg38rVLNNMCJifFSY=;
        b=Ci+QWdtAXwcnAjI0he29/UEE3NX6ctnVXkdqW5ncwDd8dAArGAxP8f8haCBCFjZPbV
         1kAS5tnUApPP6tuKXM0sepV+dGBVlY3+460p3OBmsrY9ryGMS5MYpNxLMGSTvzl0hwKR
         9x6BIyeo6bOS3pf5j31VWgtkg79Zsk4OadVFHR47Jrvh0ERmvvQRduarXHZYqx2WfH1S
         bzCOSw/lNmV768cAjQIDDlV3ZTl48Ff+UO+TVHCbgGnSP6FY5mtuNOiUuBOMT7ghqTo0
         ZpjSMTXD4OtVohZTqgw4fV1C4M/lIvaC0WutBFfwLMh3XJaHJkPrteLaWBvFrnmy+xpM
         8YsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904844;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3xDgiQj65tQODsa0Qr/kRJotjgg38rVLNNMCJifFSY=;
        b=DsOeDBbYQirKvLRuaBERzfmG2qE6N+FfMo1O7bWSl+L7IKhV54fM6yFPCZN/ufhGNe
         CRRLDJpIckwK0fq7MTBT+RiDl6PnkAO6An5PtuaqhaHnNGG7E6/xCq/EE8BUOyRur58b
         jyFm0l09vF1EcNlIJbKJ1aOrBBYtk7Ajbpu4IkZdxl9VjDjYgevaX/urjXoRyXtWmAtp
         U6ToTDg3VEXx6j0sxEXzSejuvG3rbD+7qbdqGuIXVBqTBEXDPGzYR5PqM6/xOlKGtoH5
         6NROraBZ1JdPrqrk45HQhB0o/zTEJ9yLHBZruhfaeG9tbl3ZAGnUGyB49sKcGmqcFbDU
         MkSQ==
X-Gm-Message-State: AO0yUKUjF0IEQraYa15ZPUmniuyCPTlXaL9jIV4wWFaWWekGoD/1FwAU
	WVxDvV+uwxZsSKLtaYvvMCPhOS5AfnHJTjP9vKa6pQ==
X-Google-Smtp-Source: AK7set8SzLz1C9BObn1xUDaaVBcPVAQrhD4E1movKquwUgFlXZL/ceNkdY73Z7M9MrGNNd7zaqTIog==
X-Received: by 2002:a7b:c419:0:b0:3ed:e447:1ed0 with SMTP id k25-20020a7bc419000000b003ede4471ed0mr8733488wmi.14.1679904844515;
        Mon, 27 Mar 2023 01:14:04 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id j36-20020a05600c1c2400b003ebf73acf9asm21392219wms.3.2023.03.27.01.14.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:14:04 -0700 (PDT)
Message-ID: <a45030f5-4553-2e72-1bc8-4317eeabc8e9@linaro.org>
Date: Mon, 27 Mar 2023 10:14:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to
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
 <20230326005733.2166354-9-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_011406_358265_BEC6F25C 
X-CRM114-Status: GOOD (  13.62  )
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
>   arch/arm64/boot/dts/qcom/sm8150.dtsi | 48 ++++++++--------------------
>   1 file changed, 14 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index a618218f7b68..4df9fef5c7b0 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -6,6 +6,7 @@
>   
>   #include <dt-bindings/dma/qcom-gpi.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>   #include <dt-bindings/clock/qcom,rpmh.h>
> @@ -3391,47 +3392,26 @@ usb_2_hsphy: phy@88e3000 {
>   			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
>   		};
>   
> -		usb_1_qmpphy: phy@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>   			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x38>,
> -			      <0 0x088ea000 0 0x40>;
> -			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x088e8000 0 0x3000>;
> +
>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>,
>   				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
>   			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>   				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>   			reset-names = "phy", "common";
>   
> -			usb_1_ssphy: phy@88e9200 {
> -				reg = <0 0x088e9200 0 0x200>,
> -				      <0 0x088e9400 0 0x200>,
> -				      <0 0x088e9c00 0 0x218>,
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
> -			usb_1_dpphy: phy@88ea200 {
> -				reg = <0 0x088ea200 0 0x200>,
> -				      <0 0x088ea400 0 0x200>,
> -				      <0 0x088eaa00 0 0x200>,
> -				      <0 0x088ea600 0 0x200>,
> -				      <0 0x088ea800 0 0x200>;
> -				#clock-cells = <1>;
> -				#phy-cells = <0>;
> -			};
> +			status = "disabled";
>   		};
>   
>   		usb_2_qmpphy: phy@88eb000 {
> @@ -3568,7 +3548,7 @@ usb_1_dwc3: usb@a600000 {
>   				iommus = <&apps_smmu 0x140 0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   			};
>   		};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
