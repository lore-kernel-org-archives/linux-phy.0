Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 231E5C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 16:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5N5xu+O4EAPIfgRExEaeNv0vpvsZL32uDij1G3Pq8A=; b=UaLkjVlZy0VVkX
	70bIfOFlRkDbT059IhsdMI5UwCl6g9xu/Bv9Kz1Y7FxUiFpS+lvG2Z7DkgyJb0kb5vAiVoUfS/HWi
	M3zs0z4eo50v1c5HMW7hn1l8iSqlGqt8PhuyxkBHDjSNCBmBlDIRycZMiHAFa0TVxkoQV1IELQsE8
	DSHF0OGfx/RBIP0zypJgZmRnODMc4d3yisIVb3tgXLsT63HE2N2pQYEd25OqnbmFGx1fUBFMy4aYh
	j6BiwUuY8fMbKZVnVtYJbnGCfdyXg1YFPD1kaQQdI4Xm/Tnkm8rtEo3FlIip3PZ+989C0qNYyHaPJ
	cGbv+O7dk5aoiPVIsL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX8C-0000000HYcB-2lJe;
	Fri, 23 Aug 2024 16:27:20 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX7f-0000000HYTm-3n94
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 16:26:49 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2f3f90295a9so23036501fa.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 09:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724430406; x=1725035206; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZWSBeG+QwbjFSDvLyDhLEv05keKw5jJM6jqldDdTU5o=;
        b=dm+eDpUOICmQya7SKpfuQyWDSpYo95dpieYZPjvr1uVzOxQ4Gs+C6Y7ggdKbXeobWO
         +hbhyD62C/lbd7MPwO4OxOcn+Q1LIF4QcligzD1xJG0UoKftFqaoixEFNeRebU9bF5VP
         jTotObLRF2BKqZubxnG5m7fqWyOClLaSBXUeLkYyzB7Iq+KZtL4qmXrqzDMY2YoY/Fvi
         HgxgGaXU4en+cnifrXqDtjYKWRE+PFdizJQgeTJ2/CHvtCEVfkjoJ3fa70XgzPxadm8q
         oQCSxS4MARiN/G9NJN3BAUC/SLkmsMyoJqgkoCb4XyXK3RGobsNY2YnWMsDFF+aN9ErW
         p4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724430406; x=1725035206;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWSBeG+QwbjFSDvLyDhLEv05keKw5jJM6jqldDdTU5o=;
        b=nNCYcQsrn8OY7ouU/yC1tIWgfjdSIPkR1a1j9J5Kuq/3L0a/ao+m0Dd1wRvF4OpZF0
         UtnBkJ6hRt/mJ6l0sKyEQhP7n7T7wIYK2ETZ4Joueqyjdn0n60rRaWQ8ifG6VtgOxx6Z
         G/clrCnmNmd4u8Jg7C5R7q6ajTx5Ks9nBZZ8vnnMLwlW4lf47DP1J6epFuzll12IvPWs
         iWJaQQa8flE5NXHjKFj4hN0MCP3OEJgFtjhcNDZRCVa2VqrGGc23dhAbWLqSVpq3Oyaq
         Z8aymYpbYEQbwLe0AOcIwD0BNIyi3qpDmxpS43OyG/yevSWZ/Z9oYenfpu7HGbMoQfHr
         oxKw==
X-Forwarded-Encrypted: i=1; AJvYcCX5ztqvARvGPGdNO1EXXQJgNMkYSLpzFhQhJ4O45QYICHaYA5iP2Ehql3kcGFMLRrz//W8p1S5lewo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyxuw2M3JXKirgZhpbtxJ/fjsJeQIjTp2nft6Aa/WM5I2YydXqk
	dahtxL3zeBClc2ObtcAMB9s7yANzgwg7xt70+8O5XKFeRG0SPOKSnswp37O6iAA=
X-Google-Smtp-Source: AGHT+IGq9Z87mcKzdsOfA4Kh7hIWO8zyssaqdNEEpmiVif++gK9Zdc/x8LpKsPD+5iPCumWhJubVcQ==
X-Received: by 2002:a2e:9996:0:b0:2f2:9a2e:c257 with SMTP id 38308e7fff4ca-2f4f4941e50mr16465901fa.41.1724430405344;
        Fri, 23 Aug 2024 09:26:45 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3ea610sm2309974a12.51.2024.08.23.09.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 09:26:44 -0700 (PDT)
Message-ID: <5eae2ddb-2a7b-4c1d-a7f7-41fb39058de1@tuxon.dev>
Date: Fri, 23 Aug 2024 19:26:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
 <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
 <20240823-plywood-unfixed-d8d8a2d93f14@spud>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240823-plywood-unfixed-d8d8a2d93f14@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_092647_959781_D011C2A7 
X-CRM114-Status: GOOD (  14.23  )
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



On 23.08.2024 19:18, Conor Dooley wrote:
> On Fri, Aug 23, 2024 at 10:54:06AM +0300, claudiu beznea wrote:
>> Hi, Conor,
>>
>> On 22.08.2024 19:42, Conor Dooley wrote:
>>> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The RZ/G3S System controller has registers to control signals that need
>>>> to be de-asserted/asserted before/after different SoC areas are power
>>>> on/off. This signals are implemented as reset signals. For this document
>>>> the #reset-cells property.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> ---
>>>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
>>>>  1 file changed, 16 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>> index 4386b2c3fa4d..6b0bb34485d9 100644
>>>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>> @@ -42,12 +42,28 @@ properties:
>>>>        - const: cm33stbyr_int
>>>>        - const: ca55_deny
>>>>  
>>>> +  "#reset-cells":
>>>> +    const: 1
>>>> +
>>>>  required:
>>>>    - compatible
>>>>    - reg
>>>>  
>>>>  additionalProperties: false
>>>>  
>>>> +allOf:
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            const: renesas,r9a08g045-sysc
>>>> +    then:
>>>> +      required:
>>>> +        - "#reset-cells"
>>>
>>> Given this is new required property on an existing platform, I'd expect
>>> some mention of why it used to be okay to not have this but is now
>>> required. Did firmware or a bootloader stage take things out of reset?
>>
>> On previous SoCs the SYS controller has no support for controlling the
>> signals going to different peripherals (USB, PCIE in case of RZ/G3S).
>> I'll add a note about this on next version.
> 
> My initial thought here wasn't about previous SoCs though, it was
> because you didn't add the compatible in this series for /this/ SoC.

RZ/G3S compatible is already present in this file:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml#n26

Thank you,
Claudiu Beznea

> What's worth noting isn't about the prior SoCs, it is about what makes
> it okay for this one.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
