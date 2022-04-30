Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F9AC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 30 Apr 2022 13:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36AxE7Haz/udgwovIV9stWqdhjQzPr5wL9kwQxrpmAE=; b=vWcTc7h+hc167P
	X/LNLHJPDz8BMKXGaWsD7H2/TUZ8jsNA5dXuvz/KsrRJwNXO1rgydUY1a+gU4yOnbANDtqRGztQMW
	7IGQdujcBeQMZqQa36jtFXy3VZxYKw54+MddFHp3cn2YhleFvb1PNcF536RJJpa/pd7cvMsbrMmXG
	Rp+YhC4wojo6odmyVzAAwHP2+hI13suEN8TbnphcMKii4OhWEOdoXrqfFAV9keIwYz2lfD4dTerei
	cLKlTB4hJ/SW5BQPb9MC7tX4QK9TfimJ2t7HS8ELtUz7kJRi8ETa2yK/kJyjwfhkTFW2/qtUAOpeH
	z9RLrDz2tqabixoEXd2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkmqd-00EIYU-Dy; Sat, 30 Apr 2022 13:09:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkmqZ-00EIWy-Bt; Sat, 30 Apr 2022 13:09:18 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nkmqV-000129-2m; Sat, 30 Apr 2022 15:09:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Clean up some inconsistent
 indenting
Date: Sat, 30 Apr 2022 15:09:08 +0200
Message-ID: <2309786.iZASKD2KPV@phil>
In-Reply-To: <20220421203038.4550-1-jiapeng.chong@linux.alibaba.com>
References: <20220421203038.4550-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_060915_454514_8591F407 
X-CRM114-Status: GOOD (  14.98  )
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

Am Donnerstag, 21. April 2022, 22:30:38 CEST schrieb Jiapeng Chong:
> Eliminate the follow smatch warning:
> 
> drivers/phy/rockchip/phy-rockchip-inno-usb2.c:1203
> rockchip_usb2phy_probe() warn: inconsistent indenting.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index e377b958d9b6..6711659f727c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1200,8 +1200,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>  
>  	else {
>  		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
> -			if (IS_ERR(rphy->grf))
> -				return PTR_ERR(rphy->grf);
> +		if (IS_ERR(rphy->grf))
> +			return PTR_ERR(rphy->grf);
>  	}
>  
>  	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
