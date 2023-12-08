Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771C0C4167B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 12:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9ghYHBYvovbrtuEFtK58qXnxd1flbwo8G8taY7yYJg=; b=iup7xKJFwJhvRw
	ToEBokYkElp9Ji072rJcIIqA9YLqAomILOI41ERJkAFPoJe2gQdsSgveE1yEoELFgoMBctA3XYG4e
	CMcEjMeOXCZlNBuckScq2W6lGNvKBG4C3wHASRxaLx+NzskeTlirah7rJ8jsaF54JTo/jM60P1Uko
	7WQQnIbYFNpbBaXJx38a1185ky3p23uXKeRk9qNnujJqjEEMlzlhw+G2w0Z7y6Kt3tXqewyBaUM90
	rCBTLEeiZ3RQ1gv91fSSM3fFSqXt9/MdU9idUWlQX6pmpYp+5psZdwpfb8N6u0F/914WT3p65nQ22
	LRhV7LzBNLwT3jiqKWgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZqs-00Fafo-0d;
	Fri, 08 Dec 2023 12:21:06 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZqp-00FafU-2H
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 12:21:05 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c9f099cf3aso28864511fa.1
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 04:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702038060; x=1702642860; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pl0clnwrD65PTyvZ51AXFWygx4cIxP6ccg197Ec+HPE=;
        b=qk1bVI7vcjeDTj3nTyDwKAIAWbBwa04pHNzYAMpffDSGILr0yg4Jkwoe1ohUbXea3z
         JLYD9i/VsHscoV2D5y9bcvRLaBPyn04BEIP+W+18JuZpkhlkN6ZDNYb90CvBQxUccZca
         brp2MKjcAb5InyAkXHwnP0nJbZ3/yqi1I3+Vkfzsk5SSwsPH+GGSdHSSLQEM3t6q28Vk
         gOLxwWjc1BVRBd12kNdL5Fo4YM1uurbYyYs560kCEXkPlajhgg3tvaqr7eVYiKFQQMy7
         zekO8cw1z44Q4il2qptJzoJVhLFiJpaMGszXJs9pMRtKdProEhWwcA9oo/0ybMt1Wk1v
         eC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702038060; x=1702642860;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pl0clnwrD65PTyvZ51AXFWygx4cIxP6ccg197Ec+HPE=;
        b=MHMV5hThEqpe8BI7pJSgBN5pHCV1Q+Jj57bDKSSrXnDKcHgowUUahd0EcQz2vTCUsv
         RfGAQSIOKAXwza3Ez7rR/gbTVpogbl+SZ/dfUw07g73s2cSAE6rbrTm/kFLDf3PJeWQ7
         wZxDy/SFBcywbyzYzT5e99NzEDkEhpVBYNQAg0zuzkLIpaW96kNp5RkfIZi+fCei7BI4
         DIa7RNXC7YQsm/I7FCdjnwHPz4gTUZApRuEhl38LuZaFaNI56OSfJQREZ/g7LOEDN7se
         DCV8qId2nuTZSmu8TvCQxs1Mp4SnQdRpbTfDO6TQr85yH4uwa3ZqBAtKpUSc3t/ekHBk
         VDOA==
X-Gm-Message-State: AOJu0YwzDnvHnv0fmi1RwKw805D+SsZ3If6e0n2Dpq2oLNHFod4OiAP6
	xazNcZ3j/1Ac2Wzgr1I7uU/c+uuEoKV8+c1kh9Y=
X-Google-Smtp-Source: AGHT+IER4YlgGGyKEHV9dQr5tdof58Pqyht6yuF2QXUJoFt24Q9DtS/qCkLD1Wd5t4lITLKwjr/tWA==
X-Received: by 2002:a2e:361a:0:b0:2ca:24c:e252 with SMTP id d26-20020a2e361a000000b002ca024ce252mr2846721lja.91.1702038060334;
        Fri, 08 Dec 2023 04:21:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id he43-20020a1709073dab00b00a1e21893a26sm936349ejc.222.2023.12.08.04.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 04:20:59 -0800 (PST)
Message-ID: <d885928d-035b-4abd-890b-c9626b925d76@linaro.org>
Date: Fri, 8 Dec 2023 13:20:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
 <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org>
 <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
 <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org>
 <CAA8EJpq7dB+45fiq2WmkMmSO7KszY0Et_t1gZ9ZvfsSxftpm8g@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJpq7dB+45fiq2WmkMmSO7KszY0Et_t1gZ9ZvfsSxftpm8g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_042103_773321_61972FB1 
X-CRM114-Status: GOOD (  13.69  )
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

On 08/12/2023 13:17, Dmitry Baryshkov wrote:
>>>>>> Anyway, I was thinking this should be rather argument to phy-cells.
>>>>> I'm not sure I'm for this, because the results would be:
>>>>>
>>>>> --- device.dts ---
>>>>> &dp_controller0 {
>>>>>      phys = <&dp_phy0 PHY_EDP>;
>>>>> };
>>>>>
>>>>> &dp_controller1 {
>>>>>      phys = <&dp_phy1 PHY_DP>;
>>>>> };
>>>>> ------------------
>>>>>
>>>>> as opposed to:
>>>>>
>>>>> --- device.dts ---
>>>>> &dp_phy0 {
>>>>>      phy-type <PHY_EDP>;
>>>>> };
>>>>>
>>>>> &dp_phy1 {
>>>>>      phy-type = <PHY_DP>;
>>>>> };
>>>>> ------------------
>>>>
>>>> Which is exactly what I proposed/wanted to see.
>>>>
>>>>>
>>>>> i.e., we would be saying "this board is connected to this phy
>>>>> instead" vs "this phy is of this type on this board".
>>>>>
>>>>> While none of them really fit the "same hw, different config"
>>>>> situation, I'd vote for the latter one being closer to the
>>>>> truth
>>>>
>>>> Then maybe I miss the bigger picture, but commit msg clearly says:
>>>> "multiple PHYs that can work in both eDP or DP mode"
>>>>
>>>> If this is not the case, describe the hardware correctly in the commit
>>>> msg, so people will not ask stupid questions...
>>>
>>> There are multiple PHYs (each of them at its own address space). Each
>>> of the PHYs in question can be used either for the DisplayPort output
>>> (directly or through the USB-C) or to drive the eDP panel.
>>>
>>> Same applies to the displayport-controller. It can either drive the DP
>>> or eDP output, hardware-wise it is the same.
>>
>> Therefore what I proposed was correct - the block which uses the phy
>> configures its mode. Because this part:
>>   "this phy is of this type on this board".
>> is not true. The phy is both types.
> 
> But hopefully you don't mean using #phy-cells here. There are no
> sub-PHYs or anything like that.

I am exactly talking about phy-cells. Look at first example from Abel's
code.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
