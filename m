Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F677E7718B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Dec 2024 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPvj6B8OSjp5VIDMW3oOj0DxntTL4rIFf2QM3nF7EZU=; b=U+YuSKdQK2onV/
	uLCoOd1pcH9nb4AjLd/hJqC9F7FiMOwx2Kmfbtgv4xBci7ZDY1IO73luuojY+Rm0StUqsXQAK3MDS
	EtuofhcXnvpJE1K3hZXuCcTiZSxbilx6sZVUyDN0ommNJqueURQs7PhuaDj2Hl2bvwWtDsisSpSI7
	1GBz2fV6Isa+HZw3ucGsdinoFFWKoff1rVXDO60z8c2KDlptRb8vuMLuZWLMK2x7QkTg2ORyhBIvJ
	cmdyiVF6OcdIYZ/V5ROIAjevS1fQUwKbdAAlR4ado6nlXKS3WrHURGVrVHeVsbNHLjh7UHle0Hbve
	BUx+p1OQe2KmMNKnaG+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgYE-00000009tQ5-0XQd;
	Mon, 23 Dec 2024 11:24:42 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgQz-00000009sWM-1Rpq
	for linux-phy@lists.infradead.org;
	Mon, 23 Dec 2024 11:17:14 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso4352685e87.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Dec 2024 03:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734952631; x=1735557431; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oAg0zQo1HvAo0iqaanIJTGGSdxrt4g4lbpXT4Fzk4t8=;
        b=yEketbYSIWub3wqsHKpLOoXflntOe7Fsk/hHvOMKrgkn1XJUW4Kq2tHKiwlmmD0HvY
         c84Jk1cwYmEsytNB1y95TqJdSxB2mkic+T/FvXihaXcJW679XOYkBs1LjJgb6XuF17ZU
         k18+qtu48IhTbK+0Ecw9pCTpKiZaU1QTo4jXv9YV6oYMppJGqvzz/sPBWejQ5iJSVkNt
         oUaqoHfcmNjBbuycNT8aOESnlc2HQMGbgB657sd7woHzH0mN/LPn5lKKtfMu0U6aGaR+
         oz4exmUboDkL4PeNQjMhxVXrKhWCtAuKEvpkfX6m9pp0JVzSvsJXayscKJUrkRjpf10r
         kMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734952631; x=1735557431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAg0zQo1HvAo0iqaanIJTGGSdxrt4g4lbpXT4Fzk4t8=;
        b=jq82nKDP9ofSrn6NEs3MZpHDr3SR4y/UvutKo+e3JxhBrq9tqxJIL8zA05IVQ/rE3Y
         HGIb2ikQlKW2PnWxrfRs1lLzXy36xO7KGaHUkAjo9FwFq+Uho60/FLS9O1Ta0TNrsxNy
         F9UHh+j47nhWDrni4X+f19WyIwl+VNAky77qWE1yH597ZgGGRJCejV2GqFAevaAxMptb
         WtcvIvoTNYVkr0SGEyZGL7nt5nnez94dxItyN7D4ClaalyLZKQ1+DJHykNt8Hyqng/hK
         lWMm/sf/w1ev7Pz7maixskFuTAwsjzPFzQK/sbTg1G9CIDonQPkMUjmXRJPb1NvYeFcc
         D7rg==
X-Forwarded-Encrypted: i=1; AJvYcCVt5BPDClCXfO+5ZBVfcVVq6I03PCg4hkF7uyYScvOBDDxFHxFXxa0GssYZR5tCbR8JUA2ieL11UpQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL4PcgqugGHTKlscK/WrT4aAKyrZNSPbYic02qLQYg1+GExTKD
	TETmbmvMRTn3vYH+jI2Ux1oATrChgkdn7CnFQ/5d8K7kggb19CXG3kCSw8uYtZo=
X-Gm-Gg: ASbGnctOm6fGo+GHEDhBUBiTTNegOmUubC/vxqA9MumG/fhjG7us0AgPXYQcKbdx90i
	+nKz/KMbwdwk1LvKEbLFXJyrt82CQ3zw0WHG+Jmz1xwF5Fl1An1CEX82jN2V/Sz/jEXDfKJioVI
	MpUVOm0fmxQal3TVFhq3Nycy53HPzyWwOHjiNzQ+bcwrwfWHGCd15STSP81550vDe9FDo4tmlel
	jbislearv+3Zh+9YLZYtrDprOki8pCgGQtRKHmh1fdhci1kJgSnmROkrZ41dB4ouOYPJV0cJ2/x
	59VXrE2nSj8NvvZ0CnhrvTZYgj8Uxfl7cP3V
X-Google-Smtp-Source: AGHT+IGwOxJn54Td8r+NyaqARiydob0173z+5mppR6r0JXqtqFfPSqJJa2vifkVmQItUKQ/aSDHrlg==
X-Received: by 2002:a05:6512:39cc:b0:542:250d:eefb with SMTP id 2adb3069b0e04-5422955fd2fmr4096765e87.41.1734952631337;
        Mon, 23 Dec 2024 03:17:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223825f48sm1244622e87.225.2024.12.23.03.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:17:10 -0800 (PST)
Date: Mon, 23 Dec 2024 13:17:07 +0200
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
Subject: Re: [PATCH v7 11/19] drm/imx: Add i.MX8qxp Display Controller
 interrupt controller
Message-ID: <6eg5ahmcxfvwzoybqqcksqergoeu5ivsqshfjjmotwe6t4brge@aahohpjlfqic>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-12-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-12-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_031713_399532_751D58E1 
X-CRM114-Status: GOOD (  15.57  )
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

On Mon, Dec 23, 2024 at 02:41:39PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller has a built-in interrupt controller to support
> Enable/Status/Preset/Clear interrupt bit.  Add driver for it.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Fix regmap_config definition by removing name field, correcting read ranges
>   and setting max_register field.
> * Collect Maxime's R-b tag.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-ic.c. (Uwe)
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_ic_data data strutures.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the driver.
> * Take DC interrupt controller driver as a standalone driver instead of a
>   component driver.
> * Replace drmm_kcalloc() with devm_kcalloc() to allocate an array for
>   struct dc_ic_entry.
> * Call platform_get_irq() from DC interrupt controller driver to make sure
>   parent interrupt controller driver is probed first.
> 
> v3:
> * No change.
> 
> v2:
> * No change.
> 
>  drivers/gpu/drm/imx/dc/Kconfig  |   1 +
>  drivers/gpu/drm/imx/dc/Makefile |   2 +-
>  drivers/gpu/drm/imx/dc/dc-drv.c |   1 +
>  drivers/gpu/drm/imx/dc/dc-drv.h |   1 +
>  drivers/gpu/drm/imx/dc/dc-ic.c  | 282 ++++++++++++++++++++++++++++++++
>  5 files changed, 286 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-ic.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
