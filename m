Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464C8E64016
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 12:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebYUrjeLnfNQWTpRjIClB9bb9lztHfCCnjF9YanzbKM=; b=t34Ofu/t7bnWhJ
	JkY499eoOfGpAqr4Dy5ONyrb4YVJGOmkB9Ayf1nj60ZTW/qsPbAc6n21x3N2AFDfELY9zfA6QX7ov
	uR26XCDjiACKOrIS4toz0w/E2Bs5bf64XGzyAZI+GluIg7QglNpF98e3iw0bHJwHi9nn+4NIQRdIq
	EyEjBpgO+wORc/wx/dUWIsk2G4rAIs7obwKNNpI14aomojJzKgEYBSN7SxDxVa/6BXW7nliGaO+kp
	5drp8pMdtxOrigDWA+L2nhQ20S0ih6XphUZPqHLh2n04/gwORnAT66qaREvLj6uR34ylIHQHodhqS
	AP57Y+3gz/V4an+ubTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9jD8-0000000576A-3T8B;
	Mon, 06 Apr 2026 12:37:46 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9jD5-00000005759-16pg;
	Mon, 06 Apr 2026 12:37:44 +0000
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1w9jD1-000441-00; Mon, 06 Apr 2026 14:37:39 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 1F503C0256; Mon,  6 Apr 2026 14:37:11 +0200 (CEST)
Date: Mon, 6 Apr 2026 14:37:11 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, mturquette@baylibre.com,
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ryder.lee@mediatek.com,
	jianjun.wang@mediatek.com, lpieralisi@kernel.org,
	kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
	vkoul@kernel.org, neil.armstrong@linaro.org, p.zabel@pengutronix.de,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	nbd@nbd.name, ansuelsmth@gmail.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 8/8] mips: dts: Add PCIe to EcoNet EN751221
Message-ID: <adOo9xZxXT3FkufM@alpha.franken.de>
References: <20260309131818.74467-1-cjd@cjdns.fr>
 <20260309131818.74467-9-cjd@cjdns.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309131818.74467-9-cjd@cjdns.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_053743_451120_3A3CEE1B 
X-CRM114-Status: GOOD (  10.04  )
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

On Mon, Mar 09, 2026 at 01:18:18PM +0000, Caleb James DeLisle wrote:
> Add PCIe based on EN7528 PCIe driver, also add two MT76 wifi devices
> to SmartFiber XP8421-B.
> 
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> ---
>  arch/mips/boot/dts/econet/en751221.dtsi       | 114 ++++++++++++++++++
>  .../econet/en751221_smartfiber_xp8421-b.dts   |  21 ++++
>  arch/mips/econet/Kconfig                      |   2 +
>  3 files changed, 137 insertions(+)
> 

applied to mips-next

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
