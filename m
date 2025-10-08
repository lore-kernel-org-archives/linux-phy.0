Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 153F7CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 12:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uq6J/qCO0sonU8sqjG45KKId5F8M42Onpa1VLw4FBKk=; b=i9uJ37xuYo/QCF
	7HopxfbVY/pkizaEXnyEvz4OMkUr6j/dy+jrYGCf148M2iEkpe5hyK4ZSqMdj4JUShi8fEk53MuPR
	ocMcQCAHn0uiZmJdYs5TaiKwOcnMAcJN1AkVaq9vPU/IT6plr27gV7GUd0WKTN92OIVa6/VithBZr
	uR4p6fQ7EbSnujlmjYTbKQb9u9LymCwKd6wGKunqquXo/P22d0AWSMbQTtMoLMVDFUU0vXEpIYc8K
	I9+tHYYWstN0cTitgYI0HGxOzn/ANKsgL2K7aJvsouKniRQQrHLyO6aezIETrMS2LOFAHsTtuorZu
	TAfP+tW9Du6LKZ4VBZMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6TaK-00000003rHM-3J40;
	Wed, 08 Oct 2025 12:48:00 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6TaI-00000003rGN-3rvH
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 12:48:00 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so1363407466b.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 05:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1759927677; x=1760532477; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AXhIFAPZtegMDAxULdLjEweIkAMVkFzkJ9S+EwaPmEY=;
        b=VNgH+utotqbCX1lxrPb/ZQTczP2IYXdPA3jgY+NokCwjpXVrHMA9NiR9HtPCsF2bAp
         7YOHoX3E6j5AAscSHPfWP7N8w13ZC88NuUgc1sD6m4vTMp5LxJ8yurkb3Dh/o0BTQSaH
         /nzmQ5NlJixspJcj4WCSqygiAHr68mWD48kOO7Xg94f0JMo29XMhv4Vnbq+rfjGqb60R
         +195Qv4HK6EuLPN8gcI/aSzKxaS5UaobDSPElqzK08ga9zGZHjhVXB4Bs+13D8PLZaef
         BaOouIDAaAnCBSjmuNSBd3Gi3mVIqxdloqwfNn0w7d7ic28lCN86tBxAk7oFES78UE6m
         HZbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927677; x=1760532477;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AXhIFAPZtegMDAxULdLjEweIkAMVkFzkJ9S+EwaPmEY=;
        b=o2sDAk7vIiyVJJ5DIdO1CvpC+ARWiO4v5QKCOmhdw0y4Root7XrPEwYoE0qduKaVTS
         8aExT3KDFk5X8c8c6oivTPDAKV+MjvJEjQW8tXJ+SxXVY4q252MgyJYwSyzTZaNeP1MJ
         nZ8TrU+pgwSkZm9GqNIZMvYA07FmoMyd8ell5TnFB0Xtb/r16pZ17o+22JJflIxYiu5G
         AQMkd65A0CdxtHAz/HpfYvIWAd9pASoXwKiYuRU4XStloKbDUl8xoUsXQosw8jCj9igi
         7egmsDNsWvDf7gzFpDOGu+1WzzUXfkfQy3QvogldbxTOM0yi6OE0ha2DoHFeycU0S5pi
         nHOw==
X-Gm-Message-State: AOJu0YwVyXfuwlj1YLI3x6Dl3T2PYK8tdrkF6TbXiq0kuMyLLSflMRSi
	gQf3goowxdBekUvtFZGic7fGXwIyizofFsUexkkdUbNrZfGf/PjtUeOztKoXKpc/hCY=
X-Gm-Gg: ASbGncsWJkodL90/4XF2xPCgUMeICYLhl/i1ARMb1hgj/dd5ypjIMOUP9hTdi/wWKcd
	x//ItQUauMGSFwmkZMqojOr3HtJhsukjO77OqxpAOv76Rsw/dp57qQuO6qWOKvJCjVelkTaeRs4
	blZnD0Qio1vaJ4tSfr5QHeiOWCFXbf/0G1QYerEgJujcLbjGMmkyHPpt6a9fFwTjvxssjqIa+Ko
	GsdBA1iHfFgSuAX/CdjKSDCQKAPoEkN4Rly/+kN7fw/Ja6x/d9oNiObnRCnWd/bnrH5l+3oMNA/
	LCUZoudIkfGGWHd5GP+bXFgNWw5EsFaX8hUfGJMAJkhXbY4Wx4ipgYxSd91SFeiuZUKboJjgcM9
	xspG+my52cSxLCKWWGD8rVtn9XWK/XyAIixRa0pgZfve0aGBaHOV9ig==
X-Google-Smtp-Source: AGHT+IGpOYxdU1TjlTUaBcL5WSDuVrPngUkKCAdSSFEPYFhIoh1b/oFl2+SzF4mi5hdAxR3O/fYw6A==
X-Received: by 2002:a17:906:6a22:b0:b37:4f78:55b2 with SMTP id a640c23a62f3a-b50ac1cba08mr336276266b.34.1759927676843;
        Wed, 08 Oct 2025 05:47:56 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b5acsm1639393966b.60.2025.10.08.05.47.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:47:56 -0700 (PDT)
Message-ID: <d0fa09bb-3e2c-478b-a9b1-af57254a4fb1@tuxon.dev>
Date: Wed, 8 Oct 2025 15:47:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Philipp Zabel <p.zabel@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_054758_979071_9A238B75 
X-CRM114-Status: GOOD (  16.88  )
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



On 10/8/25 15:16, Claudiu Beznea wrote:
> Hi, Philipp,
> 
> On 10/8/25 13:23, Philipp Zabel wrote:
>> Hi Claudiu,
>>
>> On Mi, 2025-10-08 at 12:29 +0300, Claudiu Beznea wrote:
>>> Hi, Philipp,
>>>
>>> On 10/8/25 11:34, Philipp Zabel wrote:
>>>> Hi Claudiu,
>>>>
>>>> On Do, 2025-09-25 at 13:02 +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
>>>>> PWRRDY. This signal is managed by the system controller and must be
>>>>> de-asserted after powering on the area where USB PHY resides and asserted
>>>>> before powering it off.
>>>>>
>>>>> On power-on the USB PWRRDY signal need to be de-asserted before enabling
>>>>> clock and switching the module to normal state (through MSTOP support). The
>>>>> power-on configuration sequence
>>>>
>>>> The wording makes me wonder, have you considered implementing this as a
>>>> power sequencing driver?
>>>
>>> No, haven't tried as power sequencing. At the moment this was started I
>>> think the power sequencing support wasn't merged.
>>>
>>> The approaches considered were:
>>> a/ power domain
>>
>> Letting a power domain control a corresponding power ready signal would
>> have been my first instinct as well.
>>
>>> b/ regulator
>>> c/ as a reference counted bit done through regmap read/writes APIs
>>>
>>> a and b failed as a result of discussions in the previous posted versions.
>>
>> Could you point me to the discussion related to a?
> 
> It's this one
> https://lore.kernel.org/all/CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com/
> 
> 
>>
>> I see v2 and v3 tried to control the bit from the PHY drivers, and in
>> v4 we were are already back to the reset driver.
> 
> v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> bit was referenced counted in the SYSC driver though regmap APIs.

Sorry, I forgot to mention: in v2, the SYSC phandle was passed to the PHYs
only as I wasn't aware of the block diagram presented in this patch
description. I got aware of the block diagram starting with v3.

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
