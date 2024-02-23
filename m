Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8936C54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 14:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3OaYd7Xiu56Q2VngH8zEYNlFjQfEmXUtYcDcjowolvM=; b=gkZfMt6Dbvcc12YJWT+rFGap5O
	hW5FRYzz93e+gHqzt7wyF/qlTXLlHvnJnYprXA25JRtokCoKya7B8b8PNcMMqwseMTTJyOh9Aka2a
	TZa0RwwTIo+BIErPPp7ZxODj9xdqlEpuEYxclLLbjXXIoJXJXedxyMOZ4NAFA3NRwtQeSByUPCPZd
	atstFupACj5SmTuNFHczVRC7GC5kWJAas5LJPD9f3xfmQjLJ2MBG7Clta/WVvH2ElIHdKq3s09Faw
	IAk5WqtqKYNK7IFRWv0pLKN/UUUgysl/6RHKhsQm/QoO1YaJhLNDdbNHr1b7lM//M2oBWpUq6kzR1
	URxpPKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWhw-00000009n16-1ClH;
	Fri, 23 Feb 2024 14:39:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWhu-00000009myv-2Tbe
	for linux-phy@bombadil.infradead.org;
	Fri, 23 Feb 2024 14:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=OijQr4Cr1wWVumHbsjNdZzaJgYfpd0n4qUPdqEIlqC8=; b=JNcDes8TlJDsUarMmkFzZhjrz4
	D9CnRlDBXQhils6pjr1FqEMbJVmmfHZpgAYwUG9r4Slf/dci9jFN3NJtgVUsmoLWkoCIix1WZ6lRp
	5nJSGDfvjd7kiJvuK3JwRQmHgNgy5j68eBiL8HW3htt+d3UV7VuGAT9JFXm1rseabQlFSpCEzSu9B
	Jq3KFahkZQPhtA1P4JgmMChLkzrI8G3z8CqsMRhWBaMiKHdMCJeozQIIbL76cFoROuOvtNlpyNHEL
	b8plhj1yuutTW3W9DaPVptunZjmuL9keP3lpbt6K2ctd84QN6BU9cfTCTp5BtNtrJuBlkQcHdXaqx
	oKzu8lHQ==;
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWhq-00000007M7y-3Djc
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 14:39:21 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4125e435b38so3078345e9.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 06:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708699095; x=1709303895; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OijQr4Cr1wWVumHbsjNdZzaJgYfpd0n4qUPdqEIlqC8=;
        b=hhA1z67KU9OEs0byBzJBVQwqGFWksAxJTCmj0oBoYMqKrL4vN5OBDlLVZplt1uMV61
         U3XgES2ZkEHREdjwIlAEkvb9WEpAvfqI3Hj7dUDiF8LbrkRPkaEcdKnltwBl9CQNyHDZ
         RSdN4qoLC/UfyyUCTFtgQ37yshXJcP04DLFCGFepAjE/fMK7kYtQMF1nIjCYhYo+uLcA
         LP/sHKCWaitZpWpiv7JkKhYywObpgCr8uiwrvK20YkdD8+0fcAmvoQqAZ0dkihCrrVKM
         uxW/e7pYFMWl/payzKoKmABsEFWpBfnd1uTjrpBgutmRVOsmgqKb4zEF+k4vR2nLVs/N
         xfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708699095; x=1709303895;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OijQr4Cr1wWVumHbsjNdZzaJgYfpd0n4qUPdqEIlqC8=;
        b=fi38g38WKVFGGapHvPezwOBTxzgKh0/H522E9hws3lChffkTJhm7VT2PIgj6WS7QPe
         8w4L0NUit0HXU2/aKLnJhpOkn300pQh3N20mVS8mkg5Ac2vdUTbsdSnxo3IYFXkrbHDe
         lQI7VF8hFLtPr0XB5bkIINi3Kk5zqwTsAgVnV15/c3fC76P1fBFU0nVyIMsDGSXS17TP
         ENVAFRVz90XZeINTGSYxN9a58MYqtgHKsthRtZIbXidXw3hA3ru+qvGuk0lAF/UbfueC
         2S9RUZz0cV5gwAgNEtdnYe+fq5Q5jD5N6p3BxKfaHku2cfgraZOhrCqJ2E5wrYddluZ4
         zDDw==
