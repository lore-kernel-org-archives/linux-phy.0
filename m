Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A16EE020A
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 15:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geIK4DETJSfaged7qFK008YdHdnb5De8PBIjSXk3tUA=; b=MxRBOMaB3Cg4mH
	D2KS8tZQ7C5Sh2H82eBbiN3rfojAC2YM1F6p3rXAdvbODhU8yRo42oRNFsxZ3qfL72Di+6RtCkqAn
	3feE1+O08YFYmdeMXCeOf4EwbdDyQ9W0r3Bh+obrDmD/KIc3MbGCoeOGRM0vvndJS3/VV1fR4cIQz
	BkI5VpSnXVmNCWWouZZ0kaVIhcWb9vFjFRzjOFnre40xeWuQ+r2uf7Qbwizr+mNWW2YVk6KgqlQ6h
	GWEYGSKt5hi+ZhgU34z3vqMw0RNTwAg39rLqZEK4sNWu0CBh0HrDuO5P3HF0djCfLOUkd+QZ+sDcy
	No1GDub/YRIXWqAbYZOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabHr-00000004yX9-2Gij;
	Tue, 30 Dec 2025 15:05:27 +0000
Received: from mail-vk1-f169.google.com ([209.85.221.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabHo-00000004yUb-0oyd
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 15:05:25 +0000
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5599688d574so2709460e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 07:05:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767107123; x=1767711923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n3bghUu0vru4RrxnbMTcftVq/cqOVIrTFnZfWBS4mDw=;
        b=wydXZaLETG7J2jStyJmKnj6/aKzuI2mVPdr9hwvmka4jQDh2pPKH7mD4aOXmTQTG8g
         D4zEYTGptIgsMcyWppnHPAGAHxzFeJuA8rFpKupXquQb+7PAUC+odznOzsX4UzA1qtpV
         AA2kYLaW+0ByobXcTnB2iswor+dmbFGuW4zspSzz5VVOYBXhMo4qMlvH980LgP87kMNL
         +PK7kbMpLUTt3Q9kRqFRIW6bNdfsTcChhUNddcEl9ltE5js93lSmsfHOsWudCT2U39gr
         /mUN5urUhNeqcG5ZVmIKYipV0O/BQ0EtzXXJadXnBIQqUz2ATIoNFw5d6QwINB0sblGr
         Ms3w==
X-Forwarded-Encrypted: i=1; AJvYcCXxncqOnkWazgUz1Rul8rKUm3lPw8kc8r4/Q06AxPLzdwI7AyZjZJcBIN1GypVc0aA9DRt7uUgISnw=@lists.infradead.org
X-Gm-Message-State: AOJu0YystkS1nwz++ETG+xBuMUWEkSp46tZmLDNkoaImzxm1qux0DLdc
	2ECFykWkx1fOVEuTCSUQYhxlTBuyD+WYc0mrbIWPDdkp7XzAowyZGJl4ZX0of0Ji
X-Gm-Gg: AY/fxX7cYChc3s9qLzt5oLiON681MhKZbPpshNkIQL/tX3mnKoNzC//39d5j/hAh7N0
	URKYHWTf82SfE0MGltKfX1S/lSMFT1zuS4XYBRzA248hGgyMYdaQ0++nE/mvjkqHBXBLg0LxVkJ
	USgVurhaeei+PpZXdrc8ItOuYMtTB/XAUgQdGmStNZjJc7Sba5ejONZcW9ahdelFOfV2k6frm68
	cCdXL5+u26233VIUpRKN5ALR+E0TONFjmPcTooT4B0nK713GFYSlosawjf6bXWv9nhodavE7tCL
	y0vCSoJrCxarvqlXPuJnXx2Js7lcGyMzyNwcjloA220TsPWpgHXKnFC/DAyrH2nca5ii8OQ8j6r
	QtK7YJ6wPm0sZcCBwM6HkU+gYv8ee+FDhAIJMW8kopEH40NMNfh71sRKsMwU9/xJx2ZamHI1r1y
	5qtm6aKa6MLa94msTR65vvA7ruZU+wTukIXGHs4n18h0hmfljf+6wP
X-Google-Smtp-Source: AGHT+IFP1iwqI+FLrYIPzMFZ3QwC4FYF1HX+vUzgpRU/kGf2fg2dgn/yiNUF9GvL75yTlUDP6NXZvg==
X-Received: by 2002:a05:6122:4019:b0:557:c467:7994 with SMTP id 71dfb90a1353d-5615bce6afdmr7850387e0c.2.1767107122591;
        Tue, 30 Dec 2025 07:05:22 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d04b70fsm10419867e0c.4.2025.12.30.07.05.22
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 07:05:22 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b26461e78so2609943e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 07:05:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX6j308UajpHS97Z5PtgEZGS1o/JEvMx2cGuAS2aW8csLYARypINF3pO0KRNFE8/DLo1oAu09bOTqI=@lists.infradead.org
X-Received: by 2002:a05:6122:1354:b0:55b:305b:4e3b with SMTP id
 71dfb90a1353d-5615beb8214mr9695143e0c.17.1767107122056; Tue, 30 Dec 2025
 07:05:22 -0800 (PST)
MIME-Version: 1.0
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki> <2556645.jE0xQCEvom@rafael.j.wysocki>
 <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com> <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
In-Reply-To: <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Dec 2025 16:05:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVeHY7+9Jz60OX521iaEorGOcrxuGC8iuzDRUA-tkEvLQ@mail.gmail.com>
X-Gm-Features: AQt7F2rwnAcC5lQxf8KDSlHqxdZgmhT_kPKehxVIuLLpkwUasjT0-vp_jZiOQQo
Message-ID: <CAMuHMdVeHY7+9Jz60OX521iaEorGOcrxuGC8iuzDRUA-tkEvLQ@mail.gmail.com>
Subject: Re: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Brian Norris <briannorris@chromium.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-phy@lists.infradead.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_070524_245374_5D88A96D 
X-CRM114-Status: GOOD (  38.51  )
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

On Tue, 30 Dec 2025 at 11:54, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 30 Dec 2025 at 11:34, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, 22 Dec 2025 at 21:40, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > >
> > > The PHY core defines phy_pm_runtime_put() to return an int, but that
> > > return value is never used.  It also passes the return value of
> > > pm_runtime_put() to the caller which is not very useful.
> > >
> > > Returning an error code from pm_runtime_put() merely means that it has
> > > not queued up a work item to check whether or not the device can be
> > > suspended and there are many perfectly valid situations in which that
> > > can happen, like after writing "on" to the devices' runtime PM "control"
> > > attribute in sysfs for one example.
> > >
> > > Modify phy_pm_runtime_put() to discard the pm_runtime_put() return
> > > value and change its return type to void.  Also drop the redundant
> > > pm_runtime_enabled() call from there.
> > >
> > > No intentional functional impact.
> > >
> > > This will facilitate a planned change of the pm_runtime_put() return
> > > type to void in the future.
> > >
> > > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > Thanks for your patch, which is now commit caad07ae07e3fb17 ("phy:
> > core: Discard pm_runtime_put() return values") in phy/next.
> >
> > This is causing several messages like
> >
> >     phy phy-e6590100.usb-phy-controller.2: Runtime PM usage count underflow!
> >
> > during boot, and s2ram on Koelsch (R-Car M2-W).
>
> On R-Car Gen3, there are no such messages, as e.g.
> drivers/phy/renesas/phy-rcar-gen3-usb2.c does support Runtime PM.
> R-Car Gen2 uses drivers/phy/renesas/phy-rcar-gen2.c, which does not
> use Runtime PM yet, but still relies on explicit clock management.
>
> > > --- a/drivers/phy/phy-core.c
> > > +++ b/drivers/phy/phy-core.c
> > > @@ -190,15 +190,12 @@ int phy_pm_runtime_get_sync(struct phy *
> > >  }
> > >  EXPORT_SYMBOL_GPL(phy_pm_runtime_get_sync);
> > >
> > > -int phy_pm_runtime_put(struct phy *phy)
> > > +void phy_pm_runtime_put(struct phy *phy)
> > >  {
> > >         if (!phy)
> > > -               return 0;
> > > +               return;
> > >
> > > -       if (!pm_runtime_enabled(&phy->dev))
> > > -               return -ENOTSUPP;
> >
> > Adding some instrumentation shows that this branch was taken before,
> > thus skipping the call to pm_runtime_put().
> >
> > Can I just put the check back, or is there an underlying problem that
> > should be fixed instead?
>
> I assume the PHY core should support both drivers that do and do not
> support Runtime PM.

I have sent a patch:
https://lore.kernel.org/3ca9f8166d21685bfbf97535da30172f74822130.1767107014.git.geert+renesas@glider.be

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
