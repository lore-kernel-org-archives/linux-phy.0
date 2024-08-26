Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B58CC5321E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHUTjekYbxXsg2KOvYKEI8qBZzVXtAqn7RrN08FD6mI=; b=r5mDPP28LNMzLS
	QR6ZdoerGvgpS2h7JeWVH27hJLAs8E26SyPi/II2M6eaulQ7co3iIsvkrABblGdYqNPvDsjPKXwql
	sjTtlcFA5ofPSlQq2YQ7ePA2z+t1FI2q2/nd0cysPd81aiTtLK43eGakZ1I9vg6rsx1m2oKtXCPe9
	ggt3KqMH98R0+bSVBHrHnyDel1zyVEAqrpTVfRngsgIzPmECgePbhGKAzWQqaSTKWWHDiNG/gEgH2
	pJYUQp+2aaDPVmP+038o74xU8tgYFXgh9fJ66YQHcGyxntOZq6xFZaa8/ifiN7/+VrqxhJaVqpfrZ
	QEo+Urw0nR5wDlBYvWVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXvR-000000078dm-3Ogf;
	Mon, 26 Aug 2024 11:30:21 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWlK-00000006srU-13Am
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:15:51 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2f3f68dd44bso47249021fa.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724667347; x=1725272147; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXSb7P5yQsC6ZA7aZwkzK/D+oEX3tz1a/6VEPbOOF1M=;
        b=djKTjiFcGdFr7VputlJV5mJMDNED/URp3yWp8CCvN1V4FioEBZVSk1Vc8zZEkPgnrb
         YQ3FVrtb5i6LXXhOF8KrRKQcdeCiQiogaN0uzwZXFwIRp5H+WX/zoMvsBR3DzSDbvrE8
         G6skR5VRkImrw+lJL3u1KShy1YYrEP/E/YT03I81hw5+xDRMFSFurIDsBgVSaEMz6DIE
         RRy9JEALmoCTohyv2L9eKEcI8msW3Ld0lLaOuS+lpR+hI3vqcHQInHuKFzOLfLdrTPoR
         4m6T5JU41UIm3zhGkfk5Xy6NjRXLIE2Vep2t9nSsAT5bIoyGwonTX/0NzoNzZH8dVXoq
         Dy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724667347; x=1725272147;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nXSb7P5yQsC6ZA7aZwkzK/D+oEX3tz1a/6VEPbOOF1M=;
        b=pY71DCwvbuSbQJKUTyv1P2iyP6nBI3TaKphKuYSZVxbQ2CAP12MxARJYTTegosV+q4
         zT5b4/DsWy1gZyepnMbmogfpgrHa886cHtkU568waitMAGbiOVQaY+cTCpcXaVqPwBvH
         3fHPc9+4g+qnUYWaKZkWRyJ/4fjuovB5sl/stJ2hT8yrrTxAhkyD8MfZFb9j0FHVGOs6
         iPMIc/z6xnUEJSWxAxm3XUC7ibSo3yFz26PgYsjReoI7W38Z1NotruQW1inSJVTQFBNN
         xTEUvM2RLUeRbc0M/yGWxdkfht+2YE2UPjT7RXY2Fifv5MNoWu0lGsRmVq0Cgjroqdmx
         K4KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQmAXNmcdM19pUnO8LAAzksDTcsSiEgAJQ3Kzwy5O3IXWXtA4urR4UEMqTdLcuvsSDG1zSZKwBx3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlFHx4qsEmoCA+lD79EhTYTSBmXdNlv4puJ6BnEsL/LO7DbYRY
	nqZQa5UF9PMHiN5SIoUaHJ644eNc147yjV/1w+GX3R3fVJx8NjvNHnHnH8tVTdE=
X-Google-Smtp-Source: AGHT+IGnOO+pYmBeCnoRQo4bouYucQfop3nBZsepSSurhHBVuFJ58XyC2lvaGwZIfEzC6OWNRHTbyQ==
X-Received: by 2002:a05:651c:198b:b0:2f0:1a19:f3f1 with SMTP id 38308e7fff4ca-2f4f48f0feamr66567071fa.7.1724667346682;
        Mon, 26 Aug 2024 03:15:46 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3e8f88sm5421649a12.42.2024.08.26.03.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 03:15:46 -0700 (PDT)
