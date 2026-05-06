Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B74CD342C
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6RbcGpA/bZK6EaaGHk0x8vKrWpwd8Uw3PEfxyeshCYM=; b=R9Lvc21ftwy+7WsdGfcLBvhv+q
	MjLAxYvLGRr0m4nnWhvK8oQgU78K0lqSdwd8xZUvhYxxHTXqW1fuqFgshYvPeoW4NyOt6CNyvA6z7
	IvgfJwWqJkZo0Eut+gX9MJpyqBCbdKb7EeaXHqxgPN4e16/JWVrmK68ThswjfuXn1m5U0osgIAJPf
	+DidhUCvIUPWj/qYXFDkkIweoICzeyF53JqP27OWQA/H7+F6Zy7oEjKHL69NJQDKV8T1o40a1moSR
	ZINIwNiqp0DdcsUlplKwpbEzDrI9wcdUW8mkYgt6w6nn6xNEn2QXREb0loM/YS4fgm7Sji8YquH/a
	aBgZ2+FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdeQ-00000001Bw7-0SgZ;
	Wed, 06 May 2026 14:55:02 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdeO-00000001BuQ-3rkn
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:55:01 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-43d73352cf2so5987609f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079299; x=1778684099; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9IziybJHuk3HSxCnNSfWSRrMnoKvg7/QyPJ8LC6HiM=;
        b=do2MoIf3mvu7DVBk9TDfFy9Kr1dalphEbbFfb4hzNPbQP/cdNsSlVQaN7YE8In3sM2
         WzLEyrmhqTmfBn5ReI4UGHO3HstSBE5bzzZrVi3mwEWtoU18aTHg48EyS2Nh7Uaqunno
         dChJ+CGSkEF349sKmtZjyp4TKqH39ZepkcXCTrZO40ztZ7D21JB7NFpC3uSB2dXlqeM/
         gWdCjCi2aP5bcW5vidMLinJuHlWk1MdKx5P4wMYQMsB+4lgKyIct9vG0KQicSiGAuNqU
         dpDu85ry9J0OBVY/WPHmzA3bTxze+IxMhQ6kqN9mTJGOdFioDl2qvEtyTFWJHBtdB3aS
         2l+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079299; x=1778684099;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q9IziybJHuk3HSxCnNSfWSRrMnoKvg7/QyPJ8LC6HiM=;
        b=osKWdaLMcLXOsaAYIqBZ8YEviuHapSywWjUENL0gcHqK8I9EX2IrKUD6W8hGJ584Kf
         3PsbU2OzncT3zyYZ/FOtlEsaUKDK+bvsK1G9MiZGbb97aa/xrb1nSGigYGTi2BgqtLlS
         GgyTFE0S1bvfv8MZcm/V5bWA6oyJi84VjFKedTUQWr025qpGThgHdyoiRJNi90mjRSxx
         bOA1MQPtYEu2u9rrGstOpdcZNGnbday4gXYayg6SPp8kYqlzP1oPzev9+EYHlacVG/8q
         bcjBNT5ND5Db/d9/t/58peblIZuWqQKUlKqGhCawVM+8uIk3MazUMIbui9YddT7batdv
         V1ew==
X-Forwarded-Encrypted: i=1; AFNElJ+rQORL9Fpuxk+O/8dIRtGn398faPLj1BFJj8zt2ul6oNr8fKv8BJuBYlronNp8IFutSmk3ZpVrkiE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuDXKDuxuhAXmomcZfg68KRUasxheioH6AdWqtjYMVcOb2ZRgK
	CiZOyniV56F0jD6qqeY17qOQko+Zg50gf4SQr4oLZuecQME5ns8IvsuEUa1wpIDeYR0=
X-Gm-Gg: AeBDietnG8vAcwDH6YQW0LbyGHw61sQKrn3dSB+QFePpus8K9UTHMIHrlXipnEcmZyD
	HMgRlmR8cOuTh/SnXzjpNNd5B2Mx4uUWMEhiePDXWRv/EGFqRKY6Vij4ACJ0A/Arj2EoSkSgsw6
	NoUghI+PmQXH2+w+U2EGoCPzhZRLADHy54//JQQJCwQcNyVGPSZeTacy9IXDFewjmP25pe1aKHv
	Llgwz/fDRqWtAAz0Bys1XT/8yp3Lez0DIeB23gLS/CEAYdQW2WHtjiUxymsXp9BfwH07jq+U3Hm
	0Ev4AK3OopYlmK+d2SdMbyke/STV+aayZw5yEBHHYv8cO++WEa1ZLkop40UM/+jBniHopBYXcbj
	6tDnyu0x3UAmN/GLXZBkqO/ih89lQhOS5LFcYbZ0U5nmt8NXWv0PZaLTeJLsr5Dn3QCWcseXJcJ
	sRC9lEhJWBssGcMJ9ew8b8aNZw3GT+bY4NLPajSGu4fIfa4g2NPdV2oJ2B2XilXv6KeFJz9C6PY
	aIBrhZODCWKW51Ttw==
X-Received: by 2002:a5d:64c9:0:b0:44a:3aee:370e with SMTP id ffacd0b85a97d-4515ce1c5aemr6073557f8f.25.1778079298902;
        Wed, 06 May 2026 07:54:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960902sm14567686f8f.28.2026.05.06.07.54.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:54:58 -0700 (PDT)
Message-ID: <aeec8c6e-c0dc-4643-a117-be3f787fcec2@linaro.org>
Date: Wed, 6 May 2026 16:54:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 09/16] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-9-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-9-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075500_991099_E88EDEC7 
X-CRM114-Status: GOOD (  12.29  )
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

On 4/28/26 18:13, Sebastian Reichel wrote:
> Cleanup code by replacing open-coded version of FIELD_PREP_WM16_CONST
> with the existing helper macro.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 6d7ca11b308e..1bfc365e2b2c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -12,6 +12,7 @@
>   #include <linux/clk.h>
>   #include <linux/delay.h>
>   #include <linux/gpio.h>
> +#include <linux/hw_bitfield.h>
>   #include <linux/mfd/syscon.h>
>   #include <linux/mod_devicetable.h>
>   #include <linux/module.h>
> @@ -75,7 +76,6 @@
>   #define TRSV_LN2_MON_RX_CDR_DONE_OFFSET		0x1b84	/* trsv_reg06E1 */
>   #define TRSV_LN2_MON_RX_CDR_LOCK_DONE		BIT(0)
>   
> -#define BIT_WRITEABLE_SHIFT			16
>   #define PHY_AUX_DP_DATA_POL_NORMAL		0
>   #define PHY_AUX_DP_DATA_POL_INVERT		1
>   #define PHY_LANE_MUX_USB			0
> @@ -104,8 +104,8 @@ struct rk_udphy_grf_reg {
>   #define _RK_UDPHY_GEN_GRF_REG(offset, mask, disable, enable) \
>   {\
>   	offset, \
> -	FIELD_PREP_CONST(mask, disable) | (mask << BIT_WRITEABLE_SHIFT), \
> -	FIELD_PREP_CONST(mask, enable) | (mask << BIT_WRITEABLE_SHIFT), \
> +	FIELD_PREP_WM16_CONST(mask, disable), \
> +	FIELD_PREP_WM16_CONST(mask, enable), \
>   }
>   
>   #define RK_UDPHY_GEN_GRF_REG(offset, bitend, bitstart, disable, enable) \
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
