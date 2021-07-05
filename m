Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69EDC07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:36:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FF51613B9
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:36:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FF51613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:Cc:To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gdoIqaOPD8UigV42MnCOf8iF/iYDm9VJ6TG70f9jbwI=; b=BUY33kUVux/nmSpQzhbJpSUp9p
	iGmxNPVLHHP4CRAFuSBr+cQj4NTaZrmGZhoj/+un8c1Zl0uXsN6AwUDoXWgbC+WNVKxgOGnQvbMwD
	BRE9nwa7Pgj7mpQe25JWSYUL+fHrjOier0vYj5JbCYLeoWWkDXjItTSwPIl9C5SDbXP1qwMGviPFW
	HPTA920/9POzYHTo+S8eIMpBfyU9rLN+iRxDLlhA5l6EYFxbSPMH+0/Mt8cVzUrTopqdVaYcHluHf
	fpF8W73WM1A5inrKTf/UxToyejqLTEfxBE0jQl3zhtDJizaYXii49cTZMSLtTkViSotteivf2bhPr
	vMU9f+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0NqM-008vMI-1X; Mon, 05 Jul 2021 12:36:58 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0NqJ-008vLC-Q5
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:36:57 +0000
Received: from mail-lj1-f198.google.com ([209.85.208.198])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m0NqI-0005ip-Hk
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:36:54 +0000
Received: by mail-lj1-f198.google.com with SMTP id
 o8-20020a2e9b480000b029017dbdf755f5so7195949ljj.0
 for <linux-phy@lists.infradead.org>; Mon, 05 Jul 2021 05:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N3Sp8S08Skiwdel64CWVqsNJMMp2ScAYWPZIdDZeAE0=;
 b=XEdi4Sv9+zbUYG6zqzOfLsAKcyOWGhPO01HTpnAKYGWPtsrKtGblVJzdUawOvC8KqX
 XvVV0sYNcpnrDmBPz37SGAwoSLzf+Mfxv9F7VYX0YpllFm8aMwlhDcpv4uQdHtjXemEI
 smA6MyquoTYZZwKzodkutHs8DzG7oTdCYrG1oa7mh/VRaAxTuBeXFLnLr9tUfxiNhL6X
 InUro7OKtjsZfsTYWg5SOurqlNrRaQW3wfrAzXA6M9boO+9RMppOMr9/4poWZqVX/fbG
 lH80mhXRIUsAwTNa+paDo5XGt4wHUA1Lv3vHSbhU8xZVRA65i24H5Gv/nJJZSts6QKId
 j06A==
X-Gm-Message-State: AOAM533ZHrqvqbXVyb28LQaku5crh7D83lc9YQFPSRAuf4nhAHsW9kS8
 QzE9kJDq8zQADWcTIBILxaHVv23I5dq9Z55hJhf534qJnasGCRjIH1OWZg+dOHLYozapm6ny43c
 p8YnkQ9C46kAgicy1Ep9dtv+ZmL4QKlwaZho8l0omO20=
X-Received: by 2002:a17:906:dbec:: with SMTP id
 yd12mr12881840ejb.102.1625488163167; 
 Mon, 05 Jul 2021 05:29:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuz6GHWZyJiUYk5403LMEmrRv8UK6NiuEv35k+diEbBeDOXCWXDYy91Rg1wON0/ux3CxuAiQ==
X-Received: by 2002:a17:906:dbec:: with SMTP id
 yd12mr12881825ejb.102.1625488162874; 
 Mon, 05 Jul 2021 05:29:22 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id gg4sm2169717ejb.87.2021.07.05.05.29.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Jul 2021 05:29:22 -0700 (PDT)
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a@epcas2p4.samsung.com>
 <20210705102318.102999-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Message-ID: <bb462ea1-7a94-b697-a716-218594439487@canonical.com>
Date: Mon, 5 Jul 2021 14:29:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705102318.102999-3-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_053655_889620_74C17F0C 
X-CRM114-Status: GOOD (  22.44  )
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

On 05/07/2021 12:23, Chanho Park wrote:
> This patch adds to support phy-exynosauto-ufs driver for ExynosAuto v9
> series SoCs. The patch adds "samsung,exynosauto-ufs-phy" compatible.
> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
> PHY_TRSV_REG_CFG_OFFSET.
> 
> Change-Id: I4ea333d4565af537c26a8876d1b27144eea3c3c6
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>  drivers/phy/samsung/phy-exynosauto-ufs.h      | 70 +++++++++++++++++++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>  drivers/phy/samsung/phy-samsung-ufs.h         |  1 +
>  4 files changed, 75 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-exynosauto-ufs.h
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index 636cc501b54f..8e13f8cec6a7 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - samsung,exynos7-ufs-phy
> +      - samsung,exynosauto-ufs-phy

I would prefer real product ID (taken from registers or vendor kernel),
not a marketing name "Auto" because it's too generic, unspecified, too
much as wildcard.

If vendor kernel does not define name or product ID is also not
specific, then it should include a version - so "autov9".

>  
>    reg:
>      maxItems: 1
> diff --git a/drivers/phy/samsung/phy-exynosauto-ufs.h b/drivers/phy/samsung/phy-exynosauto-ufs.h
> new file mode 100644
> index 000000000000..3e7d7bb7f0e6
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynosauto-ufs.h
> @@ -0,0 +1,70 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * UFS PHY driver data for Samsung EXYNOSAUTO SoC
> + *
> + * Copyright (C) 2021 Samsung Electronics Co., Ltd.
> + */
> +#ifndef _PHY_EXYNOSAUTO_UFS_H_
> +#define _PHY_EXYNOSAUTO_UFS_H_
> +
> +#include "phy-samsung-ufs.h"
> +
> +#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL	0x728
> +#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
> +#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
> +
> +#define PHY_TRSV_REG_CFG_AUTO(o, v, d)	PHY_TRSV_REG_CFG_OFFSET(o, v, d, 0x50)
> +
> +/* Calibration for phy initialization */
> +static const struct samsung_ufs_phy_cfg exynosauto_pre_init_cfg[] = {

I know that Exynos7 UFS did it but it was wrong. Headers should not
define structures. What if a header needs to be included in different
objects/units?

This should be probably a separate file (C file). Something like we did
for Exynos PMU (drivers/soc/samsung/exynos-pmu.h).


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
