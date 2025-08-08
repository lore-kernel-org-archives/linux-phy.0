Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55D2BC87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 12:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9c/uJK+IQ/oZX1Z3AAlg5TYNfVckqVZUxf2RZxEe7PE=; b=F0S7+BvhW9y+vD
	ExBNpQYj1pfYvewU6OKhTBmYZ7vGurzb05DqiZg5ciIpcbsy9Qr3S2Klchs8klgsJsS0NJOXKammZ
	/cbmuMZ3GrleQbHqdBd/rY9zAzE9IMMIhn03+MZCEMRO64+q5qwqZdRRtR+eKb494EGrEcHlzNr8N
	u5SrJvDd3YMzA48aqe2yNx9yyx6NHypVydnjzow1+XdmOw6HVrpQv9LIWVsm0iZ7tci9CIbY6Xrjb
	ldhehz5p3zlH4yec/FAwnNJF5y54TC1UXk2MFEEyvmwGD9k9oelOyE4ZQoM1q557g5BkQKX5Jrjvm
	rLqoy3d4353FuRh5U4nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukM1s-00000002mRW-01ED;
	Fri, 08 Aug 2025 12:17:00 +0000
Received: from mail-vk1-f178.google.com ([209.85.221.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukLPB-00000002h3K-0IiX
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 11:37:02 +0000
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5392bf8b590so1495142e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 04:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754653019; x=1755257819;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMh9VGi52BBQxipHAd+7tDp6WMYuobiaPFMDnuSBC00=;
        b=Om6O25mzAvtctDp7pXXJsS4O4fEIs06Hye6+/qNoGMDmqqTrE11Pi9s+/FFWZX1yjb
         Xm9ja0JKrSD+3/t6Mj1PvFHAzpgO2BRe5iuO7foONki/Cb+kcybuaOUcSxn13ppE1BGZ
         FlxRsTmTOxypL9/7v8HqDMiLwA21wvEttUbETn+CwEvmmQ8AMyEvT36ChyOMfgepV70v
         Wf5ip03kV6vQ5okLz5CfaE3gGXy9vzFyGtPcoIpINIsngO1yxgFhDvcI6WsP9NdnX6/J
         mwxvThZWgCeIap3eBVkPRTRGNL6ghf4G0r0YUbEhm3Gt4x5nHeCsYns9qylTTficpZSQ
         GSqA==
X-Forwarded-Encrypted: i=1; AJvYcCUDjzp45PtYSp3dcz8bdp7Vz1oU6nPe3pAXAg8ajBX6Z7y07CUjoE3IEUyVyl4aebf9Yc5KKeSeUag=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7RE6AyHE8rHFk1yKYilHEf84kC7mm/Jyrk99Z8Kv70JxRk5R5
	AsG8+nnpZ2vhG8Loe1amlv6bVlXhYd0Ku0ycuiG57rUQEW4dM/Q33Agyh4Zkmrdb
X-Gm-Gg: ASbGncsb+3IRgk2nGITZoioDF8VhI86trqJmgTs5pTogQLsI5VS9KXexSsKg+KW0QTo
	rFNv0eNjXhx2bKiRo4Q5ol+7saimUjdgOdkA00JtrUU7o7zQp+9xmY1FNhRIsolq6o5fnYpi9s+
	xFxbfSaxt71yBAEINCnsrsc1iFo+Ryw3fkrvFLbn4nDWYWlJ8R2/E3LD6FZmU5+TFmbdQaIYia9
	VA/UQ8ZembnLgxQ67XagE3YxWkIyMIi+W3fwRoHI+G1odZHpFvwYu602ginL4/jWK5OAE88JvSI
	rTpw9e8ZGZQqtLD9TfL+FVElMBUsHNihpuPdB4hJAKMyTPupHjKSQ9APNxv8W0SzuNraIMtjcoQ
	X5QF6XM32z/Xt2VUfPaTrN2dEzpaTvY5eOX/Grxbp3gFf3NXnoQGFPBcMclYW
X-Google-Smtp-Source: AGHT+IG9/d7ETzw8wwhB7tDGfHJCQrzmI+pmWAQbrFr3CJnvCvWnVovbziZR7tFN2VigcuWnK7Dcrg==
X-Received: by 2002:a05:6122:130f:b0:529:2644:8c with SMTP id 71dfb90a1353d-53a52eed298mr956738e0c.8.1754653019261;
        Fri, 08 Aug 2025 04:36:59 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-539b028ae4esm993548e0c.19.2025.08.08.04.36.59
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 04:36:59 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-506374fbecbso515167137.0
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 04:36:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW0ASUZROJ/1T9/rAdaOAWRTW4W1oIAq7daKWjRP35DWVfQyW90TLsLVOW5TJNPg70XEY/A4TqS+h4=@lists.infradead.org
X-Received: by 2002:a05:6102:160a:b0:4fc:1987:fc84 with SMTP id
 ada2fe7eead31-5060f4b66f2mr894612137.21.1754653018841; Fri, 08 Aug 2025
 04:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
 <20250808061806.2729274-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUsFFd+orb17oQqoEidzYWMRjPoqMyzpgrdnicc=MRSYQ@mail.gmail.com> <cbdfa6fd-e65b-45d7-a21f-3bfdd46af332@tuxon.dev>
In-Reply-To: <cbdfa6fd-e65b-45d7-a21f-3bfdd46af332@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 Aug 2025 13:36:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXM=Mu+vJ6n3spj7Dd+8boLXEpcSn0M1KB8OwPijqq4aw@mail.gmail.com>
X-Gm-Features: Ac12FXyw3l-ZkMLHBlhyWGduOyueyVdYtS9uJ44n_pd7DZOK2XQY3SINLE-SWGw
Message-ID: <CAMuHMdXM=Mu+vJ6n3spj7Dd+8boLXEpcSn0M1KB8OwPijqq4aw@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] soc: renesas: rz-sysc: Add syscon/regmap support
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	John Madieu <john.madieu.xa@bp.renesas.com>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_043701_115816_C6B3E166 
X-CRM114-Status: GOOD (  35.85  )
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

Hi Claudiu,

On Fri, 8 Aug 2025 at 12:32, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> On 08.08.2025 12:29, Geert Uytterhoeven wrote:
> > On Fri, 8 Aug 2025 at 08:18, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >> From: John Madieu <john.madieu.xa@bp.renesas.com>
> >>
> >> The RZ/G3E system controller has various registers that control or report
> >> some properties specific to individual IPs. The regmap is registered as a
> >> syscon device to allow these IP drivers to access the registers through the
> >> regmap API.
> >>
> >> As other RZ SoCs might have custom read/write callbacks or max-offsets,
> >> register a custom regmap configuration.
> >>
> >> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> >> [claudiu.beznea:
> >>  - do not check the match->data validity in rz_sysc_probe() as it is
> >>    always valid
> >>  - dinamically allocate regmap_cfg]
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >> ---
> >>
> >> Changes in v4:
> >> - adjusted the patch description by dropping "add" from
> >>   "add register a custom regmap configuration"
> >> - updated the list of changes from Claudiu Beznea
> >> - dynamically allocate the regmap_config as proposed at [2]
> >> - this patch is needed for proper function of USB (as proposed in this
> >>   series) that being the reason it is introduced here, as well
> >>
> >> [2] https://lore.kernel.org/all/CAMuHMdVyf3Xtpw=LWHrnD2CVQX4xYm=FBHvY_dx9OesHDz5zNg@mail.gmail.com/
> >
> >> --- a/drivers/soc/renesas/rz-sysc.c
> >> +++ b/drivers/soc/renesas/rz-sysc.c
> > =
> >> @@ -117,7 +125,26 @@ static int rz_sysc_probe(struct platform_device *pdev)
> >>                 return PTR_ERR(sysc->base);
> >>
> >>         sysc->dev = dev;
> >> -       return rz_sysc_soc_init(sysc, match);
> >> +       ret = rz_sysc_soc_init(sysc, match);
> >> +       if (ret)
> >> +               return ret;
> >> +
> >> +       regmap_cfg = devm_kzalloc(dev, sizeof(*regmap_cfg), GFP_KERNEL);
> >> +       if (!regmap_cfg)
> >> +               return -ENOMEM;
> >
> > Is there any specific reason you decided to allocate regmap_cfg
> > separately, instead of embedding it into struct rz_sysc?
>
> Sorry, I missed to mention.
>
> I chose to have it like this as the regmap_cfg is not used anywhere else
> (through rz_sysc) except in probe.

OK.  Upon closer look, devm_regmap_init_mmio() does not save the
regmap_cfg pointer for later use, so it can be allocated using kzalloc()
instead, and freed immediately after calling devm_regmap_init_mmio().

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
