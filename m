Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0099CD4F25
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SugW7axWJtT1VY7cervFGpISBdajxGFrGQdR7hStG0E=; b=XaAGyD+DB2pcvW
	xq725Cip//TMiKcCV0xg0+CoCtleV+VMvvyFGJyycLDC7YD1EOZy1bBqOT7cLy37sXol564tuMw0Z
	HOzSnq+y8vVbbzlw7js0wvgvfEMzJBwg4CvTunfaihtLf82NORXGT8w+S6cmAUkqBKDvRbQlfg3Qy
	2dKPszQkvP/VwJv0Qp9gWMtGZcoxYFzKGvqxdiGlh/LWj5eLPfdHafybUwY6txarRxvJb4Huj7Zvp
	VPlzCtsDMTFglISPFC+1LGezC+JcGkDgwuBF58nRK/ve61hKN0kj/kNRxoq5mZ+EVpfQE3XYCD6IB
	Hzm2eVkTYnuxiUJduISg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYkq-000000061R5-2DVz;
	Thu, 14 May 2026 16:17:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYko-000000061QF-2aLB;
	Thu, 14 May 2026 16:17:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B2FE760138;
	Thu, 14 May 2026 16:17:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A914EC2BCB3;
	Thu, 14 May 2026 16:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775461;
	bh=NZmAc9HrKWORqZFVU2eBSr94To7Vjsv0TRyPrPbCY04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I3/AXt9hgkbcXNcCtG108srb1FZaFAJP6sB4eDR9jU82nD5FibRFXheIFU32QZ2Yl
	 XZgazWy5/KebCqspESsmlD7FBvOB6s60nGUeZjs5mhmOFpv03EXB2l9yDj5YDz9RCA
	 0K7zNwOaa7isDlDmveywQFSdAlcLYVgiq2CLGaQ4DKAtFQWwk8XBjWRXDjlcLb1DUl
	 iRu1GJFGA3ay+/bgWSEtjPM2OWIdmDoJtorc0MJ3HHSE7WlCuQUAXs9SIyPvu/jHS5
	 r2uplDqRbuiWkxFhffKXYet3msNBVZRRwV26I0xc071W+Z7d21AIUps3tgk6AQjN8H
	 VrPTqnSOU4kPQ==
Date: Thu, 14 May 2026 21:47:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	jonas@kwiboo.se
Subject: Re: [PATCH v2 4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy
 support
Message-ID: <agX1obJdYdNhnvnN@vaman>
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-5-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260505170410.3265305-5-heiko@sntech.de>
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

On 05-05-26, 19:04, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The 480m clk is controlled using regs in the PHY address space and not
> in the USB GRF address space on e.g. RK3528 and RK3506.
> 
> Add a clkout_ctl_phy usb2phy_reg to handle enable/disable of the 480m
> clk on these SoCs.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 47 +++++++++++++++----
>  1 file changed, 38 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 7cec45192393..d8879fcd4291 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -179,6 +179,7 @@ struct rockchip_usb2phy_cfg {
>  	unsigned int	num_ports;
>  	int (*phy_tuning)(struct rockchip_usb2phy *rphy);
>  	struct usb2phy_reg	clkout_ctl;
> +	struct usb2phy_reg	clkout_ctl_phy;

This gives a kernel-doc warning. I have applied please send fix for this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