X-Forwarded-Encrypted: i=1; AJvYcCU3KjxTRb4vzr+iWTgRM6d4jZ6YIgN4EcqGJhzl3RtsUrKX76bb4NBhMBciZ1FxakQ48UFk+gbH6gJejG4o5CG7KL0VRPT9LfxLsiux5A==
X-Gm-Message-State: AOJu0YxDKG7aUMupPurrkgA4IPywebAamSBwpC5lKCoNCpqFTvHfSB2m
	XKKL9xvIZbI7bZJwuiiw7lX78J2PNMqbFaqc76s8uZU8s2tpQ6juqJY3M/+ZnkU=
X-Google-Smtp-Source: AGHT+IHXnSkol2aJhEp+L08VZUe6Bf4+k2kUP/mYBPqvfHWEIG2AEabojynlyu84aR966Z4ypczRBQ==
X-Received: by 2002:a05:600c:3ca6:b0:412:78e1:5089 with SMTP id bg38-20020a05600c3ca600b0041278e15089mr18436wmb.13.1708699094868;
        Fri, 23 Feb 2024 06:38:14 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:58e3:6b80:c446:11f4? ([2a01:e0a:982:cbb0:58e3:6b80:c446:11f4])
        by smtp.gmail.com with ESMTPSA id c14-20020adfe74e000000b0033b87c2725csm2922134wrn.104.2024.02.23.06.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 06:38:14 -0800 (PST)
Message-ID: <77715ecd-ddb9-450c-98bf-4fcade0e81c0@linaro.org>
Date: Fri, 23 Feb 2024 15:38:13 +0100
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
 <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
 <ZdiqAPPTn9SvsjL8@hovoldconsulting.com>
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
In-Reply-To: <ZdiqAPPTn9SvsjL8@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_143919_180231_FC13FC77 
X-CRM114-Status: GOOD (  14.33  )
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

On 23/02/2024 15:21, Johan Hovold wrote:
> On Fri, Feb 23, 2024 at 02:52:28PM +0100, Neil Armstrong wrote:
>> On 23/02/2024 13:51, Johan Hovold wrote:
>>> On Fri, Feb 23, 2024 at 12:03:10PM +0100, Neil Armstrong wrote:
>>>> On 23/02/2024 12:02, Neil Armstrong wrote:
> 
>>>>> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)
>>>>>
>>>>> [1/6] drm/bridge: aux-hpd: fix OF node leaks
>>>>>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
>>>>> [2/6] drm/bridge: aux-hpd: separate allocation and registration
>>>>>          (no commit info)
>>>>> [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
>>>>>          (no commit info)
>>>>> [4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
>>>>>          (no commit info)
>>>>> [5/6] phy: qcom-qmp-combo: fix drm bridge registration
>>>>>          (no commit info)
>>>>> [6/6] phy: qcom-qmp-combo: fix type-c switch registration
>>>>>          (no commit info)
>>>>>
>>>>
>>>> To clarify, I only applied patch 1 to drm-misc-fixes
>>>
>>> Ok, but can you please not do that? :)
>>>
>>> These patches should go in through the same tree to avoid conflicts.
>>>
>>> I discussed this with Bjorn and Dmitry the other day and the conclusion
>>> was that it was easiest to take all of these through DRM.
>>
>> I only applied patch 1, which is a standalone fix and goes into a separate tree,
>> for the next patches it would be indeed simpler for them to go via drm-misc when
>> they are properly acked.
> 
> But it is *not* standalone as I tried to explain above.
> 
> So you have to drop it again as the later patches depend on it and
> cannot be merged (through a different tree) without it.

drm-misc branches cannot be rebased, it must be reverted, but it can still be applied
on drm-misc-next and I'll send a revert patch for drm-misc-fixes if needed, not a big deal.

> I thought you had all the acks you needed to take this through drm-misc,
> but we can wait a bit more if necessary (and there's no rush to get the
> first one in).

If you want it to be in v6.9, it's too late since the last drm-misc-next PR has been sent
yesterday (https://cgit.freedesktop.org/drm/drm-misc/tag/?h=drm-misc-next-2024-02-22)

Please ping Thomas or Maxime, perhaps it's not too late since the drm-misc-next tree
really closes on sunday.

Neil


> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
