Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF95C61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 23:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnQ7afD0+5Nz1nlwZgok0cCYAjrw9y58ajZhf0IYDWU=; b=16lq5PSVKv05re
	UXC3R1Hnx0GazEapLv8EpM0L9gxL/qpSWKMLhK38jQrz3Gas8fD0FVgjUzLqBJyzZmrDEswXF81gp
	tvLVuogtQv4Ql3slDF5QYar8VI1M29ul11zXAEZRgJR02/y9DUI8kAQniirY8kh+5cKzmiymGf8mu
	CGX2U4wtBQ3jONz1rZvi6LB/WA9j4Q5hsq6Onl+TvPeGhrY4uMbzo5/WlJyTfi7VReQvk2g/LZIdz
	opR2a5xHjTqqMLo0IVgVu1PttVRgCXI0HJosymw+wyy7qsuobPYR8ErYmp3ie4H1Ru/ndvOimgC8i
	83tR3y40lQ7AH/IlzCnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0Er-00000001ekS-2Rnk;
	Tue, 25 Aug 2026 23:07:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0Eq-00000001ekH-1qU8;
	Tue, 25 Aug 2026 23:07:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 707D460053;
	Tue, 25 Aug 2026 23:07:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94AB91F000E9;
	Tue, 25 Aug 2026 23:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787699247;
	bh=1T+yqlLfjZvb7tE/yxSJSdtLanULbQSxCY7Q0MzmI+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b8+ZVnOCbBQxI1XWH6g96OTUS3SSgIkNzk2zPh+wdtROmGeIW2WEEpV2usbXzthg1
	 JMXrAEU/9jUyQ/0DImtguD17Sxr1w9elFP+WAkG6Ja5/XSri5B+xUwbbpYSGoW/X87
	 ERmbCq0z+XrDNwf7RHtsT4ifBthtQm1cltWMcRRSc7Kg66wmFtsv2bwsIQHf5RqYmt
	 VnX9OXTPpdsecFpXNig9/A53poNBjZT/sMaFF7QxoZXGbbZgvrL9/tKtk6PN3HJ3Xb
	 NUP+4ZdF7NC7yQb4CedTcaX4rUk3dW77KK0A5J9hDWuOTbj2ICoZpp/uOJi4kli2Sy
	 KDeVEPJBGPumw==
Date: Tue, 25 Aug 2026 23:07:24 +0000
From: Yixun Lan <dlan@kernel.org>
To: Bruno Banelli <bbanelli@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ze Huang <huang.ze@linux.dev>, Alex Elder <elder@riscstar.com>,
	linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: spacemit: fix and enable the K1 USB 2.0 PHY
Message-ID: <20260825230724-GKF631715@kernel.org>
References: <20260825065007.69353-1-bbanelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825065007.69353-1-bbanelli@gmail.com>
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

Hi Bruno,

On 08:50 Tue 25 Aug     , Bruno Banelli wrote:
> v1 was a single patch adding "default ARCH_SPACEMIT" to
> PHY_SPACEMIT_K1_USB2.  Automated review pointed out two pre-existing
> Kconfig problems in the same entry, and that change makes them easier
> to hit: enabling the symbol by default means configurations that would
> previously have left it off will now build the driver.
> 
> So fix the dependencies first, then enable it by default.
> 
> Both were verified against the driver source: phy-k1-usb2.c calls
> devm_platform_ioremap_resource() and devm_regmap_init_mmio(), while the
> Kconfig entry has neither "depends on HAS_IOMEM" nor
> "select REGMAP_MMIO".  PHY_SPACEMIT_K1_PCIE, directly above it in the
> same file, already has the HAS_IOMEM dependency.
> 
> Tested on a Milk-V Jupiter (SpacemiT M1) running mainline 7.2: without
> patch 2/2 a "make defconfig" kernel has no USB at all, because
> dwc3-generic-plat cannot get its PHY.
> 
> v1: https://lore.kernel.org/linux-riscv/20260825052158.66367-1-bbanelli@gmail.com/
> 
> Changes in v2:
>  - new patch 1/2 adding "depends on HAS_IOMEM" and "select REGMAP_MMIO",
>    with a Fixes: tag
>  - no change to the patch now numbered 2/2
> 
Thanks for this v2
Reviewed-by: Yixun Lan <dlan@kernel.org>

-- 
Yixun Lan (dlan)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
