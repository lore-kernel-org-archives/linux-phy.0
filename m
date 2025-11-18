Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD44FCEBF92
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 09:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9nI92eHKOQzxbMOHrJnX0lK+vYaPRng16K/fo0bQZA=; b=hOi+k3AziEPrLM
	N36r0J+txgXQKeMYAIQuoJi+eIr3AM388IFM7OgPDI/CMpYWgeOczrpVSPbYhtR/s/3SH4CmEaGJr
	PmktNxKB6Km1UihtjXcrT+gFrjvgDOtL6m07CER4vHfS7WRMM/g2D+88Ew+JnaSlSnKFQrQDVvH4v
	ParuF4B8UaPt0VcqZ5rYcEH2kQR73GDKXb9/UhneAolMI1gTR3GU/JbcWlaZUMDP/nKEWsQR/8iLt
	TV4A989OxQyQGvgCNvIi362+uV+/nYgmuRmJzm+kzVY/o/0xl3C3EBgIYwkxYp8dt5hEaZ71oBd1R
	nwlSqXgk9k7XqxJokwmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHnI-0000000093Z-45Mm;
	Tue, 18 Nov 2025 09:14:40 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHnD-0000000092b-3okJ
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 09:14:35 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-477aa218f20so3057015e9.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 01:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763457270; x=1764062070; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r3N5hqBw4YuQUI6OD6kMyFDi2pJCVVPnIbRp4ozdzkU=;
        b=JrzCP8a3Oz05a5yN6jpYb72z8xFmGoB4ePF4Kx9eJNnmrcbXY6P5FFeMDEaXEkMblU
         S5q7I2uAwtO+RfCUgjZC31LHELf7Wc35l5pVB4bWo8VVtRCh2wwFMxPn9R3XDfN27Gnm
         9Em2t1xSHSJ6OOrf3tYZGKv1vjfO+bBFcOgNSuQXGNLf08dDvWe9pq/dg7Q3DySSngiX
         WGUhcIcsp+BYDEzUBhYYHv5YXuEcCHsOzXEwTUdTTHykbVuSoGXjr09H/1KPrb1ScRAn
         RGdtdHtyxLPVgUc2XTiMaaWXOP0JcFKOKRglXNGZbd8EFAM0qrmlArxbRbsUUORvWxtu
         bbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763457270; x=1764062070;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r3N5hqBw4YuQUI6OD6kMyFDi2pJCVVPnIbRp4ozdzkU=;
        b=UrpdYTna9YCdtj0rMzwH8pOnis+Tt+8ECFPxTBfDf3je/Re0bnpstYsuRrhiqcx+v6
         Nihp+ONYiqhw74JYbkwJw047eYFfHJVcAG/LUyXzUuFeqqVpURPXUeGHcHEv48f+aleQ
         fDoAbADwEBVoMVy4px5e743p3peLwMyNaBdwOmQ2qVoupmKsq8vhXFWpslFT4AzYr644
         v5pqsP9oorSA6c/PIeUHwFh+fdCaOM0l80tuhGFmIr550KSB/Hft4vhiwsYm0PJvqPOv
         EB1r8htAxtCzfqvX3uFMRB4P+A9mN4ZxBCjZd9qcWbzNZLeJql/dzX/iaiIG/bontnoN
         sFUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+CSTQklm3KuVpP8mgOTBerN82P/Xwg0I2PSxdGF4ljSv2uWOwABrKRon+df9jusva6UReiTySIgQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy98rwV4+72ePZFBPljkR2JYcDKP1wX2GGgR/7FEXs9FVDFAEUZ
	NLrVqhb9VY0BYRuF6AcRUR33aQQHaR706ZlSBAi0v9w500xX5U3O9LWIg72sLmy9alO+fjxyCTE
	SEE7s
X-Gm-Gg: ASbGnct1mnskLrUCGobM20Mbn5wzdn+5ghb4Nf3B0FasqvtunB2ln5PoJs2SIzpCVAc
	KY6dPcgDPZRCJLxs37Co66cgeeLrGd8FF25Aq4SYHJ5E/Vps6juuHsmyKHP5BZ2l+4f7A/CfGHA
	xkhGT9xPRKkfZ0srlc8PD/AMONSKiOjxGJRoWSqvMtsGLwquAsluxeCJvFnQ30nw3i38/Hg1SWU
	GsQppz0VDF/zVopJbJycJQkRhNhHQ5Qq/nfD55YMNp2McChgg2R7fIp4xC4r+mxpWM2vmLpZSo5
	uF9ZtJvkLiqLnSQedHO8CNkWG1kOageG8C/vrySfnuBNfMKtBomaDWR49urYL1ofR0iOTDNsC2W
	KF0r3Myj044rUdxlbsQZFFKHJDwBXF8DEcjq+kvX+w3MDXo1HqQxtwBH4J+d/FrnfIHShjuPCYt
	wm+s4ate/RN6OhkoJvdrqbREXmVm9s3RXKbmKZH7V4PHfCBbhWaHwpZ0VOM5B9ztI=
X-Google-Smtp-Source: AGHT+IH6ib3d5rciAJC4eTNhjx8/U5TUqIfq48PmsHJikA0X6/m6wB4HAuTtPaKSyY/rh970/y9Isg==
X-Received: by 2002:a05:600c:4585:b0:477:7725:c16a with SMTP id 5b1f17b1804b1-4778fe5717amr155708005e9.10.1763457269995;
        Tue, 18 Nov 2025 01:14:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47796a8a695sm190268035e9.13.2025.11.18.01.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:14:29 -0800 (PST)
Message-ID: <ae893084-a1e3-4f73-bdac-1474d107f66d@linaro.org>
Date: Tue, 18 Nov 2025 10:14:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] phy: sophgo: Remove unused of_gpio.h
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Inochi Amaoto <inochiama@gmail.com>, linux-phy@lists.infradead.org,
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Chen Wang <unicorn_wang@outlook.com>
References: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
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
In-Reply-To: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_011434_219544_A869CB1E 
X-CRM114-Status: GOOD (  11.00  )
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

On 11/12/25 09:52, Andy Shevchenko wrote:
> of_gpio.h is deprecated and subject to remove.
> The driver doesn't use it, simply remove the unused header.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/phy/sophgo/phy-cv1800-usb2.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/sophgo/phy-cv1800-usb2.c b/drivers/phy/sophgo/phy-cv1800-usb2.c
> index 64f8e37b4b52..6fe846534e9c 100644
> --- a/drivers/phy/sophgo/phy-cv1800-usb2.c
> +++ b/drivers/phy/sophgo/phy-cv1800-usb2.c
> @@ -11,7 +11,6 @@
>   #include <linux/module.h>
>   #include <linux/of.h>
>   #include <linux/of_address.h>
> -#include <linux/of_gpio.h>
>   #include <linux/platform_device.h>
>   #include <linux/phy/phy.h>
>   #include <linux/regmap.h>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
