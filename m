Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B694CCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 08:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4Fk4wgCE/NLnLsCAvPXKfoXSNHMlUT7n13CcPJ0i2g=; b=2CoPX6oliWbTSk
	7ioaMet8gWvhe3b+Ii1J8kNaKNEVe3FEOCccl4hgC0CiQqMysuMhvUPIwnG9+rDQ6YL6JX+4rCWFz
	cbh+5ZKDD8T2cqUr082l+Cxd1PtYHYKf5WV87mY2Vplxf0SYTZoyGoWS49Kfztvmv9BYcZa1viAMu
	RN93T16+WM6LpBRi1ub83qIP4hU2sHitMi083hvQ4g/VE6fqzDyqGapKYC7Wq9xnA8Zhd8sxjwqJd
	YnJE1iO7jWLn1xAENV27IFOByTaFGE0RCMVQFaoriSUzdqHskqVwcXhnZKgh2wd52ZxT0h9znCcaP
	sBCyemNXLfy1XA1fXPdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xEM-000000010NT-0XpW;
	Wed, 15 Oct 2025 08:51:34 +0000
Received: from mail-vk1-f176.google.com ([209.85.221.176])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xEJ-000000010LW-31Le
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 08:51:32 +0000
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-54bc08ef45dso3432739e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760518288; x=1761123088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cc23OylIA7nwIKH5grl86j81RiWu7A7C8vOJ884eZmU=;
        b=oO1pCXtMJ/fUztlvmYqrqLr6KPKNbWJsReICMER/MKmaefCIgN/zsAZB/omO8q1bTS
         LRW3+YGUlLkqiYzR3XOB9M7CUlw2toSOTkx23jf/oYwV69HXHHsy6ULCV5YrfD942vOa
         0IFfSZQXmohLliR3NzE8aSzNfrUAvujTNiiUUQp2Gq95EWUq+Ii3xpLj8TQkpQTzjrig
         SREft3uCVkT/vhO9e6pdfZHJnSXEihrL6KHl8ESdcXSt/yBqRp7k1SiK1VVmv32JDH2C
         lT7OG4NMGZddX/lfZl/SwYQdpYkI07z5m0KBE05B/fqkEl3YmbKkLwm3EzAqc3EguDCn
         Kg5A==
X-Forwarded-Encrypted: i=1; AJvYcCUUvANmYp306CD3U/UD7wpMNlnMlsm7ESwRFhofA40Hg1DeGpRWvBi5+eUAWrqbR+03GlshvrY+OG8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0xvV91RGYAQ4g0S7W+84keo4lfnJZiYPo4euteTWHH1VdKf6M
	c269a3giauCGIZpIv3UDkvt3We4UdNOdeUu1D/smtu7+RT7tjLGfvBI5QuzifDQd
X-Gm-Gg: ASbGnctuIAjPR0uwRDfAratiER6NsJCF2FJd6MVFCoPeEa5CC7pbPYZmP/jhUqLtXFD
	lpy84C/n1Gc6teKwEOnuG9pecSJFtCKpuNZpIzvUy/+9Sl8vZBASOwY0qec1x8euvaTgksazUxm
	eBPqsp9c8pHBczl8gSH3wh+cf2zhSIG8ce7K1iOYECb171wp691J7dlldljuuj8Q9nZ3Z/0qdxV
	3Fn3FJJ2tt94NZck894+kWzAHRILHauP7JzNMTYtIRzdJnHyeWdor4uMS8wHXmjdQawiijpkhCg
	re1NPMXDLd9AajS7KHIyCClGUnamE7DmHmcG12/ed6EGafg3DrZqO9xXQtsepOsr8FQcBZIAzJs
	Wky/CmFa/9MXp/FACMAtEiCCYn4pkeqCrnil/04qKGfhapIWEbWNlCPmdqyfQ+3AeFfFIPZiO3a
	9gCZuWXByBXutAbA==
X-Google-Smtp-Source: AGHT+IFnd1ft+yuS8v1/KIIjhMzwp2pgsVgfApScqy/Fq7YHg5Gxi6l2UxrcZYPe0R3CYzwWnG9GSw==
X-Received: by 2002:a05:6122:3296:b0:544:98a0:4869 with SMTP id 71dfb90a1353d-554b8a82a8bmr10253043e0c.3.1760518287912;
        Wed, 15 Oct 2025 01:51:27 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d80d9bf0sm5094729e0c.18.2025.10.15.01.51.26
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 01:51:27 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5b62ab6687dso5971215137.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:51:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGKrfclMvbbsXwRK+/cxEhyxk/GR05v7uvQQ9CtfvXFJDoQ9y1XPEYI960wDl//I/InGgXp+sfgrU=@lists.infradead.org
X-Received: by 2002:a05:6102:6219:10b0:5d5:f40d:28cc with SMTP id
 ada2fe7eead31-5d5f40d28d5mr7213275137.34.1760518286251; Wed, 15 Oct 2025
 01:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev> <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev> <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev> <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
In-Reply-To: <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Oct 2025 10:51:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVQ_Eabhz0=FRB28BqdidQDpjdBOGq6+9yR6pioNfA_Lg@mail.gmail.com>
X-Gm-Features: AS18NWCfZCQ0twtFVwNHBIGpA19Nn65er5LxlXMaub9DnCgxRsRqvVPljtERNfU
Message-ID: <CAMuHMdVQ_Eabhz0=FRB28BqdidQDpjdBOGq6+9yR6pioNfA_Lg@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Claudiu Beznea <claudiu.beznea@tuxon.dev>, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_015131_764311_0330F2D3 
X-CRM114-Status: GOOD (  25.42  )
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

Hi Philipp,

On Tue, 14 Oct 2025 at 18:42, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> On Di, 2025-10-14 at 11:36 +0300, Claudiu Beznea wrote:
> > On 10/13/25 17:57, Philipp Zabel wrote:
> > > Is the issue that you need the PWRRDY signal to be (de)asserted
> > > independently from the CPG power domain enable/disable?
> >
> > Yes. I need to de-assert it before clocks, MSTOP on probe/resume and assert
> > it back after clocks, MSTOP, on remove/suspend.
> >
> > > (Why?)
> >
> > Due to hardware constraints. This is how Renesas HW team recommended.
>
> I still haven't understood this part. Isn't CPG the power domain
> enabled "before clocks, MSTOP on probe resume" and disabled "after
> clocks, MSTOP, on remove/suspend"? So PWRRDY could be toggled from
> genpd notifications. If it needs to be (de)asserted independently,
> wouldn't that mean the genpd notifier approach can not be used?
> The notifiers are called from genpd_power_on/off(), after all.

Please let me chime in to clarify...

The CPG is not a power domain in the sense of a power area that can
be powered on or off.
The CPG is a clock domain in the Linux PM Domain abstraction, more
specifically an always-on power domain that contains devices that are
all power-managed similarly, through their module clock(s).
Hence the CPG PM Domain itself cannot be powered on or off (through
the generic_pm_domain.power_o{ff,n}() callbacks), but the individual
devices that are part of it can be started/stopped (through the
generic_pm_domain.dev_ops.{start,stop}() callbacks).

I hope this helps.

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
