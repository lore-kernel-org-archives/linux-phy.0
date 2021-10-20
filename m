Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548EBC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:35:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FC576138D
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:35:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0FC576138D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHygLGOG9WjUVX6stugL8kvhxms2yYKoa2MXwUJStZ4=; b=GBdKXDownbL43m
	W5OpKXSSwipyR7rBZdNjtpm3K8jRBK96cvDX22U+rfg0/o9jXU4F94o1wyNUgTbAY5o78QXneJVUb
	8dMqx5H4Ufm9bPU/6n7683s47ugB998pe5MAKxMg2dadUw+dzuLJfWgW/a1/fCdFNZU5/0Mw8wv0s
	9b5FTVstvfJ5hV/iNuG9lle43vYYCH6UN7FyQrW0kLUYbglBxhg1QaBCMeklGErW1yML37tv1xm7r
	NeOuutiMp6Hg1C9NJKYxQwecM4AL9bk4uaY/pkmJyVaq1SbVi6Bb4Ufgh/LFGfjrGTKT9vpvGrqQG
	LWoJKCmm/4PzyQ1SNxXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdDdF-00553y-DM; Wed, 20 Oct 2021 15:35:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdDdB-00552A-Vc
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 15:35:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C408861390;
 Wed, 20 Oct 2021 15:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634744153;
 bh=oIuL65+uPXKMdPAOUM5sdzWeR/pkE9Rf5eGtMDkAkEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZJGsEEcbf3rFeDF4ZHq2C7GhNrjuJhVVDe7hKu8ZvWI1ogZu0tyjOnIJBKM1mnsnR
 qJ33ECYV8bioahbpYzrCFGiAJa5iNj4doAgcSKrN4RmbkX4xwUhWDP45mOD0zSk3gr
 OoM93fNLrIfIVBTIaq7tyZyps+QZfTam9VqNYsDMaokQgDs+9hCf/+j5nHx2DMMJ4R
 Rq8StK+OMqk0Sk4oAN85bmB1cQnOXvEO5cZqbvNo7FfncnBnSBjmd21nyeRmGsdJM3
 VlB153czKl3nUK/ygKbNNnbVYuZBDumW1N+4gPDkuWK/3Vti86K19dp6ZXixbgdsss
 2TsYWd6kSFjtA==
Date: Wed, 20 Oct 2021 21:05:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, robh+dt@kernel.org, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <YXA3VVUGEjUR4HDC@matsya>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_083554_099806_495E843B 
X-CRM114-Status: GOOD (  18.41  )
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

On 20-10-21, 11:17, Horatiu Vultur wrote:
> The 10/19/2021 23:27, Vinod Koul wrote:
> > 
> > On 15-10-21, 14:39, Horatiu Vultur wrote:
> > > Add the Microchip lan966x ethernet serdes PHY driver for interfaces
> > > available in the lan966x SoC.
> > >
> > > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > > ---
> > >  drivers/phy/microchip/Kconfig               |   8 +
> > >  drivers/phy/microchip/Makefile              |   1 +
> > >  drivers/phy/microchip/lan966x_serdes.c      | 540 ++++++++++++++++++++
> > >  drivers/phy/microchip/lan966x_serdes_regs.h | 482 +++++++++++++++++
> > >  4 files changed, 1031 insertions(+)
> > >  create mode 100644 drivers/phy/microchip/lan966x_serdes.c
> > >  create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
> > >
> > > diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
> > > index 3728a284bf64..38039ed0754c 100644
> > > --- a/drivers/phy/microchip/Kconfig
> > > +++ b/drivers/phy/microchip/Kconfig
> > > @@ -11,3 +11,11 @@ config PHY_SPARX5_SERDES
> > >       depends on HAS_IOMEM
> > >       help
> > >         Enable this for support of the 10G/25G SerDes on Microchip Sparx5.
> > > +
> > > +config PHY_LAN966X_SERDES
> > > +     tristate "SerDes PHY driver for Microchip LAN966X"
> > > +     select GENERIC_PHY
> > > +     depends on OF
> > > +     depends on MFD_SYSCON
> > > +     help
> > > +       Enable this for supporting SerDes muxing with Microchip LAN966X
> > > diff --git a/drivers/phy/microchip/Makefile b/drivers/phy/microchip/Makefile
> > > index 7b98345712aa..fd73b87960a5 100644
> > > --- a/drivers/phy/microchip/Makefile
> > > +++ b/drivers/phy/microchip/Makefile
> > > @@ -4,3 +4,4 @@
> > >  #
> > >
> > >  obj-$(CONFIG_PHY_SPARX5_SERDES) := sparx5_serdes.o
> > > +obj-$(CONFIG_PHY_LAN966X_SERDES) := lan966x_serdes.o
> > > diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
> > > new file mode 100644
> > > index 000000000000..e663bb9186a8
> > > --- /dev/null
> > > +++ b/drivers/phy/microchip/lan966x_serdes.c
> > > @@ -0,0 +1,540 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > 
> > Any reason why this is dual licensed, why not GPL only?
> 
> No reason, I think I copy this from a different file.

Please have a chat with your lawyers on the correct license this should
have!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
