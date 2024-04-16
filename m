Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0F2C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 06:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F2khXvm8jPZf5CflRJ7wcIOm+H9+4npqbeMMazcLV4=; b=nZuEisfBZwg6hf
	wgGyUhGb+yVGmqadcbjvZrXeas9XiK9EpPTxVbTPobyAOHHmGfAnjs0GjNgYKiMJk2QP8cZ4Uvem7
	kXdUrQulNOhah3CCTrmGdcKjRgZQKyxag46lmH7b/fiz8hFryusIImTL9olNxoMWtQ2PTHjC05PZz
	wQMRLKhmNvT3/VmvSsANBvsBPUfsF7pTuxhLbjXk0/HZQdZAVlUyk7rF7/iOuKy/8LalNYD8KWnkO
	7vW4zZeCZnH1JyV4AAxqcNHJD0RUZs/evE6CqphXJ+RHiTp4W5noCk36m3nVAfn0HzpxLzN74wKbd
	h5+p3ifiKrBdHz+Za40w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcHn-0000000B50T-3m49;
	Tue, 16 Apr 2024 06:27:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcHk-0000000B4yn-1hIA;
	Tue, 16 Apr 2024 06:27:18 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rwcHS-0005DQ-PJ; Tue, 16 Apr 2024 08:26:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: fix CONFIG_TYPEC dependency
Date: Tue, 16 Apr 2024 08:26:57 +0200
Message-ID: <2727344.mvXUDI8C0e@diego>
In-Reply-To: <20240415174241.77982-1-arnd@kernel.org>
References: <20240415174241.77982-1-arnd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_232716_502152_A8E476F7 
X-CRM114-Status: GOOD (  20.62  )
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

Am Montag, 15. April 2024, 19:42:25 CEST schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The newly added driver causes a warning about missing dependencies
> by selecting CONFIG_TYPEC unconditionally:
> 
> WARNING: unmet direct dependencies detected for TYPEC
>   Depends on [n]: USB_SUPPORT [=n]
>   Selected by [y]:
>   - PHY_ROCKCHIP_USBDP [=y] && ARCH_ROCKCHIP [=y] && OF [=y]
> 
> WARNING: unmet direct dependencies detected for USB_COMMON
>   Depends on [n]: USB_SUPPORT [=n]
>   Selected by [y]:
>   - EXTCON_RTK_TYPE_C [=y] && EXTCON [=y] && (ARCH_REALTEK [=y] || COMPILE_TEST [=y]) && TYPEC [=y]
> 
> Since that is a user-visible option, it should not really be selected
> in the first place. Replace the 'select' with a 'depends on' as
> we have for similar drivers.
> 
> Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index a752ccdddb86..08b0f4345760 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -120,8 +120,8 @@ config PHY_ROCKCHIP_USB
>  config PHY_ROCKCHIP_USBDP
>  	tristate "Rockchip USBDP COMBO PHY Driver"
>  	depends on ARCH_ROCKCHIP && OF
> +	depends on TYPEC
>  	select GENERIC_PHY
> -	select TYPEC
>  	help
>  	  Enable this to support the Rockchip USB3.0/DP combo PHY with
>  	  Samsung IP block. This is required for USB3 support on RK3588.
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
