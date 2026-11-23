Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02287607150E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 08:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tdpmhv3s;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=NQkMKeUJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dZKwLCRehMRu9DxR0qxfRVLotelqW6zClt2kuecat3Y=; b=tdpmhv3sEJKj1SRUGpmGS7oMSH
	CGjnGuZcWlkWGO7gGonAQKFvI/V1VLQs9lgb3qE++wvQ6da5RwVDNpiuL/yURHf3hF+ZAgn9qn5yb
	V2EX0IdMJ0Isz/oebtW7UuSXKMjgUda0mUgQs+zlprmTCAPlzqePs48hiYh1Y3lsdRp5RZtUw1+eR
	Tj0U5SzNHEWVQlhTetIc8hXfgrN4EMy1UO99hqAYrmV2RWPx0Xvb5H7S0Yc4XFQELkHAgigCjjMR+
	ojJHKekb+0DH4bZLySfMin4s7NKffvLyiVaqFChf5hbcov2ALv5qjsWG62mwZoV8EYJQs3euNKB6G
	RjmWrMaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVP4Z-00000002XK4-2YDG;
	Mon, 23 Nov 2026 08:06:47 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVP4W-00000002XIx-1jfF
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 08:06:46 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4a207b02a2cso20636365e9.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 00:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795421199; x=1796025999; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0/cAHzp2byEXTdt5JI13O+MKxbnMcLe/w5DVxG6Ogbo=;
        b=NQkMKeUJa/UeJtgIeyE3B24SB2TE0ijLoSM4Zp7X9pFDPmduMQqKZLKf9Tfxs5cWBq
         wNLIqSt2aoH5mT7mfovwI1BeN9ps9aNWn7CBPQAs1cqU/PdDH8J0yxsWNho/H/FHUUk7
         8icIpjlHThc71VTIRopNaOz5t+AhXnedS704JQ95w2PQXfFAj/ARPKvVqg2d+bjXKLaO
         tJfCBaZDiR/ulq64KdGw8RQCknNGI1ztFrl6AUVD4TQInY4kFJVyyD7Rh9TYReGjuLgz
         I0NXYg5dHcmFnV31rP+WDQp4OZ8L5Xzb/KXYna4UmRNhVyj9fBqLtWyYt9lVKvDpaWAC
         xppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795421199; x=1796025999;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0/cAHzp2byEXTdt5JI13O+MKxbnMcLe/w5DVxG6Ogbo=;
        b=sLY+OuCKF+W+rlNxxAxjKP9IIxS5g+B/6OIV8tkRHjzvL9BcwrOqo+9zNo9k+LI82A
         awJTLdk3jOFW8xyQKtrYyTeHCU9Y0vQB6QrSjKXUDybBiV//ae0gEHvBB8RAtLOXdcmM
         KoDtWxYdgaRlpuY49Q5YhTd3vfOfO6osgjvwFZX7MROPknEMbT0/vfstyuo+Z7HTbR8o
         6Jue1dMp0MLqz6/4pBJUW3xscH3uQw5fT6kg0HzcCnUVtve8ZOUlahmh+GxjVEr6YKvc
         yES6iBkWb7/WGEEV8zQd+D4syiQFCCMCtDYqqydaNVvBYJmXPeVfpNu/VXgZ+98rAOa0
         RzEA==
X-Forwarded-Encrypted: i=1; AL+hErFaTwtfYuq7LpgSp0IJ2Axu+wKheQg3fn0x6b4Mi/K/mb1G5cQoAY5koAZh6NR3XTtNXI+VAcplC4w=@lists.infradead.org
X-Gm-Message-State: APuU4Z9ui25aVznBT6GOmUv/b3x3jvZ/umq/MTLi0d6/petGvx/doeqh
	XuyjGfwCSZbLk5amhqY+iS/gD0PS7dUvyLk1GQmyfBwtXHhuBL0XZbWEPAfZSvevpWc=
