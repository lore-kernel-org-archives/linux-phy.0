Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1617FC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 17:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzHt4CZO0OvhePt3YSQUYzy4dyXC6Bbu1LKliggaKEg=; b=KyQ52hr7ZMOb/m
	rs23R8I0YfF2JSMBeAgyQetQhiFgbTcBYP0KBZMhuPs4QIwCsf7LJvkuaGolLhf9c53xxctMOjF7U
	Rl0hjjgBSsYTCeNrzxaVtkA9IsOCnY+gziY50g3rnRLrMbbozp4nmaE+kazq2WRCdiHinBlywcal6
	SyVpBrZjfnF9PU2aahlOTfyT2yFlzBpthqMVWU4QDnRAEA/fU3Cl3scapH9tttDtCSP3XQFZVaa13
	6Uj6NL4a+sOihJ5/LztOzhncGKVbN1zO34gEZ0FLTCWW5g92GYINUacHvgtcDZY9XDZdjNpj1N5RU
	LOJo//KCMMtn+MlRxBag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPTDK-003gXS-Uj; Wed, 02 Mar 2022 17:56:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSsJ-003aZM-2f; Wed, 02 Mar 2022 17:34:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 36FA4619B3;
 Wed,  2 Mar 2022 17:34:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98B5CC004E1;
 Wed,  2 Mar 2022 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646242493;
 bh=SlAmbk9/xjdnL8kM6WDsdNQeKwNX2M1bWU9YFjAU3aY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IFt60GuJkS5DtA8BfW7oaR7leouEyWKb5MaVoj7DZa59ZdmefXDrrStAVFmGNltYD
 SFSxi7ZWv6/PATONAgfNe22iLQLcUIfn7pJS7HvagfIMhC//jGsSEd0Ft6NrRI9FaQ
 mdlBFWAJ6LAWxpiel2Yc35VKEtYzjliaTRgTMBssqWhL5BWXIfnMK1xJLuVnz5Va7c
 Iz8mP+Gjl0gSa8HYF07OiUllyuwCYPyhLjAOeDL8IRaQVq3jlVZqQCz36JsgM22OJP
 FT1G2Mla2LLvIqgeIKHTlE40Vg7bFQp5grPNAKRpIKiLEhGt3FmxxGnIqsKmn8HglT
 QTFR32LECgGvQ==
Received: by mail-ej1-f45.google.com with SMTP id dr20so5240161ejc.6;
 Wed, 02 Mar 2022 09:34:53 -0800 (PST)
X-Gm-Message-State: AOAM5310OYTr6TC4EWUDFyOIacr/V6K0E92BKxAZ99t2J1J3/NV/4TtH
 /uuKMm49zL4WpCI3cPZjsM1hbktZi+LZhUBCYg==
X-Google-Smtp-Source: ABdhPJwe7sM9TJHi5/SezdL3sY1rKQ5twC5kIxRpOAddVqrFJfvX+9QV36N3KqX/3JcFZ6Rl+bCUP9nRidljrHLN3aA=
X-Received: by 2002:a17:906:d204:b0:6d6:df17:835e with SMTP id
 w4-20020a170906d20400b006d6df17835emr8542760ejz.20.1646242491912; Wed, 02 Mar
 2022 09:34:51 -0800 (PST)
MIME-Version: 1.0
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
 <Yh+l7+7zDvI/9e6n@matsya>
 <CAMdYzYoVz4wk-EhfxQdwu9FqRg8Vj-HGMFG+CFjfsHeM8HcnNQ@mail.gmail.com>
In-Reply-To: <CAMdYzYoVz4wk-EhfxQdwu9FqRg8Vj-HGMFG+CFjfsHeM8HcnNQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 2 Mar 2022 11:34:39 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL1cYyU=LCmEn=dEk712CECpxj8sUWrwpi8_XpoaXEQig@mail.gmail.com>
Message-ID: <CAL_JsqL1cYyU=LCmEn=dEk712CECpxj8sUWrwpi8_XpoaXEQig@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
To: Peter Geis <pgwipeout@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_093455_251939_436DE6E4 
X-CRM114-Status: GOOD (  23.94  )
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

On Wed, Mar 2, 2022 at 11:25 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Wed, Mar 2, 2022 at 12:14 PM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 02-03-22, 11:04, Rob Herring wrote:
> > > On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> > > >
> > > > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > > > combo phy register compatible") as that was wrongly merged, so better to
> > > > drop the wrong patch
> > > >
> > > > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > > > ---
> > > > I am applying this to phy-next to fix the issue
> > >
> > > Reverting will just cause a different warning that it is undocumented.
> >
> > Right, but a patch for that would fix that
> >
> > > The fix in the other thread won't apply either if you revert.
> >
> > It is not applying for me, so that needs to be updated anyways..
>
> It seems phy-next has fallen out of sync with -next.
> It's missing this patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/soc/rockchip/grf.yaml?h=next-20220302&id=7dbb47d64acf4aac131a2aaade726913aa62abe7

That is not how things work. linux-next is a tree that no one can
apply patches to (in the worst case like this one). It's useful for
integration testing and a shortcut for getting a maintainer's tree,
but should not be the basis for patches to the lists. You should
generally use the last rc1 or a maintainer's tree when there is a
known dependency. Using a stable base means 'git am -3' works and the
merge tools work rather than git just failing to apply anything.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
