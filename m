Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09587C87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XW5E5e4Oul/TPWo7pEoJttam+shwwFr1ih7X8NsYR0=; b=TwTPkh2zJzZb/6
	jkylKg/+dyoA6qCA5Y8c6k5TdfjzoL03cWKTQxyNKw1/DUL9PDoYY8V/rPdya3OubKhSO3wLWU8Ki
	72sZ0eVTsi15T6n6cLDUhEuo08RFNxZhRkYgpWd6JZyXZf/b42mVWoBO5IuK2uvlrz17Pg6K2EaM5
	FUpgoWs8M/KJbhivGPVdg7zhdsYamqq/vl4qcVyqPZUvoZcQbJDLgRV3upp2dpyFt+gMewyKYiX9A
	cxHZeNk0RBLNYiBb06GT7qWHSeyS0iu78PJF0pxy6cy/VDaA9HeTimWsx1Bu4grlliwKIiQt/FEsg
	FRW/vzFBacBp1nOO/JqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukKce-00000002b1s-2Yv8;
	Fri, 08 Aug 2025 10:46:52 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukKOM-00000002ZQx-3uXt
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 10:32:08 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-617ed9293d7so625550a12.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 03:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754649125; x=1755253925; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c6TSWrBncc/Rhuijv2C5MP7HYYUBAQpR0KYcqpwTlxE=;
        b=SDBFIMjfbPxuZqpoOnxbH3e/tbJ/oOfKWsMrj4QPNOU6g7RrMLz5YfnrnqdwybrhFr
         FXP8VhKRYdfShqkkPqvk2USY4ijPOsb2ZkV5CuhjefKT4UnvrPLu0RMn3ISfa5NQyYVi
         AggCo3ZhN0KyGBqRObcDQXO+v7VU/vOcPcWzTngrrCtEkhPHHLlzl4Y46hqqc6c0S7uv
         xdU9VUsQH1syisBh60ZieyqVtbDZxuS7iGpwyWjjLLgwtvEsEPpNSlopl0tQdsgJpVH9
         yyqEw9OuvbzVQRbHNt9t+NEJ3sjnSyLb54yKVTrF3rKiN1tqG2LU/gLwKq01FDcGCuRh
         Cbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754649125; x=1755253925;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c6TSWrBncc/Rhuijv2C5MP7HYYUBAQpR0KYcqpwTlxE=;
        b=pA6WayIXMc+K6QQ5UIRoMzK3juu8ttXTTKnB8sXXHo9ZFsJqw0CZt9eLxaA/8phAJK
         QSpNlze9KPhKFlnKIld9n/TmN6Tl0dUTessON3KFVdzrqr15Wnb1a/1C7ziS+PFKE4yS
         OdPdzSOK+R6a2Zjd35FqFnYFTs6PS9Kat0hrrMwYWqcCPXUmkjrnvU3QDRn8kRjbl+Le
         6L7PWh9F/57TiHbVlXed8wfRtNPE8pljcUJkiI7nZVdFwB9BAex+iqGaxTBV42B9yNhn
         25DxKEQVR7hAJLbQrlP4+4LurDoo4hf+/v3Z8HHf4Rzp4d5J63ZeYP9UrkWigj5TGR1X
         ZCqg==
X-Forwarded-Encrypted: i=1; AJvYcCV3ZcB9LzDfGOSqLt07QuyIq1G+B9nYGpETKVvL8xspobeYZzukNXSULHzJ111EJuMCgDiUA4rjnT4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLa3nDit9ZvdtloGjMDlc3Ed5XrRrXCURehUhv947OiQKSStQg
	X3VuplD/0rmMrLRHqLzS8UH6jZ/ZG7Y4axEeO/Kuf4Mv/SWMlOmqzJV6qXT7OcAyQlg=
