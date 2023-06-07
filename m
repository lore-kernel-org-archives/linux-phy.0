Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3534C7EE2E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:To:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uvSHlq9a6es0xLCt3Z02WRt+OO67241GI3Vhj/5Qt8=; b=zKgND1Antvfnzi
	E1KRZUnP9nmZcOY6jDs4Rwskxjv48CwDhu9Fu147e4h6QYsB+pLbxUjZ/d/E3uq6y2gojVHkSjSaE
	xEWtc28WuNQUSAtt5cg5LL4d3iwJYRK/3MByy2SqNCbVqX24t1vxBj5yUNlSVoxbzf7D6TKjDlm65
	/+6w5TLSAM89wGFPLQNyNwGwedHQtr7LQ9V98bY2Jk325LUQ956lpEh3t+MY0+Y2o5KFPpFfSUXtB
	uuIGUq4NpVjqSm8S+Jo4V2uuYP3Jz0aa/juj7VQBxhvHpnk6PlZvEcjqeUTr0+wdQEzETH3PpZN71
	Sif6wk4xlCWu1Dr/dKkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xpO-006pd0-1w;
	Wed, 07 Jun 2023 18:24:14 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xpL-006paP-0W
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:24:12 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f640e48bc3so1510718e87.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686162248; x=1688754248;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GCynyLWoW2V3VpBJECgKopAvXwYKryE2bi0AEhbuOKc=;
        b=UORlCDAJSTYZ4uIWUmqhcz5py1aYRNayzTtulmKmCRBhjbvUp5Sc4fYPJFnCb75juH
         uWwpIburuUdUDyFMAIFi8TeiKQuQ6ndhBSsS5tOWCe3itNJG+EtJSRLhAPIX1MjX3f6n
         oK6t/bVYLQ1CzirArOwccdOg/exui1KseunFxziTYoMvJqkLa8VvUdaH+edeqNCcOK25
         dstAnZ5d9iOqhh4Vfo6OUP6MHv5/Oh7LrY4ClO8mkR6x0AAOXPd78wcv4HgUaEtAwvih
         a0VEseZTwFw4fOa6vy/q6yFt2LPcjoswaEAKG2PUkOnoKRsZXXTYfiCsL7wDRFPlkX4C
         9IrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686162248; x=1688754248;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GCynyLWoW2V3VpBJECgKopAvXwYKryE2bi0AEhbuOKc=;
        b=GISeze7kbM5RxRnhfaK/9Ey03E1kSCxiBBYYxMuJRmcSpJTDg0Zy+gZx30n75uXR0d
         SmBDsutj4SKWQ8OU/bhhNyIrYslptD3gkqjXjZoAQif79niJz++5y3RC5cX0Mp2fB4NP
         49OJhhwvs0Jog1TB5UIHL11Rkukp4Pi0piQSb2OclpzWeqfi7S0igGcW6JeFAEpC8mre
         VAcRz4W7CDrgQbGJr16Hihb4u1JuQkbNsdfvC19l01iEEHb2GE+YvTnHSNTMHUKqHF8I
         qOPwDG2kvTKeamM+qwtN+xAI8BqOCEzDR/+el5fXBMNqBEMSqbhXD6iZdIOQ6dkmyqvP
         hUeg==
X-Gm-Message-State: AC+VfDwhhqWqhCJW9bCbzvBbVd9npMQbhGLndaxxLdXlYfIdAD30ruRK
	pOMlRs3hnLzt6un9wpW+EmXY8g==
X-Google-Smtp-Source: ACHHUZ7cQ53ZaeBJXCSc0n79qlL4eVvWwXaB9K9+BZIUq9VFZ/qoirsRWNkWsGjBsklIkcutqeGZhA==
X-Received: by 2002:ac2:4c8e:0:b0:4f6:2629:6cf3 with SMTP id d14-20020ac24c8e000000b004f626296cf3mr2269056lfl.46.1686162247872;
        Wed, 07 Jun 2023 11:24:07 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id o5-20020ac24345000000b004f004c0498esm1879989lfl.71.2023.06.07.11.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:24:07 -0700 (PDT)
Message-ID: <ff8c76e4-fb6c-106d-eae3-45edc06b0c0b@linaro.org>
Date: Wed, 7 Jun 2023 20:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 arnd@arndb.de, geert+renesas@glider.be, neil.armstrong@linaro.org,
 nfraprado@collabora.com, broonie@kernel.org, rafal@milecki.pl,
 quic_srichara@quicinc.com, quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Add USB related nodes
In-Reply-To: <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_112411_201465_C592BF43 
X-CRM114-Status: GOOD (  16.15  )
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



On 7.06.2023 12:56, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index c2d6cc65..3183357 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -383,6 +383,61 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		usb_0_m31phy: hs_m31phy@7b000 {
> +			compatible = "qcom,ipq5332-m31-usb-hsphy";
> +			reg = <0x0007b000 0x12C>,
random uppercase hex

> +			      <0x08af8800 0x400>;
> +			reg-names = "m31usb_phy_base",
> +				    "qscratch_base";
> +			phy_type= "utmi";
Missing space before '='

> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			reset-names = "usb2_phy_reset";
> +
> +			status = "okay";
If you're only defining the node, it's enabled by default

In this case, you'd probably want to disable it by default.

> +		};
> +
> +		usb2: usb2@8a00000 {
> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
Please push these 3 properties to the end

And add status = "disabled" below them.

> +
> +			reg = <0x08af8800 0x100>;
> +
> +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +				<&gcc GCC_SNOC_USB_CLK>,
> +				<&gcc GCC_USB0_SLEEP_CLK>,
> +				<&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +
Please remove this newline.

> +			clock-names = "core",
> +				"iface",
> +				"sleep",
> +				"mock_utmi";
Please align this, and all other similar lists.

> +
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
interrupts-extended is unnecessary with just a single interrupt
source.. you can make it `interrupts` and drop the GIC reference.

It would also be nice to push the interrupt properties below 'reg'.
We're working on documenting and automating checking the preferred
property order.

> +			interrupt-names = "pwr_event";
> +
> +			resets = <&gcc GCC_USB_BCR>;
> +
> +			qcom,select-utmi-as-pipe-clk;
> +
> +			usb2_0_dwc: usb@8a00000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x08a00000 0xe000>;
> +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				clock-names = "ref";
> +				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +				usb-phy = <&usb_0_m31phy>;
> +				tx-fifo-resize;
> +				snps,is-utmi-l1-suspend;
> +				snps,hird-threshold = /bits/ 8 <0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_u3_susphy_quirk;
> +				snps,ref-clock-period-ns = <21>;
1/21 is 0.0476..  that doesn't seem to correspond to the ref
clk frequency?

Konrad
> +			};
> +		};
>  	};
>  
>  	timer {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
