Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85DB7E7718B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Dec 2024 12:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFpGYZlmYG2x/WiZQ0rzk+jbCcT+UltI5elT12X/NqE=; b=SjH2GoTdLqPf1V
	WS/ubg1MW6Lc28YhbLtEVFCLHRXUrgML3Ergr5J1X3qiT8NYxPLMbPLb2SWsyGTzlT1xumRuRY9Fg
	6ZfnrJWoqkRPlFAYNVd51f/VZKJOMqAxnDNelC+03ENfMZnAFjEdk8hqogOxKwFTRa8ds/46QSu9b
	xnXfSiUCCVFQMg6yFo2w84l4M+IP9V2A0PDM0RNal0Ml9G+ZP4XHvq6Zdd67yZW53ISfdZHHHuwXC
	vBvEhGiVnvkckT3nkUJOHRmV70UyQsvfr9nWzxv6+vdqBJsIt+NMHi2cZs9fJewxH0ipGcOjkba+V
	YsF5Wu37asGWZHiMx84w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPhCK-00000009y64-2xHn;
	Mon, 23 Dec 2024 12:06:08 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPg2L-00000009on3-0MZW
	for linux-phy@lists.infradead.org;
	Mon, 23 Dec 2024 10:51:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-53e3a227b82so3750988e87.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Dec 2024 02:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734951103; x=1735555903; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PysGQXFhFIaY82I36Y7kVr5DOhB1P1lEm8vqt8odrR0=;
        b=fhOHO3jOOu+BCaIaTd0QFloO0NsvVlqkUDqOrw1DH2EC1qg8fdj2OPVDUu9kr3pFUx
         gPQH2ojEhqkwIFqIXS6MhMUdCUglUC/3ecRvu3NqPA6xIjt87hLFPmiA2zbxsbcwGCOr
         1sxockiU3x0jMr7kqSTbStFr4Grz1ws09FDEKh9zK60iHwBktJZ6YWWCsmyEQTQEOzty
         yZzW6VQidCpxdXgQgap8J5cmAVtqoesQtz7Do+NKFyUJjWdmXFiFjHoTYwTL7U1Tz6+9
         lSa+S63rEk/XB825Tty4P/84yp5os1JM8WTibUsaZlmCk+zUzyQufdpCZSrVXfMJCniV
         qDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734951103; x=1735555903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PysGQXFhFIaY82I36Y7kVr5DOhB1P1lEm8vqt8odrR0=;
        b=ACDZBoIjuPVUn68Fx4zvv97Z2dODly9/B0yMXGwSlQUTZnuOY6dP81jkOsq8hKN/eJ
         fjKxIea2NxkXxuMkDq1G5n6FfudNXWcLLqC5S9xYOoBo8BINhwVE8N78z7dTQ7XAR3sh
         bbXEpEbRGJO6F/FPrP0+rJNLKc0NYv3UQEwAbRsUdgK6NjS0e2pOq79hfbLqDot1vOEW
         l9Pwb9DpGYclGghoau8MVCR52deHQxwO+YfVNbsWk+ek33mz4L6q72axMFOURRR7XkcR
         54bO9rfS66WegPerSeX3kGa8gJKbHlyZhCWjHw9uE/wzxim4uZPr+9ynAjcoNX/kpi3J
         wFPA==
X-Forwarded-Encrypted: i=1; AJvYcCUB0B24fY/UVGyc7VV0BhbxOXQnuTGq+dxwof4U91jbBnL68d+QlX7iGK3Ec2L0nlOTrBsovgRh76c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyte1cwjtz3uElhWlYJ0MnrdSgLJT0Mz+v7FD5mnQrH7nOgJSP9
	B6XIZ/ntoeR3ufidElHi9/xDarupkkOoK1wmcWLEpjdQ4UxZQIM4PXmUBQNZIew=
X-Gm-Gg: ASbGncsZ0o/WOYgXqvPxY5c0i4ILW7yj8kWTBRRfpm9mRDIbqZpfOYB+0YUxbT6dtla
	kug1pnprBc+DzaNQWHcZbkrGv5LsTiJqHKjaUoQwgd99TgRgIe5m9FNaBxqGZUAy9TrMM/kTJgb
	BkDh50o4lLCOMA+VfRK/JEmwyOVevfK6FCaHTYXQkdgEe13YuQySCYYMdLtzvs6/5mHz8Mcofpa
	3e+Bp6jyHqEeToAJ01Pv7YQGQ9GJhoaFCvBSyelCWfB5mIwC5H9J+qUBolOuf642U1YFjhSl6g0
	9mHdSUgTzhOHJksWhXZ48LF4HjtVgoYRCra+
X-Google-Smtp-Source: AGHT+IG+15flgGLqsMrZ5BL4gMnDHWQG9KiSz+F4gPV4kBjlj5dHbyvd5yf8E3fFs/QR/3iviG06Bg==
X-Received: by 2002:a05:6512:1150:b0:541:cdef:7ca3 with SMTP id 2adb3069b0e04-5422953c1a8mr3075505e87.27.1734951102906;
        Mon, 23 Dec 2024 02:51:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238216c0sm1231593e87.218.2024.12.23.02.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 02:51:42 -0800 (PST)
