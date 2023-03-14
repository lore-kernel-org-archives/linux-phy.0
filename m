Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C69C05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 19:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKpIgjomD1Y65HsBZ+9kijrIm0SRvX71drlvpOWvnr4=; b=POweT2AOoJykQe
	tKrrPwelWdePZ74UygGcyKqW1nsPPWR73Fvr7Nv5rUXWiuKT6EOuxkGo6O4w2jSGmJIvOROyuiBUX
	tFFotUozRuEwU2+XQe9WVnXToFS6NFonuAc9SPdIkOBesnBsaKSt+2K+sCQSdUZHRHGowr8jCeyBU
	EBmz1D2nkoFcpTIJUpWsS76SvE415u+SYWir1pFgykwnAubuoU5zWYSvvjx1HfCGkXBSwqfCmbBBd
	qeYQd2tOcEW+l0mMQoUKc+x4n+IZWb95lF7/gTfagNtHhq0ISXBM5deiM6jAlp+wAu1d142kjpbJl
	mC/EPhOcI/LToIChq8cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAny-00BPdu-2A;
	Tue, 14 Mar 2023 19:59:30 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAnv-00BPcB-1F
	for linux-phy@lists.infradead.org;
	Tue, 14 Mar 2023 19:59:29 +0000
Received: by mail-ed1-x52e.google.com with SMTP id eg48so7563950edb.13
        for <linux-phy@lists.infradead.org>; Tue, 14 Mar 2023 12:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678823965;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rr3yddhQQtiym6t4yIk1m3Wt6qYddFKcJfpTIfvkXJU=;
        b=n38EiUE6zuRBbBH2Xn5szv+hHVZi+Ibu+eQuUuWLzCks8g2OyaGeWDKxa5alYz7TeD
         yYRxo6OfA4V9yzpMhZlLrtdl8pAH0jppon3DEHl6mrqORgHhQ9jD9cc8Mlqlnk45iwNS
         sR/PjUmC2yFXe9gbW+usnh3vIkG0U+B8GYPEAFnEeceQC9nH3PTMMQgCTNgQT2tbGekS
         j3k04lOAFQir4MAznrLbliKoP9+64T+EW71Hao0sVG8BIFCSV1zsC5VD9lLtJAlZcjmL
         MxJ0B0TLDILrAmO4qTrvfyzFjX+cCttv9dEtoFo68vebB1V71whh1SNKNJSjA1tbASPa
         zb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678823965;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rr3yddhQQtiym6t4yIk1m3Wt6qYddFKcJfpTIfvkXJU=;
        b=1V8pn19QqMZ6HUUAvUCDbW8oe1hJ1bC+WKzLGDXFuoUdtJdqKXuGNn8zzBqtT0gWMd
         GnX4MlkDc6KD4iAOCIcX9kcdnxPKtwGiTIxP/kKT3fdGdcrM6YqX1OcJOn/dRnfkoDYw
         9zU5wVHGlzLppX6twoceQArnjR2oXdK7DpWP8lp0LHh55+uvMvU4Yy3DZQpTrg5gP9At
         vCiiB3NJ2X6Re7go41TklHG+FnOgqiLzpx6CHsLVNJjtIDGJbCOY3VViwUrY1GqojMf7
         /Oc9xL2ark5dLBREFcxM2iWZr91Z0A0DV+eSUoXe8mOQ6Ah4IsKukjUkpS/UITNV/PdP
         679A==
X-Gm-Message-State: AO0yUKU1n7PTS7VQQ7dUmhPFYucXx76QiyOQqEpDJPLjDiaArYsLnL3U
	A9wM4RpAewRebNkfZH/jkeK5tw==
X-Google-Smtp-Source: AK7set/+SCbFFrf18h4uJ8Q3iCIWWPTZZqUrG2OIJLrLkO06zFXJ2cKWTBMvXIGRdjKGZ7sQKU4qdA==
X-Received: by 2002:a17:906:950b:b0:8b1:77bf:3bdd with SMTP id u11-20020a170906950b00b008b177bf3bddmr4250199ejx.36.1678823965144;
        Tue, 14 Mar 2023 12:59:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:642b:87c2:1efc:c8af? ([2a02:810d:15c0:828:642b:87c2:1efc:c8af])
        by smtp.gmail.com with ESMTPSA id u11-20020a1709060b0b00b008e22978b98bsm1540234ejg.61.2023.03.14.12.59.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 12:59:24 -0700 (PDT)
Message-ID: <3d34e35f-fb5a-7522-9717-dd3402dd88d3@linaro.org>
Date: Tue, 14 Mar 2023 20:59:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-4-sean.anderson@seco.com>
 <684eb04d-aeaa-07e1-34d6-783e85e379f0@linaro.org>
 <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
 <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
 <7c7311ad-fbdf-3c7e-dab5-28a562fb7e8d@seco.com>
 <a7fbaea5-927a-e4e8-d990-66b53d586d47@linaro.org>
 <b7f45fc2-85f5-ad29-2dc4-bc059cac022e@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b7f45fc2-85f5-ad29-2dc4-bc059cac022e@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_125927_432411_4024F0D7 
X-CRM114-Status: GOOD (  18.99  )
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

On 14/03/2023 20:52, Sean Anderson wrote:
> On 3/14/23 15:45, Krzysztof Kozlowski wrote:
>> On 14/03/2023 19:50, Sean Anderson wrote:
>>> On 3/14/23 14:32, Krzysztof Kozlowski wrote:
>>>> On 14/03/2023 19:09, Sean Anderson wrote:
>>>>> On 3/14/23 13:56, Krzysztof Kozlowski wrote:
>>>>>> On 13/03/2023 17:11, Sean Anderson wrote:
>>>>>> +  reg-names:
>>>>>>> +    minItems: 1
>>>>>>> +    maxItems: 5
>>>>>>> +    items:
>>>>>>> +      enum:
>>>>>>
>>>>>> Why this is in any order? Other bindings were here specific, your 'reg'
>>>>>> is also specific/fixed.
>>>>>
>>>>> Some devicetrees have dirout first, and other have dat first. There is no
>>>>> mandatory order, and some registers can be included or left out as is
>>>>> convenient to the devicetree author.
>>>>>
>>>>> reg is not specific/fixed either. It is just done that way for
>>>>> convenience (and to match the names here).
>>>>
>>>> The items have order and usually we require strict order from DTS,
>>>> unless there is a reason. If there is no reason, use fixed order and
>>>> then fix the DTS.
>>>
>>> The items do not have order. That is the whole point of having a
>>> separate names property. The DTs are not "broken" for taking advantage
>>> of a longstanding feature. There is no advantage to rewriting them to
>>> use a fixed order, especially when there is no precedent. This is just
>>> an area where json schema cannot completely validate devicetrees.
>>
>> I don't understand "there is no precedent".There is - we rewrite
>> hundreds of DTS. Just look at mine and other people commits.
> 
> There is no precedent for a fixed order of registers for this device.
> We have always used reg-names to interpret regs.

And who is "we"? Bootloader? Firmware? BSD? Because they all matter. It
does not matter that one particular driver uses reg-names. The common
rule is always the same - entries are ordered and fixed (with exceptions).

> 
>> The reg-names are helper and entries were always expected to be ordered
> 
> This is not the case for this device. Registers may be in any order, and

Their physical order does not determine the order of entries in DT.

> some registers may be omitted (and not always the same ones).

OK, that's the reason.

> reg-names is the
> only way to determine which registers are present.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
