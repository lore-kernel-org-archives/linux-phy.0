Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F62C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 06:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eD7mNaO6iiyzmmOBTCxZRT1FHsHXmPpcRku2JXX7NMk=; b=BHnyvs6kUCwEcw
	4ikSvkPb0QunFYuOmv75mpXZ96UkePUjAYM+vsimr/ltvTD/9AUj7qEN0zGjbG8V4iiCqc3ul0wys
	NYNy3VcLbV7Sz+PT8l3fFrLKBwBKnOw/EsvmEZ9/9KPPYF/v+BC/f6g8V1LiWGQb6NxyhRGmXHX/8
	zh4nm1KXtCiEvjvn/U1Crs84ubueXdbk0XW5EWT3jlJp5fGxuq/En3q5CDw0fqqNCzOQQpo7+OSHF
	PQz6i/5DY1HfRV88kE1OBLSjKAua7k5dsMECfJWBnbXwuAiP9v46fcRIlbqsB8FQZwSqwVzYXY59q
	etKuR/6jR/OlcV4FBs5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rarJ6-00000001BOt-0wlM;
	Fri, 16 Feb 2024 06:02:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rarJ2-00000001BO5-37FT;
	Fri, 16 Feb 2024 06:02:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 70F0461120;
	Fri, 16 Feb 2024 06:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D6DFC433C7;
	Fri, 16 Feb 2024 06:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708063356;
	bh=xLbg9CJsDugebWTcD0p7oHppt3/BIZOhQtv1Tcg/emU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=THXyeRcij7KtomuLH6sUqnXn8UU7L7Hte6T9jzC5fFgVNlU3zQKtDaRdHKmQbcgAN
	 CRhnLUVsiOag7GJykwVBqAHhbNekbvdJn2iTZr3hWMoippmFXyEWEJXGt6XEtrcA5T
	 gWtVwASk5StZBaoXwTP1sDuRPOBBYT2w1d1Ubgd4rwjDtL064eHSRhxJ3A3LYwgpRF
	 AXuNnzln5/R5Frx7J9tRu5PklVyvd7GMXIXtfXEstV29hrLzwnpYCSIvBEq0KuSaSD
	 6RJEcQBJ4KPZfh8oe5/P6hxicMI/Rw5+2L17q/fcIcbmzsIbNukbmK1OaO6KrkpQsH
	 xdirAFy6zk3hw==
Date: Fri, 16 Feb 2024 11:32:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andy@kernel.org>
Cc: Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v3 08/18] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
Message-ID: <Zc76d4B4hjTC3xum@matsya>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-8-5c2e4a3fac1f@bootlin.com>
 <Zc4xJtLl3zo_YrBC@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zc4xJtLl3zo_YrBC@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_220240_848102_8574DF4B 
X-CRM114-Status: GOOD (  14.71  )
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

On 15-02-24, 17:43, Andy Shevchenko wrote:
> On Thu, Feb 15, 2024 at 04:17:53PM +0100, Thomas Richard wrote:
> > The wiz_clock_init() function mixes probe and hardware configuration.
> > Rename the wiz_clock_init() to wiz_clock_probe() and move the hardware
> > configuration part in a new function named wiz_clock_init().
> > 
> > This hardware configuration sequence must be called during the resume
> > stage of the driver.
> 
> ...
> 
> (Side note, as this can be done later)
> 
> >  	if (rate >= 100000000)
> 
> > +		if (rate >= 100000000)
> 
> > +	if (rate >= 100000000)
> 
> I would make local definition and use it, we may get the global one as there
> are users.
> 
> #define HZ_PER_GHZ	1000000000UL

Better to define as:
#define HZ_PER_GHZ 1 * GIGA

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
