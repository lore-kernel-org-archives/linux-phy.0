Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2192C27C4F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Jun 2024 07:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BVXUl7vj8mPoBDhY9bpxeyOe4e3aXUxK4WkCJK5alY=; b=dPxOpncqhg47/2
	Rw7BoONFGHR3DToDl7Cr2etWKbAN4iovE32ngMCMeqzDnwaIMpqMBA/ct2jSWoO1a0msLFTyCBF7e
	qcmLb6toGZxdM8VKwqkWxVcSe8FvJhOc+TorQK0nkpTpfwP8GXCzjmNtwAd96P4V08yzSAH8dmg7q
	WQRseN8HXZ2mmTW8GC3Y74tOf68twyHjC9+UFJ7viisrqEjRCK49H9D9Obt8UZuKgo820BGhHz7+v
	zaC2S/wnCdgL+fC4PelnVdz4bDeK7L1+gO3jINdqSwn7hISGjc8M6CNMnenmcH2EKAuFnmbULUzZA
	4hguyXASVTUY1KQmbuzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTgX-0000000E1Wo-2dgF;
	Tue, 18 Jun 2024 07:55:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTgV-0000000E1Vw-16HM;
	Tue, 18 Jun 2024 07:55:20 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJTgP-0006QI-C0; Tue, 18 Jun 2024 09:55:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: phy-rockchip-samsung-hdptx: Add clock provider support
Date: Tue, 18 Jun 2024 09:55:12 +0200
Message-ID: <2910644.FA0FI3ke8A@diego>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-4-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-4-80e4aa12177e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_005519_485985_651CA1C3 
X-CRM114-Status: GOOD (  18.78  )
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

Am Montag, 17. Juni 2024, 23:48:12 CEST schrieb Cristian Ciocaltea:
> The HDMI PHY PLL can be used as an alternative dclk source to RK3588 SoC
> CRU. It provides more accurate clock rates required by VOP2 to improve
> existing support for display modes handling, which is known to be
> problematic when dealing with non-integer refresh rates, among others.
> 
> It is worth noting this only works for HDMI 2.0 or below, e.g. cannot be
> used to support HDMI 2.1 4K@120Hz mode.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 189 +++++++++++++++++++---
>  1 file changed, 167 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 72de287282eb..ad3fd4084377 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c

>  static int rk_hdptx_phy_power_on(struct phy *phy)
>  {
>  	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
>  	int bus_width = phy_get_bus_width(hdptx->phy);
> +	int ret;
> +
>  	/*
>  	 * FIXME: Temporary workaround to pass pixel_clk_rate
>  	 * from the HDMI bridge driver until phy_configure_opts_hdmi
> @@ -871,20 +925,18 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
>  		__func__, bus_width, rate);
>  
> -	return rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
> +	ret = rk_hdptx_phy_consumer_get(hdptx, rate);
> +	if (!ret)
> +		ret = rk_hdptx_ropll_tmds_mode_config(hdptx, rate);

I think this will need a put if _mode_config fails?

> +
> +	return ret;
>  }


Heiko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
