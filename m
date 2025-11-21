Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E653CFA747
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 08:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsrwnNwnkanDGDfF3eVBhunUUTLKY4BW30mdozODzqs=; b=SbjlFQL59KDHou
	dOoFjflmEk7D0QJja+PYh1eZ5CFrOjmlPwGSxaKS1dLIrPfaEo1354eK+ZsYL/UIkTCC46Z14uch9
	jSJw42JjkZi38Me1VfcUbYOYqt2zi41d9lrYXSVyJCOWz1CzBgO/Kz5gCo2zwacG0VzAfAHLlErBN
	pcyLucc766zT40FfRsElac9ZV0z/KKK4lHp07ogRJuF92/dJjmoC0moJn34P5iosssSMo50JubNxI
	FySrlcTuhcnR1LLSm6Pw/+3WOoFLHIoOU1UCPOZE7N1CC/ig2vxfBvM2G73aUWJtMBiTRMitC4t6M
	+sYjW/M/UU2A6P4SI9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMFQ-000000081gF-1h4d;
	Fri, 21 Nov 2025 08:12:04 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMFO-000000081fG-0F1Z
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 08:12:03 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-42b3b29153fso1012014f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 00:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763712720; x=1764317520; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mcX3Qq6+8/O0ZDdB8sKR/3KbKrfdrC2nFNCQ6lQOJRw=;
        b=SHQmYzZmYFuu7fsdGE4XH6loodF6dFs1bZ1zV/8oAWRsgxz+SzSj81LSfEoeFBQR3w
         77CFKVRBXJgkUNI4iBRviCIT8+SQ10iLPMeCdj8w3AELAJHNph57+NxxCOpTpAFGoy+R
         /Lvj7ya6my3NeMnqe2/uZv0FoQ3/q2FQltD0aGe81YJj52QfhOwp74Le9HP7Js0YEsyv
         TP8PRafSjOwulOriKlhv/lC4M8mE2+EPor//Knp1kHc/oAsY2eSAber/GaqmGZME4avI
         pMuBHHJqlS5b5wUhLiBybEiC7B8Ae77JTrEAbNetPSSSuQaVLnCE6jZr6Bh7kYwicDIn
         P3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763712720; x=1764317520;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mcX3Qq6+8/O0ZDdB8sKR/3KbKrfdrC2nFNCQ6lQOJRw=;
        b=iddapMQw8tXiLsuVO8NaE18TZupfv54NcZchPB756fatUXWDZUGRcrBnxHzmLc7W/L
         mm2n08zNBnY0guys3LQ3Ssavii9xMi5ak+hA+BMNflSx/XZItJA0n3InbZ6hDI7DnFbs
         1Y1fWFj4eXmE8Xb+fJKbEDtNkR1W+N23ORJQWBCVh6dlMKREi+ZCBuPk6Vz1m8WIBq7M
         blfVreVatX/HQoUWmvN4XqFch7Dy9qn8AVc8XKjdkgZO9Snlj8EBiUMGSuXOQndwzP6u
         +DDWJm0LEfQBikgX2UqI7XXy9aOQknnsiwAmCQ+f80YiDYO1KoBGpLRrdzqgWF4/J5Pb
         oqlg==
X-Forwarded-Encrypted: i=1; AJvYcCVIA/VHYqGZIrDKi/bULtQXZEaEewMwQAFgt1vApMnX2ZsXYVWf8B3hN9kd6n3Qj7IyiFjeeoi8B14=@lists.infradead.org
X-Gm-Message-State: AOJu0YznQPLpuCQ94a+DvEzLjhgNCLUGNSyZA8SoOOYzEZ2BxIYtfKDw
	IW16QeDykWu2RXQDb7XrP4kzRCrwHEg0w0WXs182nnNKe0UBjyciTQh1h8MwOZMOXm8=
