Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9B28ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJtyTiKqndMR5IfZajWgpCjAHyRo7nT5AkjrAnDffhE=; b=xASYRWpwl135D0
	BtL6Jzux6lj7T7cbyfcgOYYP5ajncy4BuwRxQ339arQhvhrK3jaSMOFMQiidYzvLNLuNNdebW9o80
	sKLPPGzuuiiGej9uxNSZeXlysZdHZOWfN5oDe9J8+B1EFrvybWLm3zWX6HeWUjx+h22KMVv0PrRaS
	SnS6xYZsM7V/GRU39xdCr7ZmRal9UDelqp5yEMdv9wcEz4K7JT0qNR81MoM8f+v5ITGUiry8GMh9e
	dGxckErq8Aclh8fnRdK+Xk0q8QVbRgXmEG8D5jHD+AaLxO+JjgPriIjV3ylaEpYNqXT1IvpOp6xOn
	SJp7fiMv4IHfKz+O3Edg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAa5-008DOI-A0; Fri, 02 Sep 2022 17:35:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAZt-008D3N-9t; Fri, 02 Sep 2022 17:35:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 90DF2B82CCC;
	Fri,  2 Sep 2022 17:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE56BC433C1;
	Fri,  2 Sep 2022 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140134;
	bh=Yg/1HfkU9lTB+P/qKj15r6DxFkOzWEP0cv8ZznfLd0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qZxiakJ5v/5PYKfFDMFamky9atKexvD/yePMGz3Ag/XpcZ8kKGCr5qC75qRBLtQd1
	 OiJ9qTQ/YJ5nKVQLIFb/266WnWI0bk2/hXdT/8kLh0rhd0EJhQCXsH/fREQpKqMJij
	 l8pVFKgT2A2652IoIgDqX36xZLwenuXvAAAW1Mg6MdG9hY9hisKe114VsW08JnqgPa
	 VgefgZvKqlS5n8AacSxxP/M2cCexCLX3OCPG3ZaDz8X1Y1O0KPfwYeYkBqdw9z4Rkn
	 jPoNkYCZNilYT1hlW8HTK1MJMLwnedCHbrY8i5A7IhGvfeRr0YqiWelyFAhRNpCjNU
	 Oze8aDlwQnVAA==
Date: Fri, 2 Sep 2022 23:05:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Samuel Holland <samuel@sholland.org>,
	Markus Reichl <m.reichl@fivetechno.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: rockchip-inno-usb2: Return zero after otg sync
Message-ID: <YxI+4t3fecbIYC07@matsya>
References: <20220824122543.174730-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220824122543.174730-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_103537_672591_DA8B16F1 
X-CRM114-Status: GOOD (  22.80  )
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

On 24-08-22, 08:25, Peter Geis wrote:
> The otg sync state patch reuses the ret variable, but fails to set it to
> zero after use. This leads to a situation when the otg port is in
> peripheral mode where the otg phy aborts halfway through setup.  It also
> fails to account for a failure to register the extcon notifier. Fix this
> by using our own variable and skipping otg sync in case of failure.
> 
> Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> 

No blank here please

> Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> Changelog:
> v3
> - add missing brackets around new goto
> v2
> - switch to using our own variable
> - add missing goto to skip sync in case of registration failure
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 0b1e9337ee8e..27da5ba379c4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1124,7 +1124,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
>  					  struct rockchip_usb2phy_port *rport,
>  					  struct device_node *child_np)
>  {
> -	int ret;
> +	int ret, id;
>  
>  	rport->port_id = USB2PHY_PORT_OTG;
>  	rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_OTG];
> @@ -1163,12 +1163,15 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
>  		ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
>  					EXTCON_USB_HOST, &rport->event_nb);
>  		if (ret)
> +		{

:-(

this is _not_ linux kernel code style!

Reminder: it always helps to run checkpatch 

>  			dev_err(rphy->dev, "register USB HOST notifier failed\n");
> +			goto out;
> +		}
>  
>  		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
>  			/* do initial sync of usb state */
> -			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> -			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> +			id = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> +			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !id);
>  		}
>  	}
>  
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
