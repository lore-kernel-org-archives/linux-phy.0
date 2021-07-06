Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC13C07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:09:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B913A6195A
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:09:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B913A6195A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:Cc:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNQm108FqImdMnvJqzK6gSTFInMTCZxEJbrQgb9GbyQ=; b=GEc06xp7Is9xGm
	abQDmLUafsnGvcL9q0xp24QuRcSu2faWTNCVmPaEcQZ/2cj0v3D9zk9AzVE2Gg+qH4VutBnexc4TN
	bR8P8OeIzBtD+GTJ2uVd5LtCBsqI2GftHbmc3T1SLMKNkPrJGyCHhWeT2461W6CZrlsToQK+hUOz1
	jyAYqXXTcyg+0+wAT1lkJj7Ut/PGk9M1+7X5PMvsA6iEZAN71WYin4dum1Zg71Lnmn1e/TDmKMlP8
	I9Ldb/8JJIqfPuQKZMRSgv/pKQeU0D1JeYKt65pb9ESmgZZYwF9IG1D8dlmXluyavkG7auGe0uZZ3
	7y4IFqaBn3oKVuTFDTag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0aWe-00A92b-0i; Tue, 06 Jul 2021 02:09:28 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0aWa-00A923-SZ
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:09:26 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210706020922epoutp0355a20f1b79d5f540203c1077fdae0ef3~PEZ5bZanT2294222942epoutp03Y
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:09:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210706020922epoutp0355a20f1b79d5f540203c1077fdae0ef3~PEZ5bZanT2294222942epoutp03Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537362;
 bh=9JidotqzaCYehReF6NgYOnOHwg45ck1L9tp9IiWp/jo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=CFcd5FM5ljgNSC/5NvvisxVDmlMEgyoKWu0jQSTUFcaaUFQZlJRMg8WNbCh9mmy6P
 wtH5HvocCOeLk6OcXa85OW9QxF+FVOYzdFRHEeyJYKl+0TFKagRiDij1AkYc2JIIPG
 g+GORH39rW6ENqsSTMqlFgn+sBhRqqG8IXWaNrq4=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20210706020922epcas1p1d7de0ec5d6dcfacec4e6f92466845396~PEZ5JAlqq0417704177epcas1p1H;
 Tue,  6 Jul 2021 02:09:22 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.156]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4GJmFn5hmYz4x9QJ; Tue,  6 Jul
 2021 02:09:17 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 A5.6E.09586.C4BB3E06; Tue,  6 Jul 2021 11:09:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20210706020916epcas1p1cb88159bedc16a3f8b4c3d85d9e1a18f~PEZ0C2iOt2650526505epcas1p1F;
 Tue,  6 Jul 2021 02:09:16 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706020916epsmtrp26ebfb049bea51fa91c66556f8d8d1f3d~PEZ0B8zVA0911509115epsmtrp2L;
 Tue,  6 Jul 2021 02:09:16 +0000 (GMT)
