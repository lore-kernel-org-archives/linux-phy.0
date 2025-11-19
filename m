Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8513FCF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi+VkNdxHDuvE+PE84aIfyjU++WX5/hWlXT8lF+IiFE=; b=f0H4G9umCGBuDT
	zasP2xAEc8LnGWvFiXyy0oUMbZWygRWSMNcebP6FnoL6DXmjP04vpGJOQcdbfXnnFIw4y0YtjddbY
	DffQ0af59bHjcBu7xZ9pKcfTS2Qi/1mlbJW4/K7bVbTnTWDJqATDtIy7jBDGjjvKvV6DoYeQ6lyom
	HiBHceC7tn0GiBFzJo7qEpwad5PuvEEdyDOjWr4yZ6GOqfiwgbha8Wikzp8xsApIIkTkzgnCEn/D+
	rerK59PIb7iP9k4KIED4N1lOjwn1j1ZZERWiWlE8jRyw33Z3Rrkq+jmJ3x2V17Gpa0SzgS9TJsGno
	Z521DUe8GRA6pWHwPKwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdh6-00000002nwr-1ASs;
	Wed, 19 Nov 2025 08:37:40 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdh3-00000002nwV-3oE5
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:37:39 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-42b38de7940so3551304f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541456; x=1764146256; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvXbaBmOOErIHCg8Z4osVCMQqoA4a4SSUiRk+vhbLU0=;
        b=aw0UF84EOIHprE6kkVlyOl46PeaBgsFiexNXhRAgUhKbmpnaTGyR1Vh4iC7F7a14Ne
         XQvBZhAFAYwfXRPpFiV6EY3jcDMbQsHAr7ZxZuAct8cS9Bh3ECfxBhWXUnBNcwLsy6mM
         5QEF4rk0i97QBCjlBNGMAkIYJX45RLYSWIDbFgiqvAYZ6gg+6eHryEteicL15oY3n8kA
         fbgLL7qzqjPYOluIVUwIm6dfRagl0jWOP7jLtaqORGVd8TsXqyLhDW63hiTU28FATP1S
         obnMfSSJGGK1K7e1BGb5lf3qMMxxKGt0m0bbOYHC7Zy+nn4udhIJ9kM9+dY9Ong5XYFz
         t2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541456; x=1764146256;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TvXbaBmOOErIHCg8Z4osVCMQqoA4a4SSUiRk+vhbLU0=;
        b=ifPktOG84H5HOw+b890tmEAOfumKXAWfFO2gcZVjd1gpibQjdqH0qHRlclA9LpaQ1k
         GRehzwDb5lwMOmQFU2FlYwXwvKuc1eYxHYulX1TqRwpFeyT/bKfK26NSJ3RujzjKvuba
         XfXwL89zrgVcy5akRpYknA9QFx7nSVWVanQaDK0oqyd7Oi7VUiZpOQbf+vJZYmidZc5a
         JXD+0COVddnWuW/NkLgVdQgeLSP2RsUIrx6s2WaCwEaDGJMBVyUQkwd1J7IUJpWHjEjA
         wCvHc2HGVCCaf1VQHSQQnn8hpWqbTwyVkEHnTrA7z4DyDJ5Qc+1igBf+KyHGleFVj/ef
         eW1g==
X-Forwarded-Encrypted: i=1; AJvYcCWu8+Smt0FbpZEjNlMZ6InDB/Uw9SzAjhrxh/4a3MlsK9zvOsetS+hmCtbDwwgV9gqYZw1k376mF3o=@lists.infradead.org
X-Gm-Message-State: AOJu0YywQDwZMfX/bgjGlJXxEIBQlwNmPnhh+NOwyyIiAFEN5xgp2+eG
	QSCivTZH8aZ4ey2rrugFZTwTsCD9omv7HpU/9cMl8c2Eg8wudzUmEaEfnGimwzEhRj0=
