Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3BB6E77188
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 09:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIMF/ivOvV0jXDueLTVAchIpgDn40EVU8Gstvln2hLI=; b=KB4vTTmuxDZDR4UlSD2rSw3ySu
	LiRbEqBiAm81hxJIjlvyZ4rrgtHHb9rJLkO8MSW+xvvKfQFJq+vsxtMFKleR7gNJGMGPGl0RbiT3q
	NsXYV0d8V4mXdXkHIzeFuGLLrxy6xpYvQepIJmc3yIi4y4KjzfdcI7FcGw9H2WQjHFEXqkT5x2dXp
	OZDBfAQKSXZpPEL5iObCwEmhHwj39VGRDUDJjMw8vc/x5ymsTy7Ky7nRXy0ZSIQNANwvSfA+DTefx
	0sx8SZxFYlsdqCyWipKdR5GCmdD+Qw58eZgdY9pZHGmkzr2E7DtDlvuyhpCmzslcBCdA6T8NUe2kz
	w8HygIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTHiH-0000000A4T4-1aaA;
	Thu, 02 Jan 2025 09:41:57 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTHhN-0000000A4H9-2Y8S
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 09:41:03 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4361815b96cso73260475e9.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jan 2025 01:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735810860; x=1736415660; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=odDHdEKVo1ECoBHd6qSHP5bCx3nKUQG5008PYymM31w=;
        b=hrL7ymEkhDNjo/hVmSNM4YJe6EE5eulG6921+pzuqMFjs/EIPMdHgP8lfeNqD7Rzsq
         PsLok0NOKzIq8/bI4X9j2d3hivAUL47+d1/vUakbn7pN+tX65BiKaZqO2i+tLlejC5OH
         csSoMFyiwBZ4cTTjGY0ujNWnd8+pe4NfVxoJn8E5gVWc45KL6eTjTEqHQHDeffbgURp/
         bZck5kUzz44bNBBDUK7pm4EFwSHTJJQoLtLh0pU8VcjjBPnKolUBBlTByVdIQjlR5bZl
         iH7SlnA0FfyV0eykqaUuozulm7BgaXaWAP4jyrE72E0PGjMwp5arcX+VXXO7L57RHq4J
         YlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735810860; x=1736415660;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=odDHdEKVo1ECoBHd6qSHP5bCx3nKUQG5008PYymM31w=;
        b=rcd+IinN/FwiUJD8CnS/kjfbKxGNufRIYTc1t0WINjic874l+DYE6JGD6lVkclNS5B
         ITCIYacGFw3WHik8pKThLvNUUkenTg618Lte6qUG5K1rcCzB22Vv5OydwpKZuBsCR2ye
         2LtiTscH4oFKmksqOz+nVW1TPaw4edUeYA0GQeMj/Zvwh2MNNFtZVvKuQAayTy86Kebq
         vdoan8EMNL9xZayYjihKjcGfq1UdoUmrWluAtD5WxbwGGwG3b5LgNb6NcDwzXdcsAbA+
         Y3+MLen/9vkUAexQkn8I21JWOuPlhmB/afN20pjSv5bNIjQLALWoe5QFMVlA4DlaQIU9
         GtlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHOreG1EGmL4IcJFEv/6Prv3IK1e2w8TGR8+VGVViXLiS3mdi8ZPUc8idVtdfQ1EgtnXt2H7e1T7I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAs/Uf5KQkT6TP8iFWUOi1wkOI0hqXE66mFH/vPs89lGuSrBz1
	pkZrnNsT3EKpvmYqd0VXfLEe+lg557vjOm1PhFr6V4SG5wm9aTIikYWfiKktFIk=
X-Gm-Gg: ASbGnctuyAQEJuKI0CkIMl+PMfT4Opgm2/kQhMrY69V6nMtcite0ShmmbPTcUWXNb56
	S3BHZjvaB0T7PBtrpp+ONYDgp0xHhWymW8HBWhL168paTjhTAPQeVaQbfUInKGQIgnL7FoQFybE
	KM1jKW7c6JfvlY5y+zVBGGPOzczqLE3cqBYfmiZws5XgkwR9GOWRytqS7qUT+1Qh2McfZu3HJm5
	NX198fkYapLn1O5ho/WcEJvEYHXDNUvIQ9716lD5R9DP4BMAXuZd8ThRbqcF6HwfklNFKmMwIH5
	ZQHcQW6Y//9Ijnv6+ug3Q2QDhAnciTYE5A==
X-Google-Smtp-Source: AGHT+IFYDkDox7plguF5rgyeIEMg1cp8DLocgikphY1yErZzrrY6xhBUr9jUMcggCFeUOsushSH/Dg==
X-Received: by 2002:a05:600c:4f92:b0:436:488f:50a with SMTP id 5b1f17b1804b1-43668646896mr407348285e9.17.1735810859938;
        Thu, 02 Jan 2025 01:40:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1cfa:329a:aa2e:f0be? ([2a01:e0a:982:cbb0:1cfa:329a:aa2e:f0be])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8332absm37183733f8f.38.2025.01.02.01.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 01:40:59 -0800 (PST)
Message-ID: <e211b522-83ed-46f9-a114-9cae30f44977@linaro.org>
Date: Thu, 2 Jan 2025 10:40:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] phy: amlogic: meson8b-usb2: Use FIELD_PREP instead of
 _SHIFT macros
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, kishon@kernel.org
References: <20241231191718.2764065-1-martin.blumenstingl@googlemail.com>
 <20241231191718.2764065-2-martin.blumenstingl@googlemail.com>
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
In-Reply-To: <20241231191718.2764065-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_014101_711263_A0746AC0 
X-CRM114-Status: GOOD (  12.17  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 31/12/2024 20:17, Martin Blumenstingl wrote:
> This simplifies the code by re-using the FIELD_PREP helper. No
> functional changes inteded.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>   drivers/phy/amlogic/phy-meson8b-usb2.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
> index d63147c41b8c..d9c761b7c15c 100644
> --- a/drivers/phy/amlogic/phy-meson8b-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
> @@ -5,6 +5,7 @@
>    * Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>    */
>   
> +#include <linux/bitfield.h>
>   #include <linux/clk.h>
>   #include <linux/delay.h>
>   #include <linux/io.h>
> @@ -39,9 +40,7 @@
>   	#define REG_CTRL_TX_BITSTUFF_ENN		BIT(18)
>   	#define REG_CTRL_COMMON_ON			BIT(19)
>   	#define REG_CTRL_REF_CLK_SEL_MASK		GENMASK(21, 20)
> -	#define REG_CTRL_REF_CLK_SEL_SHIFT		20
>   	#define REG_CTRL_FSEL_MASK			GENMASK(24, 22)
> -	#define REG_CTRL_FSEL_SHIFT			22
>   	#define REG_CTRL_PORT_RESET			BIT(25)
>   	#define REG_CTRL_THREAD_ID_MASK			GENMASK(31, 26)
>   
> @@ -170,10 +169,10 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
>   			   REG_CONFIG_CLK_32k_ALTSEL);
>   
>   	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
> -			   0x2 << REG_CTRL_REF_CLK_SEL_SHIFT);
> +			   FIELD_PREP(REG_CTRL_REF_CLK_SEL_MASK, 0x2));
>   
>   	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_FSEL_MASK,
> -			   0x5 << REG_CTRL_FSEL_SHIFT);
> +			   FIELD_PREP(REG_CTRL_FSEL_MASK, 0x5));
>   
>   	/* reset the PHY */
>   	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
