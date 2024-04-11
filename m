Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F171C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 19:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIF3fJQZLt9p13VZAnNb1rN2bt51FyptbTjkETEAl0I=; b=DQWzUNjmeXIEsF
	fe0AePYYHRYkSEGLqbgE252ve3OxGyjY+sVAw0NORLp8YlARhmshAt2OphkgWf3x07zXnBeyG4HD0
	iKP0WJJiZC4fxWExE1W7B/ZhEW+JwyIFjekHbF66Qq4HnZ7nP0lCUamryJ5VJJUyAB9+eK8c3cjYR
	VmJM1xr+HzvvcsHyPweiQ8aoBf50tYWTfBwRNd4d9js19LGax2dkM8mgvr3ZkOLvGkkACHYPEljFI
	muVt3DsNhrorG4+WcThvTlXJ1ZeLAJMQm8zCT08WHqD6Xv4I2DY0IPfcAQS7Szdj1wbF4sEu1d0lv
	qqf+JbCeU2TSf4IYYlWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzid-0000000DoME-3svB;
	Thu, 11 Apr 2024 19:04:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzia-0000000DoLX-0xSz;
	Thu, 11 Apr 2024 19:04:17 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruziS-0002HW-BR; Thu, 11 Apr 2024 21:04:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Select CONFIG_RATIONAL
Date: Thu, 11 Apr 2024 21:03:44 +0200
Message-ID: <114516975.nniJfEyVGO@phil>
In-Reply-To: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
References: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_120416_302179_7F26F35B 
X-CRM114-Status: GOOD (  14.85  )
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

Am Dienstag, 9. April 2024, 00:29:25 CEST schrieb Cristian Ciocaltea:
> Ensure CONFIG_RATIONAL is selected in order to fix the following link
> error with some kernel configurations:
> 
> drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_ropll_tmds_cmn_config':
> phy-rockchip-samsung-hdptx.c:(.text+0x950): undefined reference to `rational_best_approximation'
> 
> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202404090540.2l1TEkDF-lkp@intel.com/
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index a34f67bb7e61..b60a4b60451e 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -87,6 +87,7 @@ config PHY_ROCKCHIP_SAMSUNG_HDPTX
>  	tristate "Rockchip Samsung HDMI/eDP Combo PHY driver"
>  	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
>  	select GENERIC_PHY
> +	select RATIONAL
>  	help
>  	  Enable this to support the Rockchip HDMI/eDP Combo PHY
>  	  with Samsung IP block.
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
