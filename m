Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D847CCA485
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 19:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbJI9fsT34VpYDFKrq2Y/mg8LxmXQUsxM8PI3w2aroc=; b=TORmoevCtRmgmL
	4+XkD4CKhIzdPNxJojdVknLrIGRswyLFQV2xz5ZICwy4BoScfg+Y9eCK9rQ2kiRRYHoWJ70ItGY3p
	vp7N8anDEEVjOtPv0b1PTjCGolBkZRZXjvZBhvivQy9/i4b8i00fr9hP6jQg6Pn0c7kXVt67sIGCR
	odtgROLXOpg6UHUn5nYj2cj+a58+PY6C30oM37hYBzv3poYPcSSBfsGPrFiRg/7/BxErT55lRbI5m
	0RClC8jgk1TmdOgwVqXpKjCoioEyGHviITFPaTK7NDzGtZm4GjymYeDcCeDegtwBHdfCj9QYX1jKQ
	hFkewubZLm0k8Qamkp7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8nwv-002Hk7-GR; Tue, 05 Jul 2022 19:11:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8nwk-002Hcb-5V; Tue, 05 Jul 2022 19:10:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 14D9261AFA;
	Tue,  5 Jul 2022 19:10:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B1ECC341C7;
	Tue,  5 Jul 2022 19:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657048250;
	bh=DZjCJJL0Yv/6HD/E/v6p0fOtpAocdv+3cV77tazWrKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sYOW0yhQip2w1zZZEmV4YnPpYe1Dy4quQmSEs13vh2JajXJKLLGWCI3l+iBtPG4vj
	 h+EAgUVB5rnMUc92yTA9RfRbfck+yWdLp/RjaYs1kCykXLv1b8Mjtg7QQb+rIK97EQ
	 zx/5yHoF/yOxitslbjIsCJ2bn3esa3E8oFa8X4T1usa1/pHHSFevJccuJoGgbd3dys
	 rDy/74rj/s8Pxlm/hAZ3qRvla8RFMdt3f06haSb++zMFm9h2lRaUWEtyBdWzWYsHce
	 iHBLMJ4NTSs8jcNJWRmsxsjvBUo9f7epFDJC9YovFkPabWqsJeHYdbNZ19f3OvqNeV
	 WbLP+F125vMOQ==
Date: Tue, 5 Jul 2022 21:10:42 +0200
From: Wolfram Sang <wsa@kernel.org>
To: William Zhang <william.zhang@broadcom.com>
Cc: Linux ARM List <linux-arm-kernel@lists.infradead.org>,
	joel.peshkin@broadcom.com, kursad.oney@broadcom.com,
	f.fainelli@gmail.com, anand.gore@broadcom.com,
	Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
	philippe.reynes@softathome.com, dan.beygelman@broadcom.com,
	Al Cooper <alcooperx@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Cai Huoqing <cai.huoqing@linux.dev>,
	Conor Dooley <conor.dooley@microchip.com>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Jan Dabros <jsd@semihalf.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Jie Deng <jie.deng@intel.com>, Jiri Slaby <jirislaby@kernel.org>,
	Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Brown <broonie@kernel.org>, Matt Mackall <mpm@selenic.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Sunil Goutham <sgoutham@marvell.com>,
	Sven Peter <sven@svenpeter.dev>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Tyrone Ting <kfting@nuvoton.com>, Vinod Koul <vkoul@kernel.org>,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Subject: Re: [PATCH 5/9] arm: bcmbca: Replace ARCH_BCM_63XX with ARCH_BCMBCA
Message-ID: <YsSMskwYYsJRRCyO@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Linux ARM List <linux-arm-kernel@lists.infradead.org>,
	joel.peshkin@broadcom.com, kursad.oney@broadcom.com,
	f.fainelli@gmail.com, anand.gore@broadcom.com,
	Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
	philippe.reynes@softathome.com, dan.beygelman@broadcom.com,
	Al Cooper <alcooperx@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Cai Huoqing <cai.huoqing@linux.dev>,
	Conor Dooley <conor.dooley@microchip.com>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Jan Dabros <jsd@semihalf.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Jie Deng <jie.deng@intel.com>, Jiri Slaby <jirislaby@kernel.org>,
	Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Brown <broonie@kernel.org>, Matt Mackall <mpm@selenic.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Sunil Goutham <sgoutham@marvell.com>,
	Sven Peter <sven@svenpeter.dev>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Tyrone Ting <kfting@nuvoton.com>, Vinod Koul <vkoul@kernel.org>,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
References: <20220705172613.21152-1-william.zhang@broadcom.com>
 <20220705172613.21152-6-william.zhang@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705172613.21152-6-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_121054_340337_B446C615 
X-CRM114-Status: GOOD (  10.17  )
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

On Tue, Jul 05, 2022 at 10:26:09AM -0700, William Zhang wrote:
> Update ARCH_BCM_63XX in all sources to use ARCHB_BCMBCA instead.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>

Acked-by: Wolfram Sang <wsa@kernel.org> # for I2C


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
