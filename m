Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4505C0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 12:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDDNxv/75Xm3+sXmq5VbfiqoH0v7/1Yntzzug9jFEEc=; b=kUR6znWtua4FII
	d8dapAozKE6ZpXIjG4UjpjN/4cm1q9HhDPR8Seq6HA1Yoe1Z/hBrzuPnN3A4CZn9CpWNXovuXBfAu
	IZYmBFyi2iQutNYwF2OmUEpSU2fCe9Xs35wiP9KNEXnSax1dGPW9krbOpgDHXZDWJ5ESs3I1mBNql
	eTzAnOb13oo5bkJhbmQexdUne0tnuMVtZafJjJOGwHF79F6cRJjWzzIWkd4f1+P2LiWMVsWpzuhOC
	x2rmAZ9jwj/AQvj1jtgGeWMDrdB/29ykH+90caswAnCFBe2IofxubNt8kecudmWjCbv+i7248Zuwl
	dVxKugwSC3Qdom7LQgJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teCt4-0000000CIIX-3QnB;
	Sat, 01 Feb 2025 12:46:14 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teCt3-0000000CIIB-0J10
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 12:46:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E083DA40526;
	Sat,  1 Feb 2025 12:44:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6729C4CED3;
	Sat,  1 Feb 2025 12:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738413971;
	bh=7ko/gQUGt0pizGv4D1amPrClqwB81WnRx5o5PwUX/x8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EppRzHBuNDbnUhTthJlTexKX37xf80XHABBRneVyeZM1cxBQORR7mVi+r/jBBMIaM
	 c8sRXLMF41a635MSBk1QaAFGSd9J2kxPrwCDZH6VrTOM+2RFg7EcRSpar4VOW1yjKt
	 Jd4MKZYnVXQr71prex5I3ZGdWAe/P/h3mOp93GmGuKOLsRWXWnoEeQOzZIEjKF39dU
	 aQ9/bOi5qEsCBx8QZEknphdEfnCBgWbfZ6adjxMDFEUKv+WEi+Zyem093AhhzSaC9j
	 b62gMYM+7dK9a8VwA6Klc0kHSOgIAk/q0U4Y9vBHAsS9wYzfJkbAMNRoDlbTGk6NZK
	 eafamWqbrngLQ==
Date: Sat, 1 Feb 2025 12:45:54 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, Ulf
 Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Heiner
 Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
Message-ID: <20250201124554.7e64d016@jic23-huawei>
In-Reply-To: <2715ead8-cf6d-4b44-b6e3-343cb6489eca@baylibre.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
	<4ad45123-134a-4544-ad0a-24371105d96f@lunn.ch>
	<2715ead8-cf6d-4b44-b6e3-343cb6489eca@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_044613_188219_0391B997 
X-CRM114-Status: GOOD (  20.73  )
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

On Fri, 31 Jan 2025 14:51:52 -0600
David Lechner <dlechner@baylibre.com> wrote:

> On 1/31/25 2:38 PM, Andrew Lunn wrote:
> >> So I'm proposing that we add a gpiods_set_array_value_cansleep()
> >> function that is a wrapper around gpiod_set_array_value_cansleep()
> >> that has struct gpio_descs as the first parameter to make it a bit
> >> easier to read the code and avoid the hard-coding temptation.  
> >  
> > This looks reasonable.
> > 
> > How do you plan to get it merged, since you cross a lot of subsystems
> > here.
> > 
> > 	Andrew  
> 
> Since these are mostly small changes and most of the touched drivers aren't
> seeing much action, I think it would be OK for as much as possible to go through
> the GPIO tree.
> 
> We might need an immutable branch from that though since I know that iio: adc:
> ad7606 is currently being actively worked on.
Looks good to me (subject to requested name change from Bartosz)
I'd suggest an immutable with patch 1 then up to each subsystem
maintainer to pick that up or wait for next cycle.

Always hard to predict what else will get worked on at this stage
of a cycle.

Jonathan


> 
> If there are any patches leftover that don't get acked to go through the GPIO
> tree, I can resubmit them after the next kernel release cycle since none of
> this is urgent anyway.
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
