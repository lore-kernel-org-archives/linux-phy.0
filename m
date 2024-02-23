Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37D97C54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 13:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VXztkohY1V12zgBI9Lgt1c1jchuUW2Yk4tJBP5bE4Xs=; b=YZJVLCtxu1rINVcvAD8HKWYAm6
	F6jAUmY3aYW+nA3hxLGDOrkQCmegXuYvoY6v/P1R+Ym7CZhoBm8yCqEdAqSTioYvjkQcCbDWk+w76
	pSmjggGM0I3jfo/A7q+qnzrke4pL1qRgjnBNMFoumrMIhVRDvjGFtsetiXwa0jOG/ZUfBg4LISEMK
	+DZtX+NwFjUTS6E8q50XsBaxdwKBZkbjv+Hol4f2DdrSkKhZQ9JYJkAQtFslDoJ9s0IfZd8rpQLVG
	Glf6Hk59xy/igLpa5qL0jNzq2JHemy9y5Wffr6m966ky5yyZ/KNM2FwUCpdrA3jVb4GcRv6+gw3fM
	A80WbzmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVzT-00000009ety-3h2P;
	Fri, 23 Feb 2024 13:53:27 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVyj-00000009ej7-08z4
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 13:52:43 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2d220e39907so13709581fa.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 05:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708696350; x=1709301150; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w1CCwIgy2o0ymKg9g36BhlVJ3/o2uKolikgKrUSItNU=;
        b=g+GkVVDw8s5G05+K2qYZEkJ76Rd3mYQUwcgkTkgw0jDBIanx4rP9mpK6Q/eqwHAREF
         laNjmKSlBekxLlJpJxs7W3xKOKsPZxAU1R1Jkh7+AwZNTRmgkV+8ZyPWiFw2nUaKJZ7e
         6buIdSNVkIPSNHzcNp3AJXFIjrKGW7fTWjiI0m/T4kuzH9ZeSnXbrC4akH9wvtLw9INh
         wKx8UNme/yRd+cuGP7imGIgpfxSevBB436fxDZBOGSXRSc7ojCITsUAe2Cmt6hnQBbH8
         P9JH9ORMbIw6d10SzuQMJAzWYOsShm+SsR/K6yMQxY+636rgEYkHDgx8QQzv/KPTXn1d
         lUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708696350; x=1709301150;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w1CCwIgy2o0ymKg9g36BhlVJ3/o2uKolikgKrUSItNU=;
        b=D8gwhxk++0qNiEeqyssiNcnSTaLqdXXFeLt/79qt+N41VNQ/xqSRj+HoQI2sbzDToi
         NIZCpukmTAlNqMAnCmZUPNuaab310i+GG1F9EZawrlaGrWTE7RYgEZ/pFpphtkpMs52V
         /Dr8ZFtyd+JvqW11XHoLj5bMAmEJYKz7M7lDaBmEs/NlSXG5R3LhLg6/nM00QA1Vtboe
         +xt2Z4LWT97IT5r8bODSx8IHhypMg775hkVJFvADNFwAc1JerRtBs+nElSBOy4CIP9ht
         VlszUH/nUVX9wTByrC/gSeXUKAo5K9Tt7izQi9AbKRYByb02U8iWBqdUKpwg49405s6B
         3cFg==
X-Forwarded-Encrypted: i=1; AJvYcCXtn0iwLXUNIUva2vQxiO1JKTw50qQt/abXgHZEVX4EcoYpWD3nmxELmwtVnLL5JLUrlctq3TI7P0v8jX1XQChUV8aylSDuY/XpBO5GNQ==
X-Gm-Message-State: AOJu0Ywwc3avbLgseX8laNDIXKPznJWiT/S56u5YnzjNx9+H2L8qpyOk
	Mp0giqZsd4p9kv9g+wOZJwFUfx3FwoD+boFcJli1q7PVT/2SPqlNF/WpUwXu7Wc=
X-Google-Smtp-Source: AGHT+IHwE4oGRP6USExRO9u406ra40dfIlFnqLpaAW/cH+0rg8oNyYrx9Dp27AHc45IId+0tm6AYEw==
X-Received: by 2002:a2e:7411:0:b0:2d2:3661:487a with SMTP id p17-20020a2e7411000000b002d23661487amr1474672ljc.9.1708696349892;
        Fri, 23 Feb 2024 05:52:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:58e3:6b80:c446:11f4? ([2a01:e0a:982:cbb0:58e3:6b80:c446:11f4])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c198600b004129228da2dsm2444760wmq.31.2024.02.23.05.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 05:52:29 -0800 (PST)
Message-ID: <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
Date: Fri, 23 Feb 2024 14:52:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-US, fr
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
 <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org>
 <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
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
Organization: Linaro Developer Services
In-Reply-To: <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_055241_238284_C3737038 
X-CRM114-Status: GOOD (  16.06  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/02/2024 13:51, Johan Hovold wrote:
> On Fri, Feb 23, 2024 at 12:03:10PM +0100, Neil Armstrong wrote:
>> On 23/02/2024 12:02, Neil Armstrong wrote:
>>> Hi,
>>>
>>> On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
>>>> Starting with 6.8-rc1 the internal display sometimes fails to come up on
>>>> machines like the Lenovo ThinkPad X13s and the logs indicate that this
>>>> is due to a regression in the DRM subsystem [1].
>>>>
>>>> This series fixes a race in the pmic_glink_altmode driver which was
>>>> exposed / triggered by the transparent DRM bridges rework that went into
>>>> 6.8-rc1 and that manifested itself as a bridge failing to attach and
>>>> sometimes triggering a NULL-pointer dereference.
>>>>
>>>> [...]
>>>
>>> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)
>>>
>>> [1/6] drm/bridge: aux-hpd: fix OF node leaks
>>>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
>>> [2/6] drm/bridge: aux-hpd: separate allocation and registration
>>>         (no commit info)
>>> [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
>>>         (no commit info)
>>> [4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
>>>         (no commit info)
>>> [5/6] phy: qcom-qmp-combo: fix drm bridge registration
>>>         (no commit info)
>>> [6/6] phy: qcom-qmp-combo: fix type-c switch registration
>>>         (no commit info)
>>>
>>
>> To clarify, I only applied patch 1 to drm-misc-fixes
> 
> Ok, but can you please not do that? :)
> 
> These patches should go in through the same tree to avoid conflicts.
> 
> I discussed this with Bjorn and Dmitry the other day and the conclusion
> was that it was easiest to take all of these through DRM.

I only applied patch 1, which is a standalone fix and goes into a separate tree,
for the next patches it would be indeed simpler for them to go via drm-misc when
they are properly acked.

Neil

> 
> With Vinod acking the PHY patches, I believe you have what you need to
> merge the whole series now?
> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
