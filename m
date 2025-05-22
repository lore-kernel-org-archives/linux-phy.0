Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 547F5C54756
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FyEju8o86BquNAoHHskd1vmS1vgEv+Uyr/ZbMKEgdVo=; b=aZrwTKB8RlXtUbn0vkyr3LU/YT
	QZoT7QedMTBdep9qowbvrBNfBVQEBifK4lA7KEC68HZyHzngg7bujmrSlNGPS5rlzK/9bVpTp5vdJ
	QtcZFsftcJWCoKfkzbF3hltFZeXpRUzTzvuTHzJ+c4r28+wi62B77/n8DgX0EP8uqY8nGg2XM0kgk
	2v3AptFb2PuiBBHrDwvHfLickTGYslkvg2iY9Sy3ELwzWyQsK1B78WWfVgnds5PNe+tGc749VpBrH
	niq2aAyfglvAc2JuAKFBfy/jjOgnnRcS2L2itW7+PfYD4iPwtorwWhOmLwBlA0pLoeKcIVw6yn0Sc
	39EUgXVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0KZ-0000000081p-0Jpa;
	Thu, 22 May 2025 07:27:07 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0Gn-000000007Hw-2KIx
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:23:14 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-445b11306abso30608515e9.3
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 00:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747898592; x=1748503392; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKcV9YJnik1heDPbiDZhe+461Bkk9PUXYS1vSVg0MNo=;
        b=vw8+sIOs3FxniHVKnGQKBJdLYb2l5lNglvE9bJorbiNb5Quv+r6kDJITiYVThUkQjB
         6d/N0VNZGZfO76WpsPkSpNHABLpTSuh0WNwotJXDCZq7gT8Z/6VoweHY/QGE9gtqU210
         tE1bVm2wOPb0BriVLLxn5TQ1/xHJsyDrQbx/bXPNCEAkpzeSeuc91LmGIWNLHz+vC5JD
         lWVDsJ+QyYdnl/HoCZp+IOgMgixRScE4NW015K0y8lupX8xiIBwUfyQui/g9/wqC3uLZ
         UUOhVFjfA03o0fGz4EJEg9aGq4oA4R2BVP6R3lopOS2yUwl+yMPFT1gtoU0u8jtoOtO6
         vE+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747898592; x=1748503392;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DKcV9YJnik1heDPbiDZhe+461Bkk9PUXYS1vSVg0MNo=;
        b=vmLrj6ZQdSa5W7WDRvewFkIQRcqH6ulvIDzHptu46fiLyXsjUJKZno7bF20ySL5Dew
         ClaAPZpPlPc0LRkEswmlXfVQxFdrL1zf0iOngQdc3zBkoKXiMeoLVIMxfHb9qjIXxeIk
         gwFTD6X7PGcpibPwxxjvSd0KXvNjqKwwjypNLqUSTWMKhFsnseVGFAr1AjcFdmTLqfld
         nwQRhttMSFSkbTaHai5diA6sn6R0XMsF2YBhHrsdqr/DMVe04cZDi9eZC8/TaFshgYiH
         nJCvXJ1otQPJhqN6k2zi/nSDNFr9akw+nPg+PCnnYg2Poayhk7LaptMZRS/tlRrOslve
         n8Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUUJzOoLc3IFrSaPV3iT42H/Uj7dR1S7RJGEGY7vpI3RSNXWcXpm+9G+eH5C9bBCy4vtAWb3SFXzuk=@lists.infradead.org
X-Gm-Message-State: AOJu0YypCUKqcyxs3i/rOxBdV9Z4QsffDhtnwQGd/oKbmrO1JGW2WDlX
	1vXtsMPLMvDsza8T4ER/wguSNN3Mg2QnunDsfFAWZYsNgyq/DRZwQIQQrTXScNBX4jQ=
X-Gm-Gg: ASbGnctdg7Nt5Q/hIsrG8hP1Rc+X6hwGUrE0Zb3jy+2e0G/jQG2RIE/X8KR2mQcACR4
	R6uk1jg08rzo3yecxADuPMU86Blb3UxrxQAOeMreLk0YecWlVEVGcgdjhVcSsSdHENlMdEPDNk0
	LzwD87ifIm8EhtzmdSxRv6HOjHXJA+/HYc+ptZq8JxECLYIVDdwbdG2z4qvbaRio0FuNPzbNznP
	uRCxldEMAj5iuJ2ZiZm9mKEw8TB2DiYryMudAoExoMJzKoQygbyqyGAPPS1RQ58u+rT3gBVpwgb
	6r5CUpr2mJ/M4cikDjrkKWAiVWpzIK3IeJHIEEazji/aoffzvMe6aAsMF0p3mcJzk91y3ZVq+r6
	GIBu6t7kzFMgTMoGda25xU3MKIyIp
