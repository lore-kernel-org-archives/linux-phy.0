Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF7FCC87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 12:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZU6tsvly6k3qmVvrSv9/VM8ethE1uO+Of8pDlsag+No=; b=YoClI/BUYAt9RE
	rrdYVXo1EvD+8ko5TMB9kttQFUNinZzprIR3tJj8EOcX91nMPXFeL6EiLCoqBJLIa3tISL9/JLFpI
	7kr3a/OYc85xCh5TFzSPcOaAk4A+dxv3WfR10b5+ekxplbkvDSrwD+YYU2WX1zsZbZ6mryP44QgMF
	h/w+n1VMMpX9vH8vl4ZODjHVleUXOmpxAvcLSgG+UsdKNBf9zlsgu5tDpUOqeZ5UlFBi6Pp8gRtz6
	LC1gpe8hSFKvfixya3/joHoCfWtlFwU33n4dfVygg/K2pVxNMDs2cLRWTuGdg9/sEKwzlpiSR0hGj
	ozXa9AEnCu/i6j7WPgCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukMGZ-00000002oPL-2Wt5;
	Fri, 08 Aug 2025 12:32:11 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukLw9-00000002lOI-1BNb
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 12:11:06 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-af93c3bac8fso298372366b.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 05:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754655064; x=1755259864; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7H80wazDhrSZXsCUSdHhSJpvhnQo21M43h8Ky6/QQsc=;
        b=AudB0JY09rOdvVaMMcognV0n7MlBFbuX4GT/6mk92vOJ3fnCj4p26NKD853Z9xyWS3
         rddYWiiebshEowhqg8mRIyLt9ZM2Hbobet5e7uO+F/lzvC2ht0rR2UDbdfZ3j5EX4hiy
         ATThVBbNTEfw5P8devWKsJomFSTQql44r7oQivsqqqTsD5TOFUG3I7fFoSsXCdtTJKmd
         zoZK4naQ662Lm833rrL1NqymH9qiH42ikdN26PA78fTLiAxb0KmCqGeRePgvSqd/LON3
         33G84zr5xMnlf9XA8gcRBqrnaPKTBS5CUyp1OpKu635VeCKPJg7CVzjrhzlxTojFyKNd
         Yy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754655064; x=1755259864;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7H80wazDhrSZXsCUSdHhSJpvhnQo21M43h8Ky6/QQsc=;
        b=me+h2jiI4aqNwPKoIUlF7KiBq7dIiZcpl/XfGSLSLZgt/Kv4e9axW7Zkqi2F5NO81V
         lY1RpgygiSKwmgNewu9YIL0lOcoOdbXt0lyxwvpNzMbYnJa2vJZmiTakc2nR38o9EMhS
         SISj9xjrYBIyEOlon+y00OLUKYiEoCyjpKWNHUg7n8akaTCKnkQuN41UcR2DZeVMwlHx
         hyh/I8qd6Wajr/CSQo6jAYfs2P5cZI3kvOFjbYmIA0zdts9IBgBTW6K3RT6HZuTtO7lS
         TE5tcVTzpr79gpu6NULDFyl+2vDcjV7swyL/19Fe94qAjUE9kRcI2ZS/qxl9YYrWnNXT
         +2nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHDrvINSyabE+MYEcOy6fFvsvRQFwqHUdM2Sq8YMmVtMQ6+S1f+nTnhX0sWBTmLohWNWxnJBRRNr8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFkRWHLYCgDdoCXs1LUcb1sI3tXPJt9IehZ2j5VshvVbh/hXSr
	u7KJXNABCin0zPR4ixWLiFqAzFBgb4B1h2J5AJlGw92k/8pvNwxejmJbT2GVVY3q8OE=
X-Gm-Gg: ASbGncsPCWf5+Nemidz3bJn5YZ6Hs69XeKiMp25VXatsO6qtdRFG31NoJRjzlt7ebiT
	qfqcGHDT9iOlerhRskSL2WDpQw81vChK7Qnv6U8R4kvTyahLIfNfVTmVL6iKLYG3REsJyIcSZpJ
	UmSZ43BOm650rXwZcoddqT3zYBhXzdGYXVRAAQv1OaUNHFd0Apqb6CKp7eRj5ubXV4v+KQuU8Z0
	5LImKGd/5wz18ZDEoR5uJVa+N0GKct3b2wAQWAOWO7kVTxINYp2pKrDKLQf/9BY/Esl4aUgUAHU
	5aZYBBMDp0zru4duAKDdRO5rZ9hCvVDyK0sMQ8mC+w1gGQeNkAIGutwIKsYd2KaR4PGzMzG9GSw
	KMF+mBiwQQkzlGu4W7Lg7GhVXQromWvM=
