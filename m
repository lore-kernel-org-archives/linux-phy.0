Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF00EC48260
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 09:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SXB0xzRgGg5RWPbTL+CXktoGKwT0l0auLie8KDOXyuU=; b=pkjeXLku4Wdyz7AkLzHLVxEYVq
	F71tgwAYm2crqrsZpVd/spg4RIspJMTlTunB6aY9fj+6coQ84flti8b2rDckNeiFPFKkAlDrJ/daf
	cvbyewTjifEubWUi2P0tdu+VmcvDr4MKhZA//qbpBRKIYlaJoq4IlPxdl4pY4WZ20BcJy28/xNsLd
	9iSzMpDUzFkSqD9+o5H8B61EveVfCJrIJYyxRwlaQkgQquVDOZ3/icGjRsd8LOlF0eT5OcXcVAyTU
	jTblgJ8iBfFheY7s0YXybTXH8O/ZE1gj34YFlNa6pSMBRfo2wRl/74RE2+iytlGzijwkOxa2NZ1A7
	6FhvRn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzYt-00000009iRF-2HtK;
	Mon, 19 Feb 2024 09:03:43 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzYq-00000009iP6-2oyc
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 09:03:41 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-33d44d78e5fso310851f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Feb 2024 01:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708333419; x=1708938219; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gF7sGDk1x24G6RZbBVHNrWjV9qvXDZGdRDsrtRvQq9E=;
        b=nq+KsEKLRk5Dxp3OcFxnIIbAMnL/MRgAORAmqKmI5EM/DXX88Jue30KSa3Kr4MkFqd
         HeMXE9bpq9bBRhRzOJKW1USCqxg7RyIjPlaMHQsC2r5tAaLeY/tuvRxActh9kCnlbsYO
         v5/p5QydRH3uAJ2a6TW+oRk4txVAgylz74SKjDkmj0BqlNKtwlLMCAH9XdP0J2c+hvON
         H/dapVdM5zCeU3EJb312zyD125210h3vNtbKzkWWX/MU63pbJWBLWf1A0oKEp+6T8ORy
         KmLAucWcIYBdEBH0u+TJQ7ZHmohZRLsCxfI2deq+ExyZegSRhgzKp/PumBCXDMzCFxWs
         1jDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708333419; x=1708938219;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gF7sGDk1x24G6RZbBVHNrWjV9qvXDZGdRDsrtRvQq9E=;
        b=K6SGAW9QAMmPYQ1qcK0JoQ1aDh621KeUJC/RAmSShyZInq38yqo5TtX4xYbR8WtmEQ
         0AqaLV7LbFpECAWPzpM+NAbz1DkuIXdFk8qq/9/dKrQE+yjUyMiDkfmMXEluB8nqekhH
         j1+ZPueFq+odnhe9yVf1jTxL9bMM+m8kwaGHu196eHd4ynLxRDlnCOMHj64hJwSiUrfv
         de1s+hGNq4skEIIaFkrSEvAgrP3dPY1QqRDwfnF0evot9ZmkAAIGH+aCTC/BiJKEteCT
         UbpDAC4OOOuk/oBQhqZZpXJadY7rTuZgfK2S4OU0YpkRADKPgOUKnIo72gBirAko0rci
         Wg4g==
X-Forwarded-Encrypted: i=1; AJvYcCX8qodAjiy4Z65FVWVr+q62WI9bj5G3XPh/D7p3TFRsITdQEziSPvifidWjfGWojHazNTJASmdWIcb0rGagv2BMHkfWRjYj+/qtpIcacw==
X-Gm-Message-State: AOJu0Yw5N9u09gj5dbcgLxOTKqQ6kxUFcOZie7zTNJXCbn1MFYKbyqqR
	NLJg0QA/Knam8Vk8QhdIPGnrReeo7DFqMts8Koxkerz/pNJ4c75Epl7SZKkq6oE=
X-Google-Smtp-Source: AGHT+IHeW4FAyqvBoHaZHyX8ohtq5iNNLDp8u7VcW4ZWJqvxtsgUI3BYpUKh1ifXeE1GS2yUvTjqBg==
X-Received: by 2002:a5d:588f:0:b0:33d:2b3d:b598 with SMTP id n15-20020a5d588f000000b0033d2b3db598mr4141771wrf.70.1708333418779;
        Mon, 19 Feb 2024 01:03:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f? ([2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f])
        by smtp.gmail.com with ESMTPSA id s1-20020adff801000000b0033d01fe1f04sm9722957wrp.55.2024.02.19.01.03.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 01:03:38 -0800 (PST)
Message-ID: <c86594cd-f32d-4b66-8459-9045640aa928@linaro.org>
Date: Mon, 19 Feb 2024 10:03:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] phy: qcom-qmp-combo: fix drm bridge registration
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
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 stable@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-6-johan+linaro@kernel.org>
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
In-Reply-To: <20240217150228.5788-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_010340_777864_C898C483 
X-CRM114-Status: GOOD (  20.44  )
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
> Due to a long-standing issue in driver core, drivers may not probe defer
> after having registered child devices to avoid triggering a probe
> deferral loop (see fbc35b45f9f6 ("Add documentation on meaning of
> -EPROBE_DEFER")).
> 
> This could potentially also trigger a bug in the DRM bridge
> implementation which does not expect bridges to go away even if device
> links may avoid triggering this (when enabled).
> 
> Move registration of the DRM aux bridge to after looking up clocks and
> other resources.
> 
> Note that PHY creation can in theory also trigger a probe deferral when
> a 'phy' supply is used. This does not seem to affect the QMP PHY driver
> but the PHY subsystem should be reworked to address this (i.e. by
> separating initialisation and registration of the PHY).
> 
> Fixes: 35921910bbd0 ("phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE")
> Fixes: 1904c3f578dc ("phy: qcom-qmp-combo: Introduce drm_bridge")
> Cc: stable@vger.kernel.org      # 6.5
> Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1ad10110dd25..e19d6a084f10 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3566,10 +3566,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> -	ret = drm_aux_bridge_register(dev);
> -	if (ret)
> -		return ret;
> -
>   	/* Check for legacy binding with child nodes. */
>   	usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
>   	if (usb_np) {
> @@ -3589,6 +3585,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (ret)
>   		goto err_node_put;
>   
> +	ret = drm_aux_bridge_register(dev);
> +	if (ret)
> +		goto err_node_put;
> +
>   	pm_runtime_set_active(dev);
>   	ret = devm_pm_runtime_enable(dev);
>   	if (ret)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
