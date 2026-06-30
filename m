Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E34C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 07:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GE0udLLRk/f+MogAouac8kKiWUdQ2dBhCewnCCMc/v0=; b=h0nQ4llrTmRxUYGbv+meDzduda
	gZJiFsgZF/W3CiNgAr27/L6CmD1oOshphVdFIWMVLMJdB/S086UwQ/iR+x7VnTzjsGWri8nLhUppy
	GsxrjquK7DNigJDGFmCqgHVwGuB98onkRckTQN36lb1ALYW8FwEi6hcPbZbP4EiNBU/CJU7VkRmyo
	/gGqK21ZuisC7WtFySFYEQeD9g+8DVgpM4ysrQwxMeJF7F3Nn8pFMpfl6Km50lq4ifTNMkYWw1WTJ
	3DvED41INGZh8L3NC+Ie+ArhHP4VzZCLR1Ijg8LGW1RKRX5Q8E392s0JJ91h+9dJljR/5/foADUNC
	m8GuDnuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTI0-0000000GDN0-2tF6;
	Tue, 30 Jun 2026 07:53:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTHz-0000000GDMJ-13Xg
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 07:53:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9D0BE43C45
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 07:53:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 830EB1F0155C
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 07:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782806030;
	bh=QLk1TuOjiNPuCpTV4xCdDTaOjHQTK3QruyZKcZY7x1Q=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=SzEeikn298ntM12mqrr6eeAuWBznUx8HGeKI8OO6J1rAXqZe+DG8eH3kpdxS2Qwc/
	 BEgTe/7fHp8h71X6sCGG3fIihS5C6QKcHYkMaNYrgPUk3rcaSPmJDnw8ZoM5yrlTQE
	 KvW3inqTRly1yX4cupxJ6KIIy4QWzwTYakuwLMqpuMM/p2OaqREIyxEYDMqln50mnE
	 C1NSCn+lHyKd79yClTWWWIpGeXloq0qHFR7J5NJc/x4YvTZ2+1E8CMWE8qqPT9V+G8
	 G9xFlM4DvUB/S9Qvyumv8uzp49Hn1jyEjfrRcGIK8Lu7u5c1SmS6vDV9TdRuWHIBZh
	 32YpQJymIWJ5Q==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-39b237fb695so1761041fa.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 00:53:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RogshnfBqR1WNIJfer5sXQRkK/8WLabB1zDFLPDxaNBUsGOwRRW38130hrneXk7sw5VfSAbSdaSPyM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBNdxscWGrUNNCisB7UBE3DlFFYlBBEV9hwW9PqM7ZEMx5/1Nn
	c889Ktm58qInKf03EpZ+FPyqdmH7bgFLkd1nM5bwac6VsuuI0Gmt5G105PJiHAUkTDqIK/pLlzi
	g+gF7G0aY5Uaff3IQtJX7gj+bt2l1w5Ukqj2OcIZhoQ==
X-Received: by 2002:a05:651c:2203:b0:39b:d0:e992 with SMTP id
 38308e7fff4ca-39b1da26188mr5158341fa.4.1782806029201; Tue, 30 Jun 2026
 00:53:49 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 00:53:46 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 00:53:46 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260629132633.1300009-1-arnd@kernel.org>
MIME-Version: 1.0
References: <20260629132633.1300009-1-arnd@kernel.org>
Date: Tue, 30 Jun 2026 00:53:46 -0700
X-Gmail-Original-Message-ID: <CAMRc=McnpZK+XeMcVfrBeh8SWa44UsVSJD0GJ1pXYhiFqzdpaQ@mail.gmail.com>
X-Gm-Features: AVVi8CcPrvp2PMd39-Ep5NDuNXP5lZT9A5toOBbKSjeAVmB0_7rIggX2JLATmJ0
Message-ID: <CAMRc=McnpZK+XeMcVfrBeh8SWa44UsVSJD0GJ1pXYhiFqzdpaQ@mail.gmail.com>
Subject: Re: [PATCH 00/13] treewide: replace linux/gpio.h
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-gpio@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <brgl@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Greg Ungerer <gerg@linux-m68k.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Linus Walleij <linusw@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com, 
	linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org, 
	linux-sh@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-media@vger.kernel.org, netdev@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org
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

On Mon, 29 Jun 2026 15:26:20 +0200, Arnd Bergmann <arnd@kernel.org> said:
> From: Arnd Bergmann <arnd@arndb.de>
>
> The linux/gpio.h header used to be the global definition for the gpio
> interfaces, with 1100 users back in linux-3.17. In linux-7.2, only about
> 130 of those remain, so this series cleans out the rest.
>
> In each subsystem, we can replace the header either with
> linux/gpio/consumer.h for users of the modern gpio descriptor interface,
> or linux/gpio/legacy.h for the few remaining users of the old number
> based interface.
>
> All patches in this series can get applied independently, so my
> preference would be for each subsystem maintainer to apply these
> directly, with the rest going into the gpio tree at some point.
>
> The final patch here obviously needs to wait for all the others
> to get merged first.
>
>       Arnd

Thanks for doing this Arnd!

For the series:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
