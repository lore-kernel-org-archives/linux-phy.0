Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E71C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 14:26:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 405FC6103E
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 14:26:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 405FC6103E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=alpha.franken.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+6+KV2PoDyxTVFv4OxYOsCpJWXbUHMa+inWuRLIL1M=; b=elFFWjgROwDpOX
	FNCa9j8hTH6Kta851RCZlC/GEqfFGAUjbZzUOAjkkR6Kii93wEHw/WHtsMPdecGPI1QAovH3K679t
	IcCNQIfNT8RWlRck7tfr2FrgsxOLRiPmvvTdeXNiGthqJ5HbYpUuz0Z2B8l4zvDpuef0W9Cw8dfnj
	NtCUtWWj37PjCNiE+IdOEvv4/hgjCqJ6UEAbt8/QLX751YgcqsJioWY9UmAlKqlDM13cPCzjqxcYn
	/iwqRmUsnuF9dA1ucbNuxBMN5Pgk65J7pHRAV34p8ccjc4au6BBctGCqa/twCEoj4vRYWrKn+NXE7
	332o+d+5i51DCU4QemyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEBej-00AS0C-LI; Thu, 12 Aug 2021 14:26:01 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEBee-00ARwy-D9
 for linux-phy@lists.infradead.org; Thu, 12 Aug 2021 14:26:00 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1mEBeQ-0002iE-00; Thu, 12 Aug 2021 16:25:42 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id DCCD2C07DD; Thu, 12 Aug 2021 16:09:34 +0200 (CEST)
Date: Thu, 12 Aug 2021 16:09:34 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org,
 vkoul@kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/9] MIPS: Migrate pistachio to generic kernel
Message-ID: <20210812140934.GA9924@alpha.franken.de>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_072556_888874_FF2C99B7 
X-CRM114-Status: GOOD (  15.85  )
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

On Fri, Jul 23, 2021 at 10:25:34AM +0800, Jiaxun Yang wrote:
> I'm lucky enough to get a Creator CI40 board from dusts.
> This patchset move it to gerneic kernel to reduce maintenance burden.
> It have been tested with SD Card boot.
> 
> --
> v2: Minor fixes
> v3: Typo fixes and 0day testbot warning fix (Thanks to Sergei!)
> v4: 01.org warning fix
> 
> Jiaxun Yang (9):
>   MIPS: generic: Allow generating FIT image for Marduk board
>   MIPS: DTS: Pistachio add missing cpc and cdmm
>   clk: pistachio: Make it selectable for generic MIPS kernel
>   clocksource/drivers/pistachio: Make it selectable for MIPS
>   phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
>   pinctrl: pistachio: Make it as an option
>   MIPS: config: generic: Add config for Marduk board
>   MIPS: Retire MACH_PISTACHIO
>   MIPS: Make a alias for pistachio_defconfig
> 
>  arch/mips/Kbuild.platforms                    |   1 -
>  arch/mips/Kconfig                             |  30 --
>  arch/mips/Makefile                            |   3 +
>  arch/mips/boot/dts/Makefile                   |   2 +-
>  arch/mips/boot/dts/img/Makefile               |   3 +-
>  arch/mips/boot/dts/img/pistachio.dtsi         |  10 +
>  arch/mips/configs/generic/board-marduk.config |  53 +++
>  arch/mips/configs/pistachio_defconfig         | 316 ------------------
>  arch/mips/generic/Kconfig                     |   6 +
>  arch/mips/generic/Platform                    |   1 +
>  arch/mips/generic/board-marduk.its.S          |  22 ++
>  arch/mips/pistachio/Kconfig                   |  14 -
>  arch/mips/pistachio/Makefile                  |   2 -
>  arch/mips/pistachio/Platform                  |   6 -
>  arch/mips/pistachio/init.c                    | 125 -------
>  arch/mips/pistachio/irq.c                     |  24 --
>  arch/mips/pistachio/time.c                    |  55 ---
>  drivers/clk/Kconfig                           |   1 +
>  drivers/clk/Makefile                          |   2 +-
>  drivers/clk/pistachio/Kconfig                 |   8 +
>  drivers/clocksource/Kconfig                   |   3 +-
>  drivers/phy/Kconfig                           |   2 +-
>  drivers/pinctrl/Kconfig                       |   5 +-
>  23 files changed, 114 insertions(+), 580 deletions(-)
>  create mode 100644 arch/mips/configs/generic/board-marduk.config
>  delete mode 100644 arch/mips/configs/pistachio_defconfig
>  create mode 100644 arch/mips/generic/board-marduk.its.S
>  delete mode 100644 arch/mips/pistachio/Kconfig
>  delete mode 100644 arch/mips/pistachio/Makefile
>  delete mode 100644 arch/mips/pistachio/Platform
>  delete mode 100644 arch/mips/pistachio/init.c
>  delete mode 100644 arch/mips/pistachio/irq.c
>  delete mode 100644 arch/mips/pistachio/time.c
>  create mode 100644 drivers/clk/pistachio/Kconfig

series applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
