Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC32FC07E96
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 07:18:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36D1B6197E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 07:18:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36D1B6197E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0xqethwvA4tbca6FQCtzd4IEeZFiLKGzI7imrkq34u8=; b=MS9YMUxtGNSCZ4KvHC6AVjM1yK
	beEJcVt40c3vvUKPr6GbOXYF4eP5fA5/Vwzi7Ev5DeguGMklCyfp3oeTsQikl5p6kr1qC5Yhxbe8Z
	5zA9gxcnmCYUvYHNwKAZhB+Jp6CTHM4A2qYJQI3YX096H4Mdue10frK5oDaYHaWo/t1wSsZruYNSP
	r8P7uLKBLkKQoCTtXZuekGzTp1k3jV6zcE0AEEj5+NpeqleHyUX7Rc6BuMnqVxOYBDzM6ITLd8CsL
	gHPAf0NsMmh+uS1J/sJAcKL4Ng7xmxCJH4YvYBvVVMMjlGRsP+NubmIkSOxWW+2N00G4rrL5ohCP2
	eMIzaR7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0fLa-00Afmd-NN; Tue, 06 Jul 2021 07:18:22 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0fLY-00Aflu-1s
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 07:18:21 +0000
Received: from mail-ed1-f71.google.com ([209.85.208.71])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m0fLV-0000tr-2I
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 07:18:17 +0000
Received: by mail-ed1-f71.google.com with SMTP id
 p19-20020aa7c4d30000b0290394bdda6d9cso10237941edr.21
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 00:18:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yc64cVpFrKoskwUCKX3tHV1fjs/g7QMInHbQV2wx7U8=;
 b=GHileiziarStyEHyThgsMqnOEmA0V5Oc8vpq0Gcl70o162TLlxJ8nmVErX4fTulYnp
 lW4irgO91a2FhT0mDys+C+KXrM68druI7UdrNuNESMCXAlAp35typ+M+KJ4ICQG/bsgD
 SKId2l9+K7beShDbSPdDlojPLrCgk6CqHhL88UiaOn+wmQHHGYuj5suGocQQOMwGQvJr
 Kks2t1OsuhyCS7o3dyS7wYday9QPWUrqp67J9qiq6F10wqHaFW9p7PnjmiE0fo4x0/5t
 Y6K29m7wRjWlSZbfnltq47ryjTFSlnqNd9j6og7xLMOOENRKg6KCVPXYv7al+bXV9lsR
 DPDQ==
X-Gm-Message-State: AOAM533ZRIJZPUohQRBmFstNvJN1LvxXb2M5cuWNbXPGBeqdkKB2GIeE
 l3wMlFBp8TuYP/uhSDQILjuFQNwRqMKeCXCmWSVBYJ3fqtm0O2FNHqAje9X+CVbkbUBOpotph14
 IzBxaq0VRhPHUzwN/Jj1FM3be3YZS1hKOPzw7yuvzS0Y=
X-Received: by 2002:a05:6402:50c6:: with SMTP id
 h6mr21070506edb.296.1625555896322; 
 Tue, 06 Jul 2021 00:18:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvBy8hmdMS2uHAbjlGCj2iJKn15Ud1TGOJNqoXA6dikrbCThyq+c1KPx2jXaF6+kqL9ZkdQw==
X-Received: by 2002:a05:6402:50c6:: with SMTP id
 h6mr21070488edb.296.1625555896161; 
 Tue, 06 Jul 2021 00:18:16 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id l14sm5215827ejx.103.2021.07.06.00.18.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 00:18:15 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210706021804.12890-1-chanho61.park@samsung.com>
 <CGME20210706021804epcas2p1d99074348847a8afe173bdcf80eeac76@epcas2p1.samsung.com>
 <20210706021804.12890-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <040b24e1-199e-5817-a007-3b9b6488cdec@canonical.com>
Date: Tue, 6 Jul 2021 09:18:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706021804.12890-2-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_001820_156452_0AF55813 
X-CRM114-Status: GOOD (  19.44  )
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

On 06/07/2021 04:18, Chanho Park wrote:
> Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
> put it into phy-exynos7-ufs.c to be included different objects or units.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/Makefile                          |  3 ++-
>  .../samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 11 +++++------
>  drivers/phy/samsung/phy-samsung-ufs.h                 |  4 +++-
>  3 files changed, 10 insertions(+), 8 deletions(-)
>  rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
> 
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index 3959100fe8a2..d55d9aa5b932 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -2,7 +2,8 @@
>  obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
>  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
>  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
> -obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
> +obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o \
> +					phy-exynos7-ufs.o
>  obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
>  phy-exynos-usb2-y			+= phy-samsung-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
> diff --git a/drivers/phy/samsung/phy-exynos7-ufs.h b/drivers/phy/samsung/phy-exynos7-ufs.c
> similarity index 93%
> rename from drivers/phy/samsung/phy-exynos7-ufs.h
> rename to drivers/phy/samsung/phy-exynos7-ufs.c
> index 518923141958..657b58319c14 100644
> --- a/drivers/phy/samsung/phy-exynos7-ufs.h
> +++ b/drivers/phy/samsung/phy-exynos7-ufs.c
> @@ -1,11 +1,12 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * UFS PHY driver data for Samsung EXYNOS7 SoC
>   *
>   * Copyright (C) 2020 Samsung Electronics Co., Ltd.
>   */
> -#ifndef _PHY_EXYNOS7_UFS_H_
> -#define _PHY_EXYNOS7_UFS_H_
> +
> +#include <linux/io.h>

Why do you need io.h here? Which part uses it?


Best regards,
Krzysztof

> +#include <linux/phy/phy.h>
>  
>  #include "phy-samsung-ufs.h"
>  
> @@ -68,7 +69,7 @@ static const struct samsung_ufs_phy_cfg *exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {
>  	[CFG_POST_PWR_HS]	= exynos7_post_pwr_hs_cfg,
>  };
>  
> -static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
> +const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
>  	.cfg = exynos7_ufs_phy_cfgs,
>  	.isol = {
>  		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
> @@ -77,5 +78,3 @@ static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
>  	},
>  	.has_symbol_clk = 1,
>  };
> -
> -#endif /* _PHY_EXYNOS7_UFS_H_ */
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 5de78710524c..1532d239ff0e 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -10,6 +10,8 @@
>  #ifndef _PHY_SAMSUNG_UFS_
>  #define _PHY_SAMSUNG_UFS_
>  
> +#include <linux/regmap.h>
> +
>  #define PHY_COMN_BLK	1
>  #define PHY_TRSV_BLK	2
>  #define END_UFS_PHY_CFG { 0 }
> @@ -134,6 +136,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
>  			   phy->isol->mask, isol ? 0 : phy->isol->en);
>  }
>  
> -#include "phy-exynos7-ufs.h"
> +extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
>  
>  #endif /* _PHY_SAMSUNG_UFS_ */
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
