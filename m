Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF8AAC87FD3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 16:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYiUYLddtFK+93I4swzKltz8fGcaxhYMEuKKC//0nok=; b=plxwNMGv3/UdDL17h+BEHtzLDo
	CFwcZcxiiMvBPMc/PIjP9klmtOrWQlwVDSomDcom2I0B4jVbFc37D+cMwE2wNiHTC12jGqIz2WIg+
	GRzCCx9esgeTVKqVzslOSizL5lYZ/f2xPXsWdIkzFMjKHuGhG8/jHME2OYgA5rHDxj+w4UCFo5u9O
	v5BuAQ1aKEY9XC0SAgetEQ6BUT+4GVoOyhaBne9OUkOaKZd+ydhyUBrZ9IjNHTqzfKeQDQ8iViX3f
	KY3MNVEW03/A1dzkB89mIAerohweiHWPlGii0+L7I9U/A+zfNS9MScaKUp7XDwCVBrAZ8y3zddeia
	tORGg/dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgoV-0000000Fjbx-2WZ3;
	Wed, 06 Aug 2025 16:16:27 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgVl-0000000FgVW-0nVF
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 15:57:06 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-459e39ee7ccso733165e9.2
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754495823; x=1755100623; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96W7uwKlHpbfRFLEo9z4md6wRw17C44cZB3jokXIckE=;
        b=Nq9WWDitL1RIQwsZyz8XJdpI0S8HwIRmUq2M3IMFhKOuVDseDymwfzqKgkZFsXtQmO
         p/ZBxr9sAy5jTcSEXKIhNLI0PuHbr5+w1R1zbpxcAcTysJNy0k+u6wVpZculf3TiAyco
         lespnhuioOsr2ulqvsC7LGzSSU0db0N2hT/YzMtqdZkMCOeGz0CaAfwlPiLhBUjxRB62
         2egXwWMz/r7LRi7ryn+7gqol9OvovnjZ/es5LgJVaRPIwcb6b329UK/rRNbhox48Q+2P
         WZ+7f9scBt2pNurzPH2vK/NbfkmpkzHLSYF+AwEzuSZfFjk23OhN8Fox+DKmfQlOIBuM
         KSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754495823; x=1755100623;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=96W7uwKlHpbfRFLEo9z4md6wRw17C44cZB3jokXIckE=;
        b=vstx/8qAdJhFJQkVQK7Z1lYBY0qtz6zG6a1wpcOwn5st01spoZ5so713t0BQMfOZ+0
         dYZkLzM8HHsKAJZnGz7EC8CxrTfHM1q8rnHkFXNd8qdD/yDLbx0/TA+Yqswv1nB1VZUj
         S/EedSjTJuH8IeebGhJJQvyYqH/hSvdtbgWVGbCGJiWL5xqHYRn66ysf8VeN2eA+jIy1
         kjo3evmhL8DmLP5bAvCc4vgLBfkiX3YcY8tZIPPc+umjw2aSXcGDRxsBADsKgre+cbZO
         FEdzV+EPBUea+UrcvAjn8RPAlAal85P8SbP1+gzMSwET0NdSFo5JTWWqEPTCQZ1LdRaT
         C2bA==
X-Forwarded-Encrypted: i=1; AJvYcCXCgYMHMIJKHMjgmqK18IVnxxOefyBWdGGMIeMtJM03/D8tq24jvuTsC50ZcQYKIhIyeTib9G6uM3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzood1jiBU4tYbHRt2iNZa+mbkzKC33gzTiqDx/jif1K2cHJuoL
	PeC/KlLSlGlj3e83g7gUfdAvoLVLxpCH1hfV35rmqTJHXCFuqO96Y0pdaoF4XW9iFp4=
