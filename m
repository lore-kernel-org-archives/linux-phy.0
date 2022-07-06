Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA04C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIJCBXZZhbkdbN6qdy587eJh19ZZivFX5BlbZX+p82U=; b=Dyo/Pyx7XYXm6Q
	Hm3sDmtJTsaQaHB0/t9rLyCuPU2k0UliV6lTQeY76ddx6C3rP5UxaJWHrLsDnh8X9oUEuj1kQnTCS
	rwJHbxoKGaZ6FmQccWo5z3Qu9Tq0miMOkQvUK4BBFuuvftV3cGYJIAv22fJzTcYENMRHoLAw7DxmF
	Bs+gs34XSEwE6etyysyaYa4SdnwDQyB9iYdUc7o8CIx0Mpc6IQoDgj43RNjHjYcXwjDX8ldd+WK8a
	vu148NJG+V1aUrASjAm1/qJIUKZbHMXGO5KCyYEQYd+XtiPIRLFdXQB3QfZi5QLcRWQ+uAFPKDVh1
	YiSSRmQbzTVm1ClFJbRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98K8-00BW1B-FS; Wed, 06 Jul 2022 16:56:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98Gq-00BUX9-97; Wed, 06 Jul 2022 16:53:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6978361E0E;
	Wed,  6 Jul 2022 16:52:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AB5BC3411C;
	Wed,  6 Jul 2022 16:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657126378;
	bh=p9+EIYiQFsEijWg7qUqn4ryIqQU2p1/cxe9Pq3LUI5I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VaUuO1RwaFm+0u5ev1dM72McKyCsJgUoMfeulJYPkHososvaV+WDRIKh2rSmPq/5I
	 ycOK+fXQFhN0cAzIGuEIRUGAc72n1Dg8BvFGxp45CG3JXMdbYTikfi2jlnQVeNoBij
	 r2zfhkuKbEGjlN+md/SkAdY1aYaN4T4QB9EM0K5JZp4RG2Q+wkmpDBNq3N+VeK0/PO
	 qidIwXyZj01SxZRRmEYAqsn075IAurVDuHlFh+oh0YwLTG7MhXCwpEFRQBF5dKSyW9
	 ciX4ZrYzhQCwlQ0ADndLsxjzn5lmyyRbMban5DzpUIt/qICAYJNnuSF7Qx6E13IbEF
	 uVl1lLdxPW9uA==
Date: Wed, 6 Jul 2022 22:22:55 +0530
From: Vinod Koul <vkoul@kernel.org>
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
	Tyrone Ting <kfting@nuvoton.com>, Wolfram Sang <wsa@kernel.org>,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Subject: Re: [PATCH 5/9] arm: bcmbca: Replace ARCH_BCM_63XX with ARCH_BCMBCA
Message-ID: <YsW95wP010g9z1P7@matsya>
References: <20220705172613.21152-1-william.zhang@broadcom.com>
 <20220705172613.21152-6-william.zhang@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705172613.21152-6-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_095300_441258_88CB0E18 
X-CRM114-Status: GOOD (  10.40  )
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

On 05-07-22, 10:26, William Zhang wrote:
> Update ARCH_BCM_63XX in all sources to use ARCHB_BCMBCA instead.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> ---
> 
>  arch/arm/Kconfig.debug         | 2 +-
>  drivers/ata/Kconfig            | 2 +-
>  drivers/char/hw_random/Kconfig | 2 +-
>  drivers/clk/bcm/Kconfig        | 4 ++--
>  drivers/i2c/busses/Kconfig     | 2 +-
>  drivers/phy/broadcom/Kconfig   | 2 +-

Acked-By: Vinod Koul <vkoul@kernel.org>



-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
