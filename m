Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F172C4167B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 11:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UVmrksDNcekct+lpc+fmSVcLLVvBSsby6zp3bY3WkQ=; b=GocrSKXf2OqHrM
	dAXsYsp3Y575cIrlj20bO2wBKATVKkV6gCsp/+uwIclfzsst3a1t10+4PftBGyAEMqMK0v+vHCWfa
	Ns4aaNFxbXKm/qxnGvrei+1y9SJhqNJSAPaGKc3SmXskX+K70aOROWFHPGFO+9136gx+XvJmNnzTc
	fn9TyoVZW4cuq1pswz364NWvwRhBeTo4AsJaLrrW4rkTex4NsAUyYBeTN6LGUjilNp8Pj6sOQZLws
	CYvc70p/egcI6tfAb1uQgyShRHo1V/5lAbM22AGjoEefoRxDDBkK3PHUluMCfbnw6p4JqPE89vA+i
	4R6J5ntXJCM3YwwDZcEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZIO-00FXRf-2S;
	Fri, 08 Dec 2023 11:45:28 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZIL-00FXRH-2H
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 11:45:27 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-332c0c32d19so2361793f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 03:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702035922; x=1702640722; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2UbWvB06mmfALjtcN8mYvlcjQ9XovqclQuk0oMAZDfk=;
        b=kHot2CfAcRKghpF9WfYwpuY+YTWV7Wu5p+XKXAhm5zx7oujgBIRe6MUQg4QjpRqnLr
         K0ipx+AMfaazxxMPAPLH2wcyHgFDx8NEb8/4YwdhrNYeYrK1ow2wbi3egYZ01MheXy4f
         AEC9L+XhL7MrWnnuMIG8tUjD4vfxS7B/enmacrI5XJ+9Y6ftbHyVkuT2nUjnDpCoIX9i
         RHes+zTj3pMeO0GT0yXa2DMkC19tSvsFSg9WhRimdLifcAy5tVa075FTlB5Gk0hhVNZj
         Lf2fBB9fHrvWcp0rkvhvQ02plpJwG6O9ibEUwHWiiExlg8yUZ3SWIVhIzSly9Bxtg5Dd
         i9uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702035922; x=1702640722;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UbWvB06mmfALjtcN8mYvlcjQ9XovqclQuk0oMAZDfk=;
        b=snen3z+/hPKrOJM6itI+HkIfQ1YCMWCbFgf+MCBT951pv3HsXNE8v17cbGKsZDVpZn
         SU0irMIRMLQTQhrYI7hnijJ/RCzTdquyfAXmUofmNBvJztgbgCcJoBuZA3AVONjUbbCM
         T85zcwIygB7qxOwQ3VufPTu9rCoxryKqnQj5ncnQ5OlDHY9qng+mGk0T27ZpdHxixeCx
         a51qsOHVp4d/4NOq7YhGNyTDHwA0t5NrorLFRzzWgfaqag8idSwaBr7zixaZ8NLbzjGX
         nxqkl2MCg70EgPkvmFmH1X+MWRE9I92+lCxqISur2lQ1DMUnvIvwHzker4vmBhZAE/WE
         MGnA==
X-Gm-Message-State: AOJu0YwutjOVY679LXJ2GCZpWYt8nsUxDSJWbqlchvj9FVzB0l2oYLVK
	HesC5Y7YlG6ChURNX6bwOMPfZA==
X-Google-Smtp-Source: AGHT+IHxV8vQZw9lrUg8EA+eqd1XYxg1Nuagx6G+R7swTXbLbbbtS5ZbpjttQnOSm42GpimVlM2dDg==
X-Received: by 2002:a05:600c:3d19:b0:40c:3417:233 with SMTP id bh25-20020a05600c3d1900b0040c34170233mr324624wmb.102.1702035922201;
        Fri, 08 Dec 2023 03:45:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id b1-20020a05600c4e0100b00405959469afsm2665118wmq.3.2023.12.08.03.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 03:45:21 -0800 (PST)
Message-ID: <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org>
Date: Fri, 8 Dec 2023 12:45:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_034525_770140_5AAC5077 
X-CRM114-Status: GOOD (  17.23  )
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

On 08/12/2023 12:04, Dmitry Baryshkov wrote:
> On Fri, 8 Dec 2023 at 09:47, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 07/12/2023 20:16, Konrad Dybcio wrote:
>>>
>>>
>>> On 12/7/23 17:51, Krzysztof Kozlowski wrote:
>>>
>>> [...]
>>>
>>>>> +allOf:
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            enum:
>>>>> +              - qcom,x1e80100-dp-phy
>>>>> +    then:
>>>>> +      properties:
>>>>> +        phy-type:
>>>>> +          description: DP (default) or eDP type
>>>>
>>>> Properties must be defined in top-level "properties:" block. In
>>>> allOf:if:then you only disallow them for other variants.
>>>>
>>>>> +          enum: [ 6, 13 ]
>>>>> +          default: 6
>>>>
>>>> Anyway, I was thinking this should be rather argument to phy-cells.
>>> I'm not sure I'm for this, because the results would be:
>>>
>>> --- device.dts ---
>>> &dp_controller0 {
>>>      phys = <&dp_phy0 PHY_EDP>;
>>> };
>>>
>>> &dp_controller1 {
>>>      phys = <&dp_phy1 PHY_DP>;
>>> };
>>> ------------------
>>>
>>> as opposed to:
>>>
>>> --- device.dts ---
>>> &dp_phy0 {
>>>      phy-type <PHY_EDP>;
>>> };
>>>
>>> &dp_phy1 {
>>>      phy-type = <PHY_DP>;
>>> };
>>> ------------------
>>
>> Which is exactly what I proposed/wanted to see.
>>
>>>
>>> i.e., we would be saying "this board is connected to this phy
>>> instead" vs "this phy is of this type on this board".
>>>
>>> While none of them really fit the "same hw, different config"
>>> situation, I'd vote for the latter one being closer to the
>>> truth
>>
>> Then maybe I miss the bigger picture, but commit msg clearly says:
>> "multiple PHYs that can work in both eDP or DP mode"
>>
>> If this is not the case, describe the hardware correctly in the commit
>> msg, so people will not ask stupid questions...
> 
> There are multiple PHYs (each of them at its own address space). Each
> of the PHYs in question can be used either for the DisplayPort output
> (directly or through the USB-C) or to drive the eDP panel.
> 
> Same applies to the displayport-controller. It can either drive the DP
> or eDP output, hardware-wise it is the same.

Therefore what I proposed was correct - the block which uses the phy
configures its mode. Because this part:
  "this phy is of this type on this board".
is not true. The phy is both types.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
