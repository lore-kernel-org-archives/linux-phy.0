Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEA06C87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nr7IKMl3SQ9gydzVnpzZgWGa8oR+nOxy9ujXOP4j+sI=; b=ceppVZSKbRx0lYvzqUZb9h8OYH
	JJEbYBxirbvS9CbraDbJtXgHpX9VL5XhkYsGrYDLP3Jciq2N/tn8gwlH7uSblSYpBvvsR/ctXxx7u
	cFPgZor/boWNALc68gv78A+QUTMTItxzkPqu0ObPsix5qS6IYUdrF18D2tTsZQT0BRUf54Y+QJENw
	vXac11MnPZ5fZh2WKpxVKdI/gON7IlWpMeKwkjyH1d5/YBZzSjUEYTWcMYOVAZMpdQGAjE5lxjrVu
	0nBzKCQuw9aSN8xRgYHTWiCGnSsOzmKE/rjCW5Tg4bMYq6HSAmUCy+xnUkbjhe6eRrPlieqTWM47v
	/KYK6b4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfEX-0000000FSO7-340l;
	Wed, 06 Aug 2025 14:35:13 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfEV-0000000FSNa-41gX
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:35:13 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3b783d851e6so5833510f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754490910; x=1755095710; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AJzc1Ie8ZeRZJLHRDEZNI9VK1kwQWGby17uL65M37Dc=;
        b=Z+YlrpbtneI6bG3H7IfVSb3GK7TfQdTE6cIT5QK87O91nJ0vqTwef+Oz6bFaOLXg8w
         hEvm66sPcRjs+pD4rf5XNNb1NzTb6wHQ4JtBv5j1K7U6pXsXMPZjFpVp4fdbf7s3ofnp
         7hFIVhHWa6DybNKL8K2WG/4xtesSDAn3P927thDY133xz4jAksewAPTxYAQx0Io/MB95
         HHu/NkU8TtywS4s2HFJPjID6alI+7GSW00ajlq0wVFEQiwrJUdWsXfeCrZbxXQjLxHjX
         CuEut9vykjRJJkqfB7c57ydlkW5MhdBhzgdlZ2KU0GFjyhgNt9UWrhyCVwlzhiV6zeE7
         87wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754490910; x=1755095710;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AJzc1Ie8ZeRZJLHRDEZNI9VK1kwQWGby17uL65M37Dc=;
        b=ahuTzaQTUfq0O6/yOxyoHhjheOTNZ9YzdYvdMWsFAXQjNEaLBhdi0ijT5jsDyqp+qv
         IM66NpG3f+XjJ8JQCBnzHekc+09x69JrHD0BdQtYluOW0/FHAQ12d/8kMbnlr06kI+9Y
         DANLrYKKh0R0hI4Gik2Je0nWKjU5L0REPE8N9pnJvGpq5Z1qy2JzXll31K6iOyRF1qBb
         FBksa3FvOkX8dWpt+YXGNk9mf4iuy80doSp9YRkT/w+Yyz73OmTAzFpc9ViaH9QhpKUA
         igJbUUUwBE2tsUH/e20h7iTh9ZzF81Hyqw/mqqZDxh5MMP2Oy/3X1zQrCRxMXu4wcX2G
         cQPw==
X-Forwarded-Encrypted: i=1; AJvYcCU4gjgpcHTCw8TTWzRpZri5gTVeAJWmw6j+rzvLkwuovM2svGUy0URL4popo9dUhxCTGO3a3JdT6/0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvcWepwKW61iTx1xybtcUUZ0xIsTIbSiuN5EM4mgO5M30cS8up
	QlrmJ1X36Gt6IkB+woNdCAe4KWX0zSRJl9Tipez+VcOxtZSyGohb4uESHib79yiDfXM=
X-Gm-Gg: ASbGncu1YtEpScxAL7UaZ6oJg4PO/daNVNV9VgEkEGBdCHBZsKilt9P2PAjVnSOQXSD
	MWnOUFyWTTE83mkSwJ5mmUAPP09/A7iEgKlAq7vxJPC1aIgjevy3ko9+p8K8yVNwIKxk2vPQlB9
	2HqBzuT6XZHvbNcOZReyO53BvnQksLhHlxD5jAhpsW8rfa4dP+nOQmGtMcgB0b9waCvSu+lqb9M
	8vKx0/Lpsy6JmIpm4pL2+z2QGwT+tODNwp9o+DcQPebduJFpZYwRXHeRbMBuBdx4McXI//Xo4Ir
	ENBjrsxKpwQ8/uY9nw5WjGMmFg1D9jngGThdyLFOtHOixWN0U7HsVm03e8Yj2UARdUw7KkEXkeC
	Jw66QA/rgqmnrvSux33k9H/GzCIekVv1TFFxyLXaddA+Ng1lOGOrTvBZJwfePW+mQTeEmy+DU+U
	rGGpr2a3MNTw==
X-Google-Smtp-Source: AGHT+IEAXyxlI41OWv3pHMxNrEhn7RvnN6KDG2HHhhaewkU7OtAxqdP/oKZJiYzIeHj2LhKOZvR3QQ==
X-Received: by 2002:a05:6000:144b:b0:3b7:78c8:9380 with SMTP id ffacd0b85a97d-3b8f492ff2cmr2300715f8f.59.1754490910337;
        Wed, 06 Aug 2025 07:35:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459dc7e1ddesm126681535e9.27.2025.08.06.07.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:35:09 -0700 (PDT)
Message-ID: <92042af6-e498-460e-be88-8c1f1b4d74f9@linaro.org>
Date: Wed, 6 Aug 2025 16:35:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] phy: tegra: xusb: fix device and OF node leak at
 probe
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250724131206.2211-1-johan@kernel.org>
 <20250724131206.2211-2-johan@kernel.org>
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
In-Reply-To: <20250724131206.2211-2-johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_073512_005581_784E070D 
X-CRM114-Status: GOOD (  11.49  )
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

On 24/07/2025 15:12, Johan Hovold wrote:
> Make sure to drop the references taken to the PMC OF node and device by
> of_parse_phandle() and of_find_device_by_node() during probe.
> 
> Note the holding a reference to the PMC device does not prevent the
> PMC regmap from going away (e.g. if the PMC driver is unbound) so there
> is no need to keep the reference.
> 
> Fixes: 2d1021487273 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
> Cc: stable@vger.kernel.org	# 5.14
> Cc: JC Kuo <jckuo@nvidia.com>
> Signed-off-by: Johan Hovold <johan@kernel.org>
> ---
>   drivers/phy/tegra/xusb-tegra210.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 

<snip>


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