X-Google-Smtp-Source: AGHT+IHts0eteY4PlR1SQN/PyYMswWNwfgjzZcpYKjCK25ZDntVHx3kCGx8YLO7OAaDj+8ppdM5vmg==
X-Received: by 2002:a05:600c:548d:b0:442:f44f:678 with SMTP id 5b1f17b1804b1-442ff03c63emr240517275e9.31.1747898591652;
        Thu, 22 May 2025 00:23:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd94f1sm97174725e9.35.2025.05.22.00.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 00:23:11 -0700 (PDT)
Message-ID: <fa65b2bf-b76e-428a-8110-325a6191752e@linaro.org>
Date: Thu, 22 May 2025 09:23:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 2/5] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-phy@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
 <20250520-fd-hdmi-phy-v4-2-fcbaa652ad75@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250520-fd-hdmi-phy-v4-2-fcbaa652ad75@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_002313_611141_AD1CCF8D 
X-CRM114-Status: GOOD (  12.68  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 20/05/2025 22:44, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> The "uni" PLL is shared between several PHYS: APQ8064's SATA,
> MSM8974/APQ8084 HDMI, MSM8916 DSI, MSM8974/APQ8084 DSI.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 23 +-------------------
>   drivers/phy/qualcomm/phy-qcom-uniphy.h       | 32 ++++++++++++++++++++++++++++
>   2 files changed, 33 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> index cae290a6e19fcb7fd68fe6cd0229b9b00d47131c..dd9929429f9a0e2f265180e8d3f390451d91adde 100644
> --- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> +++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> @@ -15,28 +15,7 @@
>   #include <linux/platform_device.h>
>   #include <linux/phy/phy.h>
>   
> -/* PHY registers */
> -#define UNIPHY_PLL_REFCLK_CFG		0x000
> -#define UNIPHY_PLL_PWRGEN_CFG		0x014
> -#define UNIPHY_PLL_GLB_CFG		0x020
> -#define UNIPHY_PLL_SDM_CFG0		0x038
> -#define UNIPHY_PLL_SDM_CFG1		0x03C
> -#define UNIPHY_PLL_SDM_CFG2		0x040
> -#define UNIPHY_PLL_SDM_CFG3		0x044
> -#define UNIPHY_PLL_SDM_CFG4		0x048
> -#define UNIPHY_PLL_SSC_CFG0		0x04C
> -#define UNIPHY_PLL_SSC_CFG1		0x050
> -#define UNIPHY_PLL_SSC_CFG2		0x054
> -#define UNIPHY_PLL_SSC_CFG3		0x058
> -#define UNIPHY_PLL_LKDET_CFG0		0x05C
> -#define UNIPHY_PLL_LKDET_CFG1		0x060
> -#define UNIPHY_PLL_LKDET_CFG2		0x064
> -#define UNIPHY_PLL_CAL_CFG0		0x06C
> -#define UNIPHY_PLL_CAL_CFG8		0x08C
> -#define UNIPHY_PLL_CAL_CFG9		0x090
> -#define UNIPHY_PLL_CAL_CFG10		0x094
> -#define UNIPHY_PLL_CAL_CFG11		0x098
> -#define UNIPHY_PLL_STATUS		0x0C0
> +#include "phy-qcom-uniphy.h"
>   
>   #define SATA_PHY_SER_CTRL		0x100
>   #define SATA_PHY_TX_DRIV_CTRL0		0x104
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..e5b79a4dc270f25d8979f51bf4acd6c76998032e
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2014, The Linux Foundation. All rights reserved.
> + */
> +
> +#ifndef PHY_QCOM_UNIPHY_H
> +#define PHY_QCOM_UNIPHY_H
> +
> +/* PHY registers */
> +#define UNIPHY_PLL_REFCLK_CFG		0x000
> +#define UNIPHY_PLL_PWRGEN_CFG		0x014
> +#define UNIPHY_PLL_GLB_CFG		0x020
> +#define UNIPHY_PLL_SDM_CFG0		0x038
> +#define UNIPHY_PLL_SDM_CFG1		0x03c
> +#define UNIPHY_PLL_SDM_CFG2		0x040
> +#define UNIPHY_PLL_SDM_CFG3		0x044
> +#define UNIPHY_PLL_SDM_CFG4		0x048
> +#define UNIPHY_PLL_SSC_CFG0		0x04c
> +#define UNIPHY_PLL_SSC_CFG1		0x050
> +#define UNIPHY_PLL_SSC_CFG2		0x054
> +#define UNIPHY_PLL_SSC_CFG3		0x058
> +#define UNIPHY_PLL_LKDET_CFG0		0x05c
> +#define UNIPHY_PLL_LKDET_CFG1		0x060
> +#define UNIPHY_PLL_LKDET_CFG2		0x064
> +#define UNIPHY_PLL_CAL_CFG0		0x06c
> +#define UNIPHY_PLL_CAL_CFG8		0x08c
> +#define UNIPHY_PLL_CAL_CFG9		0x090
> +#define UNIPHY_PLL_CAL_CFG10		0x094
> +#define UNIPHY_PLL_CAL_CFG11		0x098
> +#define UNIPHY_PLL_STATUS		0x0c0
> +
> +#endif
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
