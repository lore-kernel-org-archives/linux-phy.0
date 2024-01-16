Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB07C47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 07:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5bM+aZJYigp6ByqltVmUaVl1CZ9FvrH2WBICCPX2ac=; b=WNRt23vBAEBTTp
	GV/TQ1VbD+KQs/MGGjoqM8sUfK97sVbtlc79qy1YFbjMcFEjlpL7NOjhlDhxCrJHusE4lWVq52nBq
	83xIB68+4xiIYu2LijawVoinCAsWhzrxOos0C06Lx8zB4ksAyFFq/3RMDYRZHiT+45B2Ys8MRMq3v
	G799dC7xqiVVMX90A/C0vDtUS8U3hcpUIwp2R98/oF89UfxE4ic2/7aqypY8pSdXD3Clpa2yLAgDh
	qJAxPJUL9jI5WTtjYj5X58ytaQWfxM//KVMYNnTR0VgZXs0PMrpMIlfJopQWzyQYeo5uT87bdD8E/
	MhoRa1MDH8zUbwHieRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPe7q-00BHBW-2V;
	Tue, 16 Jan 2024 07:44:46 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPe7n-00BH8b-0K;
	Tue, 16 Jan 2024 07:44:45 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 4646160498;
	Tue, 16 Jan 2024 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1705391075;
	bh=GfQbjgBoY0QdWnRrKxS0+HroJWexKyse0pFiOAQkAL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p6KPwtwIvbaX5s0vn8ArVMCEI2mX1yV7niI1V76r3KDv1XHzzaRLkOoZxX/AEs2hL
	 SWghoXb2CCy8YD38pzz+wbgJJxZjJBv2ayud8mCKGtT4Qc04UkCxV+cSDgiOC0vaiZ
	 5VNkcgebX4GTOWxV71AJj5TtxQEEfsQhUAZF2Hyb4AC4w3CAMdeiQ7bNYg+3wy9EuC
	 wxwbLk7wc+/2Wq2RIuo+zjXLpqom8EArKJjQBL+JXq5G+aaMVJsgOg5OW0UT+tToPn
	 WIy/V6DptJrQcUo3MgSOGGZVOcNrBUxwfeWercSbPQoQytAOpKsmYw/tR19TmuSm3r
	 AB0BfaWOW+XXA==
Date: Tue, 16 Jan 2024 09:43:33 +0200
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
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to
 suspend_noirq/resume_noirq
Message-ID: <20240116074333.GO5185@atomide.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_234443_514105_021EF733 
X-CRM114-Status: UNSURE (   7.08  )
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

* Thomas Richard <thomas.richard@bootlin.com> [240115 16:16]:
> Some IOs can be needed during suspend_noirq/resume_noirq.
> So move suspend/resume callbacks to noirq.

So have you checked that the pca953x_save_context() and restore works
this way? There's i2c traffic and regulators may sleep.. I wonder if
you instead just need to leave gpio-pca953x enabled in some cases
instead?

Regards,

Tony

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
