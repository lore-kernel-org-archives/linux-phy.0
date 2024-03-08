Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A2BC5475B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Mar 2024 08:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwFTZFTYM+pAmWQE4k8ptXIKRR5CY0befV/8DuAoiIE=; b=nvfABaMgh/A+T7
	JTtqwk7BC2Fuv6LhRr8DlRtCW1PWZsC0sjhvB6Wu0XJY80J8TzKFpa84vhfhYaP0T4ILkfcBRpnwG
	dEC4yX6iCnnccJaHl519T75ReEhqhLTwaFZxqG4PRYwZIRhG0UR+3+d784wvQUOP2xEk7p0bva0Ct
	MaBdVxR0Xux04IBOVqTvgBfSoJ3I7ZwccbhPI02xZ6ddQlAklAva/ZebSrMZyhetnL2SFfQnrUBlv
	4Alj6nHwTio63SZfxznT80MWGfWw54EzJUPjS0e1UowrSam5njbEzM0sDlYeeFdys2L3EwnqfTxCR
	FyicyR6s2NtV4Eb/NQ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVpQ-00000008Noz-0HuP;
	Fri, 08 Mar 2024 08:43:44 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVpM-00000008NoC-2h3h;
	Fri, 08 Mar 2024 08:43:42 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 134EF6042D;
	Fri,  8 Mar 2024 08:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1709887419;
	bh=aq/DY06lWHUt/eFJo+xen0fLGamPz9fKyECMARilshg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fgerG7KwfJefNMJNLfcraXoH3qDf0WBpWM/+wFaNdiZvPvVAVU29lsiqjPLfSExw0
	 RfCfw6TWN4Svcb2zWCctQVs2I2hHQvStXzfEJMR8uq78nrHZnWsnVjfbJTToOz8AGy
	 FOezl7jYUUTOs5w80Ph3aryTRe9U4IJsM6Ylv0eYhfVOpKex0N1baXsiPzChY7hWBb
	 BL6IyTmAy1lUVVMYiBIS8EGRE5Q8tsoomQj/zY5pL3E+41HIYAU/BitF3RzYwYYhiJ
	 a6BkG1psPAAYXbZQnlbTk4/lBjhtOp/k4X+3y5Qwrenq/ZPDE0TdkyZdgevSjaNDz4
	 WVFRVdPEAWCLA==
Date: Fri, 8 Mar 2024 10:42:40 +0200
From: Tony Lindgren <tony@atomide.com>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
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
Subject: Re: [PATCH v4 03/18] i2c: omap: wakeup the controller during
 suspend() callback
Message-ID: <20240308084240.GK52537@atomide.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_004340_866273_F2F5FB55 
X-CRM114-Status: GOOD (  10.96  )
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

* Thomas Richard <thomas.richard@bootlin.com> [240304 15:36]:
> A device may need the controller up during suspend_noirq() or
> resume_noirq().
> But if the controller is autosuspended, there is no way to wakeup it during
> suspend_noirq() or resume_noirq() because runtime pm is disabled at this
> time.
> 
> The suspend() callback wakes up the controller, so it is available until
> its suspend_noirq() callback (pm_runtime_force_suspend()).
> During the resume, it's restored by resume_noirq() callback
> (pm_runtime_force_resume()). Then resume() callback enables autosuspend.

Reviewed-by: Tony Lindgren <tony@atomide.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
