Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B92C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 10:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EOmfzqWfvUDJLebnRA5iSR0e+0HZ+/jM6XKlxdvyLc=; b=1CR8nTmN0H2/M9
	+k5614MhPuDztIvUuRAPwzno9C71jzE8A125YTIvao5L83SOLFxC3hdvoiDZHaMPeuo55AluRLCQo
	rkT1huoAt/tgq5d6hrqdr3tnZVAHgbxXmlJnFdz1i006m3hIstfCrkxSR7TJYTtkQiI2W0Kxol/zc
	0Cajf9Kru5UgJ6XyIwGCQtHysZQYoXENcETXtulNCPzvZu/YuzgvP7cuwB5Q/pl1JIg1GilQQmKsy
	PM56SEwvgEupoddHZbACgZlbm+vWkpxCtn19Ury9TUkTDfVjM8/RiFolXubsf6PflN6cr9lcisF6S
	OC6f/oNusWhAiGyhOJ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rObdQ-004wWz-1y;
	Sat, 13 Jan 2024 10:53:04 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rObdM-004wWV-2G
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 10:53:02 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50e7dd8bce8so8669105e87.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 02:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705143175; x=1705747975; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n3ZKmXY5rNjC4L167s/lIYLusQBbgxuUulLBCtl0sr4=;
        b=NjjpPJ/o7HHcwwwwDR22NeQ/kvIBlSrV18vG3oSFJlQdOUNWTe3WWkBBkraKaAJbru
         2+EqGD9ORb4kDNCjOGy59EHPuCnPBmQ9lQRZfYf/fLAXluZUxrzsNUw2O1/wuK420K7E
         QNEbeDMcoI/SpQoyfaRroefm3MvIqQc2+yEBbAGKm9C7Hu1fcpOpfzKG5VsI2cz2Xyv7
         SHplf9DWjv8pslBc7iVH/8RaFSF8fzNt9agKBeL+mbZcGNVCdBTFWf2n2bOS1ystDS1u
         0znQ/3XuvWCZhPxw27/vHBB7OXMfP+/2eOEuPZnRszkbYI133DUq/5oGHi1xbplOyI2t
         YSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705143175; x=1705747975;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n3ZKmXY5rNjC4L167s/lIYLusQBbgxuUulLBCtl0sr4=;
        b=o8m190P2OM4WCUiVjtH/awfxxMNXJe/5P87Mj9ai2FiJotaa0F/JbDfNahBYCpr+eR
         9VhQzA5oRzTJ2py4iwpUKdNFSDlQw8gOmwuyHouzheAqaaG66CWTgI6IhXiQ5tEi+qWA
         i0GUmkvyBpY/aspirJfhQ+lLujvDJayBLyBeSjpAJijESynOCgbFWl+X0zlLJqo1RSWN
         xDsJuFzHXapMxYDbD4OAICAowWe45igCvgoRoZqZ+kiuyvKRseTMo8LyBmVzvAsV2cI4
         vHyYg6RdH5MRimqnoQt5a4hV236WgPBlXpKeFThEnxI3iWxCm8YYxiyzo8YY4zu3YYUA
         kGwg==
X-Gm-Message-State: AOJu0YwdtvuNcA8CycUEd2YHyPsQX2rLhQBdk/I5M8MioO65SkLYdIPX
	8oAQ8eslXNpO8Otw8iDE61taljyN+rVuWQ==
X-Google-Smtp-Source: AGHT+IFLuJ4mFcAlUzv4sjeEQPGjAyfCwlCQTRF53KNER4IHUdNZtS23ltQkhxln/u/gu+tV2JOlfw==
X-Received: by 2002:a05:6512:1112:b0:50e:e8f0:1d42 with SMTP id l18-20020a056512111200b0050ee8f01d42mr1272629lfg.119.1705143175499;
        Sat, 13 Jan 2024 02:52:55 -0800 (PST)
Received: from [192.168.174.25] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id i18-20020a170906091200b00a2c2b475a0esm2740327ejd.105.2024.01.13.02.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 02:52:55 -0800 (PST)
Message-ID: <75fdcb64-69b2-49b6-a6a6-2e231e3730d9@linaro.org>
Date: Sat, 13 Jan 2024 11:52:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] arm64: dts: qcom: qrb4210-rb2: enable USB-C port
 handling
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-13-de7dfd459353@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240113-pmi632-typec-v1-13-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_025300_783879_94A37D70 
X-CRM114-Status: GOOD (  15.02  )
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

On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> Plug in USB-C related bits and pieces to enable USB role switching and
> USB-C orientation handling for the Qualcomm RB2 board.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 62 ++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm6115.dtsi     | 38 ++++++++++++++++++++
>  2 files changed, 100 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 52f31f3166c2..a96e3afb65bc 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -6,8 +6,10 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
>  #include "sm4250.dtsi"
>  #include "pm6125.dtsi"
> +#include "pmi632.dtsi"
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. QRB4210 RB2";
> @@ -256,6 +258,53 @@ kypd_vol_up_n: kypd-vol-up-n-state {
>  	};
>  };
>  
> +&pmi632_typec {
> +	status = "okay";
> +
> +	connector {
> +		compatible = "usb-c-connector";
> +
> +		power-role = "dual";
> +		data-role = "dual";
> +		self-powered;
> +
> +		source-pdos = <PDO_FIXED(5000, 3000,
> +					 PDO_FIXED_DUAL_ROLE |
> +					 PDO_FIXED_USB_COMM |
> +					 PDO_FIXED_DATA_SWAP)>;
> +		sink-pdos = <PDO_FIXED(5000, 500,
> +					 PDO_FIXED_DUAL_ROLE |
> +					 PDO_FIXED_USB_COMM |
> +					 PDO_FIXED_DATA_SWAP)>;
> +		op-sink-microwatt = <10000000>;
So RB2 can provide 15 watts over the USB-C port, consume 2.5 but
requires 10? That doesn't make a whole lot of sense..

Unless I'm reading this wrong..

> +&usb_dwc3 {
> +	usb-role-switch;

Since this is a dual-role controller, I think this could live in the SoC
DT

> +};
> +
> +&usb_dwc3_hs {
> +	remote-endpoint = <&pmi632_hs_in>;
> +};
> +
>  &usb_hsphy {
>  	vdd-supply = <&vreg_l4a_0p9>;
>  	vdda-pll-supply = <&vreg_l12a_1p8>;
> @@ -618,10 +675,15 @@ &usb_hsphy {
>  &usb_qmpphy {
>  	vdda-phy-supply = <&vreg_l4a_0p9>;
>  	vdda-pll-supply = <&vreg_l12a_1p8>;
> +	orientation-switch;

Similarly, if this doesn't kaboom w/ our implementation too much, the
PHY itself has orientation detection capabilities

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
