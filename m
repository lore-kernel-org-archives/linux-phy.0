Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54982C87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/af6yQheGsoFVBWAsYSe9WZ81bTUn/EyoOGv/MT2Cro=; b=xPd3RU2Mda6aYn09ibmh+BtfPU
	Z6xyiSFBQloxriQ6MSxLkmU5CQf2tbmJplDuIDfHe0E8d/G+xvASu3ZuLGOF1ZjuUBZp6PyFWz48c
	tst1VvSQvrKxe+iXbkeHB4tjB64opqNllRUGvlpPK31w8KsbvYOOu6Amjc0YKJlnNAjdz0u0oAPLT
	51wfNG3itx7Cxs3TPXLVnE4ozS4sTvPbQo7Im7VMy6HGjEG3T2DWQ0zY/LW0sXcJH6WaTX0SH3Hug
	oNbzo+G3yWmhu/pJYtiuA0/jiy8X4qWsuJrWmokDp/y+wfSv+zowVx6qB573faIi1YoCi1UbRIZDo
	BXMhU/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfFF-0000000FSSh-0988;
	Wed, 06 Aug 2025 14:35:57 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfFC-0000000FSSJ-48Dj
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:35:56 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-458aee6e86aso35697815e9.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754490953; x=1755095753; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=uUETYDHpLzM82CpM08F5zbN3krdojVu99ca1KUO/Tf1+bYOfwsKSq+PB6lLMLeFnc5
         ikfaq4IiFHuXr4WGwInNpXq0Wx8h6ZV2LSBeEmpph7tTZ1sXFFeN5CQRgrMPrm3nnN/4
         9JC28mfjy212opLFihAK7hu3KwPMrNM1X4D3UIt71xiUYbLyQhSTaqC277sgppK1f3OQ
         P9j+VHVIiqqNgw4kID+w2kfJQOn9cv+9Ip9uwHqprkm1JEkzzc9vJC0+8PjjV8jaDwLg
         +9LG/jQMOK5MyAyHzIw9PwfRsxAqDDoHo2O/3MH9lQEiLd27uzzVxEBG4LKsLteNV/q9
         EHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754490953; x=1755095753;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=pW+Jb2fJJ0gSngO2MA6Rbd87sLye7FlGyRTBcbkIii/CwcKzR0961TSQA7ZokOSj4O
         A+8A4TL6Zf2naR1rVgVLL4w/mOtfx3Iw0t2U19c2g7ZM6fraHvKr8JB59JmZ40wbRGaN
         3nDXmvhlq/G/pe/UhGS8nKa7kzw1gizh592xocPnY17QF4rNpfOQCbPv1L8R48gE2ZF3
         iE1ZHi08WkH1s/iCUld62Dk3Z4ITtEQUbnvv3UfDCv8xBZf/jIP4XcUgEZWyDRKFacR5
         cGdVc8+e8mt3VLXfXnl4YpawB+F0xPVX5aibZsSVhAIgPhwULsJJ2TpBrXzWq3ayMcSG
         pvDg==
X-Forwarded-Encrypted: i=1; AJvYcCUT+9/TUB+f+oTRSX8gQoaWJwaxzb42l6502AMOvzeSzo9uzmLjJRMy1wLVJpgpEEyP5JxYvFJYQDo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0RzesKQYXKtklSUw0E2A4Er6NDOvhCAVzxoi2JnckDRiwEB09
	/vDj5jzXG7bS0MLGsRj6AZLeOCPhBIoRr6uZa10lVT3KxthCkCwMnIAvWVHRScZ5RoE=
X-Gm-Gg: ASbGncurJ5X+ln8+SL2nsAj8UBmEBwimCw1DLerCMlv+1PqYBhV9oWJJduIrYn7a5HH
	KTybHb5wwN1pvhBl1vMPnveOU67P+W2fUAQhxwmZbl5Nv8ZBnXcZ1EWiOYQz3PqSXrXMoREux7g
	Dbt3gAPKPPiTi8/ET6woM9oEzmZ18OQDlUtV5Lh0UhRpquRrxizLr5d8pULIccLcz7benHff5bS
	3szAPcxOI2CfJ4Gmf3TPHmKy8bH/MG4kSJvJNpMeTHGhhl0EtzoF9CIGi086MDWVoLqwOXyF9JM
	geMd1MtWIPFiqAetKdwRofYFdUZsk4Zf3FKo58y/hPRwElcIqygCCvSLe0HXip6VpN85VhooL+d
	QvCfM+GKBDn109tpaA6jKjwI7CKjG7OzdGoUdA1jweSeu4ZTPTZa1DAzyPQ1DQB/hlx4pSewHII
	fww4dsSeVJyQ==
X-Google-Smtp-Source: AGHT+IH16nZWd2JHtG04hD19AjAYcqMi0iTN0EJI8ZCyo5tiebO/fARHN9WAimBG+QbIgV0IeHxScw==
X-Received: by 2002:a05:600c:1c02:b0:459:df07:6db7 with SMTP id 5b1f17b1804b1-459e70800e9mr26588945e9.6.1754490953363;
        Wed, 06 Aug 2025 07:35:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3bc12csm23780039f8f.28.2025.08.06.07.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:35:52 -0700 (PDT)
Message-ID: <ede3c0a2-d174-4893-9550-6dcb51457053@linaro.org>
Date: Wed, 6 Aug 2025 16:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: ti: omap-usb2: enable compile testing
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250724131623.2662-1-johan@kernel.org>
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
In-Reply-To: <20250724131623.2662-1-johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_073555_027410_54C0F2A9 
X-CRM114-Status: GOOD (  11.89  )
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
