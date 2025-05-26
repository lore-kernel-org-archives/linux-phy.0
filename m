Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EB4BC54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 07:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HFYM8dROqrQ2j+yWr8NgTnpf5nvm1ESTSHFqEh0lvUE=; b=Yfx/9vaeRvrTMFFwNy6Obxazkt
	i5gA8aYw2MqiJg5OyRywJN6juSQmm8uq24y80daFyVwptyGDgsZOwKA2vIHKQba7gu7MaqVGkv40r
	FWnH5/2z3hMZFohpn3lRWt4i20grOnAggniAKA9+7N+GAHlM2N81ou9I+HOpzNjbmS9eAIAoKceqS
	QQ5KrnD1HrFys04UoxFMCs9TCcx1kv+FgkZRXq9IKZoOQgH0AKc4T5x8uj+PR63wx5b7iQpPf7ZFd
	jzOKWGpagX/11bv1mc1148Lrnf5aqnGTlX43ei8VOPWjgiB7fdGUDzijf/1S2ZeQ7AH89TYG1wjYI
	wzbx4FRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSaR-00000008JfC-3odI;
	Mon, 26 May 2025 07:49:31 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSaP-00000008Jek-2BLS
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 07:49:30 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-442ea341570so13751625e9.1
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 00:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748245765; x=1748850565; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6h0uQSHhstORVTEbKYqVuq9uAIameHHdgMLaxLpM/tQ=;
        b=eK3x8I6WbjF7GA/GJEaOZSmqdyHp4fY/6Z0niJMCL3srwyAjbGoNW3mw3vdOJ5cNDP
         RerKHBi77/IzbHQeYh27nrkGzWYngZTTnf00fsb1o1ieMXjssMmEIkilGUoTOGhF3Fpp
         1ciy+KsewiLtMPn87fhW6itmB82Y9Lh4a3rEcYKWnGzVKQyaXYApxUvQGCnIt88MV94G
         NxcM3vTjsZde2BfsA2CCx+8r2BGrX7dcQucN1CE/64OBXSIZ5lR4zluK94J5YZ8KzVFT
         gJDmDCZJxv7aFJuq6KIya3cPFyXVtjONn7iRPxn4u/euDDvzTklP3UVfI0/fiUs32RRj
         xBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748245765; x=1748850565;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6h0uQSHhstORVTEbKYqVuq9uAIameHHdgMLaxLpM/tQ=;
        b=hcPzHn4haug+PGrEY7xYSAGz4bkKpOIyD2yOc61tulzHq1eXNvmotkdVNoio8D+q8h
         pzNb3un+8S/8LyVrlFBa/uqBDXaoBlC/cPf/MY5rqXSg6O02pH8gq3RVKQZurz0kCMAX
         6QON7FNt4QHF1UHJmXpVCLDKGyk3J98vZ+nb+hc5533L4wgoMIMs7HbnIDZjq5gexYHd
         Cyi/Fo3ykSDr4hxfpnaDEI4iSZrPC39cQJeu44mD3DN4DmL1/V+vL1ST4+roTI7oVV8U
         SeoWBRhZNQTy00jneu0/Q1mUVim7N+p1LIkLwOaZ4FWySncUVhQPpORLMxPedKYFOJ21
         Tb9w==
X-Forwarded-Encrypted: i=1; AJvYcCVngLXgUJYn1p1XvraCUKpKBpa9A7SH8lgbu2t8X5I4Q4wxNaszfInt3OomTv3B14xkTTUo5MZUHyI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDzaV4qv4cn1aC+8d8C2oUzredht7ZYTOw+4DZHcl1J5Wm21S0
	Rsj/0pjnp6TOq5zqAyzcLw+ws7I52CygNh6YzSW4+zsZ8LFy8EeQ75HztMrC8i2h30M=
X-Gm-Gg: ASbGncsMNLQvShrMxULwQmDkTaGwDSXD2+hoseSjcMEwiWf9mUltPwU2R+JY+jnbA6i
	0CirV7iv2alFP13dUmcm5lBu3DB4JW86kJ9OIB0MkM+ooHy+9SO7ZA6ChtAJrr22j3rK49s9jz6
	j9zVT1kV4Ew8SseLUl5JDHTeaY1ODj6zV/5exbKPxQsvgGJ775uv+Kin550EsS7IjmaYtSJ3wAC
	hUI6Rnvj7hwRKRjOzsTRZayOGAOS3dnESmMZzR1/nF/EDmWbOPqYg80hCz+fVWW3eue3o9lCMkJ
	NV6u8Hk4xAvOeorcZoUJhI6gH2bXLUO2qAjiifhl4KGSSYFLCkC8Iym+9lpWL8CKzwlkWjEZLDd
	YX6R/IAP4YwiCj6NJpi0dDpcmFTUq
X-Google-Smtp-Source: AGHT+IFwn6e9zs2iK8JeOSnEW3hHwjsZM4zOs5Vujf9EUKXgUomiCoAj1Q8i7GhrfTZfdCXNcRPt1Q==
X-Received: by 2002:a05:6000:1a8d:b0:38d:de45:bf98 with SMTP id ffacd0b85a97d-3a4cb408865mr5600086f8f.8.1748245765248;
        Mon, 26 May 2025 00:49:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca62b5dsm34899073f8f.55.2025.05.26.00.49.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 00:49:24 -0700 (PDT)
Message-ID: <fe84a168-a6a7-4663-8c42-e469272b497b@linaro.org>
Date: Mon, 26 May 2025 09:49:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/7] phy: phy-snps-eusb2: fix clock imbalance on
 phy_exit()
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-2-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_004929_570153_2FD93609 
X-CRM114-Status: GOOD (  13.23  )
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

On 23/05/2025 10:48, Johan Hovold wrote:
> Make sure to disable all clocks enabled at phy_init() also on
> phy_exit().
> 
> Fixes: c4098f3e6134 ("phy: phy-snps-eusb2: add support for exynos2200")
> Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index b73a1d7e57b3..19af3f99692c 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -504,7 +504,7 @@ static int snps_eusb2_hsphy_exit(struct phy *p)
>   {
>   	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
>   
> -	clk_disable_unprepare(phy->ref_clk);
> +	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
>   
>   	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
