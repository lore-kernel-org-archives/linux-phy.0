Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22663C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rTn9I+4YkGRLKEnFLyf7HmOZVfeXF6/rAPwJBOJDjQ=; b=BrLcg7R5kxkpuY
	hDSzJ4WZ/iIK2urMsA1ensktE95kaEw+dXHv/R+9BN9ajjjY/kaMSZsfcNTv0nbr9aJQ3fNZponT3
	1u3XwMt3qowm3nT3feVZPNVvZcILx4GRaP/Z4SBpwe/ABYHS31iCkZcdaXxWXGc9jJMyWtAOOobe3
	3XxIZmKYWl9nqVVuft/RgAVGRmceDdR9/oXOQVWqR7/4eMVZTJDofto2/UfmVOJUOi6JalBR+LhQm
	UrmTZ3UjHIoMwLYiWyDbCJe57FHIOHh6JOSxrqY5cqxC6rRbD9kqUoUL4YbUsvB9TQ70dngbNzzhC
	iU7GBFdlzUfPICOZFMQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghlT-00A9CZ-2X;
	Mon, 27 Mar 2023 07:59:39 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghlR-00A9Bk-0T
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 07:59:38 +0000
Received: by mail-wr1-x430.google.com with SMTP id h17so7655537wrt.8
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 00:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679903975;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nGK8p1zYpMEnDgAhAQhaaKqDmAb8VBKLy3WtqQM93QI=;
        b=K4Dhxzad6cJEa4k9l8Ntcz7WHBDlu/BCSBeV+WgkEt4H6c35TJkqm6imBHpHkXy/bi
         4ehLcDjpluan61Souxuyc5H1oPPla9qZhYIp3hhFTQ1Bs/ZiGk8J6l/iHaKnaBUr6k6B
         gkk91eqfPWYu7yiADeZvsYaBWkuPUBjk8cfroGSnxJyZETcdhqFEMISYTNdz9f0tIggF
         WGTX9A3Z57UTa2jo+87I17rSnFLtvg75QpQYxpRXej+itQBiB2xdXHap/kAOPf4bsz/x
         TMfr9sDUmx364OrYUImhpYJH5Vu40gX5fgZCqhOEkvtvuXraNR3vGhbof55HLIysdKCh
         3M7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679903975;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nGK8p1zYpMEnDgAhAQhaaKqDmAb8VBKLy3WtqQM93QI=;
        b=dyZFAeppQqLOFQ3nHnWHYsUVc5W88LpovTbf1TbogpMp27ffCfL4uqsDuwSTEY1EaH
         0rWWy11T3z6vqMu1/h4g73dmQRIIHa9+7/kPla20mxjmypSDpMHOYN84WGVvRL1VGQCY
         pChvxKvbA+FB/XWbJJbpS3mmaEhvuy0kE3zZn5ZakqH12WACCEXbksq12uw9kFUcYZQ7
         Mtemnt2JWGvIhgzSsXmnA6vbu1U9gxxu2Y2EOdxcQSiQkdHtbtz81cRNUaOGQODMR6C7
         WuVXs95ovR6wTHpaH5qL9OZvX4EUpOSvdNDjHC496FgvD/Yvk//MRpp1mEq91NVKWqSO
         xD8Q==
X-Gm-Message-State: AAQBX9f8yYWXXPLuYgtO+peA20aRxDOrsaWNibe2ksUjMxw/mvghvswX
	TSXRdsbwwUqw9LNhbWT5r2TMqA==
X-Google-Smtp-Source: AKy350areUaUsdNsORmSK5Jsp4OH20hA1FlvzL7Gep+VNpA/gtMevWqZ81Cc9bDfFebQNIDUk450bA==
X-Received: by 2002:adf:df0d:0:b0:2cf:ef5d:4ee7 with SMTP id y13-20020adfdf0d000000b002cfef5d4ee7mr7907145wrl.69.1679903975579;
        Mon, 27 Mar 2023 00:59:35 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id m6-20020a056000008600b002cde25fba30sm24477285wrx.1.2023.03.27.00.59.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:59:35 -0700 (PDT)
Message-ID: <70957e67-e570-3800-e679-d7c291295999@linaro.org>
Date: Mon, 27 Mar 2023 09:59:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_005937_183626_04A53C0A 
X-CRM114-Status: GOOD (  14.34  )
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

On 24/03/2023 22:55, Dmitry Baryshkov wrote:
> The first USB PHY on the sm8150 platform is really the USB+DP combo
> PHY. Add the DP part of the PHY.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
>   1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 9491be4a6bf0..a618218f7b68 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -3392,20 +3392,19 @@ usb_2_hsphy: phy@88e3000 {
>   		};
>   
>   		usb_1_qmpphy: phy@88e9000 {
> -			compatible = "qcom,sm8150-qmp-usb3-phy";
> +			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
>   			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x10>;
> +			      <0 0x088e8000 0 0x38>,
> +			      <0 0x088ea000 0 0x40>;
>   			status = "disabled";
>   			#address-cells = <2>;
>   			#size-cells = <2>;
>   			ranges;
> -
>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>   				 <&rpmhcc RPMH_CXO_CLK>,
>   				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
>   				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
>   			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
> -
>   			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>   				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>   			reset-names = "phy", "common";
> @@ -3423,6 +3422,16 @@ usb_1_ssphy: phy@88e9200 {
>   				clock-names = "pipe0";
>   				clock-output-names = "usb3_phy_pipe_clk_src";
>   			};
> +
> +			usb_1_dpphy: phy@88ea200 {
> +				reg = <0 0x088ea200 0 0x200>,
> +				      <0 0x088ea400 0 0x200>,
> +				      <0 0x088eaa00 0 0x200>,
> +				      <0 0x088ea600 0 0x200>,
> +				      <0 0x088ea800 0 0x200>;
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +			};

Is there a reason why the new flat bindings from qcom,sc8280xp-qmp-usb43dp-phy.yaml are not used instead ?

Neil

>   		};
>   
>   		usb_2_qmpphy: phy@88eb000 {


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
