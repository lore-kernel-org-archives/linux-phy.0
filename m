Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B897C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:17:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C86260724
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:17:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C86260724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crCpwo4tJxuDa+5EY+mJbqs65oqnUHxaNRqdcQAvVeQ=; b=HqHRhKGg/OdfAP
	wDst5Zl3i9KfjK5co9kCWURiTU2aWFm+nnCV2rzRU9+yYV4LBgLQBbRu6tKWIcWBHkdjWNZbZfhXS
	mhD5xAEWWjXzo/daxNoClBh6cp3tE/8HETeD71H+BQw9kqbPks1jSW78Ejwl6modNWmc70dFcUKFG
	H7qSBcWBHDcVmmyyAtvfgvFO+Ym25zehhEZmkNuaS50C4WCHmOzpycv33CEJCqxnPlsVxXGAbgZgN
	3nvNR4voirgNZOReO/ERHmEcEK1leHgEBzeEa4muVAT4BplAferZZGYaa3IEzs2/Vn7/7CtVnmSy6
	y+BxH7pI1CmjpD/XKoCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuER-00FYxu-55; Mon, 25 Oct 2021 07:17:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meu4P-00FV7J-6F; Mon, 25 Oct 2021 07:06:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C101460F6F;
 Mon, 25 Oct 2021 07:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635145616;
 bh=5Q4aeYKi7bwUBr+sTkOgfJdsuo2f2X2m6DU4ecUe6xA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S1Hn7zvOkNB49RWQq+6GHb8R1nl5v0i8PZZQ89qMs4syvklBKlL/B2M6dyPPSRPdD
 SxTA6cqHDTkL7ev+aP6uKiEzRxu/Vwzz5ECgpQA2/+TN8Z0owGfT7zXG52VnNwhvbA
 TkZuve11F+tH6/huM03e1qpHeVxqR2173M3NeCRm8ETqDsnmUP8IKtcw/4nje29FEz
 mlea3AUpeqYhaejEWZUDS3uqaxxc9Sfs9yrz1rtgYq28qT9Z5ius4Gulhzyg1gfP1w
 3drlEEYxaKOibJY70yFbXmI4s7Jv6EOl/+kfFdHSwyM8xsMxtsofr+QPURQoVTBqnc
 uGfOBv1ehTfcQ==
Date: Mon, 25 Oct 2021 12:36:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org,
 "Kishon Vijay Abraham, I" <kishon@ti.com>, p.zabel@pengutronix.de
Subject: Re: [PATCH v2 2/3] phy/rockchip: add naneng combo phy for RK3568
Message-ID: <YXZXjGG1qpHCgdHc@matsya>
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
 <20211013101938.28061-3-yifeng.zhao@rock-chips.com>
 <YXKXULdyPuv1BirB@matsya>
 <CAMdYzYqJs_uT1DT9EFydAmWCoRuizkA==HoMW8VTd68dg0hQ2A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYqJs_uT1DT9EFydAmWCoRuizkA==HoMW8VTd68dg0hQ2A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_000657_303526_3DEF6D5C 
X-CRM114-Status: GOOD (  10.88  )
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

On 22-10-21, 07:26, Peter Geis wrote:
> On Fri, Oct 22, 2021 at 6:51 AM Vinod Koul <vkoul@kernel.org> wrote:
> > On 13-10-21, 18:19, Yifeng Zhao wrote:

> > > +#define RK3568_T22_PHYREG6           (0x6 << 2)
> > > +#define T22_PHYREG6_TX_RTERM_MASK    GENMASK(7, 4)
> > > +#define T22_PHYREG6_TX_RTERM_SHIFT   4
> > > +#define T22_PHYREG6_TX_RTERM_50OHM   0x8
> > > +#define T22_PHYREG6_RX_RTERM_MASK    GENMASK(3, 0)
> > > +#define T22_PHYREG6_RX_RTERM_SHIFT   0
> > > +#define T22_PHYREG6_RX_RTERM_44OHM   0xF
> > > +
> > > +#define RK3568_T22_PHYREG7           (0x7 << 2)
> >
> > Pls use GENMASK for these?
> >
> > > +#define T22_PHYREG7_SSC_EN           BIT(4)
> > > +
> > > +#define RK3568_T22_PHYREG10          (0xA << 2)
> > > +#define T22_PHYREG10_SU_TRIM_0_7     0xF0
> > > +
> > > +#define RK3568_T22_PHYREG11          (0xB << 2)
> > > +#define T22_PHYREG11_PLL_LPF_ADJ     0x4
> > > +
> > > +#define RK3568_T22_PHYREG12          (0xC << 2)
> > > +#define T22_PHYREG12_RESISTER_MASK   GENMASK(5, 4)
> > > +#define T22_PHYREG12_RESISTER_SHIFT  0x4
> >
> > bitfield.h has nice helpers which can extract/program values and avoid
> > one to define these shifts
> 
> They aren't values, they are registers.

Yes!

> This is a remnant from the downstream driver's attempt at obfuscating
> the register it's touching.
> Please define these correctly.

The point of bitfield.h is one defines register bit fields using
BIT/GENMASK, no need to define SHIFT etc and use the helpers to
extract/program values and avoid defining these shifts etc!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
