Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14952E77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeYlbFjawR1IV6bDMel1Hc7/NJzRsB4YpxxYcajdawA=; b=KdJKPOhg1jfDjC
	Gsh3VchDkFpxbvylxxcX2vDLYZRZWBTacJ+1YoRpxRrBdkobvIMZl4dN620+10DCT1ZNuB+90lOvA
	VCaeTxnXGzTqNLSW/qf/hbO+bSy9syBJ0D8SnQm2MqArubZdyYjpega+fr3X04gP0p6OfW7MG7cT1
	UBJ8ji2qlUxHM6rmsR09jKYrYjupSBHy2zQLy5LUHh75uMFWJMpxjxXWID0do1y4+ALmbW+GbExRg
	CgAKCW/o10Pb8tkmCvSUEnPECHPLF2iDHwaGB0z4f4N/uOHoK0NByiIyikhDGkbyO95hi1VlOPSpa
	oZ6MYoWKmpvmQbe6Eq0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEv0-00000005B2g-1nkx;
	Mon, 30 Dec 2024 12:30:46 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEuy-00000005B1q-1c2N
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:30:45 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5401fb9fa03so9000183e87.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561842; x=1736166642; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vwalPoVfhXMCQGFYr9ryIpasntXwzfLlG4s9wl797Go=;
        b=hdlwFv86vpVz3QunrnAqYjz+IVhffsobumw6HywR3d4i1vQPooewY1nDIuM2to5v9n
         t63qFJFBykGzlajJKHZcuFTOBzYHIXNPiTzeZIpq15JCcc46b7jQvJqoDACgrJA9Y9WZ
         MrcaLRX8uTYTFs0Sx5WjpPTjrdt3c13Y1OIr6ZqaCaLbvgu6tADNotD8aphViE5aS4VE
         aepzO/rm0Upzq8HS7XWn+osiaUGgIp1SxiUyk+3Ba21yFpwmEE2FONobj8eNqL0zHUuS
         qVIYATr96dH3z2pO4AA05ug0WvkLKK79QiCpyLoaBX0Gr5UOROzKLEA1AmeA4r9KYZl9
         dZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561842; x=1736166642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwalPoVfhXMCQGFYr9ryIpasntXwzfLlG4s9wl797Go=;
        b=bwUUz4d+9gtCR2eWtc2Pr+odGmsQadp7vyCf4S10yyLjMLyMfw0Afjle5RYU7a9iYu
         PEIi+WwR9qo3XYHBnmvzbN/zKOycS/x8Q87LwKGL9V1WGQ+0kDoXs+j0S2KWDAsQOFSe
         Dl+LNQSsoWJr/31kfqsU2cq0GqcT2mxuona4vE6ZX0XRx4cCKpOjYD7rqJnfkGWcWv93
         /ZUfKcPFJ9a6yVYxfEfvXR8sJJYzFiyE2Qhm67YiC/y/OnodIbDO6QJeotoMs9f4r+mF
         i5fZu8EYSgMNvzyxxQ6jkViIkim+JG5mV6wu+2k16UTmbO8pafrAr07sPd+ZjTFFSwOJ
         KJQQ==
X-Forwarded-Encrypted: i=1; AJvYcCW20SwRP4Aq+1gjT9Lt3/onYwi1S8mXMWIf7wh9c0o/SyBin/CwRXO5bY2vU1hkD2B7km1FrXbgcyE=@lists.infradead.org
X-Gm-Message-State: AOJu0YySWseQXV8uf25iuVymHtrUIUHLQLg3ayvJAIIehAfyvjySI6WH
	c0zj1dBELHFNt+RYZXzjYk/uhNIsn41AwTgmowEnd5qP+BTbrbzgjph9a9kwgpE=
X-Gm-Gg: ASbGncvUMnaoDf+9edTK6r5fVTvIjCGzENegbfcq5sYgHB8DGUKh3Iidv4l0JKXRSfr
	n6E0JTs8FKETdUIxOQZW3TDNwuh0QgWgFjfn3sBwFwcbor8R5ylXyfAuiQuJPh/ujECPxrYansH
	QyqHqke5I3OKdqdSAf5Sv1KV+rcB2vVbp54UXBq1wsNxvEX3ckNtV4dDiZF9jSK6LNrnhDmbRjl
	xtuFU0UahCDToabpAZBMNiTUqQdUT6rsldxARdA+XzkSWOTcWD4WErYnJSeO63XV1TaM0m4YqCA
	M/M2c9wk8AMY1NLLEznPwvC2Jed/1Ts6Nj7M
X-Google-Smtp-Source: AGHT+IGs664Z6a1VXnL1IU1qIYV7pMmpsbWRxTp2wEqrbi2vMMk6KM7ZX9fIIcaItp6yhkS4k5KJrg==
X-Received: by 2002:a05:6512:10ce:b0:540:2fbb:22fe with SMTP id 2adb3069b0e04-54229474ebcmr9865558e87.26.1735561841796;
        Mon, 30 Dec 2024 04:30:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f6073sm3157778e87.27.2024.12.30.04.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:30:40 -0800 (PST)
Date: Mon, 30 Dec 2024 14:30:37 +0200
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
Subject: Re: [PATCH v8 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <kwipz3wzydihroelii6enzxv63yyfuidmrua2fzhdvjdbjpqqp@s66fwhbbvcs5>
References: <20241230021207.220144-1-victor.liu@nxp.com>
 <20241230021207.220144-10-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241230021207.220144-10-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043044_448155_678456D3 
X-CRM114-Status: GOOD (  18.70  )
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

On Mon, Dec 30, 2024 at 10:11:57AM +0800, Liu Ying wrote:
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
> v8:
> * Get DE/FG/TC device instance numbers through register start addresses of the
>   devices, instead of compatible strings. (Dmitry)
> * s/shdld/shdload/ for DE IRQs. (Dmitry)
> * Drop id member from struct dc_de. (Dmitry)
> * Add dc_de_post_bind(), to avoid dependency on the component helper's way of
>   implementing component binding order. (Dmitry)
> 
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.
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
>  drivers/gpu/drm/imx/dc/dc-de.c  | 177 +++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h  |  56 +++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
>  drivers/gpu/drm/imx/dc/dc-drv.h |  57 +++++
>  drivers/gpu/drm/imx/dc/dc-fg.c  | 376 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-tc.c  | 141 ++++++++++++
>  10 files changed, 853 insertions(+)
>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
