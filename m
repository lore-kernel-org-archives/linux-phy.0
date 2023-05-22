Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A8DC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 16:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yd6qF3EyOAp+rAYOAQ/Iu5imCnR6zbm8r1yh501IZns=; b=R6uo7F3ZBpHu5a
	qU9P5m1GpFoWA1Uk4nnQsq3u1MjzEv6549zN8DVmeAXhf7J2l5yFJZMLIIdWpRlX3qXJKlhHDdCXZ
	CGJ50CT9PjEyRy9elSkP28PvE7eHJw3j4N4mUMTnGopifL+956g9yESMfDUvbeL1chhM1fW/qRwvi
	z0Yit4qE9GnqnsSWMPF0Fj6aKhO6kLowIoJm+MiBNOAyUWBEUmyy9ckUOOnBN6RJZo0v5YGn5TaFM
	23GYhHW1M+gPVgyKshwD2cNJuHIro5eIy65hSNT9uCmuDQkg5cnt4o9qEPOG5TrK+8RVH6WSalI/A
	nQK9ji4hqpm392Nh0hnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18sW-007HT9-2B;
	Mon, 22 May 2023 16:59:24 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18sT-007HRV-2h
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 16:59:23 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2af24ee004dso43368381fa.0
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 09:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774758; x=1687366758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UzsWyfzoAE9j9/qcfbANAi3R2yvm7zlyuIQR0Nd0YjY=;
        b=tHCeeRHy15E4/ew/ki4gAVyqNovM82BIW+WYCAhxnHU38KE5Z39XUzMUPBqTU72qms
         y70ciGVQjTSEZ4ALmLrKWURaMY14+qJoYMtGiJdRoJwCi9rn/QrrZ/1G+NFQqRMoaBeL
         Y1BySST3J7OjcGtpJqELy1OTdoFFyO3j1q99CfigSi1nUMB6+11s7JPzLThgMy5vxufG
         YAyNMMajNpBK7ryCaydmifw9wva6paRK7BH1wVfBLHHwaC3Q/av+mMsH1q1PBRfrE+6j
         rVCKqsjgq+xG77r8UuhoZC+pNUkt16uzcWl+D5gFHfQ6IC/1zxeD8fVRL4nmrDYUvFXP
         KQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774758; x=1687366758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UzsWyfzoAE9j9/qcfbANAi3R2yvm7zlyuIQR0Nd0YjY=;
        b=ZszZZmksOHWqKfl9eVFD474Cqhnl5z3pXWyrnbu6HIyurJSFRU+YFI+nf3qjNsm8yS
         KuQWSfQfgrvem+bvtGVgyEZL+bmT0Cz5xOgazC8G2X3XNB3IbPZl/5YF2geJ9NMAF3uT
         nwmY/gGHEmIsPSMnZ2b56PDkg3w0KHgaRNkHVzBS331VAVw6frJXRIuUlM2byRflQjc2
         lBlZU6cvvk2yu+y5ItJMY9lW8ye7CZ1N8V8mOg/oxtwYfDfC8R7oF+1XQxHuZ8xeO+20
         BbE/WpQDqHBvJFG+tG70/JMCtPv2aqDQdoy05sxuZ8KVoCn9YnHciBqLuIuv2LAP5eUd
         s2rg==
X-Gm-Message-State: AC+VfDzXj0ZRYL6Y7lZknrASdkoQjpYRr7mK0Zxyc7k2jbyX3tEYO5gw
	nUXj13ivy8F9QKxu8m2mM7huYw==
X-Google-Smtp-Source: ACHHUZ5yz/rf+r+6ifmDYv6ARajemxz9B2+DB9synqhXzg3KVJjrY7XRMdKITzMcd4krd+AO8zdR6w==
X-Received: by 2002:a2e:9c89:0:b0:2ac:83bb:ab46 with SMTP id x9-20020a2e9c89000000b002ac83bbab46mr3662297lji.30.1684774758164;
        Mon, 22 May 2023 09:59:18 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id m15-20020a2e870f000000b002aa39dd9ad3sm1206706lji.125.2023.05.22.09.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 09:59:17 -0700 (PDT)
Message-ID: <fab222e5-3310-c346-fd51-6bc40515b498@linaro.org>
Date: Mon, 22 May 2023 18:59:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 03/11] arm64: dts: qcom: msm8996: switch UFS QMP PHY to
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
 <20230521203834.22566-4-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_095921_918044_48879B84 
X-CRM114-Status: GOOD (  13.13  )
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
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
>  1 file changed, 9 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 2b35cb3f5292..2b65c608a57e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -726,9 +726,9 @@ gcc: clock-controller@300000 {
>  				 <&pciephy_1>,
>  				 <&pciephy_2>,
>  				 <&ssusb_phy_0>,
> -				 <&ufsphy_lane 0>,
> -				 <&ufsphy_lane 1>,
> -				 <&ufsphy_lane 2>;
> +				 <&ufsphy 0>,
> +				 <&ufsphy 1>,
> +				 <&ufsphy 2>;
>  			clock-names = "cxo",
>  				      "cxo2",
>  				      "sleep_clk",
> @@ -1993,7 +1993,7 @@ ufshc: ufshc@624000 {
>  			reg = <0x00624000 0x2500>;
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
>  
> -			phys = <&ufsphy_lane>;
> +			phys = <&ufsphy>;
>  			phy-names = "ufsphy";
>  
>  			power-domains = <&gcc UFS_GDSC>;
> @@ -2046,25 +2046,18 @@ ufshc: ufshc@624000 {
>  
>  		ufsphy: phy@627000 {
>  			compatible = "qcom,msm8996-qmp-ufs-phy";
> -			reg = <0x00627000 0x1c4>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -			ranges;
> +			reg = <0x00627000 0x1000>;
>  
>  			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
>  			clock-names = "ref";
>  
>  			resets = <&ufshc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufsphy_lane: phy@627400 {
> -				reg = <0x627400 0x12c>,
> -				      <0x627600 0x200>,
> -				      <0x627c00 0x1b4>;
> -				#clock-cells = <1>;
> -				#phy-cells = <0>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		camss: camss@a00000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
