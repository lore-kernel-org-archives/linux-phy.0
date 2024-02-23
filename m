Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900ABC54E41
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 14:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V4GPhW526NNsVGuh6Sb3lC2EpL+d6wTEaQAIT1SDPf8=; b=3wR5+X9NeXAty6zANxZmNPVNp2
	YHr/vORO+zb7QEXgGVOEqc2fBeOQqC2SdgB9HixipNvjVzsxkEZfuYzpA3C7Knn6XLjc5No2QKNA8
	5xAevUHjKepQljE1CDR31x7sc5DnGRhX4TlBy3Sfm54vkjBAdVoUbttywkrs5M+lmzE3r+Y1Go0/W
	wV0RbU/C4TQO6A3F1TyBrBwXAwo+US5si+oQwNXfXpSHO1rFFuWBPe6qYaapEgEZj4CsLrdabTSoD
	4FFeOt6ODaOdmwZ0iL+3pSaz2tkFADeEtIrh5LdLM3vQzhbEvAl3lkQyLb4FpbL/uRIIBMoMTmcji
	HrbSunBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWxb-00000009sd5-3HUf;
	Fri, 23 Feb 2024 14:55:35 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWxI-00000009sXa-13Ud
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 14:55:21 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4128f3ee934so6480525e9.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 06:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708700114; x=1709304914; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YR4FOB3mTjpSyt3x+AV6258Jdc3Bc2u/zffBWrsEEk0=;
        b=IoCBi8zwiwanZ16CKf61BTMQdBlSXfpHkC1uvp2XIAzPO9bnVJIg++WtwgTnCz4iX0
         sKxjKEciIDyEK1G56ULdU8MuE9N4aH5Qk0v52VaVJoUsYnWl2DaLOWkFsreiVy6RsTqj
         hf6VTYCjNEwCPUmsj2bTjXi6JCqvZ06tqHkb4vUa3o2t52+xZS/oTXS6AWw25eqeFqm5
         t52/UR+Pqx9cUrlFxFOoEncpFdr32mlkdnmPRZPZpbyGhKH6H41tbiEU/z52Rf/JBoGP
         +WgZyqbPlC1NR0cePSnsHKUtdSmhiFvXWe26Maq8onOAZPQH9sDKtaouR0ZY8pjwh0ip
         AGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708700114; x=1709304914;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YR4FOB3mTjpSyt3x+AV6258Jdc3Bc2u/zffBWrsEEk0=;
        b=mjPConwTYgZUDK0DUbnJPKm4fUAQihm4S9tPvllXn/Mc8BsdygZbbbpBiTbSqxaER9
         5damPue8QyAzekRSKQmGxA9GQktNLlQv2cI4SNw3Rst5ORZsI+JglIikbMzgpPXYhLYR
         K/wdCCQ7gDM62tfrgCucYJb4VerwNdtkY3xYxPV0+od3MBxoNDLt0aEaCnPitTDBa3Dv
         9eZVI53rV6jlbKmZ6eHOC4B9wdlHA+kvF0mTleYtgKm46Eya7LV/A3yGkP46LessUATo
         ndgQ7Li3HQxfHuCl/CAjXPKnAej7cMlp7RtO9rigEK2zcl1k9SJ0tUdHp6AKAn3lfloE
         dHBg==
X-Forwarded-Encrypted: i=1; AJvYcCWG+KY5nCTkXJZuJEspjmb+9MQ9JaNUu4Pz9pXNRNj1jECRl0mkfqNAv7SGh7iMHZRJ0cymG+48QOjOW//O7hjP0l/x4kLhASyV98Hw5A==
X-Gm-Message-State: AOJu0YzXwWRako7+lvAOmxYynxd6GG3s3lb/RDdqLIHeIKqUDucNosJD
	q1s1AWhJNwvl+iGquDMT9NaZ0QiXW9n6sl2LSdLlAw7i5NYZbmfhhsUhyJ7ljrY=
X-Google-Smtp-Source: AGHT+IGAy96HbSPMW3k44GU39oK9LfJtPL+l0X+t5AUlvKsigL3XKGl9EWcCWb2kXfdcmrgGHf2JOw==
X-Received: by 2002:a05:600c:46d0:b0:412:5fbe:3740 with SMTP id q16-20020a05600c46d000b004125fbe3740mr36553wmo.24.1708700113947;
        Fri, 23 Feb 2024 06:55:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:58e3:6b80:c446:11f4? ([2a01:e0a:982:cbb0:58e3:6b80:c446:11f4])
        by smtp.gmail.com with ESMTPSA id fa15-20020a05600c518f00b0041294a1d7bcsm2314742wmb.36.2024.02.23.06.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 06:55:13 -0800 (PST)
Message-ID: <b5401b19-09d9-4907-86d6-9aab9dc2970e@linaro.org>
Date: Fri, 23 Feb 2024 15:55:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-US, fr
To: Johan Hovold <johan@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
 <ZdiqAPPTn9SvsjL8@hovoldconsulting.com>
 <77715ecd-ddb9-450c-98bf-4fcade0e81c0@linaro.org>
 <ZdixFo2EjUQDgeFh@hovoldconsulting.com>
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
In-Reply-To: <ZdixFo2EjUQDgeFh@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_065516_765106_8BEEA80A 
X-CRM114-Status: GOOD (  16.29  )
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

On 23/02/2024 15:52, Johan Hovold wrote:
> On Fri, Feb 23, 2024 at 03:38:13PM +0100, Neil Armstrong wrote:
>> On 23/02/2024 15:21, Johan Hovold wrote:
> 
>>> But it is *not* standalone as I tried to explain above.
>>>
>>> So you have to drop it again as the later patches depend on it and
>>> cannot be merged (through a different tree) without it.
>>
>> drm-misc branches cannot be rebased, it must be reverted, but it can still be applied
>> on drm-misc-next and I'll send a revert patch for drm-misc-fixes if needed, not a big deal.
>>
>>> I thought you had all the acks you needed to take this through drm-misc,
>>> but we can wait a bit more if necessary (and there's no rush to get the
>>> first one in).
>>
>> If you want it to be in v6.9, it's too late since the last drm-misc-next PR has been sent
>> yesterday (https://cgit.freedesktop.org/drm/drm-misc/tag/?h=drm-misc-next-2024-02-22)
>>
>> Please ping Thomas or Maxime, perhaps it's not too late since the drm-misc-next tree
>> really closes on sunday.
> 
> I don't want this in 6.9, this is needed for *6.8* as this fixes a DRM
> regression in 6.8-rc1 that breaks the display on machines like the X13s.
> 
> If you guys can't sort this out in time, then perhaps Bjorn can take
> this through the Qualcomm tree instead (with DRM acks).
> 
> But again, this is fixing a severe *regression* in 6.8-rc1. It can not
> wait for 6.9.

Right, I can't apply them right now, I send a patchset ack so it can be applied ASAP,

Thanks,
Neil

> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