Message-ID: <7b16791b-0d7b-49a1-82aa-c4db99ff2bfd@tuxon.dev>
Date: Mon, 26 Aug 2024 13:15:43 +0300
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
 <5eae2ddb-2a7b-4c1d-a7f7-41fb39058de1@tuxon.dev>
 <20240823-dilute-juggle-7e2d43b8b630@spud>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240823-dilute-juggle-7e2d43b8b630@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_031550_349367_4F57A108 
X-CRM114-Status: GOOD (  25.07  )
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



On 23.08.2024 19:33, Conor Dooley wrote:
> On Fri, Aug 23, 2024 at 07:26:42PM +0300, claudiu beznea wrote:
>> On 23.08.2024 19:18, Conor Dooley wrote:
>>> On Fri, Aug 23, 2024 at 10:54:06AM +0300, claudiu beznea wrote:
>>>> Hi, Conor,
>>>>
>>>> On 22.08.2024 19:42, Conor Dooley wrote:
>>>>> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> The RZ/G3S System controller has registers to control signals that need
>>>>>> to be de-asserted/asserted before/after different SoC areas are power
>>>>>> on/off. This signals are implemented as reset signals. For this document
>>>>>> the #reset-cells property.
>>>>>>
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>> ---
>>>>>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
>>>>>>  1 file changed, 16 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>>>> index 4386b2c3fa4d..6b0bb34485d9 100644
>>>>>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>>>>> @@ -42,12 +42,28 @@ properties:
>>>>>>        - const: cm33stbyr_int
>>>>>>        - const: ca55_deny
>>>>>>  
>>>>>> +  "#reset-cells":
>>>>>> +    const: 1
>>>>>> +
>>>>>>  required:
>>>>>>    - compatible
>>>>>>    - reg
>>>>>>  
>>>>>>  additionalProperties: false
>>>>>>  
>>>>>> +allOf:
>>>>>> +  - if:
>>>>>> +      properties:
>>>>>> +        compatible:
>>>>>> +          contains:
>>>>>> +            const: renesas,r9a08g045-sysc
>>>>>> +    then:
>>>>>> +      required:
>>>>>> +        - "#reset-cells"
>>>>>
>>>>> Given this is new required property on an existing platform, I'd expect
>>>>> some mention of why it used to be okay to not have this but is now
>>>>> required. Did firmware or a bootloader stage take things out of reset?
>>>>
>>>> On previous SoCs the SYS controller has no support for controlling the
>>>> signals going to different peripherals (USB, PCIE in case of RZ/G3S).
>>>> I'll add a note about this on next version.
>>>
>>> My initial thought here wasn't about previous SoCs though, it was
>>> because you didn't add the compatible in this series for /this/ SoC.
>>
>> RZ/G3S compatible is already present in this file:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml#n26
> 
> I know, first thing I did when I read the original patch was open the
> file ;)
> I don't care about the old SoCs, cos you're not applying the property to
> them, so what's changed between SoCs isn't really relevant. It's a mention
> of why, on this SoC, it is safe to add new required properties that I want.


> 
> AFAIU the answer is that no consumer of the resets existed before, so

That's true.

> there's not some special state there, and I am guessing that the new
> sysc driver you're adding isn't going to fail to probe if there are no
> resets, 

That's true.

it just won't register a reset controller?

It will register it but,

the new sysc driver is going to probe only for this SoC (RZ/G3S). On RZ/G3S
we have 2 resets. These well be registered unconditionally, currently, only
for RZ/G3S. If there will be no DT users for it then it should be no
problem, AFAICT.

SYSC variants have common features b/w different SoC variants (one of them
being chip identification). The feature implemented though reset controller
in this series is not common but particular to RZ/G3S.

When the SYSC will be extended for other SoCs the reset driver registration
would have to be adapted to not be registered. At the moment, as the SYC is
compatible only with RZ/G3S and the reset driver is registered on auxiliary
bus though SYSC there is no restriction, reset is registered all the time,
but SYSC is only compatible with RZ/G3S.

> Which is fine, cos all
> devicetrees that have the new peripherals will have #reset-cells etc.
> 
>>> What's worth noting isn't about the prior SoCs, it is about what makes
>>> it okay for this one.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
