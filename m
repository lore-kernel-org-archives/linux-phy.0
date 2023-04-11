Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FDB9C7619A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 07:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQNcDa59Ga7Xq7dj3EMjkv08A2FkLKle9sGs7Ofk81U=; b=UyFWCCY+EXFMph
	RH5fiicr7S9rm4sm9jy4TgkZH8NeBdso0+aftK0hu2ITL1afIl2vU5F6jQWPZOGyzVRO4qRDAZjVd
	vs4ta/5NpbZC7F9Ivusqk5brLzdmhzTwyD3WzF4VoBeqSK4hCMv+n/U9aYL4jNW7B1NHhz3Udvq0M
	JtvkLjpQquOuVqG3KttxWX8F8B6m233+24948KuEH6qervAsODruzZ1JS+s+xJGGQqDrzNMJkwbD7
	WlUWMb+dxHqfLSkAZlNKI+EWz8L7UPWCRWw8J3WqVb3dYDqoC5iCgsxrwxE6fb7XSL26Vd+KtMQS6
	78sIWGGf0GRB1JdwxCTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8j4-00Gltb-2k;
	Tue, 11 Apr 2023 07:47:38 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8j1-00Glt7-1Y
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 07:47:36 +0000
Received: by mail-lf1-x130.google.com with SMTP id m4so9062608lfj.13
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 00:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681199252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mg7sIU4syKVdSy8LOtYkilZC80DMuyLCGHqWZ1NEyKI=;
        b=I8lZf6iR7StToEKVoaHAu+vZVEcFaXC5mSpr+Me1rg/+LkdH/e7eRZKPg5A4bnWsQZ
         P8kQHxInoeJyf9IhagruXh5Ld/3bAmv0xXyRbhUApcnwtp50cvNtEyOMW3mQ9MClQwoL
         etxkhG9pW0cPFO00Pkwfmv2Ny93UrAlG9RN0QEzB6Cw/OSvEWEgVgAlX5hS5Qa/URDf9
         uzzfd4pyZFuXsz9U6UQz53Bioo3W87BjigJ0b+07P3N/JIQLRxnJWs0HWDcNd3P66Qas
         uq37Vz6I5Hf5DdFZTEoA7FisnRXiL8l3xS7MGGKBLBdW8Jj6lxybA2qwsqcNZeEbz9Fi
         Jwtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681199252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mg7sIU4syKVdSy8LOtYkilZC80DMuyLCGHqWZ1NEyKI=;
        b=s6ZNzgylKJDTUAIeosK/lJM3/yKUQx03P7ksU6FI/pWPzmcsng6M6I/0ojYxqs8bcM
         09GM9YOU4W2lJI2uv0+mz7RVqP39VI9MEz5D2ZwDYKDxy/N8hPTVsr2JAYc88+gGb+d2
         lTL+M7kCFZWBfVVFaxrhnOCYaTbPRH3nNr+uf83IFlprZEKdPXrS3nJSzx7V2mWJuz4n
         P4WcDJymRzMlDWnEQ4XUawEiv6VEh/yTBNj/SsNhl/Zr/7nLINmSnmfWE8dW1fR3H9F0
         wOX82pQtFJX3JwAx3CDu966nntnVyNycKz2mDitaGk+dVTk4c8PmzNwya78k1IbmPz93
         ufUA==
X-Gm-Message-State: AAQBX9chYPbrBuI8HwYHfV+WpmLn0DJc+LZ6ywXqgYd8wxgUW+vHyG+7
	WUdt/alZuiBg+uZ6LLVa6x1unQ==
X-Google-Smtp-Source: AKy350Z7/M6uSptsCaQyLk5cixXpi5u01LLvz6VhqVaoT7HRdgUV6kdsm7qDyb3IQISGHuruvPf5jA==
X-Received: by 2002:a05:6512:2191:b0:4e9:8994:49bd with SMTP id b17-20020a056512219100b004e9899449bdmr4738898lft.3.1681199251896;
        Tue, 11 Apr 2023 00:47:31 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id h22-20020a2eb0f6000000b0029aa0b6b41asm2660925ljl.115.2023.04.11.00.47.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 00:47:31 -0700 (PDT)
Message-ID: <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
Date: Tue, 11 Apr 2023 10:47:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
 <20230410171010.2561393-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230410171010.2561393-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_004735_524406_F85419FA 
X-CRM114-Status: GOOD (  16.83  )
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

On 10/04/2023 20:10, Bhupesh Sharma wrote:
> Add USB superspeed qmp phy node to dtsi.
> 
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
>   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>   3 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> index a1f0622db5a0..75951fd439df 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> @@ -242,6 +242,9 @@ &usb {
>   &usb_dwc3 {
>   	maximum-speed = "high-speed";
>   	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>   };
>   
>   &usb_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 2505c815c65a..b2ea8f13e827 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -651,6 +651,31 @@ usb_hsphy: phy@1613000 {
>   			status = "disabled";
>   		};
>   
> +		usb_qmpphy: phy@1615000 {
> +			compatible = "qcom,sm6115-qmp-usb3-phy";
> +			reg = <0x0 0x01615000 0x0 0x200>;
> +
> +			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> +				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "cfg_ahb",
> +				      "ref",
> +				      "com_aux",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> +				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> +			reset-names = "phy", "phy_phy";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb3_phy_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";


Please excuse me if I'm wrong, but this will not work with the current 
PHY driver. It was not updated to handle new bindings. Please provide 
relevant driver patches too.

> +		};
> +
>   		qfprom@1b40000 {
>   			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>   			reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1101,8 +1126,8 @@ usb_dwc3: usb@4e00000 {
>   				compatible = "snps,dwc3";
>   				reg = <0x0 0x04e00000 0x0 0xcd00>;
>   				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usb_hsphy>;
> -				phy-names = "usb2-phy";
> +				phys = <&usb_hsphy>, <&usb_ssphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
>   				iommus = <&apps_smmu 0x120 0x0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index 10c9d338446c..d60cc024749b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -280,6 +280,9 @@ &usb {
>   &usb_dwc3 {
>   	maximum-speed = "high-speed";
>   	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>   };
>   
>   &usb_hsphy {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
