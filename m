Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36990CA0EFC
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 10:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcskx+zrKLfGKPpD61NeQNl3hyCIxeP/3oOgtRk1WmU=; b=y+NaBdnEAd5+7X
	sup2Y6W3abyZzNhHgDPikwBIvsY4pX5mof2y4AbW+1UOe6VjuzLRA+bCOsDZzsWNmTOyMIILumpTd
	lQClHY9b5ii7C9Qs82j8ziKbiRQqsc3DfeHFZbzR/TkbCarQnY2wYqaRSzNDc4nq8WnRzNiBuPHRN
	UvVI8ck8Jcnumi4mcYRJGzcyfj3yT8xxWi0V+sDVbaJW4jc7G5l7gr2n+IqiwYU/8jCtK5Xi+8iQM
	N4eUbQyqX5N4WN32JEaiZhoAZK8Mqm0Zoi6x5i+50XI5GrMPuwbgpbSi13EQYuCRlGXaUxlIMXudf
	q5SWcmwKTNXr8bY0YKhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjyfl-00000005l3K-3prR;
	Fri, 30 Aug 2024 10:16:05 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjyes-00000005kmE-3t4y
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 10:15:13 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e115c8aa51fso1740542276.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 03:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725012909; x=1725617709; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UwkZJIL6lWhl6ByZiDGKwgiO886aZ7Ma/SrA3D4RrxQ=;
        b=UmS86U6vL3bURUaEv6LgEIFfDZYUIxesqYGL1/4p/44pllQDlhdYyjalfBeIYDrMWB
         3H1gbb8/jsRZpTuuDmZ2XacuiE+xNmHZZSNbTt8RzJJIbRNptFifzAAma3VGjM+8M2p3
         3JOtexgFqF3bnYL6mogki0l0LFTPeF1Tfx9TM5wrh5Yqbec5BCkRUhwlzfXimIcti+cl
         HARiJtoOMIhoXxdTNREO+c9/0ngKg61Mlph1SUl7TpM8Ts9Lt4RLautA0H4Tgv12PZk9
         Y0Uc9LlhqLmuUdzF9RDT3bJKRb70ULOkOX11zjEOPPNlbzrjWzcplwGC53CiPpPjkN0e
         aZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725012909; x=1725617709;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UwkZJIL6lWhl6ByZiDGKwgiO886aZ7Ma/SrA3D4RrxQ=;
        b=VRzhMYBJM4y3Ts6QRUcW4CrAZYnddFxppf6NUs9q0T7adxDd4BAg2jrGroHv7Eta67
         mGNrC74+rKnhiUUBHrIghbHcLf5tSF7M7+BMArEflMp1J/Irn7xH2HyGOqs075vMSYKF
         QufpIV/fHfpfQYae89hknosrGeh2kjosxOcf6qiOlQNtAKf7B1fk6LcM3rO6yi1cMXkB
         cmFLv3UgBg0Oz5/HIQ4fAPeMHJ9YHmQ35Z+aMIIh+7GA+oxPT6wT8+m59HcdmYISW6DR
         YK6yKoTttN4EkiLmFFp4kaT2GnCuWB2wLC335DxjotJeB5W/oj/LYs+RbxKMN3OEXXey
         PnVA==
X-Forwarded-Encrypted: i=1; AJvYcCVJXvbNG/MF3KV2TxG6w2nOTgB0+oRRoUgw2dkpLJfiXxcZFoB2arEUmb37dD5FLwOu+qpK+fsPQnc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS7oKqx5tP0THxZSqkqsjBNFv6+CIOboPVQczidsXVWF2vmgAa
	UUFXLleORwRgt+5/lZZS/7kiGrYuE8bxUZCWxDH8fOyPIjSW+/ExE0khe/lCCt3Ya2g4GGko2W/
	bjoKLHTzVKO+G/G6+cJTO3m+p6GXLXhWGZdRlDw==
X-Google-Smtp-Source: AGHT+IENC1Eou3o76ET+fArBcJHz5tLkQ1M6jag1cqYy++ImNouJ6bItdx2SVPKjxSeyzrzWnSwjb3NJLNY42U4Z7/o=
X-Received: by 2002:a05:6902:1384:b0:e0e:cb25:c413 with SMTP id
 3f1490d57ef6-e1a7a1d369emr1888445276.52.1725012909519; Fri, 30 Aug 2024
 03:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com> <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
