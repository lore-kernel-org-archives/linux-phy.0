Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A629AC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s31YXyIe8EeZdPUuChc5s0/xUrFYRrD5fnmRJRtCz4=; b=L6PVdNqXZXE7Ki
	GClyPAHvycMD0w7IDLnrUpGsMp5rUq7ObCm3knDakCwbACuirujyRsQ70ONgUJ5wyU/pawfqN9fgd
	Zr2y7NVgRUUNlx9nPRaenWhTzcDEOVPij7apSVbsmnvp5FzDsyR8mPCR39bIlV1S12tv8ichwxK3p
	BDaFgIYVL+TuySuMGxCOa3Kz9oldvm8Jp4QXJivp08TZvjUDiksUbWa00dYFKViJ2F/ZUUUqPByKT
	L3jwEKwPGgtuXzOKK9RqjOB7MQIDnEYYAHtupm19RZCH7ZmA7Y9bXYq13EVpHDQCSPaFT2Wu5qhCT
	IcNjyoC3TZAP3+rSJEjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptiry-000G78-0z;
	Tue, 02 May 2023 05:48:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptirx-000G6C-0B
	for linux-phy@bombadil.infradead.org;
	Tue, 02 May 2023 05:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=u0KH7PrTyqIakLJHa4OE7SkEBnSW+9Gc8LTx1FKiD9A=; b=rOLNCgFyPZ8JIbaRYciEp26Onu
	yRnxIw8+8nnMnmbXYOdiuMzvsNLlYwovTou9bdkL9xGoYqHpx7EWeQgnpJ8gxEXtA5rAs4RG49szJ
	TCaJ8st1+vSIRyr1AzwHHzYabaDk3IMCck3FE1bZBMmzcytD5BbHbXin4bEUE9VaotHdNt46jqijY
	QlrkrHN30XVHGwlF2T6TDea5Sol7Y4mLb3flU8GDOKH87wbTZlLLOSZjufJug4xsL6wt7x0RMxci1
	fqUIbQsnX4DS/DpZ68gS1nxbiRkSF0Va5yXASdW5YFAxNM7x590QfQliXFAYJLLmZt/4ZqDrFX5W3
	qyTQJnTw==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptdit-00F43K-0n
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 00:18:30 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f127b10140so343843e87.3
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 17:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682986704; x=1685578704;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u0KH7PrTyqIakLJHa4OE7SkEBnSW+9Gc8LTx1FKiD9A=;
        b=jRJtlARzzOFJ7dZjVWdprwLXYlniLT4F4G63wNFKX54kHOyyhXxP17Yu/RI43Yk9Vs
         8tXPfd1w9Ubn88Wv7aU2YhP6M8nTsaSLZPIoQYoKpw+BJhdmFCaX1+y7ynFgML9aGB7p
         hY2HsDYiIQIP6lCYivLcCvGZJWz8E5vb5XQZGj7IWX11rmxLaDeDROlyh7oPUKqupFYj
         5l7tVz2UTqeTmF89iqNAda4sB47jNKBlqlDZFAU17fRYPb/zqvXOEEWrfHXEGxeJ1dAj
         lVnJLdz0Xo3tS19wIeX2iDjXM2e9q8SgVK/uC1jyXYkMDOIS3Rexc3Dol2yqsjqoi4ay
         MIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682986704; x=1685578704;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u0KH7PrTyqIakLJHa4OE7SkEBnSW+9Gc8LTx1FKiD9A=;
        b=ZsZifiz5dicZStz6BuAaRLPqIK3EscFD0lvxTOAGmBZVl6yl7k9Ok81E2C5dE3clfZ
         wPsrlpVjj0eg/dQhZlHL8setehOqxZTqvrWkJ59mK7gDQeoSyqf+KlOu3A2or7XTq2sm
         vDxfS0k50l+IFK0Meps0NYH4CuKjK2pyEywJzAeGhor9a1gGsjplVMRaDjDneVjzBhuR
         XgIGe90/PjbJs55CGqd3mmP/xFwjYJjd+GY7+0LDGkJPG2l30engSyxYqVR64O7zl4FE
         uTCocsV1rwxaWfHVruUukqj4peLM+S4fcYCdRl/P8iATrb3v77feKNNyL9MYN3BCKhZq
         twSg==
X-Gm-Message-State: AC+VfDyJJFfYVnuEGg399wmJCfE0qgUjZ+AeZWi+J5Cl8VWN5NCnNgyf
	2BCpbzW/BFwN0MfOyy0GU0Rjkw==
X-Google-Smtp-Source: ACHHUZ5Teo45WCl2GPwJFhVFP2cBsMeFY0S4HCU1zQ08cS5w4XptLFpKequThz/vVtRAA7fOrqAMNQ==
X-Received: by 2002:ac2:515e:0:b0:4ef:f6c9:b977 with SMTP id q30-20020ac2515e000000b004eff6c9b977mr3837302lfd.49.1682986704534;
        Mon, 01 May 2023 17:18:24 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id j6-20020ac24546000000b004ed4fa5f20fsm5045572lfm.25.2023.05.01.17.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 17:18:24 -0700 (PDT)
Message-ID: <82e61752-dc76-9714-d2e1-13962c4217ee@linaro.org>
Date: Tue, 2 May 2023 03:18:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-4-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230501192432.1220727-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_011827_469518_6838E27C 
X-CRM114-Status: GOOD (  17.31  )
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

On 01/05/2023 22:24, Bhupesh Sharma wrote:
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
> index 631ca327e064..21d00b0295a1 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
>   			status = "disabled";
>   		};
>   
> +		usb_qmpphy: phy@1615000 {
> +			compatible = "qcom,sm6115-qmp-usb3-phy";
> +			reg = <0x0 0x01615000 0x0 0x200>;

I replied with R-B, but then I noticed that the length of the region is 
bad. What is the maximum offset that is used by the driver? I know that 
it is bigger than 0x200.

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
> +		};
> +
>   		qfprom@1b40000 {
>   			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>   			reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1111,8 +1136,8 @@ usb_dwc3: usb@4e00000 {
>   				compatible = "snps,dwc3";
>   				reg = <0x0 0x04e00000 0x0 0xcd00>;
>   				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usb_hsphy>;
> -				phy-names = "usb2-phy";
> +				phys = <&usb_hsphy>, <&usb_qmpphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
>   				iommus = <&apps_smmu 0x120 0x0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index ea3340d31110..81fdcaf48926 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -306,6 +306,9 @@ &usb {
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
