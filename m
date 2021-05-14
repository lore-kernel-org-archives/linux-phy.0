Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02D79C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:19:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 708FB613BC
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:19:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 708FB613BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fgyMdUzdYYHG9Ycsxaktv3Y1mA+mx49FM8p7OlUyAAE=; b=QzA50eSvRusSoKQD89rrO9vhK
	CgtUwfMqCTeaY6MYfVDAPhCm4QkP9Lp2NovXGga3DDS90Jpm0DHoQd7B62FJ774l9Vtv4cDEAF1CC
	eVgWNfkNIAcFI5uTJpbqcOiEiFB/pzmzPlzZAIKsbO9EngDZ4uJMf2pNlqd3tyYz4qowLTgYAGEQg
	P25e0wDu8D9G9RhzRCewdVcm7aM7z741Y54Yya0UxEDzuGYTULsVSO27kZ21wU18iOX+oBS7EFUer
	1pP5fyikDLaZeZtlYiXCCVOuUQVy4tl5QpR2vT6H9YyY91E3/UflVH3IxHVvNXl46D816pfpkRlHr
	Gf8IQeu/w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhVqy-007stO-RI; Fri, 14 May 2021 11:19:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVqx-007stI-7p
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 11:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=YjgfjUX2VlTG4CiG2n/lTHEHRkptr4e0OLOANIP608s=; b=UuJ++qw2mcTdvufbQZzCgVRzu1
 CitJYOcUwxH2C/+p8DgRZMmX0BuhH5CeNg8f4ZY0vDxxH5u+dK6H9R/H8B3wEv8X0a9nxude/qh4N
 WOow4PlG27H5RyUYRSyKvRIgExtEoAYayhnjoE4wkU2FUVAo0U9tnMaabEb8L30mCu5FdEXj4MDcd
 9BqSC5iHPd8MnGcY/umX73R4EDV9oAlaWfp4mY2w119ozc23E3TpGgZgpV3lEzCSFRCEYq0C5URu+
 GFStIb1KnNiENwNpMwyli76SNgLEOpEyb9NpR/vYa4aUhvsxyBv5MUsown5mKnhLgEZqvwiC1sPOz
 PYlNeEwQ==;
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVqu-00Bvwo-Nn
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 11:19:34 +0000
Received: by mail-ot1-x335.google.com with SMTP id
 d25-20020a0568300459b02902f886f7dd43so12723600otc.6
 for <linux-phy@lists.infradead.org>; Fri, 14 May 2021 04:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YjgfjUX2VlTG4CiG2n/lTHEHRkptr4e0OLOANIP608s=;
 b=nzC03ppPbo+K138xTT5Kow2qAiZL7LbzOrfb0IN+LTsSrvpoz8hp8Bi8tg+p4xjdR0
 b21bMpAfQhyvEPkU9Q4JmBguRJvQHy6KGT91P1P3fKsIj7HjnbFpqERG0M3fDDed9gIt
 TTK4SrPp2T7/ItnZVr7mezppBQ7RAyNLwBBvb+Uq2QaKvJSLlftAr4e+RwY3PcI5Pb2/
 zldfzMuPPvFDNwWBt5pXIJiAKsujUvPLO7pAgHjDxt6cDBBDprboPWdxEyIkempz9Fgo
 tNNlbnN69sQXtthlUJzakuX/pwM0qKLFMhzYeXCY9MiejPyEqEkRN5JjlfjH0NWWjDk7
 nzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YjgfjUX2VlTG4CiG2n/lTHEHRkptr4e0OLOANIP608s=;
 b=nfFu4wssaWcLXCf/KMcuaZgom5GFkGmtbUcamOQ5LGMNydICqZ0xPcg5Y+zGmMgjAP
 1OCzGRWJ+09vKe2sbD7qVHx3eSs7GNN59M74y7xpyCRe1IBaDv61Z477sgfJwUp95BvS
 3rasRVDBc9lmRsJutBBRBrF2mS0iX1dM7mmjKiMcxKZCPHtFFuOQmiYdsung0TOSVUPe
 2w5zD4RxXKJxLvMRjB3f4M6yD4MsrsMYc2gaPEBYv2xh9q+bCLJw/nMm4I/QVn8e73IH
 5T/Xm3zbsD2dzWf0Uk38Xv0v3bi9fV7MQirnIrJYU5luuvuBtMUUXvEqwbOOjUyvSY+i
 JGog==
X-Gm-Message-State: AOAM531kFyJFJmz9ZnlaMZ13Uq+kCb5sZYzoBa6uRghRuUd6XURVjUiQ
 u9tJnCBa6XsK0bdnR+c7xQIunPJw+9m6JUrozvg=
X-Google-Smtp-Source: ABdhPJxZqT9WPVbGt2234S9Iu/njvLuxyojyILmFzUoONy9Dc6Z0JNvjG4M8ShyLK0wqh4Y6I6T3jDGTCBJARnEjKeA=
X-Received: by 2002:a9d:2ae8:: with SMTP id e95mr40372267otb.72.1620991169752; 
 Fri, 14 May 2021 04:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
In-Reply-To: <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 14 May 2021 13:19:18 +0200
Message-ID: <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-phy@lists.infradead.org, 
 Rob Herring <robh+dt@kernel.org>, linux-staging@lists.linux.dev, 
 Greg KH <gregkh@linuxfoundation.org>, NeilBrown <neil@brown.name>, 
 Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_041932_795299_FFCA04AB 
X-CRM114-Status: GOOD (  18.65  )
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

On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > Hi all,
> >
> > This series contains some improvements in the pci phy driver
> > for MT7621 SoCs.
> >
> > MT7621 SoC clock driver has already mainlined in
> > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> >
> > Because of this we can update schema documentation and device tree
> > to add related clock entries and avoid custom architecture code
> > in favour of using the clock kernel framework to retrieve clock
> > frequency needed to properly configure the PCIe related Phys.
> >
> > After this changes there is no problem to properly enable this
> > driver for COMPILE_TEST.
> >
> > Configuration has also modified from 'tristate' to 'bool' depending
> > on PCI_MT7621 which seems to have more sense.
>
> Applied 2-6, thanks

Thanks, Vinod.

Greg, can you take patch 1 through your tree?

Best regards,
    Sergio Paracuellos

>
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
