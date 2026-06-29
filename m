Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 407FDC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmcMNUwJIreecUUTNIHmAew3ezwm4sTowylMbYyfjrg=; b=EGECyHTnvKPjHt
	aAE+LrtniyiOw0TUhrNpQBlChhaolUoRB8Qm5uvC2ni0rJwPRCL7xgxZeN17We1apR9BuDt7hbxBA
	P0yazPxulfrm/bewyYnx3q/ciKQaSxrXUPz1o2V91SKTJzC0YYV88n4vHQXYY11pIQP0PHVwc43as
	9TneOJ5cwwooPpO19yLzAFHFwGkeQNw4Rcv6MN3HD/YHyNlsgamCJOkq0GbWj7NAZRAoCrsC40XkU
	YIm0P77pe+550lnOGlf3NR2uv7JdBSr2PuHHoIa3nazmpxF0hZ8umjQsWuUDUD2h8jibB+nS6oRzT
	6ugOD6l9UYaKtqlWKPCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8be-0000000EFIy-014I;
	Mon, 29 Jun 2026 09:48:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8bd-0000000EFH5-0qN2
	for linux-phy@bombadil.infradead.org;
	Mon, 29 Jun 2026 09:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zTD44WdJSK3FZpGp1YBqkIsU4pLxtym31A5/dbuPSIk=; b=n2cTFccKdTrAJng4ZjAnt5L244
	ihRnA7TEJEanWspQWF/Fccw4ZXzC3qbX6dLHST2c0mcLmY5wPI9cGl7/i2YzdUp/H4z8mD0nYkt+6
	n3CJSuOciaQcC3JelcZH0but8/P0bq2S8LbNlVbYsZLG3xXYDPamymXGRh0TA9nnnk4ojv2k72DdB
	3/HIPng7uhhOTaQMpsFBe01jqgESK5iw7RDG/J+TOqFPbY9ayhUfqQjsKrU8R7W90NluQv25r3Xgg
	+Miva1MBj2HKtGo2CZCX5hTY/BKnFroJPt/Qd3XOyosBqGvR/7PCasIEN+r4yyBzeVB2omgtSm7mL
	1lvkYsYg==;
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1we8bN-00000000qZF-3LlB
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:48:43 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-37d82f3a244so1252232a91.2
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 02:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782726506; x=1783331306; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zTD44WdJSK3FZpGp1YBqkIsU4pLxtym31A5/dbuPSIk=;
        b=geNeZl7nJZ4deAMpho6SJBmBIZDEa/5JpEiV6UhkCwZM81oxnWDyRL7Ny3+9Ox9Opb
         vx7YhkPSXaj6WgONnYwNyCbEfP+ejpHskQ7p9QtYnT03qLx3m4/4rcyiBMe1KYYQASYk
         OYcopmPJ4zuNwN86YA5D3A5JXGTHihMUnn6wWJXsdLQMIgZMlhyVrOpIVWVJjum0dr8F
         Jf9FEFzz+BTOD1Oe7sccdobADCmUjyKIgrY3Mxxn97tlG8f0/MeYjCU8EAGiFvOxSkho
         XyjHXX5f47SlPkSuSuRLhWBxFOyTbXZehyktSzp75vyD4yEmgVfPV0tQNbT+XL/Zm6gj
         +miQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782726506; x=1783331306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTD44WdJSK3FZpGp1YBqkIsU4pLxtym31A5/dbuPSIk=;
        b=IJUqX/Lc2COgo5hvnUlULyxc9EcVFrnbEFd2zuR2Z3/9V3iOQ5GPYYZJSRDZ9vFUYq
         t5zHOtBTHf6zjYCjpHGRGFwECIj6MWhI9+gWlwLkwulN9yA1RIL+g/x6bMCT28oAke8I
         R3C38O64BPzYpMoWx0B83O5MWEp8/0xoYcxiHr92iAUsJndz7qY8/9IpwDD0bXeEqD8u
         nVwuUefrjGYtX5a2FWyaS1Y6IoLfTdRufhG3i1PbUr9rsjBpinYP4hUH50IkSZ5I2a8v
         X6SQ0XUarHTJyycJwU/DhwWbbmuEh1MbtE8/EzusiyTfXY4nNGHp8yPFyKF459adehOG
         JukA==
X-Forwarded-Encrypted: i=1; AHgh+RpxjTrbwAvsTgAqmPG/DSQM6AJMGdrjmDX9ZGm5XUfStBqInlpbIxaARDtQ2J2bTT1e5zxXIdYEHFY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHGLrLbKPAg8HSVR+NWW2pVAfeoT3YOjgpO8OFV7wM/EnUtjMD
	PDKK7Z4ndRs+US6z2awq98pujELfaScbYmO+J957LgNsx1tPU+LUYkzV
