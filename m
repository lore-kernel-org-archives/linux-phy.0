Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D5EBCD342C
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLV5srtLGlTWsT+auZKClN4s+C/6TG0rJNe8gQroLP4=; b=QKPj14wMff9b2X77UAx8mg80w+
	UH3cbZhNZTIZGorqiiYhVdWdrqqOwQjsuOxIU8Nv7VA2O0M0yciYnyxkbObtlaZf7qZH1g3kTMbT8
	XDGPndPBVmWKKLrN7qOzcg3lgvGUXjD+B5E9wziMFjK4ovPiAK/rolhyO8o84giYuCAuisKghyCxG
	sop8eldFrpwyAt1CZ/1WrF0fSv1acS3R6IjOfhQFaLnQ4AmyphmsSLeweCtY279rnUBVUfgMdsnIR
	B9t67ev2dKn8f9o3LdFr3axuwg+wkv42sRUgWvRBfb3JvDQBF9poTQ+0wkcAUfNh6zi/dTWYF843Z
	EXmGz3MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdXQ-000000019YP-09oF;
	Wed, 06 May 2026 14:47:48 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdXP-000000019X3-1oyq
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:47:47 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-48909558b3aso71948345e9.0
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078865; x=1778683665; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3vToQ5Y+vWhpVQnvtWFjRehlTKodwndWbzaDErO2cA=;
        b=dRnJnnnqCyDKV7X4DIHogdflH1kW+DFhaqcX4SSbyxJMYrP7EDHFdHbUI3gjDFwHDv
         XY/BQmY1U34tq4pIG5jKPrngg2H6s9rlcsZjfJsFsFPGG+35gyVDeT4ISzR4ZyRu3y45
         lAnfczmyb7TH9tibMJo3USwdqFztw26f3Q0pOs0K7t/H3skemdLjScd+bqqYp+tXspN2
         Nkum2401whXerjC0pIbx14vGOjeUpbI0y8aYOpijRHO3QD7KyIMCBYzDPqWf/lJFeY0c
         a6VnOADH/RMZzHyDs+KFVuP9VJlfsiIeinvus4w0/w3Lv1ZaLr9JJ22uotAd6LprCM97
         tdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078865; x=1778683665;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3vToQ5Y+vWhpVQnvtWFjRehlTKodwndWbzaDErO2cA=;
        b=gayUiAPoiw2pmSFQzj4Ubt6tcupxakIJnoYBj9OeB5Ih3l+J5KZoTQo/X2t9k0HAAr
         9OKCko36yK3jAg9wVcD6uk8vWVqQoeMof4H2AfuDtSbboAgmYFy7BaN2G/rA2tYnADrU
         c8DcPiub8Ox3Cm5mMRHoN0yYr3DHVwpO578gKXIiQwAkW1tFo8IKx4N/M7334aPYn4l0
         pqELPssQwdpz6zaZEt9RxIGf7G5dZdoe9pg0sk4Jz2Zh6rpc5CwLJhyekKq5+Q9vdJon
         wKVluq8zZSMehFsKSC9CJw+cvzu0Bu1vDJ0axgApIB2ActDmLI/w1DQJxXh/9gQg0A9s
         JeFQ==
X-Forwarded-Encrypted: i=1; AFNElJ9no00Rvz1TqOT2TlNGUULxR39NgZ9qaokQ1808jchxX535G6ZpN8x5rDcmQ1cL8IezN0A49bc7nJw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOj3kN2nuz2NticbFkPon7WNjcCMzhyXAJ1H8EptOTUVrwSyun
	EyvIVe55Bwm8hA5G09oZaQAV/xbWUxUg2Vlra5Cz8gseo2DhD32fCrWSzI/vo7V2Zwg=
X-Gm-Gg: AeBDieugeV55iQe1FzdSlNfD+iSXKtdPr7HfmW9XmNu8dvgEwg4msOTOK05hKObaVVy
	XwqRspr+reqQotP9TdD/DHV0NB/kDWYgl96hVpwt15k+2KIoPB6up1KMCihX5RAK0qWLcKC+lao
	E5dfGA5AV+SXNFQ7vnfoJDuDvGXLdAnIIkvhXD+GOQl3dc8pwYZRgqi9ygn+tJJkm1z2cRkwxat
	Ji1nGfiPytP4VUziTo9oLSlVVnL0TCffggFCU7Bp3bPBDzGHbTcBcke577v/yfUBKIh9fIze+RQ
	atW6zcdZ6c4wY/ih59ligeKTXnSql7NVUhbziSKTncqn5v2nrz8i7fJ/n17dUgMmdzW8jFkmiNZ
	AxoqRwgmNRKD4Zwrblagq1AIdoY0eXX0dW0sILsdA00/VA+Pi8rjUHsCpgn47pL6VvtIPLB0ZVe
	MW1X6HfzHWnQajrSU/sRUuqQ6HllHXpikiiA4VFtuS+C/ANvxpCMA0aBpCBL3SwYsKhAS40heX5
	m+R7WJHbZnEpKa/qg==
X-Received: by 2002:a05:600d:849c:20b0:488:a2ac:a34c with SMTP id 5b1f17b1804b1-48e51f220e7mr48119355e9.12.1778078865201;
        Wed, 06 May 2026 07:47:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e530b213asm18805425e9.2.2026.05.06.07.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:47:44 -0700 (PDT)
Message-ID: <b4e3adc7-bfb9-49ed-a2aa-30feef074554@linaro.org>
Date: Wed, 6 May 2026 16:47:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 02/16] phy: rockchip: usbdp: Do not loose USB3 PHY
 status
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
 <20260428-rockchip-usbdp-cleanup-v4-2-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-2-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074747_492123_606862FE 
X-CRM114-Status: GOOD (  18.25  )
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
> By default (i.e. without manually enabling runtime PM) DWC3 requests the
> USB3 PHY once and keeps it enabled all the time. When DisplayPort is
> being requested later on, a mode change is needed. This re-initializes
> the PHY. During re-initialization the status variable has incorrectly
> been cleared, which means the tracking information for USB3 ist lost.

--------------------------------------------------------------/\ is

> 
> This is not an immediate problem, since the DP side keeps the PHY
> enabled. But once DP is toggled off, the whole PHY will be disabled.
> This is a problem, because the USB side still needs it powered.
> 
> Fix things by not clearing the status flags.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index fba35510d88c..744cc7c642f4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1009,7 +1009,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
>   			rk_udphy_u3_port_disable(udphy, false);
>   	} else if (udphy->mode_change) {
>   		udphy->mode_change = false;
> -		udphy->status = UDPHY_MODE_NONE;
>   		if (udphy->mode == UDPHY_MODE_DP)
>   			rk_udphy_u3_port_disable(udphy, true);
>   
> 

Looks good, but any fixes tag ?

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