Date: Mon, 23 Dec 2024 12:51:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <6mhlb26vdfc7v3jmb7y3tlcuo336x7vkblbkzd5sosd6urirou@bbfalnfisdij>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-10-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-10-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_025145_195222_B5DF727D 
X-CRM114-Status: GOOD (  28.44  )
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

On Mon, Dec 23, 2024 at 02:41:37PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The FrameGen driver, TCon driver and display engine driver
> are components to be aggregated by a master registered in the upcoming
> DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.

Unfortunately no. Your instances are compatible on the hardware level
(at least they were with the previous versions, I don't think that
there was a silicon change).

> * Collect Maxime's R-b tag.
> * Trivial tweaks.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-{de,fg,tc}.c. (Uwe)
> * Select REGMAP and REGMAP_MMIO Kconfig options.
> * Fix commit message to state that display engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_fg_displaymode() and dc_fg_panic_displaymode() function calls from
>   KMS routine to initialization stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.
> * Add dev member to struct dc_tc.
> 
>  drivers/gpu/drm/imx/Kconfig     |   1 +
>  drivers/gpu/drm/imx/Makefile    |   1 +
>  drivers/gpu/drm/imx/dc/Kconfig  |   7 +
>  drivers/gpu/drm/imx/dc/Makefile |   5 +
>  drivers/gpu/drm/imx/dc/dc-de.c  | 153 +++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h  |  62 ++++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
>  drivers/gpu/drm/imx/dc/dc-drv.h |  29 +++
>  drivers/gpu/drm/imx/dc/dc-fg.c  | 378 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-tc.c  | 142 ++++++++++++
>  10 files changed, 810 insertions(+)
>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> 

[...]

> +
> +static int dc_de_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	void __iomem *base_top;
> +	struct dc_de *de;
> +	int ret;
> +
> +	de = devm_kzalloc(dev, sizeof(*de), GFP_KERNEL);
> +	if (!de)
> +		return -ENOMEM;
> +
> +	de->id = (enum dc_de_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base_top = devm_platform_ioremap_resource_byname(pdev, "top");
> +	if (IS_ERR(base_top))
> +		return PTR_ERR(base_top);
> +
> +	de->reg_top = devm_regmap_init_mmio(dev, base_top,
> +					    &dc_de_top_regmap_config);
> +	if (IS_ERR(de->reg_top))
> +		return PTR_ERR(de->reg_top);
> +
> +	de->irq_shdld = platform_get_irq_byname(pdev, "shdload");

Nit: shdload or shdld? Which one is used in the documentation?

> +	if (de->irq_shdld < 0)
> +		return de->irq_shdld;
> +
> +	de->irq_framecomplete = platform_get_irq_byname(pdev, "framecomplete");
> +	if (de->irq_framecomplete < 0)
> +		return de->irq_framecomplete;
> +
> +	de->irq_seqcomplete = platform_get_irq_byname(pdev, "seqcomplete");
> +	if (de->irq_seqcomplete < 0)
> +		return de->irq_seqcomplete;
> +
> +	de->dev = dev;
> +
> +	dev_set_drvdata(dev, de);
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
> +
> +	dc_drm->de[de->id] = de;
> +
> +	return 0;
> +}
> +

[...]

> +
> +struct dc_de {
> +	struct device *dev;
> +	struct regmap *reg_top;
> +	struct dc_fg *fg;
> +	struct dc_tc *tc;
> +	int irq_shdld;
> +	int irq_framecomplete;
> +	int irq_seqcomplete;
> +	enum dc_de_id id;

Why do you need to store it? This patch makes use of it just for the
registration.

> +};
> +

[...]

> +static int dc_fg_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	void __iomem *base;
> +	enum dc_fg_id id;
> +	struct dc_fg *fg;
> +	struct dc_de *de;
> +
> +	fg = devm_kzalloc(dev, sizeof(*fg), GFP_KERNEL);
> +	if (!fg)
> +		return -ENOMEM;
> +
> +	id = (enum dc_fg_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	fg->reg = devm_regmap_init_mmio(dev, base, &dc_fg_regmap_config);
> +	if (IS_ERR(fg->reg))
> +		return PTR_ERR(fg->reg);
> +
> +	fg->clk_disp = devm_clk_get(dev, NULL);
> +	if (IS_ERR(fg->clk_disp))
> +		return dev_err_probe(dev, PTR_ERR(fg->clk_disp),
> +				     "failed to get display clock\n");
> +
> +	fg->dev = dev;
> +
> +	de = dc_drm->de[id];

This depends on a particular order of component's being bound. If the
order changes for whatever reason (e.g. due to component.c
implementation being changed) then your driver might crash here.

This applies to several other places in the driver.

> +	de->fg = fg;
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
