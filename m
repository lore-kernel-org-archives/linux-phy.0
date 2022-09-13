Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB78FC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 10:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AsR911KZ2uY4W4SMzqSkWAedIAogc5evj1cEt/NX6s=; b=am1ziDNZE57/78
	p5WkXPG8+/QruIBaJGOnUAOJuK8khhLUI8cjYs3SSkWluobKTu4WI6GKIfynsFH3OENOBNM7N9v6X
	qNhUrzN6+R4IkeXgl50dXoptQYmER5BVEmXy+6AQGifvgcrMYEWjjDFiFgJ2lwWezjk7Xp0mswcJw
	aRAmgbO8qdcv1h6zWmUN0ISE2kcZStTjawLk7+x8KRtTYKMbg1LWl81GVj2bHGlft+qnKN9VSXoCG
	ZfEgTf/5JjXNwl6XqVrz4dPUgdYljot/kuizeJu15YPUYJJiNpigI0XuuGHNIiK+94PNVEBEJf3/z
	t2uYlSeEBvr4LziVC3oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY30k-006N1t-Tr; Tue, 13 Sep 2022 10:19:22 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2zT-006MMa-UB
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 10:18:15 +0000
Received: by mail-wm1-x329.google.com with SMTP id o5so5077069wms.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Sep 2022 03:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=I+M97uZ2SUDMcnWsz9PVdd3054YjNSAnZPQzh7ZVcLQ=;
        b=VoU+CDMZZY+l/aTqKKx07K/f861xCWQoQ6q11qvl+xPxRATbLnw0cLZwf33woDJo83
         rowFTquWsHzEYJRXb+hf+Kr49wzRhw9ggf+/SsoEbqwT+Bf5SfUxJk71XpUO0jzL0/g1
         0j4B4gyOCCxxr+bTRvExdwGYjQwNcqWPQeg/ZNCjy1dNDqUHl2aNx1AdJgloUmL1r4fc
         9av1lVetEQ5FVmj5WeILs7cJ9qLY9jCcPW1636zdeLLSdVpGKOn+M+MHgHuEJs2UTNxE
         gPuEA51s5QePuMPpphseW8KUlN5XicoezBki7I8U60zybmp99deLwnxljQuP5T4ugw7Y
         QqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=I+M97uZ2SUDMcnWsz9PVdd3054YjNSAnZPQzh7ZVcLQ=;
        b=xC58+MjkWcDTp1eax7aOW2Yhw3FLbBA1EgxUdKo94D0PBwjrwxN6mK/7aGreH07AmU
         +d64tM4UtrsTC/m/Eehea3YZW2Xc6Tg7y16t0ZopkFFTBJ/Q1NkJ/XxLDrONyoZXiOpN
         /ZYm+1xZi3I5nSL8X+XC0WIvoa0F0gStCgetmR4/akpVUgqsu6YVT0kEWO93h3Pl9jcL
         DOTj2iHgVT4ci18FJ4I66A7NrJMxD5sbDKlYBvScDl8eze/tUhCM/3eO3RCEW0EZDAzJ
         H1vS7sE0BnY9Na2YMHn3p2aKV0oR6ljyR49t3xuC937V65HCd5JIDxVgdCTdzP2c8St4
         DWhg==
X-Gm-Message-State: ACgBeo0uEmqIrYoRhCnWySniiG+j70qoXvf9zqlkGJVxZOOXRRX3cVu6
	9u9c3yQqc+ItpPDoDUPm9adXvQ==
X-Google-Smtp-Source: AA6agR5U5hqBAganLTVfF0XB1Ywpe6R1L1pyDTc3Cz6O372x5IG/3zq9SFN2eqwY0YZ6W5AfdbuJQA==
X-Received: by 2002:a05:600c:1c03:b0:3b4:618b:5d14 with SMTP id j3-20020a05600c1c0300b003b4618b5d14mr1727662wms.59.1663064280289;
        Tue, 13 Sep 2022 03:18:00 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id h14-20020a5d430e000000b00228dcf471e8sm9883512wrq.56.2022.09.13.03.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 03:17:59 -0700 (PDT)
Message-ID: <48080f45-ea9d-e8dc-7720-ef82fc84e3b3@linaro.org>
Date: Tue, 13 Sep 2022 12:17:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 2/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 krzysztof.kozlowski+dt@linaro.org
Cc: robh+dt@kernel.org, lee.jones@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20220912085650.83263-1-s-vadapalli@ti.com>
 <20220912085650.83263-3-s-vadapalli@ti.com>
 <7a673b7c-9e04-2a23-98b9-243696597bba@linaro.org>
 <d802f419-f2d6-faca-e0a9-591f4d705b28@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d802f419-f2d6-faca-e0a9-591f4d705b28@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_031812_143823_1D4C3F8F 
X-CRM114-Status: GOOD (  19.41  )
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

On 13/09/2022 11:45, Siddharth Vadapalli wrote:
> Hello Krzysztof,
> 
> On 13/09/22 14:57, Krzysztof Kozlowski wrote:
>> On 12/09/2022 10:56, Siddharth Vadapalli wrote:
>>
>>>  required:
>>>    - compatible
>>>    - reg
>>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>> index 016a37db1ea1..da7cac537e15 100644
>>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>> @@ -53,12 +53,25 @@ properties:
>>>        - ti,am43xx-phy-gmii-sel
>>>        - ti,dm814-phy-gmii-sel
>>>        - ti,am654-phy-gmii-sel
>>> +      - ti,j7200-cpsw5g-phy-gmii-sel
>>>  
>>>    reg:
>>>      maxItems: 1
>>>  
>>>    '#phy-cells': true
>>>  
>>> +  ti,qsgmii-main-ports:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    description: |
>>> +      Required only for QSGMII mode. Array to select the port for
>>
>> Not really an array...
>>
>>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>>> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
>>> +      main port with the rest of them being the QSGMII_SUB ports.
>>> +    maxItems: 1
>>
>>
>> You say it is an array, but you have here just one item, so it is just
>> uint32. Do you expect it to grow? If so, when? Why it cannot grow now?
> 
> Thank you for reviewing the patch.
> 
> I have defined it as an array because I plan to reuse this property for
> other TI devices like J721e which supports up to two QSGMII main ports.
> J7200 on the other hand can have at most one QSGMII main port, which is
> why I have restricted the array size to one element as of this series.
> In the upcoming patches that I will be posting for J721e, I will be
> changing the maxItems to 2 for J721e's compatible while it will continue
> to remain 1 for J7200's compatible. This is the reason for defining the
> property as an array.

I have an impression that I asked this and you already replied... so
apologies for asking again. :)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