X-Gm-Gg: AZFdTZemSTG45YP1TZF/VaMkLItJMkJEtVK4uFa1xJEG6FiqSseTDxHLa2RLPckKP9d
	ym++2GN2oxMtbJdj+xQd47uHUm78YDGemwjRwqWH9TUEinLcrn2n5cB3NR4yyiGKrZQTPiQGysW
	vhzKdUJa55DT4QHDGmD5Rq0CcXUARm5tN44zq8XzPnsf5HK9SSjSDXI+2bdwkZl99LKqjMfaGP+
	qmMpRtrbAk4F0b7ZlZmeGZQVff/fX81ghun6VCgULLaARAfx8gksdRFUhP0a2rJHDdaIvkWzQya
	FrqRPZd69JIfNjwhVI+SLc2glrQIp6UySN7XwPIpD5T7x6IL6BeEkfFHlduHQFl2WPGkKFzK1eV
	r8lpnes8GJIdChoWi/lASVH7r3eRvW3eCAcKlcDO4BE4SXpyMIRn9Ne5fPbUzvbxIyRg7+1c9my
	DK3jmHLnb3IoYuN2s6XLDeXxzZcFCBtcbGvFG2iAUMKKLxPvL8sxBSudOO9f/owlgRhd185Cl64
	5OPx0rjWqlvEax1+q+JtuTMOiJJzxcFcH0dDhewiciZE/vuyNq0iYimA8r3Mlp4XwwWQG7tw9Ub
	x7MxX1EnYNpyomdVoWeta2ihWbUoOXH8AFqF+hJNUOvpnI2cHGtFLhZSnTdV8FxZ+CwSY6T+DmU
	F0vkZIsLn
X-Received: by 2002:a05:600c:c09b:b0:4bb:665f:7e52 with SMTP id 5b1f17b1804b1-4bb8880995dmr161630505e9.10.1795421199031;
        Mon, 23 Nov 2026 00:06:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:121b:474b:8d1f:a239? ([2a01:e0a:106d:1080:121b:474b:8d1f:a239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853a12acsm360424565e9.8.2026.11.23.00.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2026 00:06:38 -0800 (PST)
Message-ID: <2d8dd4ba-26ec-4b01-8361-09e6dfcfa5ed@linaro.org>
Date: Mon, 23 Nov 2026 09:06:38 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 02/11] dt-bindings: phy: amlogic: Add Meson HDMI TX PHY
 binding
To: sashiko-reviews@lists.linux.dev,
 Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com
References: <20261121-meson-drm-create-hdmitx-phy-v3-0-f8f471788076@aliel.fr>
 <20261121-meson-drm-create-hdmitx-phy-v3-2-f8f471788076@aliel.fr>
 <sashiko-outbox-227302@kernel.org>
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
In-Reply-To: <sashiko-outbox-227302@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_000644_473969_F7BB6277 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/21/26 20:26, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue to consider:
> - [Low] dt-bindings: phy: amlogic: redundant word binding in commit
>    subject
> --
> 
> commit fbd4563b5cd10db3f75db052197f808e3b36bc55
> Author: Ronald Claveau <linux-kernel-dev@aliel.fr>
> 
> dt-bindings: phy: amlogic: Add Meson HDMI TX PHY binding
> 
> This commit adds a Device Tree binding schema for the HDMI TX PHY found on
> Amlogic Meson GXBB, GXL, and G12A SoCs.
> 
>> dt-bindings: phy: amlogic: Add Meson HDMI TX PHY binding
> 
> [Severity: Low]
> The dt-bindings: prefix already indicates that this patch adds a binding,
> so repeating "binding" at the end of the subject is redundant ("dt-bindings:
> phy: amlogic: Add Meson HDMI TX PHY").
> 

Use the "dt-bindings: phy: amlogic: document the Amlogic Meson HDMI TX PHY"

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