X-Gm-Gg: ASbGncsFzmzmedtnfl8v8xADoEjaRvJH516QomwjcbIMvz+0Xd5B3TwYKAyPPWFJF98
	u1hnw9BxrzlKgLEFnILI+lQB0Yj+Rbb63MAKCR03b9h91mrETqEKeBqDCsjN2Zj0vSU/YufFixl
	BgHt/Czashkt6I5idiUlHTAsVWTwNwOYjYdtrfglORT7SUS6XfO800zzyAUsHbxBXMh556Mzvvr
	5T3mxoLXI+NvxfEYVkl7mtclJJIyK7VHCd8cYSAb94E2ZbwZHaAmhSFE+MLZNIiInX5Zr7Qn/1z
	qI9JCnuAOna/+Eggp46WkeXKR+TMK5MIKrU+QUGKZDnhE8iJIVju/HPog2dsbej+8qo5UF8cIHz
	Uk9SZI4ZTyTbVplnm1nlXWGu/2l6lQ1qt752wmRYY7VWD0DJsC0Z+JBU0Xh7iP5ag7zYUILfMru
	43RkYNEkOdRR/Aa6eNeysyWO/960+6ZOybM/4FeQuWEqFy1RCDnlbSuMEWfOYTSwA=
X-Google-Smtp-Source: AGHT+IGXGNphoX3MJtTchAR1Dn7ej/8XwN5YKRUwqqEkzdPwKAG6D8Pl/AUURdMP0cegFuLTXOQJ0Q==
X-Received: by 2002:a05:6000:230d:b0:42b:3dfb:644c with SMTP id ffacd0b85a97d-42cc1cd9543mr1140408f8f.10.1763712719617;
        Fri, 21 Nov 2025 00:11:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fd8d97sm9214400f8f.42.2025.11.21.00.11.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 00:11:59 -0800 (PST)
Message-ID: <9183a012-27b4-4ec8-8a95-294fc65b01c5@linaro.org>
Date: Fri, 21 Nov 2025 09:11:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: phy: Move Kishon Vijay Abraham I to credits
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Kishon Vijay Abraham I <kvijayab@amd.com>
References: <20251120175537.171340-2-krzk@kernel.org>
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
In-Reply-To: <20251120175537.171340-2-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_001202_141003_FB2B872E 
X-CRM114-Status: GOOD (  13.90  )
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

Hi,

On 11/20/25 18:55, Krzysztof Kozlowski wrote:
> There wasn't much of reviewing activity from Kishon of PHY subsystem
> during last few years [1] and last maintainer commit is from 2020, so
> move Kishon to Credits to indicate that PHY subsystem has only one
> active maintainer.  Thank you Kishon for working on the PHY subsystem
> and for all the maintenance effort.

If everyone is ok with that, I'll propose to add myself as reviewer
of the PHY subsystem to replace Kishon and help Vinod.

Neil

> 
> Link: https://lore.kernel.org/all/?q=f%3A%22Kishon+Vijay+Abraham+I%22 [1]
> Cc: Kishon Vijay Abraham I <kishon@kernel.org>
> Cc: Kishon Vijay Abraham I <kvijayab@amd.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>   CREDITS     | 4 ++++
>   MAINTAINERS | 1 -
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/CREDITS b/CREDITS
> index 85bdc8828734..b735b8c58102 100644
> --- a/CREDITS
> +++ b/CREDITS
> @@ -16,6 +16,10 @@ D: One of assisting postmasters for vger.kernel.org's lists
>   S: (ask for current address)
>   S: Finland
>   
> +N: Kishon Vijay Abraham I
> +E: kishon@kernel.org
> +D: Generic Phy Framework
> +
>   N: Thomas Abraham
>   E: thomas.ab@samsung.com
>   D: Samsung pin controller driver
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 41ded579750c..f92ad7705245 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10498,7 +10498,6 @@ F:	include/uapi/asm-generic/
>   
>   GENERIC PHY FRAMEWORK
>   M:	Vinod Koul <vkoul@kernel.org>
> -M:	Kishon Vijay Abraham I <kishon@kernel.org>
>   L:	linux-phy@lists.infradead.org
>   S:	Supported
>   Q:	https://patchwork.kernel.org/project/linux-phy/list/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
