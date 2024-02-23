Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBB0C54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 10:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1OHe/JStWGujvCmrrkKU1PpKVntvUCNR+oTl5SFZoHk=; b=yAeL7lHgJcprrBX6sgemS5+XcU
	tVc+upjRAKKPJPxa2A8aHgnhxBGCpH2dtHjCcOwzKiAX7aOIjbbUcYQWWjg3hr/zF8Mwgj1+IgAdP
	V/7g2XJFR8+ZAnQ7uSDRBLovcpH40QFPzlzaRIqKkLTxpEl346HPSWQ0bJi78mrPUtlOdYhRuDfJx
	AFQoulBM8BZKY7qso/DI7KcaBXkjrMwYbAY1tws3ZIb3LlhOwW9xVEAgnEdCd97V4ZxBYStQcd5Aa
	eHrWnT9IGsPuaakLVEVdfjISM+u9b69I+HUpAVOa4Bz3mvhiHCMk4f+qb3u8FLoU/IIRJ+gMrKxAP
	JRPNQ9RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTET-000000092W0-3Fht;
	Fri, 23 Feb 2024 10:56:45 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTEM-000000092Pd-1J5g
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 10:56:43 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4129015c31eso4771785e9.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 02:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708685791; x=1709290591; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MpP8FPur0ZRYYFc1Wrt+q/AzhU6BvtHVrmCY1eGQaCU=;
        b=DncXNb6xJOsVszQ0/GSFcCmRIIi341E3fnyJDhLJ3ojCTR9uHW4DgeFPcHnQVik6GL
         um4ejuo7/gjApWdDELV2HhiGEICBy3uhnSxed2/DU60vUe0vbd5hcy6QaSVXmuA1f+jP
         /KgYbEQz7vsWLSizlgv+2osNCtrQEbbasYQq5nUOml3PNn/uBLjwGqF022gglxwx18cs
         kKx5Sui8bxrtdVSVvZIofgbUePNT+ew9Sr6CbSlsNSUiypQueEowG5QTTlQtKHETpghI
         J48m6T05dZV3/0G86vCyCj40wMOdMIrhvUyU4y5hWG1hTfEvgbgtqXNR434Ny/2TfJLA
         4RcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708685791; x=1709290591;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MpP8FPur0ZRYYFc1Wrt+q/AzhU6BvtHVrmCY1eGQaCU=;
        b=RWD0Uyv5ofzQQQmbXCQGuimjhq+Ko/RoiElVI1OFMVRHcOwEL7UzO7q+IDEL6nA+ud
         SRqvE+pYTgTN4ipUQRlah2GUkHZ1PYb1Cp0bCYXOi0kFOa1ETG5o3py0e+r8MT4goX2P
         CE8Gdc67VEvXV18BQuP3PrHjZJztvpnfRFlDsWJdN/yoOP8Ytuz9yIzJ+E95niGzQVjR
         d3nN2QA4eG20h44FljJmzDvYcy6xeUHErlUiYLqBjPkfPZjzdJc99AbhcTDPP5361nXT
         j6tGaGnfRjwx1JHCSMKpkZKdcQG5IJbbueMIBcUY8mpdebt3VhuWkKnOBE1N1mhkT/5z
         HGUg==
X-Forwarded-Encrypted: i=1; AJvYcCXtlP6MAfJJeA7QKrL+3YygvZoXhqR6JQ1FsBdI/qkNebwhNOJTD6+k7S26FGioNCVU1GS4vWvcOAEe/v2YtTAbjcJ7Y/HuqkjwvjFZLg==
X-Gm-Message-State: AOJu0YyM0drrat4z1iITCw/rMgcm8H/n4+jk8uHw8+YvSBN6Ldfznymy
	WNJy+Ei2FSR1gsuS68Gc7fuxTYzptvxoYO7oeq0nXgf6TIZMog7T0Quy5usL06Y=
X-Google-Smtp-Source: AGHT+IFmmCVq1mpUxj8NYYdV3/x1yBin0Yvk5Q825Dxgwe9DQn6iKJQLq+DpWki3HMNZqyDu4ForCQ==
X-Received: by 2002:a05:6000:12c1:b0:33d:3566:b5c5 with SMTP id l1-20020a05600012c100b0033d3566b5c5mr1264108wrx.7.1708685791556;
        Fri, 23 Feb 2024 02:56:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:58e3:6b80:c446:11f4? ([2a01:e0a:982:cbb0:58e3:6b80:c446:11f4])
        by smtp.gmail.com with ESMTPSA id b3-20020adfe643000000b0033cffd1a302sm2352588wrn.57.2024.02.23.02.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 02:56:31 -0800 (PST)
Message-ID: <a661b9d6-966f-4202-aad2-87c2fda4f1ac@linaro.org>
Date: Fri, 23 Feb 2024 11:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
Content-Language: en-US, fr
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>
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
 <20240217150228.5788-2-johan+linaro@kernel.org>
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
In-Reply-To: <20240217150228.5788-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_025639_729101_C8C8FB26 
X-CRM114-Status: GOOD (  12.26  )
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

On 17/02/2024 16:02, Johan Hovold wrote:
> The two device node references taken during allocation need to be
> dropped when the auxiliary device is freed.
> 
> Fixes: 6914968a0b52 ("drm/bridge: properly refcount DT nodes in aux bridge drivers")
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/gpu/drm/bridge/aux-hpd-bridge.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> index bb55f697a181..9e71daf95bde 100644
> --- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> @@ -25,6 +25,7 @@ static void drm_aux_hpd_bridge_release(struct device *dev)
>   	ida_free(&drm_aux_hpd_bridge_ida, adev->id);
>   
>   	of_node_put(adev->dev.platform_data);
> +	of_node_put(adev->dev.of_node);
>   
>   	kfree(adev);
>   }
> @@ -74,6 +75,8 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
>   
>   	ret = auxiliary_device_init(adev);
>   	if (ret) {
> +		of_node_put(adev->dev.platform_data);
> +		of_node_put(adev->dev.of_node);
>   		ida_free(&drm_aux_hpd_bridge_ida, adev->id);
>   		kfree(adev);
>   		return ERR_PTR(ret);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