X-Gm-Gg: ASbGnctJvML0ymNZV8Ja5vvXGWADSdAiydw4supGgYeoG64KJQPySOij+J4F7dhJfzf
	SqGOkxRYzE6qdbfiGZnayUQhn8GWNh+CJtuFwU/R7n190F1LSvaeTYAkBqXiF5RGDh1MI+WztAv
	TPF11k2GYeazAGfOFz7NUYruRbR9DZMj80YpAAaEy0t99KmbQXqIL+JJy04rEM4YPix5Uxm9FxU
	g4RNt4hwIhQOpPRz//hvjKzPDPpo7AWrjg8ubi8FpACR7ZoxRN+Kdz5L3JUWu+lNRMb5sINJjwC
	7CM/2CTdPwES9hr9r4+ws/iuqleaNqfp64Tz4lWNObqKnnhitz9Tune7nJlwOKNRJovczJYiyD+
	FWuhsstGKLxg+t7W88fxCnh+w8FUNdEk=
X-Google-Smtp-Source: AGHT+IFiaq/Bs2HBuHCkLqYo5m9SoJu+9pxruSdi2P+MSc/rxt4OTN3JPa39G9gTH7FXPIDev3nAkA==
X-Received: by 2002:a05:6402:5216:b0:612:a86b:ac79 with SMTP id 4fb4d7f45d1cf-617e2b77876mr1905662a12.2.1754649125126;
        Fri, 08 Aug 2025 03:32:05 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8eff596sm13341214a12.5.2025.08.08.03.32.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 03:32:04 -0700 (PDT)
Message-ID: <cbdfa6fd-e65b-45d7-a21f-3bfdd46af332@tuxon.dev>
Date: Fri, 8 Aug 2025 13:32:03 +0300
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdUsFFd+orb17oQqoEidzYWMRjPoqMyzpgrdnicc=MRSYQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_033207_150935_F8A30163 
X-CRM114-Status: GOOD (  22.22  )
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

On 08.08.2025 12:29, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, 8 Aug 2025 at 08:18, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: John Madieu <john.madieu.xa@bp.renesas.com>
>>
>> The RZ/G3E system controller has various registers that control or report
>> some properties specific to individual IPs. The regmap is registered as a
>> syscon device to allow these IP drivers to access the registers through the
>> regmap API.
>>
>> As other RZ SoCs might have custom read/write callbacks or max-offsets,
>> register a custom regmap configuration.
>>
>> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
>> [claudiu.beznea:
>>  - do not check the match->data validity in rz_sysc_probe() as it is
>>    always valid
>>  - dinamically allocate regmap_cfg]
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v4:
>> - adjusted the patch description by dropping "add" from
>>   "add register a custom regmap configuration"
>> - updated the list of changes from Claudiu Beznea
>> - dynamically allocate the regmap_config as proposed at [2]
>> - this patch is needed for proper function of USB (as proposed in this
>>   series) that being the reason it is introduced here, as well
>>
>> [2] https://lore.kernel.org/all/CAMuHMdVyf3Xtpw=LWHrnD2CVQX4xYm=FBHvY_dx9OesHDz5zNg@mail.gmail.com/
> 
> Thanks for the update!
> 
>> --- a/drivers/soc/renesas/rz-sysc.c
>> +++ b/drivers/soc/renesas/rz-sysc.c
> =
>> @@ -117,7 +125,26 @@ static int rz_sysc_probe(struct platform_device *pdev)
>>                 return PTR_ERR(sysc->base);
>>
>>         sysc->dev = dev;
>> -       return rz_sysc_soc_init(sysc, match);
>> +       ret = rz_sysc_soc_init(sysc, match);
>> +       if (ret)
>> +               return ret;
>> +
>> +       regmap_cfg = devm_kzalloc(dev, sizeof(*regmap_cfg), GFP_KERNEL);
>> +       if (!regmap_cfg)
>> +               return -ENOMEM;
> 
> Is there any specific reason you decided to allocate regmap_cfg
> separately, instead of embedding it into struct rz_sysc?

Sorry, I missed to mention.

I chose to have it like this as the regmap_cfg is not used anywhere else
(through rz_sysc) except in probe.

Thank you for your review,
Claudiu

> 
> The rest LGTM.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
