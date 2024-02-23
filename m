Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B0FBC5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 11:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCFQXpQ2ZMzF+fabSnUk7OQH4jOxnhu5nUeltbG3bWM=; b=tOoZiz6ltS2bJl
	651aJaYIW3yFD3EgFjpCkmRyixmb0Fh71qo4QzEOnTULe14LqdlgT/5CH0XIQ77U24WRdDq95VvyX
	21MVKyOvWmnJdX28V9PZYPU9ZDai6UTg6/tMhyEeoH9qyo5LetCeDffzsaGJT5OSZfnwCAU/fpjwS
	ne/IjdJlS2z1ic9yP+QAetW1UpPxSsTN8hO0lPxFnbGm2U0GOfoeK7GkyJ/UxSh80oF14yAOZTtbC
	hBsvbVbdWZWfAKQMx6D20z4rsYQhD+s9/gJuG7s1SwTD0rf2qL0aCbN0h0b8eIwBi6cRz/iTRpvbF
	8C6ONia0HDgACsi1VB8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTM0-000000093v1-0SAP;
	Fri, 23 Feb 2024 11:04:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTLt-000000093tv-2tQ7
	for linux-phy@bombadil.infradead.org;
	Fri, 23 Feb 2024 11:04:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=/RpTYiyFTL0cV1HIXamxy5oNLm7jD4YHf0G0C+wgOA8=; b=DLFPme9eDdcH7Yr5eAF9mv5bLz
	kf6Hicl61aarTFkML9mqbyX3FnLhABi+sUiADLcmViLMe+1em1IG68rEUnOlOsZfG/h5y2rcoC9mW
	1YKJGn+/2ehax998fOubqsdWeCOu8lMDQuSLqRisJDutfbJUHvVOdASuLObipQwyX1/8fRgIpm0RF
	imztb5d6c+i1skGGqa9Tph0N3Glnr15iawfXbGWgdDOUJu4uiwmfsyYFg12TR5J5TUxWgoJKcMRtE
	ld2DL1PeagNRO5ev9C1dLD2Eb2eayk8w4xup9/Zn0ucEQ5skMGWOq2QLX+24bJuTKype2I2PMyo2V
	Zh39bo3g==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTLo-00000006mA5-1VW6
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 11:04:24 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-512bb2ed1f7so220936e87.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 03:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708686192; x=1709290992; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RpTYiyFTL0cV1HIXamxy5oNLm7jD4YHf0G0C+wgOA8=;
        b=NG1aXwUzG4nJIt77NQnF2ZM5JTRfaKu3xZI4KvRhu8rmSgv0hCGA6wcFKEl/leBvBE
         hRu+o+/Lu30bNhHnkFns4KB6W8+0MJ+GcbgLzqGrCeE51E+FGgOHc7Ag6IAGEo6KwdUJ
         VszFDTGmIg04tNE0msAti7759kWiwmi2P5NCVHS6Z6lnxKHxA59G8lW2UUOOqPi85ae6
         +KIytEL4FUdl67Yw0p0I+oAUUHtqj3HUSRqx/CJ+CBHG60V3LqhKhtMn5JNnTN2QHIsL
         AUzt0MvZidvPiFZggp05eaoeNHdT2/E25XmEIZSbpnlh55j7JctFFvskSt/40UxMcdvx
         y3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708686192; x=1709290992;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/RpTYiyFTL0cV1HIXamxy5oNLm7jD4YHf0G0C+wgOA8=;
        b=wji6GG0YxkUX3cKPBXwUcvsG9KfNTIhF9XJzMWlf2bqnTKBklTOVeFRR2tcxVfLmV3
         bApMQ1HSrbU48DPLaqUMzS1o1+z5KqTHiqyrE9JbliAwhna4fNXsXL7Qhut5FZtR4o35
         gKXvnaUx/NM+KKjN56uvpu0BwSjbls+Sxf4bK04gvfPaVSx6jhntq+GxFlVC6apgrGfn
         U4qToVuKgYqca6xlZKWb9e3C/vjl8M/HM+1BR+SF436z0F/2zrY6lBJfBs3fC4ZV10/O
         kh+MtAxaDsDJNJQ5eyd3RaIu5bKEweg77TM0GhYaY5jyYcFmplvS512w5N6N9OPdwXfD
         bYxw==
X-Forwarded-Encrypted: i=1; AJvYcCW+VsVFFN6wiYKzqbBihP9kJoWRQ2ZbBeIcR8M9wLFaKbgwAnhFI1y/2NnCA1yS+JTaJuwYlrfZT4lq17XR2fOw5G431rTo+8lOoLrAdQ==
X-Gm-Message-State: AOJu0YwRunKP0vqx7AwCC3OoDgvhldFCFlnx+EOiZ4QYxaYzHFuymnAq
	8CYTq7cZxxXudHexkXJSibktSr1aJ2Jgecil12hEaRg4nnlUHCZXxLdZ/YBcy1I=
X-Google-Smtp-Source: AGHT+IFT9W3nGYiyOdEzCSKGOnZ74IabhMCjp6QTcpJbx2fT9JJlPrAlcV6NNwKGl1ykqb6VM2pP6w==
X-Received: by 2002:a05:6512:3f5:b0:512:ab9e:3521 with SMTP id n21-20020a05651203f500b00512ab9e3521mr952191lfq.11.1708686192169;
        Fri, 23 Feb 2024 03:03:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:58e3:6b80:c446:11f4? ([2a01:e0a:982:cbb0:58e3:6b80:c446:11f4])
        by smtp.gmail.com with ESMTPSA id jj26-20020a05600c6a1a00b0041294a6fc03sm1541476wmb.9.2024.02.23.03.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 03:03:11 -0800 (PST)
Message-ID: <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org>
Date: Fri, 23 Feb 2024 12:03:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-US, fr
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>,
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
In-Reply-To: <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_110420_432487_C1B52430 
X-CRM114-Status: UNSURE (   8.97  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/02/2024 12:02, Neil Armstrong wrote:
> Hi,
> 
> On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
>> Starting with 6.8-rc1 the internal display sometimes fails to come up on
>> machines like the Lenovo ThinkPad X13s and the logs indicate that this
>> is due to a regression in the DRM subsystem [1].
>>
>> This series fixes a race in the pmic_glink_altmode driver which was
>> exposed / triggered by the transparent DRM bridges rework that went into
>> 6.8-rc1 and that manifested itself as a bridge failing to attach and
>> sometimes triggering a NULL-pointer dereference.
>>
>> [...]
> 
> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)
> 
> [1/6] drm/bridge: aux-hpd: fix OF node leaks
>        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
> [2/6] drm/bridge: aux-hpd: separate allocation and registration
>        (no commit info)
> [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
>        (no commit info)
> [4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
>        (no commit info)
> [5/6] phy: qcom-qmp-combo: fix drm bridge registration
>        (no commit info)
> [6/6] phy: qcom-qmp-combo: fix type-c switch registration
>        (no commit info)
> 

To clarify, I only applied patch 1 to drm-misc-fixes

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
