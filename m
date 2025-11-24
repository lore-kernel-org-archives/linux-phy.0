Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941EECFD318
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 16:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sNBzFyA5uV+d9I1mSGRYm6K8fYBaHcz5Rf2mlbfuL+8=; b=Br2c7+RHNvFKWLOC2BAmP4IEMV
	0U22CwMOrMkjP29Nh2zFc6QqTLWH6o6Ef7WdN28VbPw8/FuPLe/+07BnvpI/62jefGj9zIgoV4UIY
	fB8wbvz7prE/MZMjT9cM6vCIkf0AvfRd0XlxGEYJ/LU/v3gi5AOvmzgX/ijZYG5z+V9nm7Y4lNXOg
	InucG84EFEbKONCUvVECYfLZQfh9KB6lwR9+LDTJDBQ5op/ULOlbfV46KMcQb+c7ls/5rMIPEiTdO
	q0x7NRtkbp+2Wjatcw6ZulXaT0foL4IyRquN+5FYM2U0aAXx5IB7IZZi9BMkATmd+bifK3sdUCh1c
	NSAaGj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNZac-0000000C0Zo-1DLU;
	Mon, 24 Nov 2025 16:38:58 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNZaa-0000000C0ZF-32PA
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 16:38:57 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477aa218f20so28303095e9.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 08:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764002335; x=1764607135; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vd4YAgJZUtrh7us92LZ0mBvA8dTVa15KN2e1opNd61Y=;
        b=ibDJNLac1THQ0qLqLdz0y1grvV2yuou/P1Irl0ue5L1lZVXRB6oYRsZcMsstx1yakx
         krMJ9Y9Oh6ZnQzH+Pg9trYZuw4pxAbJho23mZn17yVXPG0P7Ce1yztr6PWYEssi/2Wv8
         2zMuHUdDwpchW/pMLysSZbExw5z2+ngD+Cavy/wUKDTiRCbyhiaWEv59Ou9v/JpQhblS
         xKyeDYhskq5TpK6vABLm7sULsWa6QU1DTEEw4BY1sI4HzyC5YbHgBYKWfDz3PRFfYOmo
         jmYW68nvYFgs2v7cUA21vWmswxbPDzNzB8yXIbqg7EW09ujjQIpS9HMphZp0MCDCcD9r
         U9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764002335; x=1764607135;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vd4YAgJZUtrh7us92LZ0mBvA8dTVa15KN2e1opNd61Y=;
        b=g/JvpT4SY0gfLtrp48VEVsBk6YadszFLIgInljLJL2erbYAOHNKyWhNakmzUxB6hQ2
         0iP2G1/NM8qHLMAEz0WC98a0lTAPvg8lICx2uF3I8L9Ni8qZ7PidBLzFVgZH6FlH/1bi
         1TwmTZVCwuvsuZ8lscOpk8y/aoco70wZCtwsOQx0LbIV3gRhf64kr8dxP5ZOjn/XuT+5
         0mr66pA4XABdnAwke4O7xCKx3asPsvaHvb/nIvOc+iYRYwnTEDXImb/qZQLLYMq+2u8H
         he7Sov4duKVDen9lq7vIh+dB6iRZpRlEuVuJyhoaPHUGDD/fNJMQBLkUvKuh+HTao9Kg
         ziIw==
X-Gm-Message-State: AOJu0YwbnqpbiZ8tAeBpISuX2SfWquBXmhV1VsrFlbiNP52MqPKQlUJs
	Z0ZhzMvfO1S+dOV0bDATw+ezoR8x86Wf2jWUaIkTmbSxHNg8fuNz8o1zCW4mI2mq7Tc=
