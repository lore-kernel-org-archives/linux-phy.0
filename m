Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B290DC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QhwqIP1GOVjWV2QDVnonyUxHISrB34jXetF06tVuzFw=; b=NfcRn0SzAowRoxp9H9QQXyT5pL
	XsDT2u7Lkaqc+HcPuJpF3w/tBqLDwVT7+9+mPJP9MZYzqXFrVe4GpDUSQBwLxJdxR0bYxFIjztfX4
	Y//P29DpFQ3Gy8moAfmIvk5U9D0asBepIeZhSohRKTYqJ1B8NQXl6EGL72CuOy+IeUXf3YWKS63bb
	xitl9MGx4twKyOrje9+ecbGpNKdQXQ3qnwaQkzZlekznOXF0z/tsZXqTR3Bqnl9GZ+K5zyH2xQkSA
	uTH/S5eBTEC7S30HxOmqW5EP5O5RSu0T0gSYGh8zjq3TU3eN6hoILsbVNSY/bltgbJ55noqZfEIqb
	M1zsTzmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfDg-0000000FSHI-1cZ1;
	Wed, 06 Aug 2025 14:34:20 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfDd-0000000FSGr-2h7d
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:34:18 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3b7886bee77so5624018f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754490856; x=1755095656; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96W7uwKlHpbfRFLEo9z4md6wRw17C44cZB3jokXIckE=;
        b=iE9x1I8zHLfrDGMGsw/3HOhgWamRxBte7eCZ2oRdo9DtK/Q1qOefZxGhxnJiPc/I6i
         0yj8h84VoHNGzhBQyiH/jptzLy/kVNZLtabKr67pS5aRNGbPMCAHXCoJgaZISeAjecAU
         JuPlVGBJf3PIgQPNO5Frob8UWikAeAWYtGGdjK4WjL4P7rqvF6IXxi5ApnbSRAbZEL8Y
         zY11TD15LIdiVqadenwfbnOOEfIm2bd8DWGhyZ7ev+T/S7nfENhFLJBWNnzCfpVTRW0N
         lhesZkQgH/YRzb/0YeuUlPQ2AYP88sRd4ksimXL2gEuLQb6qEuvWkhkyIWV3LNGhN5Ap
         d/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754490856; x=1755095656;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=96W7uwKlHpbfRFLEo9z4md6wRw17C44cZB3jokXIckE=;
        b=mfe2APqYucAl4JvyYbatw3WdJ7B3jGg++E8g1Q4thrZaRQPGwkfFibb5nSNT5moKOh
         bdwd1LnMpU/ezZ0wwTNJHC0bF5/UB7Zuy4WV2e3vu2v1yxx5tFGYeP8N81rvKAFfiWd1
         Pnfo4sWSdhRmfCMq9AiU0UFCkrx9pJgBB70IqSH3o33ghC4390/MWR3WVmVDRGuoCeTI
         VdzeXRICJbf5+eTVdGqSluG9LI1xMVa1P3lcP4b/0qkAqVqTKyb773R2ijgjklR1Ppdi
         M1zxsWke8ocDmkchECVL5/S7QcItB/J4ft83arUPiGQwI62AdY00UQM+FvnMB33hmA68
         7fyg==
X-Forwarded-Encrypted: i=1; AJvYcCVkjXvnpOQsuj4sNGAIe93uCT5hN+W0rZkExWRGHMXzmww3z7wnx0MLqVcNCXxhbWeHezCyE19Vvi8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+IPeW+oSIYUfGH1Lc4nH0sTuxeVJQzcAJE07ZVgA5x6YUAmiD
	sedDu5vVWp7IEeVl+JSztAEg+lDQawc/Bz2tnxmFHClbB8z0Ab0rM33TS3zIa6sAe2s=
X-Gm-Gg: ASbGncsalEYj9MdfQ2ws1jrSuFT/U88ZiwzVCk5ySwCyDTq72/l3rg3WAWpAmvGtmUn
	yeRHWqxqkM3MwdIHC+Y6eExrnvBOJ1WbUMr7o9pJv4m1iPFaCi+KeluyKlTwcRicXg/K3etKtcP
	hMjDaL/K2ltmNqqyCnJtUzLXfy4juAzuc/uNW+mYLrhH5/h67/UpMAyr+QR+XLbhZisP+bmb2tX
	7RRmjDXFYZhEeM6iH/xgKMCq+VesR2uj2cFXF0EiYosLZpiWu1T3G1wZhvwSskzcIB55sjkykUE
	72VZFSwv/hAFRpE+jPvj68aWJ41KJ0D7HcuzyWJRktGOgX8so/LRFbp0pEIQZEXlj6BpCh6379u
	Cu1PM7FBEAV1Tbjjq1aAAnsMxvKeyOKPQo+Yg56eR6+9KQgsj2FPwW6GUt0lmvdiefm7XYdrnFa
	s=
X-Google-Smtp-Source: AGHT+IH5NdVXeu1oZSdfbgFBpXIoYLhYEjIi4XFRmFUbfUSxI7TR/XoNEjgGb0ZYv271ynVnNLSc3Q==
X-Received: by 2002:a5d:5f8a:0:b0:3b7:9aff:db60 with SMTP id ffacd0b85a97d-3b8f4160c8fmr2393490f8f.10.1754490855942;
        Wed, 06 Aug 2025 07:34:15 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458f713eb44sm165058795e9.14.2025.08.06.07.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:34:15 -0700 (PDT)
Message-ID: <0befef79-561d-4b8b-827b-e6258f0d7a89@linaro.org>
Date: Wed, 6 Aug 2025 16:29:54 +0200
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
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_073417_703670_F6777643 
X-CRM114-Status: UNSURE (   8.22  )
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
