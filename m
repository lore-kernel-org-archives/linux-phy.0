Return-Path: <SRS0=wYXb=LB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 268D1C47095
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jun 2021 14:26:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE65A6102A
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jun 2021 14:26:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE65A6102A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMW08JAcUdVtRm0vtqhh35/UR3dmmfrwY98eeT0oaqc=; b=cBle998u7LuplJ
	WDmnIsDYGFPHNwbhD23k2PICkggB8iRz1ItT3mmflppEuv7Rug6yF+61bXoheCszlXk5ub8PbP7GJ
	zDOlGgpRIwJNbI9MTaoxIVIFZg8SyUcX/Ir4oZE5Knn47A8BvHtLno1WO4qlQ5Yu6bbaIMomrfzBj
	9W2KYxBSvHVU6P6i099elrP2/rkY6PJNXN/h/dnrZdOSiPboFHtEiWE7NnqX08KsdMl9IEXhn09mP
	Bd1+B6JY2lQKEyqrO/WV4+OUNYU43fqiq2utId/x1doH8mevpuqP5UlSp1tq0TilkdisTHyKbd8c0
	gqolLWjvELT3AUt/9Tig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqGD5-0043Wh-BI; Mon, 07 Jun 2021 14:26:35 +0000
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqGCo-0043TS-Bz; Mon, 07 Jun 2021 14:26:22 +0000
Received: by mail-lf1-f44.google.com with SMTP id v22so25247067lfa.3;
 Mon, 07 Jun 2021 07:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=mJLzHt2uyypGgw28MtCkK4vZD5HTfCu45L8FZnJ+cNQ=;
 b=hQRSb46EiNt0f+xIIu9ZAuy73eW27uSXZoZOMe1ySmELtbKqRUCFdfexXh+xSBr7y8
 Wrxzr/OYMm3rC2R+HHgTLr422rG3MKDs+LBO0TN/c5UjZbjBdTlXA21AqugZ94HXTT9I
 14cEe95Fphlqy28gPVrfa3HklyWq2ZMLHyMvU5EhAaiBm3AehvrYuhy7qeSl8ozQ00ui
 u3+eBvWpb65PTbiOyq5hL5gX106IJqmZXlLGJMEVJxFAl2r73qDoGFrXk3SF/eA/gFKK
 j8S5MZr6JFdEt3dMZkkuKDv9dQjq0gDHrE2WRvoTHiBuyEGNqr9IyShxpXhTAnBFNoby
 Vd0w==
X-Gm-Message-State: AOAM5312gZ7p0CWyZHL+jDF/nNZG5IcXefumJf/zjbXOTSrhPKw9wFvX
 pGlypLOi4oq4zOzwb5SroJAsAuMsIorJfw==
X-Google-Smtp-Source: ABdhPJwf8oSH9C+2c+1yjskWyXENpdaQtxHD/ptYD1fS4/DOOEWj9slKcUUEm+ItopD6Psb2aeqK/Q==
X-Received: by 2002:a05:6512:3448:: with SMTP id
 j8mr11996663lfr.45.1623075974688; 
 Mon, 07 Jun 2021 07:26:14 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id v20sm1511815lfa.49.2021.06.07.07.26.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 07:26:14 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id r198so23252360lff.11;
 Mon, 07 Jun 2021 07:26:14 -0700 (PDT)
X-Received: by 2002:a05:6512:20f:: with SMTP id
 a15mr12194697lfo.618.1623075973924; 
 Mon, 07 Jun 2021 07:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210519104152.21119-1-andre.przywara@arm.com>
 <20210519104152.21119-13-andre.przywara@arm.com>
 <20210524115946.jwsasjbr3biyixhz@gilmour>
 <20210525122901.778bfccd@slackpad.fritz.box>
 <20210607132255.7fa75a7k7ud2g7ux@gilmour>
 <20210607151742.2f05ff95@slackpad.fritz.box>
