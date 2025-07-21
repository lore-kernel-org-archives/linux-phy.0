Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D89C87FC5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 09:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz87Ez97cblYnI2mwaqyo1mlglTND4twFGWUQEXx+0U=; b=KV5xupehCXKzHJ
	59zFw3dkX3tDnRhSmj2g8qDsaC2PPbigp0mfZYTNgy5T6dBgdHnW99I817/7R/TfdUf8ktWcqgYkU
	hrif2KCF1L/nsX35SKna/X3C6Kqz3NmI58rRuT8SHEtNH0MKP1Nmuf2UDuE3DF3yeXtx24s5BM8SF
	OxJzSiPlgnv5Mooya94EnzCaLei7SDWWxxraV88XyV9kQFa+cc5SymygsMaChs6pVkdOXhWMGUudO
	C+akGTK9O4TL1lygGkDeo7OvKwi799IrkOt7c0/TPiKrFnvOAihuH3dfJTof/NJT9+xO6OkO555P2
	X6Ow5tbydUDbyrynuI4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udmt5-0000000GopQ-3ZOZ;
	Mon, 21 Jul 2025 09:32:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udmLx-0000000GjQu-0q75
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 08:58:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED95C601E1;
	Mon, 21 Jul 2025 08:58:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E51A2C4CEED;
	Mon, 21 Jul 2025 08:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1753088311;
	bh=wWzhLjHGZJcD5noQr983sn3nffxSA3p1GlMP8Z76gKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wXWstyCxPGPIJO8pzpKzr6nvQfsFBff1Najfu2/05gZZgbXC1ByTffziSA3Qw5tpD
	 cQFrp6jsLrGFu3p+kvXYhKIGWg1xtJeUW7/wJHW0xfO3MPxuXsS6fEd+s7rRBg5sij
	 Nk04tBj8sC5stOAgwzyqxU9bK4Pl8oDyk/84ktYE=
Date: Mon, 21 Jul 2025 10:58:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com, wenst@chromium.org
Subject: Re: [PATCH v1 5/7] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <2025072120-swaddling-fencing-3dc0@gregkh>
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721075525.29636-6-angelogioacchino.delregno@collabora.com>
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

On Mon, Jul 21, 2025 at 09:55:23AM +0200, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate a charger for coincells, usually
> powering an RTC when external (or main battery) power is missing.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device and
> initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/misc/qcom-coincell.c | 37 ++++++++++++++++++++++++++----------
>  1 file changed, 27 insertions(+), 10 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