X-Gm-Gg: ASbGncuVxz+PTsIy7TInmDa8WhGRHV5lbH0KQPD9QaBeZfD+5y5JXIzbQRLxm+tVNz3
	7ivGZDoXsBtbjTUcl9avLLfsh2mUL7wH3JjJt0Bwrlb19ghTZGacihIy88Ff73gz01p/ERkBCBY
	KwVDDMF9pPD8rurO7MeXPQYsl+AzcL5IUqiAC+I9QnPCcx5POshv8QLbDv7iK7b29o7T2BfOMAi
	Z5w+KG2MqdbdWGftFpggm9M6zGLRzK8VelmGAscWXgnvafxUn8l0YL7WxLXLm44EVBtrcXYJF32
	vJ/nNU6x0GqcMelJsqAwgDqDmV4uUTvoC9Hv6ovTFz3X8GFZNG1T2YUcoQSadp+kB+VLoIEYHxr
	Z0GOX2V4QOoI8FEHt8se93AKP3WPLKcvqB1H9pWK8Zy1oY/iCwp6ovJRgVToUJpZ0YYhAtcm2vQ
	ofsxubzAKzsf6SjUlqx8bJ5CptIgQ7I46+cQHf2r59lQihpaCFEicxu9uWIxFpIyo=
X-Google-Smtp-Source: AGHT+IFh9+e/nZ0MzhKR8hwSRZkk/UMEPzyG5mZg4dSefUl7CLWflSxPRq5OB52Q97oHK/A7woIV6Q==
X-Received: by 2002:a05:600c:3110:b0:477:632c:5b91 with SMTP id 5b1f17b1804b1-477c01b4b2amr150122945e9.16.1764002334547;
        Mon, 24 Nov 2025 08:38:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:ab13:96f5:1459:8396? ([2a01:e0a:3d9:2080:ab13:96f5:1459:8396])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3af0ecsm206599285e9.9.2025.11.24.08.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 08:38:54 -0800 (PST)
Message-ID: <7f66362b-475f-41c1-82c5-d5be7646541f@linaro.org>
Date: Mon, 24 Nov 2025 17:38:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable()
 errors
To: Haotian Zhang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251124105734.1027-1-vulab@iscas.ac.cn>
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
In-Reply-To: <20251124105734.1027-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_083856_796833_99CAE0A9 
X-CRM114-Status: GOOD (  18.19  )
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

On 11/24/25 11:57, Haotian Zhang wrote:
> devm_pm_runtime_enable() can fail due to memory allocation. The current
> code ignores its return value after calling pm_runtime_set_active(),
> leaving the device in an inconsistent state if runtime PM initialization
> fails.
> 
> Check the return value of devm_pm_runtime_enable() and return on
> failure. Also move the declaration of 'ret' to the function scope
> to support this check.
> 
> Fixes: ee8e41b5044f ("phy: ti: phy-da8xx-usb: Add runtime PM support")
> Suggested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
> Changes in v2:
>    -Just return ret and drop the dev_err() as suggested by Neil
>    Armstrong.
> ---
>   drivers/phy/ti/phy-da8xx-usb.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-da8xx-usb.c b/drivers/phy/ti/phy-da8xx-usb.c
> index 1d81a1e6ec6b..62fa6f89c0e6 100644
> --- a/drivers/phy/ti/phy-da8xx-usb.c
> +++ b/drivers/phy/ti/phy-da8xx-usb.c
> @@ -180,6 +180,7 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   	struct da8xx_usb_phy_platform_data *pdata = dev->platform_data;
>   	struct device_node	*node = dev->of_node;
>   	struct da8xx_usb_phy	*d_phy;
> +	int ret;
>   
>   	d_phy = devm_kzalloc(dev, sizeof(*d_phy), GFP_KERNEL);
>   	if (!d_phy)
> @@ -233,8 +234,6 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   			return PTR_ERR(d_phy->phy_provider);
>   		}
>   	} else {
> -		int ret;
> -
>   		ret = phy_create_lookup(d_phy->usb11_phy, "usb-phy",
>   					"ohci-da8xx");
>   		if (ret)
> @@ -249,7 +248,9 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   			  PHY_INIT_BITS, PHY_INIT_BITS);
>   
>   	pm_runtime_set_active(dev);
> -	devm_pm_runtime_enable(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
>   	/*
>   	 * Prevent runtime pm from being ON by default. Users can enable
>   	 * it using power/control in sysfs.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
