Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005ACD116F1
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 08:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayoN1XyKtYJmOKddbKErlx+LX1XWMXGJCK4Apgt1aX8=; b=nlLq8cOvHz8Nk4m0ShORuaHqLV
	/Aaxph0OZldWcOUkTeadG8pUmZOKzh4OLlFfkVkb4DVv6zw/RcDO5SzPv1sGgEJO19bgUcGcYATuW
	jrJGM4k8KotMC4GxBnZylVNGJzyY2hFdCXAjbc8+E00M5/Z2hHS4pFrBbJ9FEqhfgZRd4KA6+Q+jE
	UCwpKspuXxdhWQGt0KHg+gVRL0scuT00yPgM8k4L77sndtK+OACZYsDYcA2vw9uF8hmZRgaw82f+B
	IUHxev0pei9UaceR9WEStzqnwYUS4NgYPwvLY6V1WJqOv5/mIaE7trpsBb0rwNGdDOZu1MjXrB4WF
	LRuPfjxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzaE-000000039XQ-2U91;
	Mon, 01 Dec 2025 08:48:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzaB-000000039WI-1joI
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 08:48:32 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477632d9326so23854825e9.1
        for <linux-phy@lists.infradead.org>; Mon, 01 Dec 2025 00:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764578909; x=1765183709; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uNi2EdpvzeCbzpNYNyCkdF9hi/s7IbHihAPcY6UcEM0=;
        b=nEQhaKYYS3SWA/z8I8GwK8OfNqOiqY461+5qWgmwHUfWNXle5ZQt61WWkrO5Xu6UYU
         JmgU+Is3/ngQAPbYqftQiCwZf/l23X8ob+sdI6y8CtC0WFOyex8y5IZW3GeHISJ/npS/
         REYWOqC7xe/2ottb2BNENyuJ9jVNW+2QNLsAmAFAvAJi1BA7B5BKtUMbwH0B4SZu3QEk
         MQtnV+9pIx60B9uog8DMpleORpg/I4gJTySxdomnBFcfZ5LSuQSn60xt2O0DMCr8PXJb
         eUlDJ0LyXhobdXML3SI2iWwqcI98vkSu64MkZ6jkmQgde77yZleJJURwoP5sgu53l9tp
         h/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578909; x=1765183709;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uNi2EdpvzeCbzpNYNyCkdF9hi/s7IbHihAPcY6UcEM0=;
        b=HoeNBHGsuhnJHsbEzTLBuU3Jb37+wVLdPGshr4qViyW3DpV/aCsVQkhY8Jh8SWMqPe
         9ZQyo6m/G5XhxHZTp2rBjhweDyVnBNE5ld9G3piIVKr/jiAFEu7l9EKr7TAO+wASl5sY
         GXWrKEuy6pnZCb/xgtnfqJ8+AV9hrdS8WC6iLIYHuF6+VzYAyUEWK0qSHjOLciwL7L83
         ZiugGi0K57fQ0+XLFuN17EofNpVSCZDIdZ42xT7S2WTxGouf2cWYH4RMzr/nqS7jaaIu
         h8XBnuLuPoDxf8usvWoDN0PsAHwXFZj+BHhw3zRhxe8otk1B4FoaQlCxc+LVannbU9Ao
         3yyA==
X-Forwarded-Encrypted: i=1; AJvYcCX5y2oT0tbPAhQWidoyx0Po23pUY7YDLZuw1RoURcC3+FEL8++6DfcvybALZuTI4plVupPDCXe1dWc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyev7oCIBHmXhfvbpYryn2Ob3VmYDDqmkEfN3ZY0GlI/siWYrIj
	/j7Mlr4pc96sPJGoEQfH7HUGYm6Wz1HfNqmcnB9dElliJkF1Iq3K5xXwLaCbOBdx8DYaLVT5vGP
	leTnB
X-Gm-Gg: ASbGncvF8GwJxTsRUAydMU70PI0QlJaA2gzPVAFFtCsdtTrh1I+illo80IMkwfxAu8L
	T04KrWraqlIIf11jmkc52iuI0C6t4rbA175ahTBCFHZHM+4wnBe2ARmJLUUiJTFkEy/6duX3Ep+
	e0wDc6ut03tWINzBNaFEAmEuccsNpMJHzJMs7mBukuL3tOSzb89YhNPVAXfhKd7TPUi+BrYbUsk
	IZEWfyqjCUyIS9lxG+kgLv0w9AyaFcd0CuPOTyq0w2sTClrNbAlFe/xms1Ryab8QhWKCrvkBnUF
	v481jU9GIVoeMIoUgISpMgl8dKRDkE8ugrgJWA/9nrDlfckQw93oinf4oK8V3PXhZYpd5eS29q4
	2FKhnaWmKe4QKWvce/9vzY+OoyDnnGqMn0d9ZY5uXL+I18g+i5EXclPCEJvZ565VSfuyQ8cfbEm
	QpTDVknTD6DCfd8tjd5EgTaDLC5OoBR2/8NhWxr8XLprJEARPzy2Ob4+9qTZey
X-Google-Smtp-Source: AGHT+IHLQfB8yo0ONtPJDjPc3h1PBs5rwTbFFSWCvT/0aFMNGdOL9aUDbyo12nf+mFKtIlO7/LLZwA==
X-Received: by 2002:a7b:c00b:0:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-477c47846dbmr256636495e9.22.1764578908974;
        Mon, 01 Dec 2025 00:48:28 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:35f2:deb4:174d:359? ([2a01:e0a:3d9:2080:35f2:deb4:174d:359])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47903e5fae6sm159139235e9.0.2025.12.01.00.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 00:48:28 -0800 (PST)
Message-ID: <c6277850-4293-4581-b93d-4bfa7f7d97e8@linaro.org>
Date: Mon, 1 Dec 2025 09:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: phy: Add Neil Armstrong as reviewers for phy
 subsystem
To: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
References: <20251201084652.422057-1-vkoul@kernel.org>
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
In-Reply-To: <20251201084652.422057-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004831_487892_DA7FEA51 
X-CRM114-Status: UNSURE (   8.60  )
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

On 12/1/25 09:46, Vinod Koul wrote:
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>   MAINTAINERS | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 400523d03e14..233b6d56e45b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10439,6 +10439,7 @@ F:	include/uapi/asm-generic/
>   
>   GENERIC PHY FRAMEWORK
>   M:	Vinod Koul <vkoul@kernel.org>
> +R:	Neil Armstrong <neil.armstrong@linaro.org>
>   L:	linux-phy@lists.infradead.org
>   S:	Supported
>   Q:	https://patchwork.kernel.org/project/linux-phy/list/

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks!
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
