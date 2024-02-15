Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F093C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 17:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=01UHgaXLqdl+qqfbEccBMIxmM+clQAXSZeyfht5tDh4=; b=UuLlBQEtm2pnJK
	RLNPsaTwPyEJjrUC+5RUCtasvPzNC3FTmeQLOvhvCbWCoWbOs3FXr0kdHgFHKHwW+ZEQbmy8M6bt3
	5xjX4mv9GLFfXHXQ5zR1xMJmj2klEFbF2+FyTLLGzYWr4/crU4PId1JTWvLXC+0unJW+lv2grlKxZ
	cgNI1w7Sb5wGQ42HjH8cgrbCLjBBjdkte7a0NkyZyqElK5Wjnw3jOfq797W+KfWRCjzNSHk63c7ZX
	LTflZ8fshyHQSunbQvCZktTbMliMs+YSemdxO1bPlNXvwwxUHpo5T064yBJ9UkIDJRhs8fZ5popcl
	L989SPJTkTGDO9fUvkYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rafBc-0000000H7AC-0bdf;
	Thu, 15 Feb 2024 17:06:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rafBZ-0000000H79k-0dE0;
	Thu, 15 Feb 2024 17:06:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06D3860FE2;
	Thu, 15 Feb 2024 17:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B88AC433C7;
	Thu, 15 Feb 2024 17:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708016767;
	bh=nq34IP6sfpD54hsEtrN2j/P+4DNp6g4tkl0Jwz9sTNw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=uuL2/XHjxDow0CBItd3NuPU14AW2Kvom1K9Wr9j5a43WNbnXKxS6qLs96rgU+lH1b
	 vYmgKOnPyo1KlOXrOx2rf3woeVDCKAsWKmnttNrVV1Jo5T14L2WXDu0TYPazgiMNVX
	 cIiQLkeo7lUq7u6QEcgmVUUWkN5Q6F98aLQbtxVr+xFE8r53AynGns+s0Rvq/VRrCm
	 lw1l5c5W3akEl8k39a6ztwOy3nsGhR9j0EGi6CvA2qt07+VBbt037uX3kPZl3GvY6b
	 DgKqCyFiw7gPCIV1YPCq3qdxrZsWswZb4+cXHIXesWd2nQ6lOD/p1N93dMixc3IBUq
	 WGDLgvYo1uQWA==
Date: Thu, 15 Feb 2024 11:06:05 -0600
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
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v3 00/18] Add suspend to ram support for PCIe on J7200
Message-ID: <20240215170605.GA1294576@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_090609_252690_CAA0D730 
X-CRM114-Status: UNSURE (   7.76  )
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

On Thu, Feb 15, 2024 at 04:17:45PM +0100, Thomas Richard wrote:
> This add suspend to ram support for the PCIe (RC mode) on J7200 platform.

>       PCI: cadence: extract link setup sequence from cdns_pcie_host_setup()
>       PCI: cadence: set cdns_pcie_host_init() global
>       PCI: j721e: add reset GPIO to struct j721e_pcie
>       PCI: j721e: add suspend and resume support

The drivers/pci/ subject line pattern is:

  PCI: <driver>: <Capitalized verb>

e.g.,

  PCI: cadence: Extract link setup sequence from cdns_pcie_host_setup()

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
