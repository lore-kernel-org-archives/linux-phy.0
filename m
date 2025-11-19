Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C41BCF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsmpDcMho5GhWU7ox8bfPCpN7EpV1bYisaTPHHpXKug=; b=08SM94ltijJSLs
	ctIi3+eCDrdOgfZxNJLfeVourKXuefneBDzEWeIe9y97nsQL/x+MLv7xKfSglcPzSwqCQsAuO5AyW
	aGdaMTRsAbfgOsfi2mtj5KzhYiu5gKPUS8UBSiYcVWk6Wq+qkLG0NEc+dMBRHJ9PSQRJcoJagzLxH
	3dQxU+QH875Ik/Q2fMqj+qJ5ekGB32a9HFCEi7NWM5wMk7avO36XZZwdccmMk15LDOz6aoHcFWQaU
	LuyK/B7jqfIqOecgp25yHPI8s0szyJsfozybiT3g36zjiUs28iktTYYSUnNKgWov66gqxIn1TpZhE
	+Stv0Lb0XIkoUx8PpJjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdkI-00000002oCr-0XFu;
	Wed, 19 Nov 2025 08:40:58 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdkG-00000002oCE-2KOP
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:40:57 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so32423825e9.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541655; x=1764146455; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7yOrMLDryXE9PlOSQ/bB4YlpZs2XMhVvJ+qHSO6z4dk=;
        b=kX1RDgW4M+kRXy3HoVR1fWQgSWCT3Df22SmkKeMi1TM2bYqk9cXQTHJvKJJrjIdKsV
         VDZ3lWD5e4XJ+JS2qH0mmzCrZXC0eFb/RnMdqUTGhxP9eEmK7xhdWv/i5o0yzAnUImWQ
         jLwmNW83XfgExDUBI2fYRIPNg6JxZDdSBiCHLCK+0PT1ZziLieE3ofr9wP6rmc28CSuA
         67ss5ntO7luy4ixgwba6amTFCdD60RBoGHEQ06qb+tvM/KrueKLPxuOtfB9F48sGL/me
         j2+qhOzaxEP777Kpa1Nr7cUneHH884goYu9LU5jL0u1Gxjvddi12YkxqrTT6JxjK/boQ
         twLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541655; x=1764146455;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7yOrMLDryXE9PlOSQ/bB4YlpZs2XMhVvJ+qHSO6z4dk=;
        b=rQ0H8qEgwB4cuJEOsSTy8aJWPe6Epq6AhrNII3m8YVoXf9JWytjgCdWp3zuQ+4Cgts
         +SF9HNnHfyC3j0hGzMrApOJV6Z8+Ym/r9Ts1ImkfvYiA6pZjgFNU3+9PoXAL1cr2cdPK
         GCAS/mL4anGTQVUIkJYfYczipmrUHExbOaUzhPON8r6lHOPQV3E6NgGK7ZpQbcYkYnf5
         dh0JgCnC5B8Bzytsj3MsKCfBsTRNCJL7Um9X0xzGj4cI7vHjyMCiBvG6TVZHHVBFDBA3
         4mKxAej77pONz8hkjzJe8eY1Fw9dw7YTVSfGBZ6XbEHLkYWCn5CjymPPT1LDbKp2gshc
         KaWw==
X-Gm-Message-State: AOJu0YxaL4SoiucBVQDl0wFB2a77GQf//PDxOlQHjXUtPpTJgQ1LUHQQ
	Ur/U5cBKJpjzmLvc75Jmdojpt1F7I/+P/Wn3M0kJrBd4jnJbH2tEXDwiFughWQWCKcM=
