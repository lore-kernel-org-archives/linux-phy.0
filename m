Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953BFC46467
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 11:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOZhjKmlKHzossDoX6T4CeEEEFUEVdwrSqoM0k2hqnU=; b=H6lfKV1OqQTjtv
	yclnov1pnlOCfoCqTfbVU63k8/PHffgxMVLadjpGbRKyDBPaZTNZExZHbMbQnWqLRgA7k2a5swv8A
	Ekh2d/yNAFR9lAqw2E9P0wk0zmyXL//4K4o0y8ia90eWQtd0OA4B+ylWficnod6OEoy9C1M8r6xCn
	AMrFn2lzH0CiXgM4RCU5iSrCRUmBkQrEaHl/9yS+zFwNogqqYsymqlaazmHklRhChRd0zUEqM0z2b
	Ve9wXRdf15yQ+RupOZYpllqehoGyLuWTvhn7m30sVgXP3F57xt+w1QC3GNBnDE2FzViPnsCjM6HGr
	L7azDSgY0kGNxqDxR0tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7uo-00COan-UC; Tue, 27 Dec 2022 11:14:38 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7ul-00COYp-IO
	for linux-phy@lists.infradead.org; Tue, 27 Dec 2022 11:14:37 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bp15so19156081lfb.13
        for <linux-phy@lists.infradead.org>; Tue, 27 Dec 2022 03:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q91h+qmG72Eyypqxw89XsMvqCu6zqsw6i6tKexOSIMk=;
        b=CVtxK3hRsKFd4mXM4EZaHOPtc6hX8rz5lFXti/X8zL4Sx6eSIoVJFcyaf1xO6/vLKY
         s+EyL5EjUvacFnVzeR5B/Jzu0IoIiS/jaGXF7DFgxXSN04QufLb/20o8s+b+LotQ9iSC
         0ksqfnDiMMEPmWy4qxA2PubG7Gbb+YriR9dQebLbZ/mQPu5DohcPuy7fKXaNHwkKvp9u
         Gya8hQaKEn4oUnU8Z7FdyAI9BJWXf/64KOrzrDjCCb1yRGvIVoDmt+IK0skrceKHbx+R
         tSI8qyoD3h7OX+9lqB2YJu+2aZbAEqqpFS72Gx47lncuz7P8HH5gi68FcwWuJChZgKjt
         6eXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q91h+qmG72Eyypqxw89XsMvqCu6zqsw6i6tKexOSIMk=;
        b=U4UcJG/tbmZpcE0coribS85uxpRcyQ5TNnp9ksiO8N8SQaVk2uE5Aa3Qobon1H6WmP
         nnRhIQ5IrtVlE/Ni3rJDjU/Z2zKe7/q7pjWn+Gt0Gd/y7CgsqwMjnQDNLzK+y7eN0ZXd
         n6wV4Sq1sKlvxAJK2m/xzS63tq12cOKfrP+n5w33ZCrnso6WG8PuSkA04aLSHvM01vvY
         BKGeQ7Zr8Oeiwy6Ix9I+yfduFqKpb4zBsa/e4Nb8SZHjn9nuPjaZvHNoZamPIRNJrljA
         vYaO0ZmgzIU9HFgbIWiTxNL1QvUpXuaRudwJBa+P73zKI+OYphbnbWML3IGLH/ahm+sl
         mTHg==
X-Gm-Message-State: AFqh2kqPc7Aunl++o2t8E0hSTeOp+h5wlTpt5ODYjEU6bbybpOYhAKk7
	GeNX1ZuRI7QQh2zaLEwp54JVXA==
X-Google-Smtp-Source: AMrXdXtBNHz+BrTIliM1MB0RostvYMij6h6w+EmNqEFxkV0c0vDc0zls+MdTHE+2Hp+BApv8F4WUFg==
X-Received: by 2002:ac2:5dce:0:b0:4b5:b988:b409 with SMTP id x14-20020ac25dce000000b004b5b988b409mr6117596lfq.21.1672139672953;
        Tue, 27 Dec 2022 03:14:32 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id k2-20020a05651239c200b004ab2cb8deb5sm2197371lfu.18.2022.12.27.03.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:14:32 -0800 (PST)
Message-ID: <542a4f6f-931a-3e0a-bd5d-1344339651ea@linaro.org>
Date: Tue, 27 Dec 2022 12:14:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/4] ARM: dts: qcom: sdx65: add specific compatible for
 USB HS PHY
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
 <20221223161835.112079-3-krzysztof.kozlowski@linaro.org>
 <d6fcecda-2f78-bd75-579b-672f6db779a2@linaro.org>
 <6a9506a5-caf0-0977-af75-0a4e4c0e3a0f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6a9506a5-caf0-0977-af75-0a4e4c0e3a0f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_031435_675300_C684B8F1 
X-CRM114-Status: GOOD (  13.90  )
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



On 24.12.2022 14:12, Krzysztof Kozlowski wrote:
> On 23/12/2022 17:20, Konrad Dybcio wrote:
>>
>>
>> On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
>>> Add SoC-specific compatible to the USB HS PHY to match other devices and
>>> bindings.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>>  arch/arm/boot/dts/qcom-sdx65.dtsi | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
>>> index b073e0c63df4..d3c661d7650d 100644
>>> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
>>> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
>>> @@ -219,7 +219,8 @@ blsp1_uart3: serial@831000 {
>>>  		};
>>>  
>>>  		usb_hsphy: phy@ff4000 {
>>> -			compatible = "qcom,usb-snps-hs-7nm-phy";
>>> +			compatible = "qcom,sdx65-usb-hs-phy",
>>> +				     "qcom,usb-snps-hs-7nm-phy";
>> Not sure if the newline is necessary, but still:
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> It is over 80 - up to 90 - and we still keep 80-limit in coding style.
Torvalds said 100 is fine a year a go or so.

Konrad
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
