Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1421C77B75
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9dp2elXNwySHsnSP9ZaPDHAJClMCI+eoplKKNH4p20=; b=JSnlzGCA5gQQNs
	yhgrqubeLDFQl9k5n21LA0YY89Pl8ZuLAqIJh1+0eNZtVmThUNissd2+O/S/DBeRM0KQ4d9dyqzGg
	cre40gdJveEvDLxes6HW5p/m2G/X1uVCZ0RL1AEJGrghVMfut4BZNUu7XmrhKG5rgSkpb/5xfGOGd
	NSonXvqxT2ewTEw8PJ6qchfGBInVygLIr+XEcOKV1ujC876cmuor9ncLBNqwsn8zII4F+T4FX3csl
	ctWcRIqSwS10iEBhlKisRNJlY+qVCeT2yDGYzhcEyCUd9Inw2JxaPUnKFvjgkM/X9nmY3yvdB5CLn
	uKTJKmTsjMoWh4lFXovg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18vE-007Hyb-1h;
	Mon, 22 May 2023 17:02:12 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18vC-007Hwk-03
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:02:11 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f00c33c3d6so7403180e87.2
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774921; x=1687366921;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TjF21XFkX4tecG71XyzArS3homg2K5jds2rmtDGL+jY=;
        b=qbX7I8vdATrZajUyLDCa+F03EsA8WQAR8BA1uAU4S0C/u/hIvXaC1Z96tlHEvgycEU
         mimF7K3w7LNKqGcMKDFOb1uaRmdXp6BkHHwkOXwOcakPWf5fAVInPDSlS9IZkPav6b4Y
         94SRNscAW8m9MQHrRTBgqBXw4PLylR6anIE7sAOxptW6UpObE78NLPmsfRQMCddrIwjY
         aphrY3m7FE0lu4bZDOd5IwJaDMFIl0PDTzHAPm4vRM4wKyQs1+xo10E7k2ltrb6kZ5kb
         YL08epLzzkqPczPHtRgbZiR0fwO66dYMqlZOPChx3kuH8weRznsgpcsuNzT/lgQTEhgJ
         3pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774921; x=1687366921;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TjF21XFkX4tecG71XyzArS3homg2K5jds2rmtDGL+jY=;
        b=OwpZ1FP90DK5EUl2DnfwmEgj4xcY7OwUOl6CtrmwCqkArZVdOYdF/yE4qcWgSPbrMd
         peeR/Nq7fcqMIOTK8BJqXC5clXbJIoIWMH54TeLwHjxBNv3kGWXb9v72vIiKKoZ5gIqj
         jlqfTTHaTleSJ5w71YcrEdGlO3yIW7fsYzOF8pHtFd3lkqoE1dMxJI7Cz9eay53hiP5Y
         id+6sd/PHc2MWWHYnEyTiItaiHkCrH9vhfBNxilHMnxs/hFmlujecY//3OOtqDy+Koi/
         LcB8lrA5vearX/ISYarCg12Lk61igknPiNXvqNPv6xrXHeOcq5LTzQvgUqWF6Xv08scX
         Fm1g==
X-Gm-Message-State: AC+VfDysToCvpprumr3FUwIuOGWgHZSDEYcffJ2N2eC3Kb8ogixHJiHY
	N95aYG716NIDKpv09DVoJM82XQ==
X-Google-Smtp-Source: ACHHUZ6WtJqnwD7Ap4TH54jGz15B6zaga4+g/pph1EF0jcJF8t6MfvB+Wl8+vo13Jv/ukTp31DylsQ==
X-Received: by 2002:a05:6512:972:b0:4eb:3b4c:50ac with SMTP id v18-20020a056512097200b004eb3b4c50acmr2929429lft.65.1684774921383;
        Mon, 22 May 2023 10:02:01 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004edc6067affsm1044046lfk.8.2023.05.22.10.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:02:01 -0700 (PDT)
Message-ID: <8d968904-d4a2-0dbd-52a2-55c6d123f7ac@linaro.org>
Date: Mon, 22 May 2023 19:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 11/11] arm64: dts: qcom: sm8450: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-12-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-12-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100210_075226_FB0B7CF3 
X-CRM114-Status: GOOD (  13.16  )
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



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 28 ++++++++++------------------
>  1 file changed, 10 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 595533aeafc4..44a67c9274bd 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -741,9 +741,9 @@ gcc: clock-controller@100000 {
>  				 <&pcie0_lane>,
>  				 <&pcie1_lane>,
>  				 <0>,
> -				 <&ufs_mem_phy_lanes 0>,
> -				 <&ufs_mem_phy_lanes 1>,
> -				 <&ufs_mem_phy_lanes 2>,
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>,
>  				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>  			clock-names = "bi_tcxo",
>  				      "sleep_clk",
> @@ -4064,7 +4064,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  			      <0 0x01d88000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -4114,10 +4114,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm8450-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x1c4>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref", "ref_aux", "qref";
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
>  				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> @@ -4125,17 +4123,11 @@ ufs_mem_phy: phy@1d87000 {
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x188>,
> -				      <0 0x01d87600 0 0x200>,
> -				      <0 0x01d87c00 0 0x200>,
> -				      <0 0x01d87800 0 0x188>,
> -				      <0 0x01d87a00 0 0x200>;
> -				#clock-cells = <1>;
> -				#phy-cells = <0>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		sdhc_2: mmc@8804000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