X-Gm-Gg: ASbGncsKqA/JB/ghhvDP3qnknCTSL+6MYEvH3M87oEexPSKlh+jUPUvmiW6IkQ9d1Yq
	j3TlPeKRq2/nXxTAWuDoNrzVMN1meZ9Qb1TAdbKx7kY/q2sDj64VcW5LL34dsoybWLZmbx2399V
	Dz3yOEO/VMQFhAKKN3rA+d9sDzC1qZYz4kY4vsZqvGtyJSxEnwEGb4PSp16Y7BSIcE4eAu4XkSo
	QS3DQlSr+si31M/yaWC9vl8fyddsl4CgHsIHwlsiGJ8MGDBEg6PJB+RVH6SOQoB0clig1dqwmnY
	NDJTygsfghBK9rzXLLtZkzbhks3vEWxtQULYVoN43gbUJwf/Da/MikaOF5O4qh6ce3NsZI8s7RX
	5Eo0BfCHKwGiPQWRR3cHSRMzTFsSkYk5KbS1tFD+HW57bUX4BZ3NXE6Rq4KPiwqtqzVgeeFAVQk
	oIcAH/tR3SCFJcuLBlwyIwusJ6pfJBJ3HXORcQYnoCFINonP5ijPoBqrcW+1LC2QhawVcqwcdHv
	w==
X-Google-Smtp-Source: AGHT+IHbR5Bme0OaD2vS7QbAGQu4DEZr/vc20Uw4ifxpOgabpSkciEkI7oy2JR4wPl1P7xHmsingCw==
X-Received: by 2002:a05:600c:1387:b0:477:7b30:a6fc with SMTP id 5b1f17b1804b1-4778feb13femr212039415e9.30.1763541654576;
        Wed, 19 Nov 2025 00:40:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b1037d32sm33842045e9.12.2025.11.19.00.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:40:54 -0800 (PST)
Message-ID: <c68bfb03-6460-406b-8162-8fb8f2234377@linaro.org>
Date: Wed, 19 Nov 2025 09:40:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: Remove unneeded semicolons
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
References: <a8807dafa87fcc3abcafd34a1895e4c722c39793.1758719985.git.geert+renesas@glider.be>
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
In-Reply-To: <a8807dafa87fcc3abcafd34a1895e4c722c39793.1758719985.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004056_628010_A5DEB174 
X-CRM114-Status: GOOD (  15.06  )
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

On 9/24/25 15:20, Geert Uytterhoeven wrote:
> Semicolons after end of function braces are not needed, remove them.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-pcie.c | 2 +-
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
>   drivers/phy/renesas/phy-rcar-gen3-usb3.c | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-pcie.c b/drivers/phy/renesas/phy-rcar-gen3-pcie.c
> index feca4cb2ff4d1e9e..c0e5a4ac82de2cfb 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-pcie.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-pcie.c
> @@ -128,7 +128,7 @@ static int rcar_gen3_phy_pcie_probe(struct platform_device *pdev)
>   static void rcar_gen3_phy_pcie_remove(struct platform_device *pdev)
>   {
>   	pm_runtime_disable(&pdev->dev);
> -};
> +}
>   
>   static struct platform_driver rcar_gen3_phy_driver = {
>   	.driver = {
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 3f6b480e10922950..6671616b26cec7c2 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -926,7 +926,7 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
>   
>   	reset_control_assert(channel->rstc);
>   	pm_runtime_disable(&pdev->dev);
> -};
> +}
>   
>   static struct platform_driver rcar_gen3_phy_usb2_driver = {
>   	.driver = {
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb3.c b/drivers/phy/renesas/phy-rcar-gen3-usb3.c
> index 5c267d148c90bef9..0420f5b283ce4233 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb3.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb3.c
> @@ -202,7 +202,7 @@ static int rcar_gen3_phy_usb3_probe(struct platform_device *pdev)
>   static void rcar_gen3_phy_usb3_remove(struct platform_device *pdev)
>   {
>   	pm_runtime_disable(&pdev->dev);
> -};
> +}
>   
>   static struct platform_driver rcar_gen3_phy_usb3_driver = {
>   	.driver = {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
