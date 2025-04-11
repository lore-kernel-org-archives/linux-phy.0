Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B781FC369A2
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 08:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vGKCUx7c9lXrOcCJkNFafSLtshuPTfhzx32jZQ3AZCQ=; b=iUgf2YlRZ9aarPUXonBRGFNLOU
	cqZ/cWICCNRj+rFkWcHUioaYvIx1sRWP2YqnRGhklCxPbIqrftBQyHH/P6yZ2k747msbjl6/jp/Lx
	CdhzjTBdPvMzkNMaiqb9sxIqBhT8YDc37iJYYVdeEzZEvO0JbFsTSP3TNbLeZRFGNdRhOs+wGhKmS
	1zO+UF/SdQjga41hD4SHZyB49koLFiY3gcIyIDcO0HL8B2+bD3sLDv/kYa0YHjxcWFCjL2Jq9vNp9
	UP+qnrJwqXAiknEjYUZBs32iFEC8iNi3fsCqGdO2WQdJr+XijRaO4Z0zf81N7TmfATBYAEwfSJlMG
	ouwBu7TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39vZ-0000000D3PB-23yl;
	Fri, 11 Apr 2025 08:39:57 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39og-0000000D1rg-2sZF
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 08:32:51 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so17254665e9.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 01:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744360369; x=1744965169; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IbVkeLK39LFwQz4RDz6whx6Ldo7wvDT7KsOAIVNVIN0=;
        b=fUEpTuAdi4COWi1gNC3CGR6rXvOE55ZEa7DNRLK5hXpHBnaf69C//h276H0QLHYeFY
         yIBVgg7OnA6I08kcyizvkOmJ/XmwVN+bPlVlMnq5f3pxQ2Mrc6luFlFZY7/SEjGmbCKG
         YzaksFEr/xSBmyrcVF+YFqdM6mOZRCdkdwSTkjSXv5z9LPu7SJLj6vPZrSbTDI4n4Rqu
         TPni0ub2N+epMQSaZcbEV6TN12V7LRZaMrYCe8XFOw0OxAwWXID2eTzWkD+Tj6UzSt6U
         o9QD8WNKeB8WdzRZSqqi7ZJ2JJ/WBfbbnjFe7jEKHnH4dbEKIxlhFousRpKYgYgGHpeq
         8Irg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360369; x=1744965169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IbVkeLK39LFwQz4RDz6whx6Ldo7wvDT7KsOAIVNVIN0=;
        b=aK5sYj0FCSz/wCCZmWgfQAg9ZGH768wP6gLHYb5qNh0EPMIUc1FZM8P1nCv0qYAq0u
         CBp05dVkVZ1oW1VkqiXjJDeOMFClw2H4yTJpjHH7xy2szTF+o++7MORJ6/0y19cBJJjN
         04cGs+JLJaf6NzELZ7fN68HE271M0o8/jMQi0oHc5jAqMKgtgkm5ETbYIygSO4ajR/xG
         BLF9doOoCOPj3Tv2D7r9+33DgBozAeD5N/zIzYWBvgi+Qm1p2h6jNRziEXsD7Dc+1+Mc
         S9ySH2Z6AyIMTHsaC9F0BO9YvKyJWuzzPBkQrJLFCTZTKMp5pcgToW29hO+Zl+/muwJ9
         i38A==
X-Forwarded-Encrypted: i=1; AJvYcCXNpkyX+l8mRb5w0SuCgDNRhTNc0UM76nJnNCFe4XJrlcLxZfmNHMAOSN+GfYtHlZhjV40Ogu9dUyk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywv6nby5mYcacqCcPRbFLk9yu9fZe7JdFXzZXF386byI8ACKanZ
	IhFqwzhGwC/zDPlFhbVD7EANqCY91WsKtYUq5RKB4+ZUeRWYVTOdOhaG0Ji/eW8=
X-Gm-Gg: ASbGncs+0fONsWWKPuOpbRESicKsvNTSg7VykehPI/LpmTsOpJR8NuPfwtn3DpD0eEJ
	vlogzJpO0aCr6L4eit32swVcCnIcKvkGAndTlZ8lOwgTCGC5K+j+ApXweHt2UBj2w3zoxNVFWmx
	HcakVL899K9PnclVZGBujyVm7OIN2gnskHnj7HmJq7rh4n+NjIko9TDt/vXh6oqN2bULrSl84MG
	8WeTxD4A+vUmwKy6+Xmu642h6J5DJB/BQu+pfD8BqQlY4wlZQSSp63be1WcHCPSbvN3f4dr7i59
	vOEOIGwjx4hUuGyJc4HvJYh5+pKmPjIuBc4hpBoWvt1jIMPxMjWFIoRKBg0qTWlZ0KS9Fnfc22+
	yEPMLQj20UtjVnBj5Aw==
X-Google-Smtp-Source: AGHT+IGH2fzidsFm+EDJBudyWzrKTJzkhwFaqOYPlAnwX3LCJSEq7mJu+xZyf3CKma7vYDj28bKAxQ==
X-Received: by 2002:a05:600c:5008:b0:43c:fc00:f94f with SMTP id 5b1f17b1804b1-43f3a9aa623mr13734005e9.23.1744360369350;
        Fri, 11 Apr 2025 01:32:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f207c914csm78489115e9.39.2025.04.11.01.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:32:49 -0700 (PDT)
Message-ID: <fc00e007-3248-4b4b-a6e0-2f362b0ae996@linaro.org>
Date: Fri, 11 Apr 2025 10:32:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v1 4/6] phy: amlogic: phy-meson-axg-mipi-dphy: Simplify
 error handling with dev_err_probe()
To: Anand Moon <linux.amoon@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
References: <20250410133332.294556-1-linux.amoon@gmail.com>
 <20250410133332.294556-5-linux.amoon@gmail.com>
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
In-Reply-To: <20250410133332.294556-5-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_013250_732907_903FB3F0 
X-CRM114-Status: GOOD (  12.93  )
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

On 10/04/2025 15:33, Anand Moon wrote:
> Use dev_err_probe() for phy resources to indicate the deferral
> reason when waiting for the resource to come up.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c | 10 +++-------
>   1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> index 08a86962d9492..c4a56b9d32897 100644
> --- a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> +++ b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> @@ -377,13 +377,9 @@ static int phy_meson_axg_mipi_dphy_probe(struct platform_device *pdev)
>   		return ret;
>   
>   	phy = devm_phy_create(dev, NULL, &phy_meson_axg_mipi_dphy_ops);
> -	if (IS_ERR(phy)) {
> -		ret = PTR_ERR(phy);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to create PHY\n");
> -
> -		return ret;
> -	}
> +	if (IS_ERR(phy))
> +		return dev_err_probe(dev, PTR_ERR(phy),
> +				     "failed to create PHY\n");
>   
>   	phy_set_drvdata(phy, priv);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
