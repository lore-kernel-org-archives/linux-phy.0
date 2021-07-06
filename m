Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06453C07E96
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 07:20:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BC1861986
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 07:20:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7BC1861986
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=umvc0t43zSOkkwsIljH8ZO1q69wyhQWel8hjkEyxWsQ=; b=e9NBvnAd9vYzd4PPFtvkPiWqS3
	w3UROnOJLlFE2dREm6OIEW/sFqKiVmXHvOesnu5PeeL6NgsDVoX9rupBLq4ncy66Xv9CI6G3619ml
	Y3SoCv974kAlFQDZJKnPg7PtDFzykLHCuAu3xL1GfQPtJ6jUysNZ5zSnfOFlSjr77dFqSV1T3+Z43
	1QaydxXlAyD9y7HZu2vBSC/R0GduM3QlSSgG0hfUDlHc513/3cuKrpZzJjepAlzoG7zkSVGaymCQx
	WcylVT+WXD38GYoJ5iVygoXTEzcAYz54a7H+/RB9XvU+YqLjrBHjixpF7/vyzwzmlql1JAYyWmI4g
	u6MOaatQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0fNG-00Afuf-TY; Tue, 06 Jul 2021 07:20:06 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0fND-00AfuA-93
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 07:20:04 +0000
Received: from mail-ed1-f69.google.com ([209.85.208.69])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m0fNB-00011R-UM
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 07:20:02 +0000
Received: by mail-ed1-f69.google.com with SMTP id
 s6-20020a0564020146b029039578926b8cso7417290edu.20
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 00:20:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t639vFHySEHGSK9xFGwyo7YReWDM3gzMdiCXO/t5i0Q=;
 b=XZ5m1JB3IP/4PCjaGB05BcKEy2bxw2nnX0eKHJSJJq4DuzPvjLZFVaWn1COHxxvcjv
 hMXTaH7sj+rtcTNWVjJNIsdUeD8lCEeoUOZCKYXwdCkH0BsoZ7+hnhIFNlCHNzxM/t+I
 w4sMrVqy2A2bkIjZyCuvTWV1cY7FEvBH04nBI2CPk5h27FNJEAPeZ6Pj/yg3ISDDSqnR
 USq/iNrs2AhCChCllAgtWcTpHCwxjpGHE2KudxF3HD/lzqPudvnbWtFa7mTEarqOGore
 sHQw8Y5+JQiG72uoxIyL5fB9nzoknh+NZJKW1DQDN607/uNG7SBJ+MO7B2y7ty78288R
 Hjpw==
X-Gm-Message-State: AOAM5320gHK35cYMPiV2nqtDXKG8kJBED0SaDBcK3sEfh1rCXevft/30
 EfxweaiMCBeNrpkHdLNPzWcPdIiXj/i0NoHg3CjTERv53d8uchLdiqV5fyTh/H7MWy4mEJi7ON5
 ++PIv4u2LCepKXXrAHhKVmdj1qEuP9uaAF3zlMkNIxyA=
X-Received: by 2002:a17:906:eca1:: with SMTP id
 qh1mr17367767ejb.287.1625556001530; 
 Tue, 06 Jul 2021 00:20:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8D6G15Z5bByO0+UESUuaZyxntn1u51BIMdHo6R8Zbej3p8Cw3i51Z3hbnBvMPYK+OmgRx5w==
X-Received: by 2002:a17:906:eca1:: with SMTP id
 qh1mr17367757ejb.287.1625556001361; 
 Tue, 06 Jul 2021 00:20:01 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id m18sm6719866edv.82.2021.07.06.00.20.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 00:20:01 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210706021804.12890-1-chanho61.park@samsung.com>
 <CGME20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174@epcas2p4.samsung.com>
 <20210706021804.12890-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <c8327d67-6a73-d06d-271e-62556f9f2fa1@canonical.com>
Date: Tue, 6 Jul 2021 09:20:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706021804.12890-3-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_002003_379041_274E5D29 
X-CRM114-Status: GOOD (  21.12  )
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
> This patch adds to support phy-exynosautov9-ufs driver for ExynosAuto v9
> series SoCs. The patch adds "samsung,exynosautov9-ufs-phy" compatible.
> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
> PHY_TRSV_REG_CFG_OFFSET.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>  drivers/phy/samsung/Makefile                  |  3 +-
>  drivers/phy/samsung/phy-exynosautov9-ufs.c    | 70 +++++++++++++++++++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>  drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
>  5 files changed, 82 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index 636cc501b54f..f6ed1a005e7a 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - samsung,exynos7-ufs-phy
> +      - samsung,exynosautov9-ufs-phy
>  
>    reg:
>      maxItems: 1
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index d55d9aa5b932..ab87b71cd90f 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -3,7 +3,8 @@ obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
>  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
>  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
>  obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o \
> -					phy-exynos7-ufs.o
> +					phy-exynos7-ufs.o \
> +					phy-exynosautov9-ufs.o
>  obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
>  phy-exynos-usb2-y			+= phy-samsung-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
> diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> new file mode 100644
> index 000000000000..9ab79e018724
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> @@ -0,0 +1,70 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * UFS PHY driver data for Samsung EXYNOSAUTO v9 SoC
> + *
> + * Copyright (C) 2021 Samsung Electronics Co., Ltd.
> + */
> +
> +#include <linux/io.h>
> +#include <linux/phy/phy.h>

I commented before that io.h is not needed but also phy.h looks unused
here. If there are used in phy-samsung-ufs.h, they should be put there.

> +
> +#include "phy-samsung-ufs.h"
> +


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