X-Gm-Gg: ASbGncuccu/ORuUy3oqNtR/e/aGjODNZBrOW6qOkXxBgmwi4YSiU7Kz89pyuCpsNFao
	i4tZHYd4/4m5h168XXfIox89manVwuEY1Gpu/nkDRSj31oZclotdnyJYyno1hWpKFCbdcoV/Q/K
	QPDoMzLs2BzypW88bJwngLoPeLMs7I2NGmi6/OxdS7EEc7UfEtQqGuXoVBXs71Do9fb93rS377Z
	dRyOMhFocrkxbhoytBaZA9/TPCPqkieC0SRI95q5MWSBYBeUbqZuAtJHasYtPRY4Fr8AUfrwYvl
	YqpB2HjRKeFNHxpqeW9zbYiprhRKFwOx2ToYdeG0aTnjxeAD+Ir2L1UCuHfda6vPA+utKXnOGk2
	X6MiwH/qSXio2KX7G+LalQqyupmCYz0nTbJ+OXXZPeA3J6RXCwggidnQe7aE4Mql6eSvXmIjnjH
	+uRMxIOyotpkU4b5UCU2mh3cWIopIRS89lTOAt0pX5MMCWg5qEJG0VgvnlcbFRlhc=
X-Google-Smtp-Source: AGHT+IHCxYUjbyJA4c8W+HycRA5XTv/xke4exEKnKAlgosQpl5vxVbjThB/YaW4g+OgWttQVUnRwTQ==
X-Received: by 2002:a05:6000:200f:b0:42b:3806:2ba6 with SMTP id ffacd0b85a97d-42b593394b4mr19373199f8f.25.1763541455560;
        Wed, 19 Nov 2025 00:37:35 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f21948sm36489179f8f.43.2025.11.19.00.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:37:34 -0800 (PST)
Message-ID: <8be79a2d-4f2b-4ff0-aad8-eaf525f58744@linaro.org>
Date: Wed, 19 Nov 2025 09:37:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] phy: eswin: Create eswin directory and add EIC7700
 SATA PHY driver
To: Yulin Lu <luyulin@eswincomputing.com>, dlemoal@kernel.org,
 cassel@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org
Cc: ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
 linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
 fenglin@eswincomputing.com, lianghujun@eswincomputing.com
References: <20250930083754.15-1-luyulin@eswincomputing.com>
 <20250930084628.1151-1-luyulin@eswincomputing.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250930084628.1151-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_003738_021507_AE7174B3 
X-CRM114-Status: GOOD (  30.48  )
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

Hi,

