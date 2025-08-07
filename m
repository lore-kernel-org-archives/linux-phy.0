Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B40FC87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 08:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DqLS2wmOCK14tvBDgIPrC6v+Gg5Y7QQY3ksO1z5SOGk=; b=ihwlxGk1awm3Jue/WM9GaJBzvR
	wjtxL2a/XiQ/TQDRHxliESBDwo47Ok76Z4Xg6ElHa4ca9kFO0DE+F/EQuFvzc3pkdzC5HVPaerNI+
	U2QNmHiFzTcxYu/lRIjvMF2rFoW7uF4G4fGkmTerYmuRSjXcJMS9wZVuQSwcZQmGnfhMcRjib6dEx
	WW4qF5f3zNcLfuUJ47s9Xv4KsRtjnoBGrfs6CabWNhJhmo7rrdN+N/ktCZ1KV6gq06pd/fM0AF9RR
	TLDMirRv8ASknVrbPVL4ggpWtaxApaLK/KsXYBe2SuMjBsisgEfBwWPWC7b8dX9+wo9CzPgdOL/UX
	zTBlNy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvna-0000000HZYy-02un;
	Thu, 07 Aug 2025 08:16:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvnX-0000000HZYD-01qb
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 08:16:28 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-459d44d286eso8025695e9.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 01:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754554585; x=1755159385; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=p43aglBof76Fa4gVXPSGXaQg7UrbkBN/iUosZRsOEbvcKN1B8+WCjSD/spHrWA1zmq
         LbZPpkt0RU0iBTqvlZ+gvNiZzXl3j+s8vOk7eNumyjEC4BYcnq+a/0m46GNzYSRAgKrG
         6ji12FBwncjMUtpVWE+dEGowJdGWS3gj9EKSa38zSchyUY1LShDAKCbBg6XaED3FZUOX
         x+scuyMA2BlQhPFjBePQ54CAoAUBnQvNSRw0o57sXSUIkQ4bOM2I8heNk3XqzOSqny8+
         Dg5cr04fskiVsf4J2IxY2C0alXtIcmHyIJPT3NfeN4BjhCpV6qLTAUBbD/yn5E2ciz5/
         t0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754554585; x=1755159385;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=SFwRkhfnF/8c8c+Zv/45N3B9PjmYwsVp0Zm0vERBUsWO+z40eeRksi52F4gzQRUspX
         JswwDhFtgTevbjv7qyAZeUcWFv9mFeYYlMlEr1L6CyVIYTTUa+jvEu6AEWkH+yu1EELd
         CDQ1sgJa9HjTd9sYymADer9NoxR4K+7B+/Jn0VfdTzh8PO45iwaM4qK3+/UKMzVMEMd6
         gpOavOSIfIFO1syxc/7VzaxL//BHXqKVKmBZuA1Om+mwWZwh0VukfjyeljlAgV/kid1K
         dnX5mOoZY/ImegmL3vsTxDJrPW/Q0aERcIZOJHw3G5NlkLMOUxqTShOVT8at2mEXC5CG
         3kTg==
X-Forwarded-Encrypted: i=1; AJvYcCVJVpb8Z9//M8dn0jt+k+I1URV6dM+vT7L+fn8xo+17rXpYO/8q/vrBVRGjUFzQ/UuaAKQnCciVzzg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwShKR6seYjQ3TnusNbO5oTWCAOFUArsw74pckq7FxM57g7ddtP
	zrKKgk6gkWzDrzAVJwRqM0H9D39D7likpU0Icq1ZZ6bbJLs1XeZ/9AgzZjrCWuv58Pc=
X-Gm-Gg: ASbGnctAkHh0GVslbuVQcFXBaNLnje/J6ZvqDTt8QAe71l3QBMIMtWwRUp6xH2sSX/e
	M6J2khNCQuolEUHjxG72j4UJA/j++xEM7nQVRGy1zgkAVx95qbOdH3RKCMVn4NKowmzN6ATmX2J
	BPOz+53/UTXGdKjmQav/ACJ3EzoyqXCYkLsYG5h8Khqzi63CagC2qP+ctj4jLoX6y5KIUpNBAvu
	X52y4qhF/UMrQPo+1wUrSBanY1P7UwnW4ecCjAEwcuxjs5wHWSPOyVJavXO0sbdKZYHyrvXJ8gW
	XJT1v88ky7MByKRnw/NgLBh8tAwjUHCqTu9rW4MN+PTJTvhRtNw2ZMruN5ZLqrdWdHJnCcb+Vfp
	/8FbbCTmE/ZrTtPwrBYTJIAkSjsMUX1Mo1AF5fxLp3Yi6+fd1JAFtBpXyAPwfS6i+7euYtYaMA3
	s=
X-Google-Smtp-Source: AGHT+IHE2H+JtDiHVg75yF/+EZzsaupqXfOXiG/R3nCARRikQYg2a0QwLqAvC10oGOycd0mXhQsOsA==
X-Received: by 2002:a05:6000:18ad:b0:3a5:8934:4959 with SMTP id ffacd0b85a97d-3b8f97f5070mr2018365f8f.27.1754554585271;
        Thu, 07 Aug 2025 01:16:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95? ([2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458b4f9e952sm222067015e9.9.2025.08.07.01.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 01:16:24 -0700 (PDT)
Message-ID: <1370b493-2026-4988-a8a2-d9595c0fb02b@linaro.org>
Date: Thu, 7 Aug 2025 10:16:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: ti: omap-usb2: enable compile testing
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250724131623.2662-1-johan@kernel.org>
Content-Language: en-US, fr
In-Reply-To: <20250724131623.2662-1-johan@kernel.org>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011627_059399_FA21B494 
X-CRM114-Status: GOOD (  11.72  )
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

On 24/07/2025 15:16, Johan Hovold wrote:
> Nothing seems to prevent the driver from being built on non-TI platforms
> so enable compile testing for wider build coverage.
> 
> Signed-off-by: Johan Hovold <johan@kernel.org>
> ---
>   drivers/phy/ti/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> index b905902d5750..b40f28019131 100644
> --- a/drivers/phy/ti/Kconfig
> +++ b/drivers/phy/ti/Kconfig
> @@ -62,7 +62,7 @@ config OMAP_CONTROL_PHY
>   
>   config OMAP_USB2
>   	tristate "OMAP USB2 PHY Driver"
> -	depends on ARCH_OMAP2PLUS || ARCH_K3
> +	depends on ARCH_OMAP2PLUS || ARCH_K3 || COMPILE_TEST
>   	depends on USB_SUPPORT
>   	select GENERIC_PHY
>   	select USB_PHY

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
