Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD670C7EE21
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 10:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLvHquDA5lIIR7M9xZVfp09QpVpdPI4GqRl/WoEzojc=; b=nBU5xJxarFNNya
	6RPz5/m9EK+xj6mGs1YEO7QMPp5sWW9NusjNxHyXmCeb1NRjWYToabgxPWzNyLx3eumSys3s6oWxr
	jDyOUibxGen8ex98jT7A9Vbz8orqnCArjSa+Vf1EIxwAWLZywR9L59SypdKAzmo8uYcnbcp/nwpa5
	EEYIxCo22HvCcGh80zA+w7V6YQZxznuV6vzgan5UxFtxAq9g8fptCKPu/wh7GOmjBBdk+8jan9QJZ
	SSFXyOlch1eDajONZBg509wE7AxoG/Q7cO3G888yS46hQ7aHAm1qKWjsQjJzAf27iJii7bgc4DzzG
	RhbGjc41y+r8wY1o1ToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnM9-000xxY-16;
	Tue, 02 May 2023 10:35:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnM6-000xwS-2E
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:35:36 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so4694521e87.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 03:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683023731; x=1685615731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BuK9yt7coqgqQBziCDgLRC212bKpkXeD99LtZ/3AI/w=;
        b=uNqccEYEEjKxz0ppsRGvYmKtlasNF9Qxu9Ja9yoqq/6yX43E5LOsDx8ZXNeIsgWG1p
         Tq43QPdv6Fyjfou1qTd+x9tlLmAERrDSJLRrJoaRvEi8B87UqlGcx0UI48ORYnP9yQnZ
         j7ymKPzdpmLtlPZWPxx+LXSqBNE8cvMsVK4sN2EuCJFBu9XUhEP/1scZj5UXexfL63Qr
         4FUk/qa0ElNhhvyb9LzIsGjEMhSyAuamXmT/lhnbNOIs9KpPbgm4qntnvTVtOxJb/NvJ
         YCHjasOS5D5UM6ppnT9QRpxhGyNvmLoMrIeM7q6LOvSWe3+LO62uU6y4QnDJftKzHzOz
         Ycwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683023731; x=1685615731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BuK9yt7coqgqQBziCDgLRC212bKpkXeD99LtZ/3AI/w=;
        b=HW/5/qcUeMne8/nw7LYo3B9sab/5NOBsGB2bm7Rc6W5a3BCHixYvD+7P+ArgK5RmvD
         IVr9CwauyS1xPtttuZTWAbRLWGNYuKyFjIdqjhuF6o+/N/u3yxPDCIzWzNjUMd7L2XR2
         JBSZALgGFneFW7PsQ9SX8D6Fp2wtp5qlRfMli+trQ9vwiJp0SQW0+kIfxjIA0hcBJn6u
         NSg/tCSHfpM8SS8OUc8Tc1j/BX6UhYn/FKguIimaAjLfP3If+KwhetaUl6j57w6BsB4h
         WyDopJZ3vR78N99/fjle/Xvnswtv1kDXnwA68Vd7z/dn/1cmVDBNY58dpowChvEnJkhy
         qxyg==
X-Gm-Message-State: AC+VfDwwTO4lt3gRN+S8kpctuzlQgUzD6CZzHNAD6n/pRREKZHbf5mYb
	M5uAaYKF6TgFVpfqEwwfxobWqQ==
X-Google-Smtp-Source: ACHHUZ5mjLOaTAoYcc9I2dpjYWsLiaOQ95dooQJ5/MnlljEikx9iYGXS8H1OMCNVDEmelLp2cwOdLA==
X-Received: by 2002:a19:ae12:0:b0:4dd:a61c:8f74 with SMTP id f18-20020a19ae12000000b004dda61c8f74mr4792906lfc.51.1683023731622;
        Tue, 02 May 2023 03:35:31 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id y24-20020ac255b8000000b004cb41b43c25sm5254716lfg.197.2023.05.02.03.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 03:35:31 -0700 (PDT)
Message-ID: <47b8c36f-cf53-beec-3b18-1544456beabf@linaro.org>
Date: Tue, 2 May 2023 12:35:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Content-Language: en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-4-bhupesh.sharma@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230502053534.1240553-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_033534_729914_3EBEB5C4 
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



On 2.05.2023 07:35, Bhupesh Sharma wrote:
> Add USB superspeed qmp phy node to dtsi.
> 
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>  arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
>  .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>  3 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> index a1f0622db5a0..75951fd439df 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> @@ -242,6 +242,9 @@ &usb {
>  &usb_dwc3 {
>  	maximum-speed = "high-speed";
>  	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>  };
>  
>  &usb_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 631ca327e064..f67863561f3f 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
>  			status = "disabled";
>  		};
>  
> +		usb_qmpphy: phy@1615000 {
> +			compatible = "qcom,sm6115-qmp-usb3-phy";
> +			reg = <0x0 0x01615000 0x0 0x1000>;
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
>  		qfprom@1b40000 {
>  			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>  			reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1111,8 +1136,8 @@ usb_dwc3: usb@4e00000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x0 0x04e00000 0x0 0xcd00>;
>  				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usb_hsphy>;
> -				phy-names = "usb2-phy";
> +				phys = <&usb_hsphy>, <&usb_qmpphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
>  				iommus = <&apps_smmu 0x120 0x0>;
>  				snps,dis_u2_susphy_quirk;
>  				snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index ea3340d31110..81fdcaf48926 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -306,6 +306,9 @@ &usb {
>  &usb_dwc3 {
>  	maximum-speed = "high-speed";
>  	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>  };
>  
>  &usb_hsphy {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