In-Reply-To: <20210607151742.2f05ff95@slackpad.fritz.box>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 7 Jun 2021 22:26:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mFAWzM_mqT8GiP5NmPNXjEsKq8C6cn8EHSjK82etjyg@mail.gmail.com>
Message-ID: <CAGb2v66mFAWzM_mqT8GiP5NmPNXjEsKq8C6cn8EHSjK82etjyg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v6 12/17] phy: sun4i-usb: Introduce
 port2 SIDDQ quirk
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc: Maxime Ripard <maxime@cerno.tech>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, Ondrej Jirman <megous@megous.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>, linux-sunxi@lists.linux.dev, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 linux-usb <linux-usb@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_072618_439052_91EF7D36 
X-CRM114-Status: GOOD (  47.66  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Jun 7, 2021 at 10:17 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Mon, 7 Jun 2021 15:22:55 +0200
> Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Maxime,
>
> > On Tue, May 25, 2021 at 12:29:01PM +0100, Andre Przywara wrote:
> > > On Mon, 24 May 2021 13:59:46 +0200
> > > Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi Maxime,
> > >
> > > > On Wed, May 19, 2021 at 11:41:47AM +0100, Andre Przywara wrote:
> > > > > At least the Allwinner H616 SoC requires a weird quirk to make most
> > > > > USB PHYs work: Only port2 works out of the box, but all other ports
> > > > > need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> > > > > RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> > > > > the PMU PHY control register needs to be cleared. For this register to
> > > > > be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> > > > >
> > > > > Instead of disguising this as some generic feature, do exactly that
> > > > > in our PHY init:
> > > > > If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> > > > > this one special clock, and clear the SIDDQ bit. We can pull in the
> > > > > other required clocks via the DT.
> > > > >
> > > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > >
> > > > What is this SIDDQ bit doing exactly?
> > >
> > > I probably know as much as you do, but as Jernej pointed out, in some
> > > Rockchip code it's indeed documented as some analogue PHY supply switch:
> > > ($ git grep -i siddq drivers/phy/rockchip)
> > >
> > > In fact we had this pin/bit for ages, it was just hidden as BIT(1) in
> > > our infamous PMU_UNK1 register. Patch 10/17 drags that into the light.
> >
> > Ok
> >
> > > > I guess we could also expose this using a power-domain if it's relevant?
> > >
> > > Mmmh, interesting idea. So are you thinking about registering a genpd
> > > provider in sun4i_usb_phy_probe(), then having a power-domains property
> > > in the ehci/ohci nodes, pointing to the PHY node? And if yes, should
> > > the provider be a subnode of the USB PHY node, with a separate
> > > compatible? That sounds a bit more involved, but would have the
> > > advantage of allowing us to specify the resets and clocks from PHY2
> > > there, and would look a bit cleaner than hacking them into the
> > > other EHCI/OHCI nodes.
> >
> > I'm not sure we need a separate device node, we could just register the
> > phy driver as a genpd provider, and then with an arg (so with
> > of_genpd_add_provider_onecell?) the index of the USB controller we want
> > to power up.
>
> Yeah, I figured that myself meanwhile ;-) I now have a fairly nice
> implementation, which does away with the extra clocks and resets from
> the EHCI/OHCI nodes, and just adds one extra clock to the PHY node. The
> rest is power domains properties.

I'm wondering, since SIDDQ refers to the analog power for USB, it shouldn't
really affect the HCIs, only the PHYs. Is there any way to model it like
this and test it?

ChenYu

> > > I would not touch the existing SoCs (even though it seems to apply to
> > > them as well, just not in the exact same way), but I can give it a
> > > try for the H616. It seems like the other SIDDQ bits (in the other
> > > PHYs) are still needed for operation, but the PD provide could actually
> > > take care of this as well.
> > >
> > > Does that make sense or is this a bit over the top for just clearing an
> > > extra bit?
> >
> > Using what I described above should be fairly simple, so if we can fit
> > in an available and relevant abstraction, yeah, I guess :)
>
> Thanks!
> I will post what I have, just need to find some solution for the RTC
> clock bits.
>
> Cheers,
> Andre
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20210607151742.2f05ff95%40slackpad.fritz.box.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