In-Reply-To: <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 30 Aug 2024 12:14:33 +0200
Message-ID: <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_031511_013043_A2736179 
X-CRM114-Status: GOOD (  38.69  )
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

On Fri, 30 Aug 2024 at 10:22, claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>
> Hi, Ulf,
>
> On 29.08.2024 18:26, Ulf Hansson wrote:
> > On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Hi,
> >>
> >> Series adds initial USB support for the Renesas RZ/G3S SoC.
> >>
> >> Series is split as follows:
> >>
> >> - patch 01/16           - add clock reset and power domain support for USB
> >> - patch 02-04/16        - add reset control support for a USB signal
> >>                           that need to be controlled before/after
> >>                           the power to USB area is turned on/off.
> >>
> >>                           Philipp, Ulf, Geert, all,
> >>
> >>                           I detailed my approach for this in patch
> >>                           04/16, please have a look and let me know
> >>                           your input.
> >
> > I have looked briefly. Your suggested approach may work, but I have a
> > few thoughts, see below.
> >
> > If I understand correctly, it is the consumer driver for the device
> > that is attached to the USB power domain that becomes responsible for
> > asserting/de-asserting this new signal. Right?
>
> Right!
>
> >
> > In this regard, please note that the consumer driver doesn't really
> > know when the power domain really gets powered-on/off. Calling
> > pm_runtime_get|put*() is dealing with the reference counting. For
> > example, a call to pm_runtime_get*() just makes sure that the PM
> > domain gets-or-remains powered-on. Could this be a problem from the
> > reset-signal point of view?
>
> It should be safe. From the HW manual I understand the hardware block is
> something like the following:
>
>
>                   USB area
>          +-------------------------+
>          |                         |
>          | PHY --->USB controller  |
> SYSC --> |  ^                      |
>          |  |                      |
>          | PHY reset               |
>          +-------------------------+
>
> Where:
> - SYSC is the system controller that controls the new signal for which
>   I'm requesting opinions in this series
> - PHY reset: is the block controlling the PHYs
> - PHY: is the block controlling the USB PHYs
> - USB controller: is the USB controller
>
> Currently, I passed the SYSC signal handling to the PHY reset driver; w/o
> PHY reset the rest of the USB logic cannot work (neither PHY block nor USB
> controller).
>
> Currently, the PHY reset driver call pm_runtime_resume_and_get() in probe
> and pm_runtime_put() in remove. The struct reset_control_ops::{assert,
> deassert} only set specific bits in registers (no pm_runtime* calls).

Thanks for clarifying!

For my understanding, in what register range do these bits belong? Is
it the USB logic or in the PM domain logic, or something else.

>
> The PHY driver is taking its PHY reset in probe and release it in remove().
> With this approach the newly introduced SYSC signal will be
> de-asserted/asserted only in the PHY reset probe/remove (either if it is
> handled though PM domain or reset control signal).
>
> If the SYSC signal would be passed to all the blocks in the USB area (and
> it would be handled though PM domains) it should be no problem either,
> AFAICT, because of reference counting the pm_runtime_get|put*() is taking
> care of. As the PHY reset is the root node the in the devices node tree for
> USB the reference counting should work, too (I may miss something though,
> please correct me if I'm wrong).
>
> If the SYSC signal would be handled though a reset control driver (as
> proposed in this series) and we want to pass this reference to all the
> blocks in the USB area then we can request the reset signal as shared and,
> AFAIK, this is also reference counted. The devices node tree should help
> with the order, too, if I'm not wrong.

Reference counting a reset signal sounds a bit weird to me, but I
guess it can work. :-)

To sum up from my side;

As long as it's fine that we may end up asserting/de-asserting the
reset-signal, without actually knowing if the PM domain is getting
turn-on/off, then using a reset-control like what you propose seems
okay to me.

If not, there are two other options that can be considered I think.
*) Using the genpd on/off notifiers, to really allow the consumer
driver of the reset-control to know when the PM domain gets turned
on/off.
**) Move the entire reset handling into the PM domain provider, as it
obviously knows when the domain is getting turned on/off.

Thanks again for your explanations!

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
