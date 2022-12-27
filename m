Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68DAC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 11:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugQ7VjUvocO34PqaQV37Abk+9Vzx8dlzE9c7eKZSTj4=; b=ukBmpvmYA9x4yC
	DOeI0Xvg9OIX6Ge3iMQY5JTkMaKiO8swyKksKVrKcJxJKxs+8iHEgmTNys0vTnjdTS43NhJfInale
	swvl7IHdF/cdhiT0Y8VjII21rFwIG0v1sEoUSFqzyX6mXwVhh+YG0+feysJofUtsW7/0IhCMgm7iY
	NWafsMIaWsA9EhCiVRzw248GcK0mQK37vl8lK6dUbnrgmMQWFHdv2Tz5k1IyWX/Z72X1O0dVkqGsq
	LRdBrV8DKZK9q7tjvu4gyVxqXqa8Y4iByx+IGAfqxmMymIerewHNqg/kF7smMo/ltV3RoNcPL3qtd
	TS4qu139VdYQ8WTYXvAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA8Cr-00CUcN-Dn; Tue, 27 Dec 2022 11:33:17 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA89m-00CTSZ-WB
	for linux-phy@lists.infradead.org; Tue, 27 Dec 2022 11:30:14 +0000
Received: by mail-lf1-x133.google.com with SMTP id bp15so19202629lfb.13
        for <linux-phy@lists.infradead.org>; Tue, 27 Dec 2022 03:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aN3V6trDzvXSYtL26lx3FV7PuCk2Xl5LGxwnUm2VEh4=;
        b=D6oARKb10jppciRnCilQ32Dej7uYF6DSTuvY/IP+oORmU/pLbrptAk5OvgLB7b/LGz
         oV7OFaGBSJvYCcJ3rAVE0CPVtzVzFcW2cR8kTME64K70KdZ/lptsknSNE/p30R/f21LA
         3lM1SXOztnLyMbdSVbrcivQ2061TJzTVnxqf7On/F8qq0kRkjnkZa18PgdDC9Hv+ignV
         W7vIpGaICcqC0D2lGZKXk+fsw5IaD7DBbJ086Nzn4G0d7mVLzFf87cZ9EIvcFel5+6gU
         NvZHoLsyoB/h+VSobCXAqiX1fM8XhxpwhGTqkRsnQVH1lmhvjuujtsXH4pA3l/sDDVQo
         wYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aN3V6trDzvXSYtL26lx3FV7PuCk2Xl5LGxwnUm2VEh4=;
        b=TfnwTfDYPO56g6sK6WQ5CIqF9gAT3Dwkb7DgCmjnfi9J2Nr34XO4nctoqFOF/Bcx/X
         4xyYBwXAhO3OTOmdIG4A+Pijid2WfMpYXXo/Sjer9fzqGaq+Cqa+24/hOqLVUlKferXo
         wdRUAy+XMZ8peWJRyHJh7i/fdxKUutd1W8sU8Qa/55hd8I9ZUSw9p+cCU3cKQ/tN6OQC
         krFWSwaBBeoIUGDcHTeEdq0bQugkvx/v44WE+k3lqemcSbgbONrSIcZKIQI82MSf7Jaz
         Xjq5bjWb7tbTMrmQejSfyYEVInUAN4UGFFi+Eb/qKRSfGd0IjjxNrPTvybYrbI8eQeeE
         HjpA==
X-Gm-Message-State: AFqh2kofHpIry1Kl4DwL7X96MiazOBZ7WTD6ujWesy8O1V0VeMRAoWJu
	u1GnadTaPgw41LwL+5sAKoU30Q==
X-Google-Smtp-Source: AMrXdXuQCFF6EAuPGhKVlnd9xb+jRbrMxibY4uYGpnnSUw158af9QxPKYTxPgBMtBgUBq5JAQ+Szdg==
X-Received: by 2002:a05:6512:6cb:b0:4a4:68b7:e71a with SMTP id u11-20020a05651206cb00b004a468b7e71amr6566622lff.4.1672140601477;
        Tue, 27 Dec 2022 03:30:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k2-20020ac24562000000b004b4ea0f4e7fsm2192712lfm.299.2022.12.27.03.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:30:01 -0800 (PST)
Message-ID: <e1725365-2751-ea09-7699-012f4ee3cd1b@linaro.org>
Date: Tue, 27 Dec 2022 12:29:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/4] ARM: dts: qcom: sdx65: add specific compatible for
 USB HS PHY
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
 <6a9506a5-caf0-0977-af75-0a4e4c0e3a0f@linaro.org>
 <542a4f6f-931a-3e0a-bd5d-1344339651ea@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <542a4f6f-931a-3e0a-bd5d-1344339651ea@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_033007_210083_61DE395B 
X-CRM114-Status: GOOD (  14.08  )
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

On 27/12/2022 12:14, Konrad Dybcio wrote:
> 
> 
> On 24.12.2022 14:12, Krzysztof Kozlowski wrote:
>> On 23/12/2022 17:20, Konrad Dybcio wrote:
>>>
>>>
>>> On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
>>>> Add SoC-specific compatible to the USB HS PHY to match other devices and
>>>> bindings.
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> ---
>>>>  arch/arm/boot/dts/qcom-sdx65.dtsi | 3 ++-
>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
>>>> index b073e0c63df4..d3c661d7650d 100644
>>>> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
>>>> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
>>>> @@ -219,7 +219,8 @@ blsp1_uart3: serial@831000 {
>>>>  		};
>>>>  
>>>>  		usb_hsphy: phy@ff4000 {
>>>> -			compatible = "qcom,usb-snps-hs-7nm-phy";
>>>> +			compatible = "qcom,sdx65-usb-hs-phy",
>>>> +				     "qcom,usb-snps-hs-7nm-phy";
>>> Not sure if the newline is necessary, but still:
>>>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> It is over 80 - up to 90 - and we still keep 80-limit in coding style.
> Torvalds said 100 is fine a year a go or so.

Yes - when it increases the readability. When it does not, the limit by
coding style is still 80. Otherwise the coding style would be updated,
which did not happen:

https://lore.kernel.org/all/20220119160642.140e84c6@gandalf.local.home/




Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
