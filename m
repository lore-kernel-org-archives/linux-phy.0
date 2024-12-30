Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23CEFE77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGd2tZ+7GuUCHCJ310qZ92terNaqgMT7OoVilaK8hkI=; b=fCG30ISJ28UM7Y
	bekTQcYfqRBJ5Q621yxrx/MfGDBhBKVbbM48iNZHad/KQbbgynqI9YENsZuy7xn+7XM5umOanWWYv
	9Ku7qXLzX8H9iuhleeGgpMOnKydPwFVsvwzxK0ui9s2eyOKeuGh1fHtH/+sUCooTYBsorkQENhTAj
	obDRB+zE7EmIJyShBUiWRVfEUL4+NIpJMa9mJi5B/H52MRh+ZZyurJnNuhk6shUh8zaOTPfqViuvm
	SpVUGsVB/TYkyJao7ABj7VP1/P6aEZSk9be5MEJQWA5jPjo7wy06jG4wE2yxKaxpObzvUo1gUs1hH
	KN2b4wgkNwufs5ZxSYPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExI-00000005BIs-3Sdj;
	Mon, 30 Dec 2024 12:33:08 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEvF-00000005B6G-1yxO
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:31:03 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-30227c56b11so106809881fa.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561859; x=1736166659; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XC7aFoxrHSDbAWGEa4JymcLKu3NlXqEnFCSTzXWk0ZE=;
        b=bcJvuEpKhE2XNm9k9RDbQeXygCpW4Pl/AUAHlOd7E6gxvG24oawiNbJ2M3nNk3chNl
         i1JWcoDcDGiKWzD6JZwlzI9dLYckCX0BKNDmLdDpLK8sg04xdb9rt2YoEtATnBnUFK0N
         R0aIIVHrWQ2EAHYXv8jSKBz1Wk+wEtLHfa4GS7PPg4RpS/j1i+P7wsOYC3Sf3nPtbPbD
         YutHqxHw/CbZS9A4xs3t8ctq3evkj8pmtsl+V8PWjQ8BqLhPCyNDJ2SmJ36KdTHCm9V3
         2zy2dum5/z9iSm2IuU3KoHl8mL/SsKLs6tRW9665L2oPnmWA10W2AaxwLD6e81Yhi281
         DKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561859; x=1736166659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XC7aFoxrHSDbAWGEa4JymcLKu3NlXqEnFCSTzXWk0ZE=;
        b=bxfhaFwRT3n/e7306jZrk5/YpQALZ+6rjuOvA4vj4ewJcmuasrZh9Ac5ZcVUe9X9Hc
         dyyjQUCWMO5BTBYTkKYpLZcoOESfXnDns8ZICgV10lpUoZTEPP2LHAvmvc+0KtW1/yd0
         LUJPJsZUssLfVa/kfCxjgc/XnOIGTurtIvuGxGKDNi6BG5pf66ZPv7IgA4/3lGRgzL/q
         ATN1HT4r1dajfc1xUM4AphSqjXhgKZzFyeWu4X2ZdGS82FXeGxH+ZzLYW0ur5+fgsWO1
         etytDzi8Q1I061K5U4vdFMWlpl/EK4wuOBhDKmVMYcF7FEv+l0NFqo+bC0xu6cxagxcE
         1teQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxS4mxoiNDjlBNQoxx3bhKsWUcseQ8Uviu7ApX2NGxeWK+olbZefl39vfUUPmS0LELRsk+5QiN/+U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe1DRrnb07cyrI7ETjmqtzpaDoP6Wj1NThh65MxvJpCFW6a2we
	q6zAfimziHHx7/s7hTBaOygW5Zw3pkzELTHJl4rVFX3yvX/oePz2i1FZw2aRSIk=
X-Gm-Gg: ASbGncuXfCDvGUMKHCGVguGDkewJKO0mbVFesz/GxaYz1Yt2Kq3OJ2fQtf33IP1qFfT
	HgBK+jzCPoeOQlz2vWAAvArSgAJQmWUE7LElOzfC+WruXfr7u0PinNCxkVnxcBtGIKfjuOhKQgA
	ztZYpm8NZE9xJiM13Y6YVytBAJISqiszIP7O9wXY9MOnvo6nC5d4AcqvpmPHx9TUqAkI+N4Xbin
	u/CBAIqiHGka/DNdSYVNbP79Jq2M+CY2E7oDf8T9nNg9vCdhFSru0pHzEHIjSEpmRGzOK+SPQwA
	uIhaVfcgLgI6KqCRaZcQQAoo1FIEMkFqpmDE
X-Google-Smtp-Source: AGHT+IHnMCZF1zu8nJTtjEUT7Ed/kcm++NEx7SYSKZGed7mcIjxQVIqgMQ+VgW8ijFMQzuCRlvCpHQ==
X-Received: by 2002:a05:651c:2229:b0:2ff:a7c1:8c55 with SMTP id 38308e7fff4ca-304685f51f9mr159543341fa.28.1735561859482;
        Mon, 30 Dec 2024 04:30:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b069ef9sm34662771fa.91.2024.12.30.04.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:30:59 -0800 (PST)
Date: Mon, 30 Dec 2024 14:30:56 +0200
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
Subject: Re: [PATCH v8 10/19] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
Message-ID: <ircgfhci3wmpahpxflmsbsxpahafqj6y5v56llezazaarbzppf@njzxhahie7xx>
References: <20241230021207.220144-1-victor.liu@nxp.com>
 <20241230021207.220144-11-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241230021207.220144-11-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043101_510715_F5ABAAA9 
X-CRM114-Status: GOOD (  19.74  )
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

On Mon, Dec 30, 2024 at 10:11:58AM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver and those unit
> drivers are components to be aggregated by a master registered in
> the upcoming DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v8:
> * Get CF/ED/FL/FW/LB device instance numbers through register start addresses
>   of the devices, instead of compatible strings. (Dmitry)
> * s/shdld/shdload/ for ED IRQs. (Dmitry)
> * Add dc_pe_post_bind(), to avoid dependency on the component helper's way of
>   implementing component binding order. (Dmitry)
> * Add dev_warn() to dc_lb_pec_dynamic_{prim,sec}_sel(). (Dmitry)
> * Drop lb_links[] and dc_fetchunit_all_fracs[] arrays. (Dmitry)
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
> * Fix build warning by expanding sizeof(fu->name) from 13 to 21.
>   (kernel test robot)
> 
> v5:
> * Replace .remove_new with .remove in dc-{cf,de,fl,fw,lb,pe}.c. (Uwe)
> * Fix commit message to state that pixel engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_lb_blendcontrol() function call from KMS routine to initialization
>   stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> * Make some fetch unit operations be aware of fractional fetch unit index(0-7).
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.
> 
>  drivers/gpu/drm/imx/dc/Makefile |   3 +-
>  drivers/gpu/drm/imx/dc/dc-cf.c  | 172 +++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |   6 +
>  drivers/gpu/drm/imx/dc/dc-drv.h |  22 +++
>  drivers/gpu/drm/imx/dc/dc-ed.c  | 288 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-fl.c  | 185 ++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-fu.c  | 258 +++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-fu.h  | 129 +++++++++++++
>  drivers/gpu/drm/imx/dc/dc-fw.c  | 222 ++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-lb.c  | 325 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-pe.c  | 158 ++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-pe.h  | 101 ++++++++++
>  12 files changed, 1868 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-cf.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-ed.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fl.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fu.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fu.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fw.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-lb.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-pe.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-pe.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
