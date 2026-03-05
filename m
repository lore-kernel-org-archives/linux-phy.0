Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7BC4EEF320
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXoP9XN0LRey/L3+GyMGdPWzqN6LzK3NB5X5v8VeYng=; b=zQyenCDeXGCjCp
	3SsRkNpl2oW67zIf4qiMIsUlDar9MljgIQMKSGqv1APVNBgUWsTtK6RQJIJbjXpozH9PFKC5FLVKN
	ZMFUgOfayC/R3unJDdNE2EifV5WTLetLi3IwIhDRyMxhQ3bQzLPhV63gUHKPwgfPqZPCaiKxlfdbK
	HGjHMJlpbMAPsey6sig+w4H5lNAwwUwug5YK9vated5qW166viQnJITm7xTUuFjy4j09ur2jEEpOD
	6hJaHguzWEvazbcqAkKG62EcelRu7cVnbLO4mnaxe8I4tMWqp2uDtuiJTHnK0TC3PB6n8LJhA9Ui8
	dFFfYlCIocTnzJzHIj1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4Au-00000001D0k-1m1a;
	Thu, 05 Mar 2026 08:35:16 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4As-00000001Czz-0Vmg
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:35:15 +0000
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7d4c383f2fcso5454769a34.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:35:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699713; x=1773304513;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlLnToI6SbxsSn7ypnmaqq1RX+miw2VMTyDHKi+gwbk=;
        b=YIm+7pv8OSR2nfC6NOU9K2fXUwmf+kMHTcbLvsUSz20Mfn73jNYFqJoCVaKOsr+LxQ
         TugZUeGvBrcO32+BDeyF2gkf0b7QHmdEqShc7k7qBOKk5gze8fjLK4fdOU/vL9Rfx8tJ
         LxzctY/qYNcigVqyeQ89Re/dnXcv/1h4bDcDqunc6Llxn3ChJOAfdI6E3xMAtlAW8lAl
         CzauH0lG8T8dP6JDJehV+8hfEUo7y2isi8LnkQz8Xdpunri5fOFVdQdlFBZnJ2gh5SFB
         nd4G6UvC2RYgd50CEOoyaHzqUJ6zN6PdYm56T3hNcG4z8QFHA5teqr6i1Dfh3Z+ghV83
         s8XA==
X-Gm-Message-State: AOJu0Yy2To6e3cJu8lzICumBj4bYzz+nwWhDS/MFRYmbiIMUcX+4FVS7
	fHzZh3qyic3k5NUhjsmi4KWqP6aFaqzyGS1DnapIl4cHVXfHiihTg6cHvvhbDyNi
X-Gm-Gg: ATEYQzxL0VNlQKYkEZkjcteQvVP+E7W94bDPpsHxOOPpf15ojwgcMycAm2tl/m6XymP
	GMkLiXdKvWCl9Qu2gc31QFqsVX8waZvqHC26/EZ3C8yHLmZWBzkGsVZ6ABcgomH8/dthOmuSvw7
	r0FVEWo7d/dxXchzkRijAx+FoyHe7IS5HcA7lp/fdxAaM0CrRgiVcXnQgxoYVcFIhrrDE1SwT9O
	Qs2QOzxC+dRai3ItaQigxQgl0P8kJHASxJL7nTWDmkvXN4iGLXr+PP+W1lHVwLwPwo4ryEi454N
	65T3hQvtbTrEkV9GgbKhehs5xu2Cmlhqel0ft/URS7UCRXmtzU0pipGk96tbRim5Po03Qhsr3TC
	8Nrlq4EXUduzbZWaK9PFW5mMWSUL5ubHlLvrL4tj5p58XU7BNnvK3bNCf1LSRcBPI2+7bu16nE/
	z+wHtO36d3wXNAR9A7o28GqvM/mFQXhR2lytWeqxkyUuWJ2BMzYyddYVGUkjIpkI6X
X-Received: by 2002:a05:6830:4990:b0:7cf:e4a1:8b79 with SMTP id 46e09a7af769-7d6c7f41fd8mr3106011a34.7.1772699712820;
        Thu, 05 Mar 2026 00:35:12 -0800 (PST)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com. [209.85.167.176])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d58644edf0sm17609811a34.2.2026.03.05.00.35.12
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:35:12 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-46392972257so5728646b6e.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:35:12 -0800 (PST)
X-Received: by 2002:a05:6102:1607:b0:5ff:c64d:228c with SMTP id
 ada2fe7eead31-5ffc64d2600mr724913137.22.1772699340961; Thu, 05 Mar 2026
 00:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-13-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-13-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 09:28:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV+7n==crPmitH-JCwtJiH+7LaPKZQYU4ZqX_duo3_7Eg@mail.gmail.com>
X-Gm-Features: AaiRm50Kgxrt1IEt_9GEmeNyCIrylErpUd7qkh7D4FIoK_FYituUB8DTITetq4c
Message-ID: <CAMuHMdV+7n==crPmitH-JCwtJiH+7LaPKZQYU4ZqX_duo3_7Eg@mail.gmail.com>
Subject: Re: [PATCH phy-next 12/22] phy: move provider API out of public <linux/phy/phy.h>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_003514_162125_F0EC273E 
X-CRM114-Status: GOOD (  28.57  )
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

Hi Vladimir,

On Wed, 4 Mar 2026 at 19:03, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> The major goal is to hide the contents of struct phy from consumer
> drivers.
>
> The idea with "phy-props.h" is that both consumers and providers make
> use of some data types. So both headers include "phy-props.h".
>
> Two slight points of contention.
>
> 1. phy_set_bus_width(): Vinod explains that despite the current caller
>    situation (9 providers, 1 consumer), it is a consumer API function.
>
>    The use case is that the controller (for example UFS) may have
>    limitations and should set the expected lanes to be used and width on
>    those lanes. A number of Generic PHYs can support multiple lanes and
>    multiple width so this is way for controller telling I am using this
>    configuration.
>
> 2. phy-provider.h should go to include/linux/phy/ or to drivers/phy/?
>    We do have 3 PHY providers outside of drivers/phy/:
>
>    drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
>    drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>    drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
>
>    but the practice is not encouraged, and with time, these should be
>    moved to the subsystem. This is not something that I can do now.
>
> For temporary compatibility, keep including the provider header. This
> will be removed when abuses are all gotten rid of.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/phy/phy-provider.h

> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -1,246 +1,38 @@
>  /* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
> - * phy.h -- generic phy header file
> + * phy.h -- Generic PHY consumer API
>   *
>   * Copyright (C) 2013 Texas Instruments Incorporated - http://www.ti.com
>   *
>   * Author: Kishon Vijay Abraham I <kishon@ti.com>
>   */
>
> -#ifndef __DRIVERS_PHY_H
> -#define __DRIVERS_PHY_H
> +#ifndef __PHY_CONSUMER_H
> +#define __PHY_CONSUMER_H
>
> -#include <linux/err.h>
> -#include <linux/of.h>
> -#include <linux/device.h>
> -#include <linux/pm_runtime.h>
> -#include <linux/regulator/consumer.h>
> +#include <linux/phy/phy-props.h>
>
> -#include <linux/phy/phy-dp.h>
> -#include <linux/phy/phy-hdmi.h>
> -#include <linux/phy/phy-lvds.h>
> -#include <linux/phy/phy-mipi-dphy.h>
> +#include "../../drivers/phy/phy-provider.h"

Shouldn't there be one more "../"?
Interestingly, it compiles with/without.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