On 9/30/25 10:46, Yulin Lu wrote:
> Created the eswin phy driver directory and added support for
> the SATA phy driver on the EIC7700 SoC platform.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>   drivers/phy/Kconfig                  |   1 +
>   drivers/phy/Makefile                 |   1 +
>   drivers/phy/eswin/Kconfig            |  14 ++
>   drivers/phy/eswin/Makefile           |   2 +
>   drivers/phy/eswin/phy-eic7700-sata.c | 192 +++++++++++++++++++++++++++
>   5 files changed, 210 insertions(+)
>   create mode 100644 drivers/phy/eswin/Kconfig
>   create mode 100644 drivers/phy/eswin/Makefile
>   create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0a..6d50704917f0 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -105,6 +105,7 @@ source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"
>   source "drivers/phy/cadence/Kconfig"
> +source "drivers/phy/eswin/Kconfig"
>   source "drivers/phy/freescale/Kconfig"
>   source "drivers/phy/hisilicon/Kconfig"
>   source "drivers/phy/ingenic/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494..482a143d3417 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -17,6 +17,7 @@ obj-y					+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
>   					   cadence/	\
> +					   eswin/	\
>   					   freescale/	\
>   					   hisilicon/	\
>   					   ingenic/	\
> diff --git a/drivers/phy/eswin/Kconfig b/drivers/phy/eswin/Kconfig
> new file mode 100644
> index 000000000000..3fcd76582c3b
> --- /dev/null
> +++ b/drivers/phy/eswin/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for Eswin platforms
> +#
> +config PHY_EIC7700_SATA
> +	tristate "eic7700 Sata SerDes/PHY driver"
> +	depends on ARCH_ESWIN || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support SerDes/Phy found on ESWIN's
> +	  EIC7700 SoC.This Phy supports SATA 1.5 Gb/s,
> +	  SATA 3.0 Gb/s, SATA 6.0 Gb/s speeds.
> +	  It supports one SATA host port to accept one SATA device.
> diff --git a/drivers/phy/eswin/Makefile b/drivers/phy/eswin/Makefile
> new file mode 100644
> index 000000000000..db08c66be812
> --- /dev/null
> +++ b/drivers/phy/eswin/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_PHY_EIC7700_SATA)	+= phy-eic7700-sata.o
> diff --git a/drivers/phy/eswin/phy-eic7700-sata.c b/drivers/phy/eswin/phy-eic7700-sata.c
> new file mode 100644
> index 000000000000..19b7ddf2583f
> --- /dev/null
> +++ b/drivers/phy/eswin/phy-eic7700-sata.c
> @@ -0,0 +1,192 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ESWIN SATA PHY driver
> + *
> + * Copyright 2024, Beijing ESWIN Computing Technology Co., Ltd..
> + * All rights reserved.
> + *
> + * Authors: Yulin Lu <luyulin@eswincomputing.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#define SATA_CLK_CTRL				0x0
> +#define SATA_AXI_LP_CTRL			0x08
> +#define SATA_MPLL_CTRL				0x20
> +#define SATA_P0_PHY_STAT			0x24
> +#define SATA_PHY_CTRL0				0x28
> +#define SATA_PHY_CTRL1				0x2c
> +#define SATA_REG_CTRL				0x34
> +#define SATA_REF_CTRL1				0x38
> +#define SATA_LOS_IDEN				0x3c
> +#define SATA_RESET_CTRL				0x40
> +
> +#define SATA_SYS_CLK_EN				BIT(28)
> +#define SATA_PHY_RESET				BIT(0)
> +#define SATA_PORT_RESET				BIT(1)
> +#define SATA_CLK_RST_SOURCE_PHY			BIT(0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK	GENMASK(6, 0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK	GENMASK(14, 8)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK	GENMASK(22, 16)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN1_MASK	GENMASK(5, 0)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN2_MASK	GENMASK(13, 8)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN3_MASK	GENMASK(21, 16)
> +#define SATA_LOS_LEVEL_MASK			GENMASK(4, 0)
> +#define SATA_LOS_BIAS_MASK			GENMASK(18, 16)
> +#define SATA_M_CSYSREQ				BIT(0)
> +#define SATA_S_CSYSREQ				BIT(16)
> +#define SATA_REF_REPEATCLK_EN			BIT(0)
> +#define SATA_REF_USE_PAD			BIT(20)
> +#define SATA_MPLL_MULTIPLIER_MASK		GENMASK(22, 16)
> +#define SATA_P0_PHY_READY			BIT(0)
> +
> +#define PHY_READY_TIMEOUT			(usecs_to_jiffies(4000))
> +
> +struct eic7700_sata_phy {
> +	void __iomem *regs;
> +	struct phy *phy;
> +};
> +
> +static int wait_for_phy_ready(void __iomem *base, u32 reg, u32 checkbit,
> +			      u32 status)
> +{
> +	unsigned long timeout = jiffies + PHY_READY_TIMEOUT;
> +
> +	while (time_before(jiffies, timeout)) {
> +		if ((readl(base + reg) & checkbit) == status)
> +			return 0;
> +		usleep_range(50, 70);
> +	}
> +
> +	return -ETIMEDOUT;
> +}

Please use read_poll_timeout() or even better use regmap and use regmap_read_poll_timeout()

