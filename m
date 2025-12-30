Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E84AE95A73
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 10:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5s7Cmy5IJkwVDVUySpT6ZB1L2Jzhtrxu+/oTMaXR/gc=; b=0oldCHPLGnDIQc
	RmaoXeSVMXXQ1xrvo/en06LRa5VG4K3fFyJmt2VKr9vJgoHOBUojXHY5266mxJy2AzAhuulzhnyJE
	cEw7sI1jumuMderKX12dCobavKsuVIZ4xZV66qwpULI3etFCtii61sdh8UX8ustj5slSk2PLH7FPk
	IK29pn+9HHbBBxSqPcvUfcLXAhil/L/+nrO1uljjuxvn99+QZjJB2rl5js7fq5hEyDXq0IwsnMoHL
	iickq1N7wAVVLatKKZc5xEOGVqk/J0XeDgCO00H3U9UUqEA/ebjQP+z9LAWFERYY6JuLOyHqVZRnV
	3Rf7/W87SYQQ+WgVppig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaXN5-00000004jaj-1bJO;
	Tue, 30 Dec 2025 10:54:35 +0000
Received: from mail-vs1-f46.google.com ([209.85.217.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaXN1-00000004jaD-403g
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 10:54:34 +0000
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5e186858102so3505162137.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 02:54:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767092071; x=1767696871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzvD8u2a9iQw7SPbPh5M/gD9i8/QWB7pr8kaxpQDqVY=;
        b=eeATgdsg3uIA9a/3CZGOozm8FoPxpK8oyFDFuGC/6rbhahpgpWxJw8k0K5pUtLH8oQ
         ilVHBZjYTO2HqB8/e8+18NnWBhllijz5PJxPLC5D06VhIn3YerrP+n+5aUd33XHjqwNE
         JNHwr0JSp4VCRm3w9Pz7zB2ORdizo6kTke1yyqqqtgNrpQyNliWuvuzsWPFhaBMx+Rxs
         BPqDmo+Ntxjm49XImqqBkFxySX5r8GiU0ZDOuouxcwdxbWBJSkCmkGjaJYdBGvnVWvZr
         6h3hAzzaUbVXbxN4AaUrNFcmGsD1lx6REjzXxT06/YuEqLIigWaCvpCHV2OLqAtYqGAs
         F32A==
X-Forwarded-Encrypted: i=1; AJvYcCXVltBn4g01OkNPtwYcsHMT1jNQ0cLKnj5zmG5d2pOVN0ouBHQ3hYBuv0W+DxvVuok56pEltXABSEY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxd+aGToBFvBORFWdKyiiCS4SwaH0mBk9u0ns77VlOXZtuWlf4P
	f9Vv9EjcVk2uCk67DNrERSRGkK7N3snnmE1ClQ6egUIisEJk4rcTO2+sQKdbUAJZ
X-Gm-Gg: AY/fxX68hd/QlR8goQnnABcSPxKZIF9yKAAAhexVKMOzgIw+4Bo24gsvOjepdLtJ87x
	W2bzqmhtW2eRCpJxdGSOK406ke0ZdrDuTMNS6mpV7xnJ7X6vkJ4QFk8kh9uX6imG4PlBNBn0I8E
	Hn5Q5aENIRZoIsxyol8AECZG2wzL5gYBDbEqq63uxoZhlrNxh9nDRMAu2PRg+h1ZS+xQTHeF/Mp
	ocqu39Hrf8TOsd+NGgVG8FAmHQlfxi+8vOC3DXcPRJ/VxZ+nEf09+rebwksrr0gVSUGG8dCbERR
	qEApNdSPSr2jZpPJ2awoK1cESFmj1lyUB4KI5HXAvrmmau5RhQJtkxqSM+X7flgRSqelzS60Cao
	inXGurvlE+bLGnQZBWimWCOa2/R316Tbah5w8RASmont14OO9Bac61MbPu2mJy6VXFimtp7+Mcf
	NnMS+vFK1i+DnaIotzO0fDjFmKBOceVRQWOJZ8Ec9ZDxyvKH7m
X-Google-Smtp-Source: AGHT+IGxoHnJ3Kxs6zS+7QOsgUgML0QKhZwlRifSAZqNz0aUSCbwXWfwUHj/ditG1aPw4fqyeZTggA==
X-Received: by 2002:a05:6102:6447:b0:5db:f9df:34de with SMTP id ada2fe7eead31-5eb1a7cf4f8mr8585712137.23.1767092070619;
        Tue, 30 Dec 2025 02:54:30 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aa8c858sm10703594137.5.2025.12.30.02.54.29
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 02:54:29 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dfd0101905so3051951137.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 02:54:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX7EZL/7zdTcblr2Z8+NeLKDw2pVwN381mXh9ofP9N9QigM9I8UqbxHCBKTM8IKlOJbvxL0gX/ihcc=@lists.infradead.org
X-Received: by 2002:a05:6102:4a84:b0:5df:c228:288d with SMTP id
 ada2fe7eead31-5eb1a625997mr9697546137.8.1767092068698; Tue, 30 Dec 2025
 02:54:28 -0800 (PST)
MIME-Version: 1.0
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki> <2556645.jE0xQCEvom@rafael.j.wysocki>
 <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com>
In-Reply-To: <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Dec 2025 11:54:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
X-Gm-Features: AQt7F2oPjvLlnFjiHoVfcNoEi_edNjmSUdAxY2W0zN_askdkWJqScjAbdJ5aP4k
Message-ID: <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
Subject: Re: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Brian Norris <briannorris@chromium.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-phy@lists.infradead.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_025432_002284_DCFCA0DE 
X-CRM114-Status: GOOD (  35.94  )
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

On Tue, 30 Dec 2025 at 11:34, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, 22 Dec 2025 at 21:40, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > The PHY core defines phy_pm_runtime_put() to return an int, but that
> > return value is never used.  It also passes the return value of
> > pm_runtime_put() to the caller which is not very useful.
> >
> > Returning an error code from pm_runtime_put() merely means that it has
> > not queued up a work item to check whether or not the device can be
> > suspended and there are many perfectly valid situations in which that
> > can happen, like after writing "on" to the devices' runtime PM "control"
> > attribute in sysfs for one example.
> >
> > Modify phy_pm_runtime_put() to discard the pm_runtime_put() return
> > value and change its return type to void.  Also drop the redundant
> > pm_runtime_enabled() call from there.
> >
> > No intentional functional impact.
> >
> > This will facilitate a planned change of the pm_runtime_put() return
> > type to void in the future.
> >
> > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>
> Thanks for your patch, which is now commit caad07ae07e3fb17 ("phy:
> core: Discard pm_runtime_put() return values") in phy/next.
>
> This is causing several messages like
>
>     phy phy-e6590100.usb-phy-controller.2: Runtime PM usage count underflow!
>
> during boot, and s2ram on Koelsch (R-Car M2-W).

On R-Car Gen3, there are no such messages, as e.g.
drivers/phy/renesas/phy-rcar-gen3-usb2.c does support Runtime PM.
R-Car Gen2 uses drivers/phy/renesas/phy-rcar-gen2.c, which does not
use Runtime PM yet, but still relies on explicit clock management.

> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -190,15 +190,12 @@ int phy_pm_runtime_get_sync(struct phy *
> >  }
> >  EXPORT_SYMBOL_GPL(phy_pm_runtime_get_sync);
> >
> > -int phy_pm_runtime_put(struct phy *phy)
> > +void phy_pm_runtime_put(struct phy *phy)
> >  {
> >         if (!phy)
> > -               return 0;
> > +               return;
> >
> > -       if (!pm_runtime_enabled(&phy->dev))
> > -               return -ENOTSUPP;
>
> Adding some instrumentation shows that this branch was taken before,
> thus skipping the call to pm_runtime_put().
>
> Can I just put the check back, or is there an underlying problem that
> should be fixed instead?

I assume the PHY core should support both drivers that do and do not
support Runtime PM.

> Thanks!
>
> > -
> > -       return pm_runtime_put(&phy->dev);
> > +       pm_runtime_put(&phy->dev);
> >  }
> >  EXPORT_SYMBOL_GPL(phy_pm_runtime_put);

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
