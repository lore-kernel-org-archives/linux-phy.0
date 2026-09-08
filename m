Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68ADDC79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 18:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jCxWntwFugoSv/fcUIb6LNnYNTpAS55iZoOcyiH92og=; b=QAzBu46xn8USzAXtCyZURHtu8n
	zRFZnL4/v4Dd72ABUZAwb3Mw6sxFC7nAWlLYcuJL0EiS/6HjP8ooCriN+zlFV007TD1T0awLo1Wrc
	hoKaeaDQbrCDOcTbZVtqOapzGgZ6MwW5HPlVBxinQ35014++923RdwxLOhlfaCKMPWkWrLerhn5zD
	G6c7aCkCpjOyFi93ZDn58r8vKoGyd4hjvOqQAtWsGRzTZPVLf/UsVKr8qvjXWdbsJewQGu5MiEm9e
	HgX6FAybONe0UZlksEBrK47k7HmjbcB+1K3wVbRzbypcr3zUTaqUkhj1mrHfUvnrVqzwxNNk2Ft9x
	2P3mXaVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x40SM-00000009xpX-3x2X;
	Tue, 08 Sep 2026 18:22:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x40SL-00000009xp9-3C89
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 18:22:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 13B1243C63;
	Tue,  8 Sep 2026 18:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4F761F00A3A;
	Tue,  8 Sep 2026 18:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788891725;
	bh=KOkqH9+KsQ/pfEOXoQXs/QBpMjFn4xAHhMmlbJfXtIs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject;
	b=TiT4BGm938ZXzhfpCXXPU+WVWM5OoeDt3/bK+ZLWDhhs1eF+y1t+MrjCirtWxjCPV
	 ZHP4C4FEGNTUf8kWLhlej6CO2Qx1qbgXw4xIjE7QUe9bCLx1nUVQI2rW/JUoxquQ7s
	 obT6lVwnBhVjEUczZ6TqcKkztvD8bpofHYkv7K9t1HnaGWzgSdYAKrCuN4TENKgGfV
	 d9avD5WoNmq9IrbBkHbWi1UkwqZqnl/tdmc5/MMAfq6LXh+FpWaDM72bj1zWFHRZIx
	 dzAZ2PFKU8Z4apXP1uNN/BQdakhpCGb887ZATF8v/HYvAj1EdK9FGG7ExGmqRj6aLU
	 cLy+eplHy6ggA==
Received: from ams-compute-02.internal (ams-compute-02.internal [10.64.2.62])
	by mailfauth.ams.internal (Postfix) with ESMTP id 62F16198003A;
	Tue,  8 Sep 2026 14:22:02 -0400 (EDT)
Received: from ams-imap-03 ([10.64.2.23])
  by ams-compute-02.internal (MEProxy); Tue, 08 Sep 2026 14:22:02 -0400
X-ME-Sender: <xms:R1KganhWojexTaEkcE9JNG2cPj7XgDgOFoXrGK4XmayHCNKPiO9VaQ>
    <xme:R1Kgau10_SvGPB3yfP4vC7fFqFw7CFxNWNHyAOuKkR1D3WdEFe3_l1bs_81OVeuT-
    TvpIP0I9YyFC9FtFqLdEAVy259vPupVkwojcM3tDj-Ur1n7W8HVZA>
X-ME-Proxy-Cause: dmFkZTF3Xbdz07cy4boaCVQHFkenJCqc2sn4pb294JKVq2iAU/ryEnJrbS5rHRz/45kLdP
    XWVPpmR29IIAjw31EDFDOoChR5dpk7oDeztrPOMK6Ck6rUZyoBVx+gU/Dj+v2ezibRn/3Z
    6copKQyaHQTnzkXFaRPpL+YsGtqzZF8KdZn0FKgRlMOihu7MmoU83A9qIw5BuKzEDvlTFC
    hkYrh2QdS2qnv5wk8D0+zIgWAi+fdBqzJoR6DSey3OStD8Far5kE1hHrAv5MW+cSE92604
    C0JRxb+rlMAsR5nZZHdab1pbHPOU2NsD1PcNS9z4aUCnOnSHzZzNZWET46rcpd7ZG3n6Zp
    23NB5BYR9Bd2vlT99ZOgkZynr7E8I3RD8qiC3VJf7Vwao2PfWxTnJpoGsqCAkB7VUl2RiA
    iFQniTW0DmVYGD4YR/R1+UC0pImIplV9uP1J5d8ZROiVKPwGAQyS2/iK42Fmxof1ON/y7c
    8HYLyRpBRPmYiSuAw8UZ7v+MaAJjjPcBzs4AGz7ScKQdHquEMdlRoBfggT0viLHZSI7dey
    6sGEL6e5OCUhAEgk0wFO/27J+MEfYUkM3vdmBLb5bFJgJ2CA3jtJ7Yeo5xke8uESS3zrAl
    /pg3sPxHGz8QeYtfQ6nR+fsf9bPOlUF4X3Z7E/Zv5bzYrIY2S3/tLiBS4wOw