X-AuditID: b6c32a39-857ff70000002572-3e-60e3bb4c0c63
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.E5.08289.C4BB3E06; Tue,  6 Jul 2021 11:09:16 +0900 (KST)
Received: from [10.113.113.235] (unknown [10.113.113.235]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210706020916epsmtip23f6dc1c8668ff9f7c3364d1831841e45~PEZzzGgit2988429884epsmtip2O;
 Tue,  6 Jul 2021 02:09:16 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
To: Chanho Park <chanho61.park@samsung.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski
 <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@canonical.com>
From: Jaehoon Chung <jh80.chung@samsung.com>
Message-ID: <88fa07de-3cc1-d883-5512-773c44ddec05@samsung.com>
Date: Tue, 6 Jul 2021 11:10:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706020625.117400-2-chanho61.park@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDJsWRmVeSWpSXmKPExsWy7bCmnq7P7scJBguOGVo8mLeNzeLyfm2L
 C0972CzOn9/AbrHx7Q8miwmrvrFYrD1yl91i550TzA4cHrMaetk8Nq3qZPPYvKTeo2/LKkaP
 4ze2MwWwRmXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl
 5gCdoqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpsCzQK07MLS7NS9dLzs+1MjQw
 MDIFKkzIzlj/4CZjwXXpim9/jzA2MLaIdzFyckgImEj8vLOOGcQWEtjBKLFwumwXIxeQ/YlR
 YvLMh+wQzmdGic39j1hgOhZ3XmWDSOxilFiy6CMjhPOeUeLvpwVsIFXCAp4Sy1YfB+sQEZjL
 KPHwjzZIEbPAJkaJeZfvMIIk2AR0JLZ/O84EYvMK2Elc6z7LDmKzCKhI7PkJERcViJQ4v3sB
 C0SNoMTJmU/AbE4BB4lX8y+CLWMWEJe49WQ+E4QtL7H97RxmkGUSAlM5JGZ17gNaxgHkuEhc
 vmQP8YKwxKvjW9ghbCmJz+/2skHY1RK7ms9A9XYwStza1sQEkTCW2L90MhPIHGYBTYn1u/Qh
 wooSO3/PZYTYyyfx7msPK8QqXomONiGIEhWJS69fMsGsuvvkPyuE7SExf8EhlgmMirOQfDYL
 yTezkHwzC2HxAkaWVYxiqQXFuempxYYFpsixvYkRnEy1LHcwTn/7Qe8QIxMH4yFGCQ5mJRFe
 kSmPEoR4UxIrq1KL8uOLSnNSiw8xmgLDeiKzlGhyPjCd55XEG5oaGRsbW5gYmpkaGiqJ8+5k
 O5QgJJCeWJKanZpakFoE08fEwSnVwLSV/1XKxhlFFp8nqbeo8C2LvT11r5ftReU5a279V3lS
 9cpz55Ocmace/lQoXBfwf46OxsGPLNMsPz7/rDuZ79C+6Vy7Zu2OYfJl+sr98MWOUxU6fSfi
 bwk//SOW+iXd2UMj1+2DY2HTxHipD8Gh5i+F06+HPry5g3XarDdKoYvlXp2zmCVXu0RC8c18
 lUVz3lgo/yrf+uYes8j8Q1ZnL2wQKNQyKXHR2fxZUVUpesEB3btVHNOznz2dd7Be5YKa4JGS
 h15cFkpzpq0q9+FKyN78b32vU3L/hGUZi2NnRdRzLcpmTNy174rzNrab9+7cKMk0fp6+giPd
 YNb97+zbnrZx8ZwServhjP8lrtqZsha7lFiKMxINtZiLihMBnIGNrC8EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLLMWRmVeSWpSXmKPExsWy7bCSvK7P7scJBj/WiVk8mLeNzeLyfm2L
 C0972CzOn9/AbrHx7Q8miwmrvrFYrD1yl91i550TzA4cHrMaetk8Nq3qZPPYvKTeo2/LKkaP
 4ze2MwWwRnHZpKTmZJalFunbJXBlrH9wk7HgunTFt79HGBsYW8S7GDk5JARMJBZ3XmXrYuTi
 EBLYwSixeOdnNoiElMTnp1OBbA4gW1ji8OFiiJq3jBJXdu5kAakRFvCUWLb6OAtIQkRgLqPE
 pv97GUEcZoFNjBJHJvaxQrScZJRY1tfKBNLCJqAjsf3bcTCbV8BO4lr3WXYQm0VARWLPT4i4
 qECkxOcFr1ghagQlTs58AraOU8BB4tX8i2DnMQuoS/yZd4kZwhaXuPVkPhOELS+x/e0c5gmM
 QrOQtM9C0jILScssJC0LGFlWMUqmFhTnpucWGxYY5aWW6xUn5haX5qXrJefnbmIEx5CW1g7G
 Pas+6B1iZOJgPMQowcGsJMIrMuVRghBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeC10n44UE0hNL
 UrNTUwtSi2CyTBycUg1MNrm3Tz38Hm24Y0VI4WJxZtVpfFrS7gyTIjY3zL5iyb/9oaJlt2dw
 Wu1m31eHHjuuYr741yHilrQSw6/iMCbNLU9Lp+qFsAqfrWJSbvjP/vUq5/xPHMJMVZ3HBR9P
 8jHoeHAt2lB20uErq461lJv0Hnk/p6yzL7w1Pr/WwpKl4BTfpmdS/a8ui822XXDpn1zOh+lx
 X07MuxP9MHTybRbBfJ/QPXvsMmaVcUmanDkqt5e7ZrXVf2XfmG/za+e7NYmvfH32wbTNh/xf
 pBpnPjIqufFQaN2d1oaE9Kfr3/w9XKR5VnqfopwBI/PtnVtcnb5MsnaxjlF6plQUPd8rhbPC
 mc/i+KOP2UeS27VNmf4rsRRnJBpqMRcVJwIArsEy8xADAAA=
X-CMS-MailID: 20210706020916epcas1p1cb88159bedc16a3f8b4c3d85d9e1a18f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd
References: <20210706020625.117400-1-chanho61.park@samsung.com>
 <CGME20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd@epcas2p3.samsung.com>
 <20210706020625.117400-2-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_190925_331987_F360FD78 
X-CRM114-Status: GOOD (  22.94  )
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

On 7/6/21 11:06 AM, Chanho Park wrote:
> Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
> put it into phy-exynos7-ufs.c to be included different objects or units.
> 
> Change-Id: Iddd3662445fe5373c254f994045b451b443fb91c

Remove Change-Id.

Best Regards,
Jaehoon Chung

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
