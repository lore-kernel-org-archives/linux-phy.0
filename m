Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA65C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XxNoguPKnFvcA1O5bP+106eU4mxMvBBEfzsn1MuD3v4=; b=mT/K7xLy7PE4b/a60fLG9+k/oI
	j6HNLVe46Z63LWvDDjWin7ZVjtVQ+vLUKQAbtDSI8iDQ8vlzNS0C/CxrDGvUjOKT9aKwXTZi2/vSN
	9/bqAKBsaD3VlXjfvZTE7+zdIPItXouQIvu3S06QxE0uRLn+2MP22/gvKe9vVy8j5qwj6e4HYWL32
	Uu+f3gV/I2wZtQxSUhWMd6GKgF9gkPSja37slf6q3rtNxS368walyArkO6JKxQK/GX4+IWt/XBOXn
	aDocNA9FU6DE+Nc5EkPH8AIq8eo+8f9/YfJXoxKAzeMZRcGk7cLzbmLZIplKIe0CaPTL/g/0ilhxq
	h8kVqLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0a7-00000000AMX-3wUt;
	Thu, 22 May 2025 07:43:11 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0Vh-000000009fX-2Y1m
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:38:38 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-441c99459e9so50403625e9.3
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 00:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747899516; x=1748504316; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LD8ntK8xfh1M3SZdEUxa9DUXDRo4uk6n0BDBJQLK434=;
        b=MlrwUJ0ls3Ou6N7s0IwKVM0FRhF1A3jaFI1eMG97v+jfvjsd57r7lI3c0Gl9T1WDFN
         qYFR7WRCCzZiNG0507KknzmTgY8agGKAPuEBJvS30+WXhK5yIppd927Ps8QImhW/AzkI
         g/I3QXRixtSM9ywwNx3RRvJ1PXbzMprMiZ9w1X6z4eCH21hJhFaFC/SX4mBsMKdK52rk
         OhVxPxd7BEowA4Vbd/y7M7jXlf6NUBohmDr94+Z9E1NR8KgNWd0A8GjRlMpvGZZ1oNHA
         FLSFIemRFroFQnwSJSyOWfiFJXf2kD+yjiwpUx37LpKpS1F70Ztx0lSCNyH1EMhzaqyp
         aBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747899516; x=1748504316;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LD8ntK8xfh1M3SZdEUxa9DUXDRo4uk6n0BDBJQLK434=;
        b=XDkLPi10yTs3mQcUWmYvKg8IdJLdka0/lmMtCM5DvzgLUMmFZe2OV8E4haJn2EQifl
         Q6/sEBFLsteLepq4r8O3xVT9nsZrja7H+IusUbKrJSf/hQ5zJsFdH7BhS8pQ1vBLY5Rm
         LrQ1d7QKnGS9AXNVNwXpobtSMa25RstnibHrYzXlWl5Xd2VjNKy7ZFqm6wusFAZu+xDb
         q8qgkcgJ/dkXm2XsVkysg9KupqJEZPeDHK2T+3FmjfgFzDvN865SmRWbh4cvyoeavCwm
         eEBYwVyrh5EoqymIfl/+oEdeUhXgwkFwrtV2p1tgOfJrcZk1M5+UXKbZVTIEtTBzmBZS
         WlCw==
X-Forwarded-Encrypted: i=1; AJvYcCXxuQib3XxALWff+lGBM5WkxPkmFGTQ/DGVBS8z/soiEBSfs8/xKlP+MlMQtpbRLD3y6QmE0nZVepg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9cBYOKe539XrtEW/Gyei2EkCinVlnfv54t18cZQ2/54lsTnjB
	HSlxgnjw52zxP9tM9xphXLDDG65/H6pbN+T/w7jP1xEqH8900CIzLX9L6IvEXVE4Gtw=
X-Gm-Gg: ASbGncsHWJYCLVqiraoDLqkY8mWBB6g00GydvqJlhS9H9/z11uoR/splJ0qHuXZ0jfU
	q1NRs4YtWt9SkkXaL8ZXWG76v0ZJwpEY7ovKr9TsrKim1MfydFc3AiezCHM8X2lBEOchvB/QKx6
	5f7rxv/lUW76ASvX6hXPWwKr/jRytoPzw1GEIDlgiEU+b1yTAYti1Oj4GjIUA89K8/E0u9JdAt4
	b2uzg/he6mGqJq80uOr7xSN4wO4Vp0/rwSxZaCZwYgdurm7WlFlL+qQVzdBjIV8A7/HoaSB6bKL
	Zr+POWhR5bJgb6wmIS+lq8+IeS41TOB8wE57716Qti0e5S/ol86JZwc8QMKhjm+kDv99EP0jIcX
	tM+izMGoGirInzfgT47ub0A4BpgjC
X-Google-Smtp-Source: AGHT+IFkx1lvqitqZfDeiJsWs3JMGtQyZreZK7E9FGT4beePl8PD+rep4VjjgQc2mmbXeTT1TE60Zw==
X-Received: by 2002:a05:6000:18a5:b0:3a3:76ff:a617 with SMTP id ffacd0b85a97d-3a376ffafa7mr10754675f8f.32.1747899515856;
        Thu, 22 May 2025 00:38:35 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca8899bsm22008549f8f.62.2025.05.22.00.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 00:38:35 -0700 (PDT)
