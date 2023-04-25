Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 541BBC77B61
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 08:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oTKO8NSoJ7gCBx5LiVea6ZfDnMgiNxsKgxV2Uz+h+k=; b=cqO1eZ1DzaUoJQ
	tlI0kTB6jFNZnSiC7LUnwSY8pB/zWtbI6xv4sUp9ohT0t6WocRxJ2OJfGye85/09haSyZlK2mg/Gw
	0DskY6PntZqDZDvGXLkBjGyxlwLHXkvAJEmAiT1UZRy7iFvgvHzgyZqWXuB3cTtQBRDdKA6zo77Eb
	0IMOpfUZ7obLfD4odHI/ka6iIP7kvIoUapjX/5IHSHirJ8+/U1z6D9XC30VMIHdRU2kFzMUsQRzfd
	+jgiEhX4F9aT+i9PRD0OxU8apqop2XSPnM9ToLgeWcMhf1cOwZmZBcYIRhaocYik+rTtSJtY/sxe2
	1Em/nsrO4ur3Wy2lJ8tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prDtX-000Sxq-38;
	Tue, 25 Apr 2023 08:19:27 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prDtT-000SwO-2o
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 08:19:26 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-94f3cd32799so1009751866b.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 01:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682410759; x=1685002759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=znRV0nWYnqPOSY77B900qlMay8TPNkGb3s+FapEpgN0=;
        b=LrmBxu2EGogQSTBkcCYzasNpZW/pKKd+LqTsGa/ifcmlV7SrWEsRCLujLGcNA137kR
         lgwXt02NGHCJSzACgRty3LrKWmIf7PuMckGMm8d0LuQHfa3kRMdEE7xcneEgoDnt30pU
         ICbLRprS81Q5+UWB1qUS+Xz8ejauuXRB00g3emna+Fc5Uq0YzQKXiO1HCgOSVUYsofLg
         HAyRSdTObW2jp7yFUero1cT0zWgI5o8AgwOUvzA7wvYF/P5Igdaa8PA9CIAotIyyWhPE
         HQyi2HqeCP3YbfrWZ9wHHbqpVkFD2C3LQt4yqEcG14S1CGYcQHSyqFmpM6tPjofJhhJ9
         MN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682410759; x=1685002759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=znRV0nWYnqPOSY77B900qlMay8TPNkGb3s+FapEpgN0=;
        b=hgg6NV8FXIHD2fyDyKQCvO/tuDOOLjQP/7jlzSbFT+WHQ8C3uSHcrtpOc8m//83lV8
         VBkUC7nuo9xDCrnObeWEYTOKdy23+3KQCqsQG56PfNuOneL9a9GFXzpUuPK3UITxig7W
         fIiS+NB+Jvisp2GFXxnoKd0FmnCPv/hyh1zOoyD9ToFCeM0XE1sFCXXpyp7lFcAr0UQZ
         Ks8QvYTKu6/J2XSdaXo6i7ASMuHr/55d5pyclmHmkf8AOfm7pVLK22lSCNF6juCMPkqk
         USDN70z4IthkhU4JRlGLdPhLGemwN+3aJkLAXsvnDVNzVe8BfQt/C2gu2w6pW8L5eSHu
         /10g==
X-Gm-Message-State: AAQBX9ei4/lJNBN0leFnbM6aYBq9pRGg4olgDyzAeSlCi3K+PZDhgoCp
	+bm7JeJf856is5PRtZHr3H5e5Q==
X-Google-Smtp-Source: AKy350baIrrRrmfaPcUDOSj2l2OdIXPrZ1RbEUf1vTKFBK8BjYDz6c/Q0be38k6esdo6bxwhgxnskg==
X-Received: by 2002:a17:907:76ea:b0:94f:7486:85a7 with SMTP id kg10-20020a17090776ea00b0094f748685a7mr12083094ejc.31.1682410759554;
        Tue, 25 Apr 2023 01:19:19 -0700 (PDT)
Received: from [192.168.9.102] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id la5-20020a170906ad8500b0094e877ec197sm6587131ejb.148.2023.04.25.01.19.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 01:19:18 -0700 (PDT)
Message-ID: <68cb565d-bf39-10b0-9e3e-35ba7f54b90b@linaro.org>
Date: Tue, 25 Apr 2023 10:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RESEND v2 1/6] dt-bindings: power: Add JH7110 AON PMU support
Content-Language: en-US
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Walker Chen <walker.chen@starfivetech.com>,
 Hal Feng <hal.feng@starfivetech.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org
References: <20230419035646.43702-1-changhuang.liang@starfivetech.com>
 <20230419035646.43702-2-changhuang.liang@starfivetech.com>
 <20230419-labored-camper-644d51a7ca96@spud>
 <1a5b15fa-4f20-51c2-2ba1-a04a2911a694@starfivetech.com>
 <20230424-baffle-punch-ec73098f2b6a@spud>
 <d685a1d4-c07d-7dfa-f1fb-b35ceb2aa0eb@starfivetech.com>
 <20230425-unquote-eligible-09f743d81981@wendy>
 <a7cdfabf-2312-eaf3-f462-5bda7f0a120d@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a7cdfabf-2312-eaf3-f462-5bda7f0a120d@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_011923_914798_18A6AAC0 
X-CRM114-Status: GOOD (  13.87  )
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

On 25/04/2023 09:57, Changhuang Liang wrote:
>>>>>>>  
>>>>>>>  description: |
>>>>>>>    StarFive JH7110 SoC includes support for multiple power domains which can be
>>>>>>> @@ -17,6 +18,7 @@ properties:
>>>>>>>    compatible:
>>>>>>>      enum:
>>>>>>>        - starfive,jh7110-pmu
>>>>>>> +      - starfive,jh7110-aon-pmu
>>>>
>>>> I was speaking to Rob about this over the weekend, he asked:
>>>> 'Why isn't "starfive,jh7110-aon-syscon" just the power-domain provider
>>>> itself?'
>>>
>>> Maybe not, this syscon only offset "0x00" configure power switch.
>>> other offset configure other functions, maybe not power, so this
>>> "starfive,jh7110-aon-syscon" not the power-domain itself.
>>>
>>>> Do we actually need to add a new binding for this at all?
>>>>
>>>> Cheers,
>>>> Conor.
>>>>
>>>
>>> Maybe this patch do that.
>>> https://lore.kernel.org/all/20230414024157.53203-6-xingyu.wu@starfivetech.com/
>>
>> This makes it a child-node right? I think Rob already said no to that in
>> and earlier revision of this series. What he meant the other day was
>> making the syscon itself a power domain controller, since the child node
>> has no meaningful properties (reg, interrupts etc).
>>
>> Cheers,
>> Conor.
> 
> Yes, "starfive,jh7110-aon-pmu" is a child-node of "starfive,jh7110-aon-syscon".
> In my opinion, "0x17010000" is "aon-syscon" on JH7110 SoC, and this "aon-pmu" is just 
> a part of "aon-syscon" function, so I think it is inappropriate to make "aon-syscon"
> to a power domain controller. I think using the child-node description is closer to
> JH7110 SoC. 

Unfortunately, I do not see the correlation between these, any
connection. Why being a child of syscon block would mean that this
should no be power domain controller? Really, why? These are two
unrelated things.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