X-Gm-Gg: AfdE7ck6RFZCCewM7R7PamE7nffIA2/yhLiWRhqt/48FX1lrWLCPtlCm0qFsbevRgrs
	0XeCzLgKXs5pZXus3NbasVtINb++StbN3yQgc4fXSUSdcP66mftuds7gO2NskhAIEXslDHx3gIW
	ijQe4BjuvGTQQ9XKs0+e+M3P6N+wHkLrdZZA4Vn31M5vlD+7zf1bMRLgv0km/ExdLIGM1ekyh2m
	e6Zpw0d2UUQVzFRTO5SIi2DEz6vIqWIt8+M9EPzrO98Fatk/GYrPIbDMbD8Mb7XLrhxOzsXtDSN
	8EhG2FMeAyhSm5fTMqeeiZYfKTTF9dZ/CuKBuFX/3RNEBRNUxEKc8WSsFY/evWK0hG+P9IuoWer
	FUx2nLA/H0KlbRAMDvx5vjzWT3AxyWGul0dA5uuGhbWWD3JVjn2BHwCa4Z+Zn+vtpzeuHN4W/25
	vFqxZ0a99BfIl0OJB0T0+7zGGKIe8/2i82vniRwvUPm35RZa/R/CxN56OqLg26los/eg==
X-Received: by 2002:a17:902:f612:b0:2c7:f2c6:89e0 with SMTP id d9443c01a7336-2c98549d2a7mr85863555ad.4.1782726506210;
        Mon, 29 Jun 2026 02:48:26 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f5af8a07sm88963245ad.25.2026.06.29.02.48.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:48:25 -0700 (PDT)
Message-ID: <df86d371-2994-4f33-80fe-36509054fee3@gmail.com>
Date: Mon, 29 Jun 2026 17:48:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: reset: nuvoton,ma35d1-reset: add
 simple-mfd and child node support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260625023958.569299-1-a0987203069@gmail.com>
 <20260625023958.569299-2-a0987203069@gmail.com>
 <20260625-striped-demonic-jerboa-502afb@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260625-striped-demonic-jerboa-502afb@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_104830_167896_8AD0620E 
X-CRM114-Status: GOOD (  18.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 6/25/2026 3:51 PM, Krzysztof Kozlowski wrote:
> On Thu, Jun 25, 2026 at 10:39:55AM +0800, Joey Lu wrote:
>> The MA35D1 system-management syscon node hosts the USB PHY register
>> block at offset 0x60.  To model usb-phy@60 as a DT child of the syscon
>> node the binding must allow:
> Explain why do you need child node. If you have fixed device @0x60, you do
> not need DT child node at all. Compatible implies that child existence.
The commit message will be rewritten to state the motivation: the USB PHY
register block at offset 0x60 needs a referenceable DT node because consumer
drivers (dwc2, ehci0/ohci0, ehci1/ohci1) look it up via `phys = 
<&usb_phy N>`,
which requires an explicit node with a phandle. Optional per-board 
calibration
properties (`nuvoton,rcalcode`, `nuvoton,oc-active-high`) also need to be
expressed in DT.
>
>>    - simple-mfd as an optional third compatible so the MFD core can
>>      instantiate child platform devices.
>>
>>    - #address-cells and #size-cells (each const: 1) so child nodes can
>>      carry a reg property.
>>
>>    - An open child-node pattern (patternProperties "^.*@[0-9a-f]+$")
>>      to pass dt-schema validation.
> No. Do not explain what you did - we can read the diff. You must explain
> WHY you are doing that.
Addressed above.
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   .../bindings/reset/nuvoton,ma35d1-reset.yaml        | 13 ++++++++++++-
>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
>> index 3ce7dcecd87a..1fda7e8f4b5d 100644
>> --- a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
>> +++ b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
>> @@ -19,6 +19,8 @@ properties:
>>       items:
>>         - const: nuvoton,ma35d1-reset
>>         - const: syscon
>> +      - const: simple-mfd
>> +    minItems: 2
>>   
>>     reg:
>>       maxItems: 1
>> @@ -26,6 +28,16 @@ properties:
>>     '#reset-cells':
>>       const: 1
>>   
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 1
>> +
>> +patternProperties:
>> +  "^.*@[0-9a-f]+$":
> This must be specific.
The `patternProperties` key will be changed from `"^.*@[0-9a-f]+$"` to
`"^usb-phy@[0-9a-f]+$"` so it matches only USB PHY child nodes, 
following the
naming convention used by existing vendor bindings.
>> +    type: object
> Missing ref and additionalProps. Please look at other simple-mfd.
`$ref: /schemas/phy/nuvoton,ma35d1-usb2-phy.yaml#` will be added under the
patternProperties entry, alongside `type: object`, so the child node will be
validated against the PHY binding schema. This follows the pattern used by
existing vendor bindings.

Thanks for review.
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -43,4 +55,3 @@ examples:
>>           #reset-cells = <1>;
>>       };
>>   ...
>> -
>> -- 
>> 2.43.0
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