Message-ID: <a42b9cbb-2f85-40c4-8b40-6f84970aba86@linaro.org>
Date: Thu, 22 May 2025 09:38:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 1/5] drm/msm/hdmi: switch to generic PHY subsystem
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-phy@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
 <20250520-fd-hdmi-phy-v4-1-fcbaa652ad75@oss.qualcomm.com>
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
In-Reply-To: <20250520-fd-hdmi-phy-v4-1-fcbaa652ad75@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_003837_657685_B27AE30C 
X-CRM114-Status: GOOD (  19.44  )
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

On 20/05/2025 22:44, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Change the MSM HDMI driver to use generic PHY subsystem. Moving PHY
> drivers allows better code sharing with the rest of the PHY system.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   drivers/gpu/drm/msm/Makefile                     |   7 -
>   drivers/gpu/drm/msm/hdmi/hdmi.c                  |  58 +-
>   drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
>   drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  32 +-
>   drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 225 -------
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c         |  51 --
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c         | 765 ----------------------
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c         | 769 -----------------------
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c         | 141 -----
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c         |  44 --
>   drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c         | 458 --------------
>   drivers/phy/qualcomm/Kconfig                     |  21 +
>   drivers/phy/qualcomm/Makefile                    |  14 +
>   drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       |  71 +++
>   drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 441 +++++++++++++
>   drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
>   drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 212 +++++++
>   drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  81 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 185 ++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 442 +++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 495 +++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  77 +++
>   22 files changed, 2259 insertions(+), 2596 deletions(-)
> 

<snip>

> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> index 53a7ce8cc7bc7b6278eae2cbc42c3fda8d697f6d..1a00c26c1b40fc81623c9fb22ba25f448c27bffb 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> @@ -5,6 +5,7 @@
>    */
>   
>   #include <linux/delay.h>
> +#include <linux/phy/phy.h>
>   #include <drm/drm_bridge_connector.h>
>   #include <drm/drm_edid.h>
>   #include <drm/display/drm_hdmi_helper.h>
> @@ -286,11 +287,12 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
>   {
>   	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
>   	struct hdmi *hdmi = hdmi_bridge->hdmi;
> -	struct hdmi_phy *phy = hdmi->phy;
>   	struct drm_encoder *encoder = bridge->encoder;
>   	struct drm_connector *connector;
>   	struct drm_connector_state *conn_state;
>   	struct drm_crtc_state *crtc_state;
> +	union phy_configure_opts phy_opts;
> +	int ret;
>   
>   	DBG("power up");
>   
> @@ -304,7 +306,7 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
>   
>   	mutex_lock(&hdmi->state_mutex);
>   	if (!hdmi->power_on) {
> -		msm_hdmi_phy_resource_enable(phy);
> +		phy_init(hdmi->phy);
>   		msm_hdmi_power_on(bridge);
>   		hdmi->power_on = true;
>   	}
> @@ -315,7 +317,23 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
>   
>   	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
>   
> -	msm_hdmi_phy_powerup(phy, hdmi->pixclock);
> +	phy_opts.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> +	phy_opts.hdmi.bpc = 8;
> +	phy_configure(hdmi->phy, &phy_opts);
> +
> +	ret = phy_power_on(hdmi->phy);
> +	if (WARN_ON(ret))
> +		return;
> +
> +	if (hdmi->extp_clk) {
> +		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
> +		if (ret)
> +			DRM_DEV_ERROR(bridge->dev->dev, "failed to set extp clk rate: %d\n", ret);
> +
> +		ret = clk_prepare_enable(hdmi->extp_clk);
> +		if (ret)
> +			DRM_DEV_ERROR(bridge->dev->dev, "failed to enable extp clk: %d\n", ret);
> +	}

Why do you again set the extp_clk since it's already set & enabled in msm_hdmi_power_on() ?

Perhaps I missed a change but it's like that on next-20250521

>   
>   	msm_hdmi_set_mode(hdmi, true);
>   
> @@ -328,7 +346,6 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
>   {
>   	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
>   	struct hdmi *hdmi = hdmi_bridge->hdmi;
> -	struct hdmi_phy *phy = hdmi->phy;
>   
>   	if (hdmi->hdcp_ctrl)
>   		msm_hdmi_hdcp_off(hdmi->hdcp_ctrl);
> @@ -339,14 +356,17 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
>   	mutex_lock(&hdmi->state_mutex);
>   	msm_hdmi_set_mode(hdmi, hdmi->hpd_enabled);
>   
> -	msm_hdmi_phy_powerdown(phy);
> +	if (hdmi->extp_clk)
> +		clk_disable_unprepare(hdmi->extp_clk);
> +
> +	phy_power_off(hdmi->phy);
>   
>   	if (hdmi->power_on) {
>   		power_off(bridge);
>   		hdmi->power_on = false;
>   		if (hdmi->connector->display_info.is_hdmi)
>   			msm_hdmi_audio_update(hdmi);
> -		msm_hdmi_phy_resource_disable(phy);
> +		phy_exit(hdmi->phy);
>   	}
>   	mutex_unlock(&hdmi->state_mutex);
>   }
<snip>

Otherwise it looks fine even there's a lot to digest and hard to figure out
the exact changes done to the PHY drivers.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
