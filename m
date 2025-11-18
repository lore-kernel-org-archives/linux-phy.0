Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BAE6CEBF92
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 09:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5JtecachG7E9cDvy3yLTNrEbiXYd8Q0J6EYJ5O7KyY=; b=0htDCD2KZzd69w
	0zb9j5X4YWd1YbhXUGdLQOVDiwg5+mXeu3//If3A7m54+CZlAjzhDnRDvytIEAOalMjIllqi+5vVx
	0/y9b3QFh34xNm3U0F1ooFESwzROL5ml3S1TLuhMdxFehZWmqIUBW9uQ3IhHxAY5BquPtyTBL/jxQ
	6TzvxypHKCQe8ZNOfqPR3oaE6FJTaxUJ3OLKvBGucHEyhH4loO3d4t/dkYLFMQDoPn9uCUK5w41sw
	yswddbgmmMYrY29HuV4bG059c/r66FWQoRMBZfSOUrwEt/wFGPKBTVIT+zviip32QSD096Ml0ClqB
	gjKLG2WCDppIsA/4hVuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHld-000000008iC-3Wiu;
	Tue, 18 Nov 2025 09:12:53 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHlb-000000008gl-1ctQ
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 09:12:52 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso17540315e9.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 01:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763457169; x=1764061969; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsbUZq12GH8jSgBm1055puXBgPzLYHPQmArZG1I4wqA=;
        b=P0j6PixRVwsYaau8YORuhRDqtCqeY+iZno4hGCxlLGxwRs1k9ypVW4ePRzpefuej08
         3j55tnqNUJcH0GIAYHg9z7jONe0blTHs7zrrxe8MDpEW7rO6ETnvn31WSq9UT1ykosKf
         vHzgzg3X6mR13PDVPS3uAfP5ZjCMzAHUQafEJYY1x2le/hGHGIs4euIJ4yCdIJeuvIgi
         /MJrchmcAQpBg7A+Eo/STvsySSUTwnqWZEdqof9VtBYhQioqDo+rtqXeQMEe3kuMPVq4
         fpjeTaknOyaAaWJrn207hTEZKHI+7AWfullAlZg/fxPzAmF1U+CHZs6rRKDZHmQ0y+tp
         wTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763457169; x=1764061969;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GsbUZq12GH8jSgBm1055puXBgPzLYHPQmArZG1I4wqA=;
        b=dEsIbvjSB5X1EJpWBj9yt6DAKplXDdPdjsdCJ3x/5MMD23Ah4Ci4SS0UmJPeBzFQK8
         AQYhVkQZ7q5nHT+m7Xww/5FI9SPsF1mwOLzSujfiyZPE1Ef/342/Sy3zvA0i2e8LwKfn
         uiQ/2yDutb8f+5urkn8ZJDsDMzw9TXqdNArgOG3SVTWjwmNKrUz3eOvxCr+TW/0tNpi7
         r1QrXODTJM3K/umfBUIbSMgG3X+2AHhqBX0t9LK+WbmjYbbVmS0CC007cm6PqNO0G8xZ
         4vD0tBHPml4Ld5CeUNjiGf7m873LDTCe/UU9cmNsAWXinvZNZfGObgRskIy0hUfDycqu
         QN/w==
X-Forwarded-Encrypted: i=1; AJvYcCU9yDnLbfzlqVkPZTccv+yShX/IVkzn8NNdyTJs4HZ2O5q/atEkNG4kwak+AFoN9NvcGwDDssFkeFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/VEH5SD+fwtYUQ4Q3v9Z48XSGJrq+Uoup+Fw8/AlFabgX3ESk
	PtD9cdMz9j5rC0gtu6LujXKZEdmRg6r3496NM4nP0gnxe5hE26eNwXdkMt5bg7hLBmo=
X-Gm-Gg: ASbGnctdb8aNj6hnQzIa5p5xKt/LHmgCEm54VLINXNGx3OYupmVeP2RmepO/w1D+8c8
	+8R/YgCuDYzwnOMvRykFqBiQmBwUFFcs4Fg7/5z039f5Nyro69l+7HQ4inhnknivMLchAWQ1g+9
	YcrM0trXwCaA2CJINKjb1T3QVkFxZXRS/306UvcLWgc6iPNSigzZCwZ4m82nWzGM6voWWa3Fxz7
	svxvjzSi1A6QGAR5t+J3ebhZJvw2CuLdX3OPy2LDkL6vFVSnZnwrI58imsF/Zf9D8QJyrHuxhGp
	7YcJqNlyyV3K1e8WbESy8TNpjdcFubptV1XClCaGG8p28wSHS+kgvchm1KPGHwmtVTD3XPqDcZF
	wFNtEnS3WacfILIDizaRc9auYvcBKQfv2NzpvSvVGykJ8ZzpT76HAjdtoGHG4GtemxfgqT5c9fj
	AQWv8VvGHg5cum7LSHr1k/OalMr2O7KfdhdCPL1PonzGIXJtf2eENFxPNeOqn25R2YRHsXrfzi7
	g==
X-Google-Smtp-Source: AGHT+IFLWIbKy5iYyYGBqFd+tt7NLXABbN0modVFRv0VlJwVt0Qh9TTTSA9l9Sw1Gv8SWS/Tv7D3jQ==
X-Received: by 2002:a05:600c:19c6:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-477a94fc3eamr20486455e9.13.1763457169335;
        Tue, 18 Nov 2025 01:12:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e442c2sm362834385e9.7.2025.11.18.01.12.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:12:48 -0800 (PST)
Message-ID: <70a23bf8-6648-489e-908f-d7727f5cccd3@linaro.org>
Date: Tue, 18 Nov 2025 10:12:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix PCIe L1ss support
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1763004478-218446-1-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1763004478-218446-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_011251_454519_3936DB30 
X-CRM114-Status: GOOD (  13.64  )
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

On 11/13/25 04:27, Shawn Lin wrote:
> Need to control the delay PLL turnoff time if PCIe works on
> L1 PM substates.

Can you elaborate ?

> 
> Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index af9a5c7..5b6f80e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -106,6 +106,10 @@
>   #define RK3568_PHYREG18				0x44
>   #define RK3568_PHYREG18_PLL_LOOP		0x32
>   
> +#define RK3568_PHYREG30				0x74
> +#define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
> +#define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
> +
>   #define RK3568_PHYREG32				0x7C
>   #define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
>   #define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
> @@ -665,6 +669,11 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   	case REF_CLOCK_100MHz:
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>   		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
> +						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
> +						 RK3568_PHYREG30);
> +
>   			/* PLL KVCO tuning fine */
>   			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
>   					 RK3568_PHYREG33_PLL_KVCO_VALUE);

Please use proper patch versioning when sending a new version, with a proper
changelog.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