> +
> +static int eic7700_sata_phy_init(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val;
> +	int ret;
> +
> +	/*
> +	 * The SATA_CLK_CTRL register offset controls the pmalive, rxoob, and
> +	 * rbc clocks gate provided by the PHY through the HSP bus, and it is
> +	 * not registered in the clock tree.
> +	 */
> +	val = readl(sata_phy->regs + SATA_CLK_CTRL);
> +	val |= SATA_SYS_CLK_EN;
> +	writel(val, sata_phy->regs + SATA_CLK_CTRL);

regmap_update_bits() would fit here and all other read/modify/write sequence.

> +
> +	writel(SATA_CLK_RST_SOURCE_PHY, sata_phy->regs + SATA_REF_CTRL1);
> +	writel(FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK, 0x42) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK, 0x46) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK, 0x73),
> +	       sata_phy->regs + SATA_PHY_CTRL0);
> +	writel(FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN1_MASK, 0x5) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN2_MASK, 0x5) |
> +	       FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN3_MASK, 0x8),
> +	       sata_phy->regs + SATA_PHY_CTRL1);
> +	writel(FIELD_PREP(SATA_LOS_LEVEL_MASK, 0x9) |
> +	       FIELD_PREP(SATA_LOS_BIAS_MASK, 0x2),
> +	       sata_phy->regs + SATA_LOS_IDEN);
> +	writel(SATA_M_CSYSREQ | SATA_S_CSYSREQ,
> +	       sata_phy->regs + SATA_AXI_LP_CTRL);
> +	writel(SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD,
> +	       sata_phy->regs + SATA_REG_CTRL);
> +	writel(FIELD_PREP(SATA_MPLL_MULTIPLIER_MASK, 0x3c),
> +	       sata_phy->regs + SATA_MPLL_CTRL);
> +	usleep_range(15, 20);
> +
> +	/*
> +	 * The SATA_RESET_CTRL register offset controls reset/deassert for both
> +	 * the port and the PHY through the HSP bus, and it is not registered
> +	 * in the reset tree.
> +	 */
> +	val = readl(sata_phy->regs + SATA_RESET_CTRL);
> +	val &= ~(SATA_PHY_RESET | SATA_PORT_RESET);
> +	writel(val, sata_phy->regs + SATA_RESET_CTRL);
> +
> +	ret = wait_for_phy_ready(sata_phy->regs, SATA_P0_PHY_STAT,
> +				 SATA_P0_PHY_READY, 1);
> +	if (ret < 0)
> +		dev_err(&sata_phy->phy->dev,
> +			"PHY READY check failed\n");
> +	return ret;
> +}
> +
> +static int eic7700_sata_phy_exit(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val;
> +
> +	val = readl(sata_phy->regs + SATA_RESET_CTRL);
> +	val |= SATA_PHY_RESET | SATA_PORT_RESET;
> +	writel(val, sata_phy->regs + SATA_RESET_CTRL);
> +
> +	val = readl(sata_phy->regs + SATA_CLK_CTRL);
> +	val &= ~SATA_SYS_CLK_EN;
> +	writel(val, sata_phy->regs + SATA_CLK_CTRL);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops eic7700_sata_phy_ops = {
> +	.init		= eic7700_sata_phy_init,
> +	.exit		= eic7700_sata_phy_exit,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int eic7700_sata_phy_probe(struct platform_device *pdev)
> +{
> +	struct eic7700_sata_phy *sata_phy;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +
> +	sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
> +	if (!sata_phy)
> +		return -ENOMEM;
> +
> +	sata_phy->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(sata_phy->regs))
> +		return PTR_ERR(sata_phy->regs);
> +
> +	dev_set_drvdata(dev, sata_phy);
> +
> +	sata_phy->phy = devm_phy_create(dev, NULL, &eic7700_sata_phy_ops);
> +	if (IS_ERR(sata_phy->phy))
> +		return dev_err_probe(dev, PTR_ERR(sata_phy->phy),
> +				     "failed to create PHY\n");
> +
> +	phy_set_drvdata(sata_phy->phy, sata_phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return dev_err_probe(dev, PTR_ERR(phy_provider),
> +				     "failed to register PHY provider\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id eic7700_sata_phy_of_match[] = {
> +	{ .compatible = "eswin,eic7700-sata-phy" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, eic7700_sata_phy_of_match);
> +
> +static struct platform_driver eic7700_sata_phy_driver = {
> +	.probe	= eic7700_sata_phy_probe,
> +	.driver = {
> +		.of_match_table	= eic7700_sata_phy_of_match,
> +		.name  = "eic7700-sata-phy",
> +	}
> +};
> +module_platform_driver(eic7700_sata_phy_driver);
> +
> +MODULE_DESCRIPTION("SATA PHY driver for the ESWIN EIC7700 SoC");
> +MODULE_AUTHOR("Yulin Lu <luyulin@eswincomputing.com>");
> +MODULE_LICENSE("GPL");

Thanks,
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