X-Google-Smtp-Source: AGHT+IEP1hKdTSLFyfN0oVcI9oj4h90fVgoQ1FAVba1VNEavj2ZZMm/pymmutdkY8hgx8gRVclajEQ==
X-Received: by 2002:a17:907:7fab:b0:ad8:a935:b908 with SMTP id a640c23a62f3a-af9c64fba5amr264177766b.30.1754655063505;
        Fri, 08 Aug 2025 05:11:03 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3375sm1485634566b.41.2025.08.08.05.11.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 05:11:03 -0700 (PDT)
Message-ID: <277ca37d-e304-4d78-bfd9-b1fa222fd0f3@tuxon.dev>
Date: Fri, 8 Aug 2025 15:11:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/8] soc: renesas: rz-sysc: Add syscon/regmap support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 John Madieu <john.madieu.xa@bp.renesas.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
 <20250808061806.2729274-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUsFFd+orb17oQqoEidzYWMRjPoqMyzpgrdnicc=MRSYQ@mail.gmail.com>
 <cbdfa6fd-e65b-45d7-a21f-3bfdd46af332@tuxon.dev>
 <CAMuHMdXM=Mu+vJ6n3spj7Dd+8boLXEpcSn0M1KB8OwPijqq4aw@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXM=Mu+vJ6n3spj7Dd+8boLXEpcSn0M1KB8OwPijqq4aw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_051105_325871_C7265A09 
X-CRM114-Status: GOOD (  19.33  )
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

Hi, Geert,

On 08.08.2025 14:36, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, 8 Aug 2025 at 12:32, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 08.08.2025 12:29, Geert Uytterhoeven wrote:
>>> On Fri, 8 Aug 2025 at 08:18, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: John Madieu <john.madieu.xa@bp.renesas.com>
>>>>
>>>> The RZ/G3E system controller has various registers that control or report
>>>> some properties specific to individual IPs. The regmap is registered as a
>>>> syscon device to allow these IP drivers to access the registers through the
>>>> regmap API.
>>>>
>>>> As other RZ SoCs might have custom read/write callbacks or max-offsets,
>>>> register a custom regmap configuration.
>>>>
>>>> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
>>>> [claudiu.beznea:
>>>>  - do not check the match->data validity in rz_sysc_probe() as it is
>>>>    always valid
>>>>  - dinamically allocate regmap_cfg]
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> ---
>>>>
>>>> Changes in v4:
>>>> - adjusted the patch description by dropping "add" from
>>>>   "add register a custom regmap configuration"
>>>> - updated the list of changes from Claudiu Beznea
>>>> - dynamically allocate the regmap_config as proposed at [2]
>>>> - this patch is needed for proper function of USB (as proposed in this
>>>>   series) that being the reason it is introduced here, as well
>>>>
>>>> [2] https://lore.kernel.org/all/CAMuHMdVyf3Xtpw=LWHrnD2CVQX4xYm=FBHvY_dx9OesHDz5zNg@mail.gmail.com/
>>>
>>>> --- a/drivers/soc/renesas/rz-sysc.c
>>>> +++ b/drivers/soc/renesas/rz-sysc.c
>>> =
>>>> @@ -117,7 +125,26 @@ static int rz_sysc_probe(struct platform_device *pdev)
>>>>                 return PTR_ERR(sysc->base);
>>>>
>>>>         sysc->dev = dev;
>>>> -       return rz_sysc_soc_init(sysc, match);
>>>> +       ret = rz_sysc_soc_init(sysc, match);
>>>> +       if (ret)
>>>> +               return ret;
>>>> +
>>>> +       regmap_cfg = devm_kzalloc(dev, sizeof(*regmap_cfg), GFP_KERNEL);
>>>> +       if (!regmap_cfg)
>>>> +               return -ENOMEM;
>>>
>>> Is there any specific reason you decided to allocate regmap_cfg
>>> separately, instead of embedding it into struct rz_sysc?
>>
>> Sorry, I missed to mention.
>>
>> I chose to have it like this as the regmap_cfg is not used anywhere else
>> (through rz_sysc) except in probe.
> 
> OK.  Upon closer look, devm_regmap_init_mmio() does not save the
> regmap_cfg pointer for later use, so it can be allocated using kzalloc()
> instead, and freed immediately after calling devm_regmap_init_mmio().

You're right, I forgot this. I'll update it this way.

Thank you,
Claudiu

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
