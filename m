Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D568AE7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 09:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joh8JMffpXomM/rbhj+z529CPK2f2o2NZDe2dFvmr94=; b=SyCqGqonlRiYHn
	sIKMMPC2hj7VaQYXuYmuRdzOIFdFT0nGT4yr4kI2UB2S+w5RNnXtRJIo7v8rrbTk/KzrOH3P8cFq8
	9x69camzolMcyNAVK/oYdD16Xl49C6EPbN8GXp7M1M8CCpG9Ih15v6TRlWPnm56IxobiTIYT48u9v
	ZswJy+vM3LTWnU+xyHd5F6yQGiKdagxdCXKsYdTinD3rBJ7tiWV6kvoJvNihw3LvidnK9TgB/e0mw
	zG7ukaeNbBM50RuB7uJej+3kD0rai8IPX8XgpTm3KEittKuBiiBGvIf1JTYovZ9uNZ/kk/4yxWRp4
	4YnVAtPX46mV9oV5EttA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN74T-00000009UtY-20Qr;
	Mon, 16 Dec 2024 09:07:21 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN73J-00000009UgQ-3Nfd
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 09:06:10 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5401c52000dso4315540e87.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 01:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734339967; x=1734944767; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=udtSUswqtbgNebxnlihB6flWtT4NwCiX5gbi1SwETd5iICmg856PI/XgEpvJ05V+6S
         TVeqFY0k78UYNhdaOqCnb0XKBVDhmnTqAxwzYT1lSXnFoXuP9I+cAEEdsu7fXjjEdSjM
         167XXT1O08/CVYyvR9UkMbXaXsW67bZBA3+IPaudFB8bBN77HOepsZPV6zw368mjsKoo
         XhZlScAhvb65v4IqLWbAr0LQe+xvr2aSAm1rsJlwP7yOoJRz2iRC3uNnrU4dxK8lxDRF
         vVcnnQsPXCkeZcHu9ZGDoCI50t+AH1boQs0vm0v1KHf/ZfXFa1uMjH0Crw7iiD7GXGIK
         a3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734339967; x=1734944767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=Ug4VKtUDD4NufK+EbvMWBWLA2/+EvkJJvRDvGf47UQsYZ1WfBWuXdKZRCnctVQ5BHw
         crTgZ7TSk7fbakwEa9TTNlJbm/9AGUcaclo/e5fec4HuuzxL/aloq/eQ5GP5bbsJ2BCe
         nS2p6X8npVNfGbyELTDpG2lc5WTUagCKFp+3mrhwk4X575teMrUcquaJ/4mwffE0R/xa
         zlpWbCvuoQbPkUmI/D5rgqVXUe/IVTa1m7Egp/X8GFKtOGgG6BWY+sam8wqb3lsnEpG6
         N0zc41OBb4L8Kil7y68+E0gTnxENxR2Er9rVvwnKNJ/y4MaqgTPVTl9XtEA2FnDOMzdc
         IHjA==
X-Forwarded-Encrypted: i=1; AJvYcCWxIUU312p3STWqujLHazF0hYSAltQJWU4OYbmSDBbbl4Q+cGrz6eeVUyXyHKUXfKT+1YNUibh7938=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxdm/99pk3F/+5Oj+V9PWYaBT9UKjFn0y7EMSZacnRvxNAjFBMm
	m+4ANl/Z3iNVxsp0+iLvuRNeJlt+xxKloxN1QGJrhFUZf7gM5q/KZmNLImHndZw=
X-Gm-Gg: ASbGnctcFIC7eugpldVSKYceD6j2oF3vhv5xuxtfdCeEjuRCdmlEKr5qEN0oB3nO7+d
	OGhFCZRZ0siq35bVPTTAdx1JsOCg7BirBRrWEuFab/+e+o6L3ezTsCeHgB8DCYBS3m1+7/4kc7N
	E0jh3W9B/SQikapEFa7cKSePwXHwTaXeL1jEh+bXRsfYDcV+XVwbnu2617/GkIWL7VfovMjw/p0
	f95+TRnv0cLIO6KK1nGQTdikhQbAnE1zgTflYRlRS3pTkE6MOfkEbnvYLH5AMr05is+MVZiTlQ5
	vAb+vQWgvnmf+MbvrMZdKmaemGfpJs2zeVeK
X-Google-Smtp-Source: AGHT+IE2z+Yrxqh/d+CbdTI/ZEFbpY0tdfpWkjP3iId/t6e4EaPLDgQ5n81rb49OUv0YGO/PEvgPOg==
X-Received: by 2002:a05:6512:b96:b0:540:2a6e:3882 with SMTP id 2adb3069b0e04-540905616b3mr3205171e87.29.1734339966797;
        Mon, 16 Dec 2024 01:06:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c00166sm768988e87.159.2024.12.16.01.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 01:06:05 -0800 (PST)
Date: Mon, 16 Dec 2024 11:06:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <ay2im4itrj3k4p2ksobgsk77b7m4laaxctkfcpffqxj5ttxenm@mzdizmf3mlcb>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241216031225.3746-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_010609_862461_269F09C0 
X-CRM114-Status: GOOD (  16.62  )
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

On Mon, Dec 16, 2024 at 11:12:24AM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Add edp-panel node
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Remove brightness-levels and default-brightness-level properties in
>   backlight node.
> - Add the detail DT changes to commit message.
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..5c1ea25b6524 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -120,6 +121,18 @@ backlight: backlight {
>  		pwms = <&pwm12 0 25000 0>;
>  	};
>  
> +	edp_panel: edp-panel {
> +		compatible = "lg,lp079qx1-sp0v";

Please use aux-bus and a generic "edp-panel" entry for newer platforms
instead of declaring the panel on the platform bus. Placing eDP panels
on the platform bus has been deprecated for quite a while.

> +		backlight = <&backlight>;
> +		power-supply = <&vcc3v3_lcd_edp>;
> +
> +		port {
> +			panel_in_edp: endpoint {
> +				remote-endpoint = <&edp_out_panel>;
> +			};
> +		};
> +	};
> +
>  	combophy_avdd0v85: regulator-combophy-avdd0v85 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "combophy_avdd0v85";

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
