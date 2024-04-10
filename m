Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A50ACD11C2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 07:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ou5IuCRUk8FyzKtfeB3JDV5xg7y5juAIDYr4MoVRt8o=; b=JNo6gCjzmfdhMY
	px0FKsUKPY+LRFQ2pbBs7qEMCHemsDuBAFo50EC8V5Hiz9bNkSaliyTpcLChRUBwHzVKcMw8BntbI
	SdyA5hCJ0vtjF2hkqXp7UXzqilpZA7S3OfTQK68r0JbTx7kI2sB9iD3CyO1i8vlLIdkxhqknRHi29
	r3ctGfWM8HUlHmgCMy7yzAxdQbV+nzzkH0N7VmDw5eM9zxaXzj00zAhnDIt3kpyKXE2+iWHhWmqxF
	1ORLNTwvoNm+3REFplj1IzxtmhfgNSB1GJvhsOtZYst7/Y7ETu2SjelSCUDXHDrPwN4xPsqoC+cAc
	11peUzB5eAn+2IigUUVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSkb-00000005iAu-35g6;
	Wed, 10 Apr 2024 07:52:09 +0000
Received: from mail11.truemail.it ([217.194.8.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSkW-00000005i91-1Tb5;
	Wed, 10 Apr 2024 07:52:07 +0000
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id E3FA21F9C5;
	Wed, 10 Apr 2024 09:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1712735516;
	bh=Rf9tbmyHVVZAveMk9B3qlTo48OjSr4wSqvHKOQgw4WY=; h=From:To:Subject;
	b=1FBMhjvzVLPhdRUPpxqL+ggGPFh8OQluY/51j/ktYpw5jg5BKtEEj0UiWFswmx4HY
	 AhPpbmaJiF/zqrCZIz5xQslhKx9lEerphyQNoQPVvR1QkMAnWezd8PY1vnhmh7YCPv
	 UyPjN12ZckhNMKaN+dXi/dqVHbWiLvW0N86ZoxgZ1mNe37rmllXlpZ/O0F5hj7cB2H
	 q8iB1HWNUCCxfdq+dYWekLIWrie+uNmEmz7i5Sb1HYJkB42gdGCcxeJkG+MZhgtRps
	 /gZMljhuJvgcyMTD0yw5Hr+9hXxQ1q8b4S5LYaj1hqDTmcctAjvjwtIixXAYzFdQWU
	 vuLayzDsOM4Zg==
Date: Wed, 10 Apr 2024 09:51:52 +0200
From: Francesco Dolcini <francesco@dolcini.it>
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
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v4 16/18] PCI: j721e: Use dev_err_probe() in the probe()
 function
Message-ID: <20240410075152.GA7748@francesco-nb>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-16-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-16-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_005205_589824_7FC44956 
X-CRM114-Status: UNSURE (   6.58  )
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

On Mon, Mar 04, 2024 at 04:35:59PM +0100, Thomas Richard wrote:
> Use dev_err_probe() instead of dev_err() in the probe() function to
> simplify the code and standardize the error output.
> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Franceco


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
