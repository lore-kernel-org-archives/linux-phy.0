Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939E8C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 24 Dec 2022 15:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZhMqglwpinGzipCmb8/KlcXclLG4byjk7ZBf5tbWCA=; b=vu2iMCdvDlzi5c
	EwK5X8aih7YGrVcAdrrEVcd/869gHbhBfN9ictla1zApcWPW3a1V9naOhmBDUyRCO26w8GaR7tDrs
	NxJeCzowh9lSmrdVthXUZBY/Vsbgxc3+awUWwIWLZ1TK8XknjVB/Eou6Ep3W+HWgIvwMSIyWcpE+Y
	pyc+LHGHWnLElsFO+89rehyp2KZAJaa1vPoLxTEEMTCvpZ3KjHODx6aN2ChwZnapBSS3huqMzuNSM
	1P0nJAHVLX5GTC+VlRubWFtnwP6WWXZiJ9M/Z2X1kLWS3Iif8Lp0p5rouJeb5XKBVKhm89T15cCob
	61PNUY73cHn73GvqOkVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p96WH-0018dh-Bk; Sat, 24 Dec 2022 15:33:05 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p94Kq-00HOwI-4h
	for linux-phy@lists.infradead.org; Sat, 24 Dec 2022 13:13:12 +0000
Received: by mail-lj1-x22f.google.com with SMTP id y4so7658300ljc.9
        for <linux-phy@lists.infradead.org>; Sat, 24 Dec 2022 05:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vKooxm9xL5ScTSLAkqGgl8XoM29nVfbKpvwZn93/+/E=;
        b=ER0D0mgudmmoxY65pvs0+g60xHKjYJxJL6AsTSOXHitngVaXr2n2aiA9ATcm8E2hTD
         24MtS8S1xYWjCZrV4O9mlkVR1mtL+4so04j+uBKQLzHQTKoF5RKicNV/7FG9UVFbNvv7
         77CpJq5ypBZl4R9xE7NiJjzoK2AoQ0SY92vqcLvXg/h6BOdb830DGE66WPuMkxy04YYW
         NNaETJScrvH4XF/gAGHScKGTrnurfmFYjsFOjxaIa1ccx8zw/cbAHwaGsD/iBDsrCVQt
         V5r4r3FdNX82c9RlcM+VJc6H1aKfMWv1Gt52NV+vVPeMb6AsZOAuTP3ffGQ436mCXLbn
         sGqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vKooxm9xL5ScTSLAkqGgl8XoM29nVfbKpvwZn93/+/E=;
        b=WZ/D4CJsXjOcTQhE97sOnU1qFWBnIrc/lCYPp2G3HZj5mF+2cYEWHyQNUiTWoIqm8E
         sMwDCo2yjoIacvHk5z5djCQWb4qUcE4jl9zWnDvMACfoK1xjhXMiGHkYDfz986p5pUJU
         ho+fFDIq20PAYWHi4OBWMWi2QVPlFlUU5UZqpyMOY8hI3JFqSUBCt7fhJ677vNlG/m0C
         K+6xM9y/u6eQymK+4OL1gl5P02PtdotTuQgLed7L/+sCn5Kpu6pevEcVYp99b7HFhw5m
         RAXK6sajlghF5OSEU2eTBNdJpD8r3fw9Y+gOexFAJd5/AMicm2kHmrN9G3+5La1IU+zq
         9jhw==
X-Gm-Message-State: AFqh2kpBMQQ2tMnHVMKv6MzxNueNg59ZXUHyIqH3LmQ3zh9aqkDODJp8
	l2TvMIMlZfnyXCDT2sRJeYud9g==
X-Google-Smtp-Source: AMrXdXv4wJOqvXuk4jlsUaRGiCmgix1povzrzFh6Fq2qkhg4zUzx2nNeLPIO9bUZ0hWlNgmRyFtgoA==
X-Received: by 2002:a2e:b177:0:b0:27d:3c1e:42de with SMTP id a23-20020a2eb177000000b0027d3c1e42demr3383154ljm.27.1671887581289;
        Sat, 24 Dec 2022 05:13:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bj40-20020a2eaaa8000000b0027fb76a4b44sm289495ljb.97.2022.12.24.05.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 05:13:00 -0800 (PST)
Message-ID: <6a9506a5-caf0-0977-af75-0a4e4c0e3a0f@linaro.org>
Date: Sat, 24 Dec 2022 14:12:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/4] ARM: dts: qcom: sdx65: add specific compatible for
 USB HS PHY
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
 <20221223161835.112079-3-krzysztof.kozlowski@linaro.org>
 <d6fcecda-2f78-bd75-579b-672f6db779a2@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d6fcecda-2f78-bd75-579b-672f6db779a2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_051308_290210_A3B7053D 
X-CRM114-Status: GOOD (  13.56  )
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

On 23/12/2022 17:20, Konrad Dybcio wrote:
> 
> 
> On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
>> Add SoC-specific compatible to the USB HS PHY to match other devices and
>> bindings.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  arch/arm/boot/dts/qcom-sdx65.dtsi | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
>> index b073e0c63df4..d3c661d7650d 100644
>> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
>> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
>> @@ -219,7 +219,8 @@ blsp1_uart3: serial@831000 {
>>  		};
>>  
>>  		usb_hsphy: phy@ff4000 {
>> -			compatible = "qcom,usb-snps-hs-7nm-phy";
>> +			compatible = "qcom,sdx65-usb-hs-phy",
>> +				     "qcom,usb-snps-hs-7nm-phy";
> Not sure if the newline is necessary, but still:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

It is over 80 - up to 90 - and we still keep 80-limit in coding style.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