X-ME-Proxy: <xmx:SlKgakKMyflVPzT2IaiVNPoit3F_v_SjIGgTR7F9CFExNsQVJHhdWg>
    <xmx:SlKgasG6ovtp0PxJslZBsEexayDxOMD1Ftz_o4s2LvqKcOfBVP1pMA>
    <xmx:SlKgar7zpPWvSZN0h6Z3E1JiiiuQfAWt1u4bCGJuv8NIIDx0iClvNw>
    <xmx:SlKgan3ZQ1aVDog9cCn7AS2QRAKeDXuh--6GdSSWbM_NUMzrG7ow7A>
    <xmx:SlKgang6dUc9NvIN_N5Ch2nIpi01dqxYKTTh1R4UYO_yWH9JD0MboRxU>
Feedback-ID: i36794607:Fastmail
Received: by mailuser.ams.internal (Postfix, from userid 501)
	id 8F55A32A0078; Tue,  8 Sep 2026 14:21:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ANqE0jO8KCPJ
Date: Tue, 08 Sep 2026 20:21:39 +0200
From: "Arnd Bergmann" <arnd@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 "Damien Le Moal" <dlemoal@kernel.org>, linux-rtc@vger.kernel.org,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Vinod Koul" <vkoul@kernel.org>,
 "Alexandre Belloni" <alexandre.belloni@bootlin.com>,
 "Vladimir Oltean" <olteanv@gmail.com>, "Frank Li" <Frank.Li@kernel.org>,
 linux-pci@vger.kernel.org, "Rob Herring" <robh@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, imx@lists.linux.dev,
 "Niklas Cassel" <cassel@kernel.org>, linux-ide@vger.kernel.org,
 linux-watchdog@vger.kernel.org
Message-Id: <71266564-7be5-4621-ab03-29cf9ec49287@app.fastmail.com>
In-Reply-To: <20260908161125.E4A331F00A3A@smtp.kernel.org>
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
 <20260908161125.E4A331F00A3A@smtp.kernel.org>
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
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

On Tue, Sep 8, 2026, at 18:11, sashiko-bot@kernel.org wrote:
> [Severity: Low]
> Since all the board files like arch/arm/mach-orion5x/ts78xx-setup.c are
> removed in this patch, should the MAINTAINERS entry for the TS-78xx platform
> further down in this file also be removed?
>
> The pattern F: arch/arm/mach-orion5x/ts78xx-* now points to deleted files,
> which leaves an orphaned entry for Alexander Clouter.

I fixed this instance now. I tried to automate this with a script
but could not figure out how to deal with wildcard matches and
only did the ones that have an exact file match.

If anyone has suggestions for doing this better, please let me know,
or run your script on 
https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/?h=board-remove-7.3
and send me the results.

> [ ... ]
>
>> diff --git a/arch/arm/mach-orion5x/Makefile b/arch/arm/mach-orion5x/Makefile
>> index 6f54d7fef27a7..7e9634e043185 100644
>> --- a/arch/arm/mach-orion5x/Makefile
>> +++ b/arch/arm/mach-orion5x/Makefile
>> @@ -2,15 +2,6 @@
>>  ccflags-y := -I$(srctree)/arch/arm/plat-orion/include
>>  
>>  obj-y				+= common.o pci.o irq.o mpp.o
>> -obj-$(CONFIG_MACH_KUROBOX_PRO)	+= kurobox_pro-setup.o
>> -obj-$(CONFIG_MACH_TERASTATION_PRO2)	+= terastation_pro2-setup.o
>
> [Severity: Low]
> Are irq.o and mpp.o now completely unreachable code?
>
> Since all the board files that called into these APIs have been removed,
> it appears these objects are now unnecessarily compiled into the kernel
> image. Should they be removed from obj-y here?

Added this to the patch, removing the two files and recursively
seven more that become orphaned afterwards:

 arch/arm/mach-orion5x/Makefile                |   2 +-
 arch/arm/mach-orion5x/irq.c                   |  51 ---
 arch/arm/mach-orion5x/irqs.h                  |   9 -
 arch/arm/mach-orion5x/mpp.c                   |  41 --
 arch/arm/mach-orion5x/mpp.h                   | 130 ------
 arch/arm/plat-orion/Makefile                  |   4 +-
 arch/arm/plat-orion/gpio.c                    | 616 --------------------------
 arch/arm/plat-orion/include/plat/irq.h        |  15 -
 arch/arm/plat-orion/include/plat/mpp.h        |  34 --
 arch/arm/plat-orion/include/plat/orion-gpio.h |  38 --
 arch/arm/plat-orion/irq.c                     |  39 --
 arch/arm/plat-orion/mpp.c                     |  82 ----
 13 files changed, 2 insertions(+), 1066 deletions(-)

This leaves only pcie.{c,h} in arch/arm/plat-orion/, which
should be folded into arch/arm/mach-orion5x/pci.c, along
with parts of arch/arm/kernel/bios32.c that nothing else
uses any more. I don't have a patch for that yet.

      Arnd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
