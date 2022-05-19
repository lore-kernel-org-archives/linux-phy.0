Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFDFC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 13:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2mqB6e+sep0KEnc2U8KGSo3PhX9clBXbHbCb8ZHf0E=; b=F0mvCRT0gviix2
	/PBs/1+ABn0gMapcLL+6CF+Cf0x3eAEs/hg68leSK5tBmIad1cNQseci9MbYT77i22EvRJW/H2ijh
	d0bS212v6GAiCdqvPn7iXdqLMTWytykYLkQqzTPZ88hkTBn8fjJMhk+dzd+m3/mwi8olguJxaRXiy
	FMl3GRWp/jhDjmvrBeBeNuVBif+Y/PNty2SZP/KBi5/YMcy+Tx91C7FMdAfabjEeGPFdbJ4eBF2/7
	FWZsFdrmppQ5cPXwrlRwbTPYlf1mubJ+wR5+1sj8dFWKBG1f4FzLR/cZwddaRlbKbn2ijw0LYa9yh
	2jvD/RWkEBwBBCt1mbiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrgPs-0074xl-4c; Thu, 19 May 2022 13:42:12 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrgPp-0074x3-C2
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 13:42:11 +0000
Received: by mail-qt1-f171.google.com with SMTP id u3so4794240qta.8
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 06:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=El+m1CxX/rNHNaXQ8cQdCXt5KnbDuSU+6SgAu6jPXuA=;
 b=DGBy0B7NxNo3HdR98ojSjLHbv7iw64wPhlngojSLANbUClid0vk4bVcaMGLf17NOfJ
 Iob25UC5biO2vdjp1BzMPSXVPkzllvUNeYnwJVPPBj0Sp6VVu/uir5Xa+yPYrYtIsPLB
 hFtLnvvD5JGEKOThEets8tX4XJSRo7qodV8DP8Pf58/QkykXvE79ZncjrsBNNjJHEY4K
 dIre56C7X8UzA0Rl6K9dfCUBTSYzs6hcXK5fV67dM0/odRAZ0dchu+TSwjUag3k9pAo9
 zAQdHHrbY61tBpCQodLVOMLsDMXJNceLDMoVbyAoA1vRHEKK29eJBhEjHX1FKWVAQAeS
 2ODA==
X-Gm-Message-State: AOAM531rKHZQxZ8xl+HdtEwkXVdx/b53eBoctyJgJ4zC4+eet3+Ni84G
 pDOl6dNLySP4vk+F/boiKA7VLLccdOv8bQ==
X-Google-Smtp-Source: ABdhPJxC2dlpHHDSbSFheRrQeJYmr+Dv/L8fCfjh+WU6yTat53t+s35ekkcjUbexJgpeKvfQ86ClRA==
X-Received: by 2002:ac8:5852:0:b0:2f3:cdbd:d5a0 with SMTP id
 h18-20020ac85852000000b002f3cdbdd5a0mr3905758qth.207.1652967726134; 
 Thu, 19 May 2022 06:42:06 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com.
 [209.85.128.182]) by smtp.gmail.com with ESMTPSA id
 n142-20020a37a494000000b0069fc13ce253sm1236812qke.132.2022.05.19.06.42.04
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 May 2022 06:42:04 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-2ff1ed64f82so57473927b3.1
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 06:42:04 -0700 (PDT)
X-Received: by 2002:a81:6588:0:b0:2f8:b75e:1e1a with SMTP id
 z130-20020a816588000000b002f8b75e1e1amr4923917ywb.358.1652967724157; Thu, 19
 May 2022 06:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <8e48edc5e7b65f8dfd8b76c583e0265b9b97e62b.1652099944.git.geert+renesas@glider.be>
 <20220517010408.GA3690472-robh@kernel.org>
 <CAMuHMdWnvYx93Xo4XHRi3vv8c1OCvX7zqGswHApRnc7VYM+X4g@mail.gmail.com>
 <CAL_JsqJo-p+bh6VOKANq8pmMPbm1vZwmHt73yYaEhe9GfQ50dw@mail.gmail.com>
In-Reply-To: <CAL_JsqJo-p+bh6VOKANq8pmMPbm1vZwmHt73yYaEhe9GfQ50dw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 May 2022 15:41:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVdCP3hsSABq5J4bxo-5hTRS4ZggQwQG99srkc6z_EHuw@mail.gmail.com>
Message-ID: <CAMuHMdVdCP3hsSABq5J4bxo-5hTRS4ZggQwQG99srkc6z_EHuw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 rcar-gen2-usb-phy: Convert to json-schema
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_064209_447757_B8CA7747 
X-CRM114-Status: GOOD (  20.03  )
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

Hi Rob,

On Tue, May 17, 2022 at 3:57 PM Rob Herring <robh@kernel.org> wrote:
> On Tue, May 17, 2022 at 1:59 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Tue, May 17, 2022 at 3:04 AM Rob Herring <robh@kernel.org> wrote:
> > > I guess board level components don't count and some might be pending.
> >
> > Some have been pending (or blocked) for a long time...
>
> Can you tell me which ones and I can apply them. If they have my tag
> already, then I tend to ignore them.

I think you can safely take the following:
https://lore.kernel.org/r/0c5f06c9d262c1720b40d068b6eefe58ca406601.1638539806.git.geert+renesas@glider.be

I have also sent a v3 of the sil,sii9022 conversion.

Thanks!

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