X-Gm-Gg: ASbGnctfpoEgOma6Olyf6901oulxtOhypT75rMuzbjvx8jRWLhF5rF7t30aoMtlu4p3
	gP4tSg9SJ12xZcICR5+PoR1Vwt3bD5+mTIlIMbFLpgGFHVBtEfrc7QKut9ZmTuOTpL2D21K5ZL7
	OBh38XaTagLTueEarl39mbS9W2Gra0/yp3WY5WXs+uOU1RMJVy8DxgbW2bZRUBll81e65CcY7Ke
	f3cf3kmi+aBRDt1WCKq3z+T4t8UQmt4zHeHrY8KjTr5/zqUDXoj8FTTEZU+NZRtf0cz63nif3xa
	Wgci3DsnmeIGr6mycck1QJ4Y3AV1EfhJSUL3ComnwLKofHLEcDnEGLFr4ETyHtXQkYclMC9LSyy
	fKazDteLIdQmUSEkeBuRCLDI1JJ7UEMk70qUq/ZwfyUk+7H0NXWIANd3TUujxNgBQ5Jl6nUHpAM
	pvuoOy/eqmxQ==
X-Google-Smtp-Source: AGHT+IHGLHNn1kN0J6PwjJjw74PpNaOuAm5Zj48JGv0mBJzoVMk+XWDaoq/829VYh8bGLXdX56kq/w==
X-Received: by 2002:a05:600c:4506:b0:456:1923:7549 with SMTP id 5b1f17b1804b1-459e70e877fmr29064575e9.26.1754495823518;
        Wed, 06 Aug 2025 08:57:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953cfd10sm319363385e9.21.2025.08.06.08.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:57:03 -0700 (PDT)
Message-ID: <3a073dc8-bda5-46ea-9db0-48155b0bce37@linaro.org>
Date: Wed, 6 Aug 2025 17:57:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 00/11] phy: drop unused module aliases
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250724154823.15998-1-johan@kernel.org>
Content-Language: en-US, fr
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
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
X-CRM114-CacheID: sfid-20250806_085705_230051_DD8DB6E3 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
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

On 24/07/2025 17:48, Johan Hovold wrote:
> When fixing up some device leaks in the TI drivers I noticed that the
> commits introducing the leaks had also converted the drivers to only
> support OF probe.
> 
> This series drops the unused platform module alias from the PHY drivers
> that never have supported or no longer supports anything but OF probing.
> 
> Johan
> 
> 
> Johan Hovold (11):
>    phy: broadcom: brcm-sata: drop unused module alias
>    phy: broadcom: brcm-usb: drop unused module alias
>    phy: cadence: Sierra: drop unused module alias
>    phy: hisilicon: hi6220-usb: drop unused module alias
>    phy: qualcomm: ipq806x-usb: drop unused module alias
>    phy: samsung: exynos5-usbdrd: drop unused module alias
>    phy: samsung: usb2: drop unused module alias
>    phy: ti: omap-usb2: drop unused module alias
>    phy: ti: ti-pipe3: drop unused module alias
>    phy: ti: dm816x-usb: drop unused module alias
>    phy: ti: omap-control: drop unused module alias
> 
>   drivers/phy/broadcom/phy-brcm-sata.c        | 1 -
>   drivers/phy/broadcom/phy-brcm-usb.c         | 1 -
>   drivers/phy/cadence/phy-cadence-sierra.c    | 1 -
>   drivers/phy/hisilicon/phy-hi6220-usb.c      | 1 -
>   drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 1 -
>   drivers/phy/samsung/phy-exynos5-usbdrd.c    | 1 -
>   drivers/phy/samsung/phy-samsung-usb2.c      | 1 -
>   drivers/phy/ti/phy-dm816x-usb.c             | 1 -
>   drivers/phy/ti/phy-omap-control.c           | 1 -
>   drivers/phy/ti/phy-omap-usb2.c              | 1 -
>   drivers/phy/ti/phy-ti-pipe3.c               | 1 -
>   11 files changed, 11 deletions(-)
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
