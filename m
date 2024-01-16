Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D70CC47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=eP/V2NxJun0Izm+lzE3yrwSI/PNHbzqEP8i2JTcYa3A=; b=GFLPEyzX0AYrPD
	1y7HcRwn2+xD7DlXud5HsUHHABqOtuahsgQZnk6AJMdLR6JdgiWWXku/ZkVJEPp2R8of+luxRZzVt
	Rlv/qgcC96kYFiXn2nr6R+1r0d5tt/i10xTbtZG2p2q2EZ5Si0jUk/d08tAFw4fHFW1SaeGFgdbUk
	w9AjHy9DmQ8zuBT8qP5EZviBYFDgbLtWLhoSs+crM3kAQZoy3qQjbLdbgIo08TQaPHaPLzcsA/gh8
	X7bDpsZMRD6v9gPHf5O/IOi67dwwm1Gf8LMvX4jkg4VVk79yfYWNF8OB9ieJPxhTiPhtl8yRAJ4gJ
	YiBWfVDqYji1Ns0kGZwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPo5N-00Cy7M-0K;
	Tue, 16 Jan 2024 18:22:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPo5J-00Cy68-0v;
	Tue, 16 Jan 2024 18:22:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 63518CE1944;
	Tue, 16 Jan 2024 18:22:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D20CC433F1;
	Tue, 16 Jan 2024 18:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705429366;
	bh=24yf9WQZM8mCzBoY4DhIxhCfHQZP8hu82jOqs15h0jg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=CBatexrm9aBNAYXsNpveWnrw+Di773YudoVO/VDqgpP9FKlSYHdGeCs9ySe0HGtWK
	 so2FLx7CeRayeJj9Z8kDp8bZqEEJxqHCJNS8c7tRBEMn8ySC/D9sH5IShv/Qo2Gila
	 wWFRNUHVyYshYfyYmIKD3cxzN/7U7Wl9fvvywrJvdzChhTimASQuKCYIKy5nyIsOoN
	 f/v4avvA0QcnowjCCBcL0oOvQHhzavvXAnirlz3cJXInydu6jFKaIIj/QeIkONkFoS
	 KSS5MkeXX+d1acaZzpQ/8hWvCjtvGU+aU4P2i/MhH3Czdl1GJCYXt9uBuT7TSbAFul
	 v2V7zez4Z1JzA==
Date: Tue, 16 Jan 2024 12:22:44 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH 11/14] phy: cadence-torrent: add suspend and resume
 support
Message-ID: <20240116182244.GA101245@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v1-11-84e55da52400@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_102249_499968_CCD3954C 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jan 15, 2024 at 05:14:52PM +0100, Thomas Richard wrote:
> Add suspend and resume support.
> The alread_configured flag is cleared during suspend stage to force the
> phy initialization during the resume stage.

s/alread_configured/already_configured/

Wrap to fill 75 columns.  Add a blank line if you intend two
paragraphs.

I don't know whether there's a strong convention in drivers/phy, but I
see several commit logs that capitalize "PHY".  "Phy" is not a
standard English word, so I think the capitalization makes it easier
to read.

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
