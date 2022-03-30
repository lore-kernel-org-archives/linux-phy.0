Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C53FEC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 09:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9tkKxGxwq+rBC/iYGaB5JgIOt2TUkd0EJR47Ru2B78=; b=At5nTG7MB0tO+o
	56kR3vGfwPwEfrgn+P2rZGqxXTvC28kPWD2wvHsx0q1dwAFP0ZMMObLelQ0vRRQJfyp8FQtOtktDk
	JcvPE11l86rbNW6W80WzQ30qF3s8Hv+H/QMCAvQOUYo8Af5XKuu1YTo/6Xao7GYJhmwoi8MHgi6XC
	0kNjlZaujEI4ViS8LbbPlyjJ8aGalTilYK86UxLFQJT1xFIQHqyFEtoUXXa3ZLrtfh3YTH2kDg4bT
	zoLjn19buAQAHFjg+I0SZsI5Vkhdxs+RmiC2gb3kLrI3vypgPYgAb+oPeKjkdCO6R+fnxcWqZCtlV
	2nDlQ9kPjEDW3W45UFzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZUth-00F28T-4Z; Wed, 30 Mar 2022 09:45:49 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZUtJ-00F1z6-2O
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 09:45:26 +0000
Received: by mail-ed1-x532.google.com with SMTP id g20so23713803edw.6
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 02:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=tE0Z1pexOqde2yRPuALJpnUqU20mTqt+JoEIAAG4GvY=;
 b=jVWNReVZ8tE4t4HUrUZkVptKKgyRaIAfcGucR+c4ZWMuGsN0UWvaH3Y1Z/DSX0Dr0n
 0JmoMHA008eq6lEa33usWJpnqqQ9Ncvyz9wqHiXfHPcp8CMvcUernY/PpNVfcf4mLnAt
 rlRspp/jhWYLJvGlOQY1GCOReMjVcNJ15BPsGWNaynDWg4vFCCBgO9UoFoLUDXQvmBMI
 Lj47+a4CI4aM9RCYEuYvmG0o/x1wDuibJ2/MUgpd+Xbmaptz1iRVujIyNr1Vzj/YVpuQ
 7aYrO1FAofgLzTdAli9HJLQH4bGZC5F7MEEih6LtxWEMl7zw8qzaBnInqCD+UBfmO4Pi
 3Jug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=tE0Z1pexOqde2yRPuALJpnUqU20mTqt+JoEIAAG4GvY=;
 b=1OjzP0Q1iFIyUdVI4TXHHWsTzzzTe6W12CORoSUNp23JOZfBgNmC4kzXxIN4k8tdTL
 Yiuj1IoXeUXFl3bVyRQeyMPM0uaeUFnoE7pt/lWaT9jPM8gO2/60PboLfIfiJN9yP7Go
 Z3g7Cfrq6PPTEGzd0O24qgCvcX1Cs43Nl9SDbJ8b0mmgQImGZpJCcck4BQCEuWB34qdo
 rHyw9NrFmmemsfOeobdwRoj8IbqXfVGJE4D57lO0fm6xpD1gUs/OsmBHp1icWwMgU7rL
 tm4SQfAbe+IINFRT5k3k3nAC28FZGjXwcQ2bdTPwe4BRLZXAJbvNtYh4/nRcTHFNiBVQ
 rYqQ==
X-Gm-Message-State: AOAM532AE9M1QWQy+qNwb1y+3IEjTBxcdloly4pSY1laRgWas2Vbobz5
 ieJ6onMYnLCxPwAhs3HMVdkBvw==
X-Google-Smtp-Source: ABdhPJzMxUvd1mcDDGft0pVb0EpuxaDxHHgOCHjTElv7lXK03n8sykqJzIkXnuvDcqhD2YKRmENN2A==
X-Received: by 2002:a50:bf0f:0:b0:410:c512:cb6f with SMTP id
 f15-20020a50bf0f000000b00410c512cb6fmr9680004edk.262.1648633517987; 
 Wed, 30 Mar 2022 02:45:17 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 cw1-20020a170906c78100b006e11214c81bsm3285709ejb.172.2022.03.30.02.45.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 02:45:17 -0700 (PDT)
Message-ID: <65d1eebd-f460-4073-4dc1-b1de62aa2ee4@linaro.org>
Date: Wed, 30 Mar 2022 11:45:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 5/5] dt-bindings: phy: uniphier: Clean up clock-names
 and reset-names using compatible string
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-6-git-send-email-hayashi.kunihiko@socionext.com>
 <ecc821cb-4dd0-48e6-668d-45c178efbbf0@linaro.org>
 <076c1292-053e-759d-3e6f-c262093d9d1c@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <076c1292-053e-759d-3e6f-c262093d9d1c@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_024525_254891_44D65000 
X-CRM114-Status: GOOD (  14.70  )
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

On 30/03/2022 11:16, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2022/03/30 17:13, Krzysztof Kozlowski wrote:
>> On 30/03/2022 07:20, Kunihiko Hayashi wrote:
>>> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clock-names
>>> and reset-names that can be taken by the compatible string.
>>>
>>> The order of clock-names and reset-names doesn't change here.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> ---
>>>   .../phy/socionext,uniphier-ahci-phy.yaml      | 73 ++++++++++++------
>>>   .../phy/socionext,uniphier-pcie-phy.yaml      | 37 ++++++---
>>>   .../phy/socionext,uniphier-usb3hs-phy.yaml    | 75 +++++++++++++-----
>>>   .../phy/socionext,uniphier-usb3ss-phy.yaml    | 77 ++++++++++++++-----
>>>   4 files changed, 188 insertions(+), 74 deletions(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> index 14f7579e7daa..61d9306e1852 100644
>>> ---
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> +++
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> @@ -30,33 +30,62 @@ properties:
>>>       minItems: 1
>>>       maxItems: 2
>>>
>>> -  clock-names:
>>> -    oneOf:
>>> -      - items:          # for PXs2
>>> -          - const: link
>>> -      - items:          # for Pro4
>>> -          - const: link
>>> -          - const: gio
>>> -      - items:          # for others
>>> -          - const: link
>>> -          - const: phy
>>> +  clock-names: true
>>>
>>>     resets:
>>>       minItems: 2
>>>       maxItems: 6
>>>
>>> -  reset-names:
>>> -    oneOf:
>>> -      - items:          # for Pro4
>>> -          - const: link
>>> -          - const: gio
>>> -          - const: phy
>>> -          - const: pm
>>> -          - const: tx
>>> -          - const: rx
>>> -      - items:          # for others
>>> -          - const: link
>>> -          - const: phy
>>> +  reset-names: true
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: socionext,uniphier-pro4-ahci-phy
>>> +    then:
>>> +      properties:
>>> +        clock-names:
>>> +          items:
>>> +            - const: link
>>> +            - const: gio
>>> +        reset-names:
>>> +          items:
>>> +            - const: link
>>> +            - const: gio
>>> +            - const: phy
>>> +            - const: pm
>>> +            - const: tx
>>> +            - const: rx
>>
>> Constrain also everywhere clocks and resets, so here should be:
>>    resets:
>>      minItems: 6
>>      maxItems: 6
> 
> If I put the constraint here, it would conflict with the original one.
> Should I also replace the original resets
> 
>      resets:
>        minItems: 2
>        maxItems: 6
> 
> with "resets: true"?

It should not conflict. Check the bindings for Samsung Exynos clock I
sent you last time. In the main "properties" you put the widest
constraints, like you have now (2-6). Then for each compatible you
narrow it (2-2, 6-6).

You can later test it by adding/removing clocks to check if constraints
are properly working.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
