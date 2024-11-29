Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 249B2D6EC0B
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 13:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JO2S63s7DgciLEIZSSfhdnphUdMx5+NICnJQmQ/Y8IQ=; b=I0+Z5GNhUPdSKt9+OQXyA2yaZ3
	8mCVse72qtVS/Ss8V+9fNDaauHVx+sKrSLufbZU3wK8/JPaggOFNQlYFMXKDr4WANKH0v81JpKII+
	HiqnEGQNkYNqCHHM52jHEK6DNF+P7ZlG9/bWN42vfo/HM83rMcma9126BJRgW9QfBYXLpTL2dNCcd
	eLi79B+nQzZjHg0G7bsKOX1DMVxWcKl8ZZFBl9smGqtJICgiIXmA1egw6AQ5Bv4ljX77TrIl595NN
	i5vJGx5n0eWK+e9btefdBHUQUZSH1zW4mYyyytoQ6Qeit3WM0vIyecrol0BS0LslS5KmW0syyxpvl
	H0PGLX4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1SE-00000000Fz8-3lK7;
	Fri, 29 Nov 2024 13:54:42 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1SC-00000000FyM-2MH5
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 13:54:41 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4349cc45219so17259025e9.3
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 05:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732888478; x=1733493278; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HB5qvtsPd7f9i7gdKT/XuYTYZDECuYTYPRyyqxwrKxQ=;
        b=SxLfkvnnUSOUg058JVsICIC9iWYzHetnwRPXVE+wTF9cgglQ+an7NjXezJNt/LnceK
         j6XAdWZhS2lFJLhgbJdb0RddwvIEh9RwuEDeFfEZoFbopODXwf5nQkd87QFL6OWB1vhR
         MP4j+WrIqK2owlwGVPyVwrB7t7SBBvSw7+CLA2KKRzXzmbu4nBPZdoYg5kXsnHfTDj/S
         plUtikVeP5RpbLdREWE0q9J4HcO22nEahEDJh9qY8Y46FTL4JZRCeT0n5Sh0kJPvDP7O
         z9hUuG5jB0k7fQdzMNtmD98kioX3hB9wfS6yxkJ+KgCGsGnw25zVns6ZZb4Z1VujToSc
         cvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732888478; x=1733493278;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HB5qvtsPd7f9i7gdKT/XuYTYZDECuYTYPRyyqxwrKxQ=;
        b=KOnDt32vjP2wj/46e7g88b784Iy2O5LbkVEdMBovdYdHLTyftIrcVuWR5S3qvq/pw0
         FrN//h5MyXIKL36VriIk1BLPYgn0QZenZ62RG6hpPyhyC/di4suMADYbr6oSuxnp1iho
         vR14X+WY0kOyKcl7+5hrMAJi8cNYqx+JJt9DdX5IB3UeC20lsSeyEDduhiIIwxKAhBi/
         /ebI/06GXDtDjYS5Mj3zB5J1iYdEMxZoIpfZnJgdAJhbgroLcIM26CAgUQGKcUVB0oTj
         zCYzg/e5oYrY/F0r0PCxPyazhgQL7VhPR6njcOonc9QY8Mpsdqp93IWABNgDMq1bcHc7
         UPSw==
X-Forwarded-Encrypted: i=1; AJvYcCX9xn16BaQepeYOd4wa4KnbWUTfo4DKfs6+wpEhQRM9ti0hzPC54bzPYDdn96zPd3WeFrF0hK5XyT4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyczbbx2rKGmyo4WQUSii0gTSrSMyVQWcIbkUGvRK3hYKz3f1Kw
	3LxWjRY+guh7c71ufzlNt7MojksG1N7gxj4KiSppIdIhuE80Pcf5++FzUXLTv2I=
X-Gm-Gg: ASbGnctyXdOGKDyw1fO+uQfPWxY+zV0SJEfCS3XwJXg0cmWHdF0HmPey6eLdSeWkBe3
	T74Wbj7AYPy8x7exCuTnM4DS2OGwVcm7PPJUB4whCickbrv31oGgFi+nZZ1W3na1udGKT1syrZs
	C2+ubZmoTEwz2WGh8EhtCrDuy0GeHBoL1CmupOi2LvsSa3hakP1+n+fgctCLL/aprC1smP+5egk
	Ud4Pef1cBGaBut0IKVa8ZksT7zgEDWgFuJCO4HphA4ryQLUCPQDIS1mEOT0G8gNeKd8AkTmgUZ1
	5bECSdK2/kpOxeezT0OpfjdS
X-Google-Smtp-Source: AGHT+IFEgiv/oMH6zMYYtqaT1kchAaDlXi2IcfQveaywoKQGG/30eJYlHrTESus/gJsTsqI8VPCUpw==
X-Received: by 2002:a05:600c:83c5:b0:431:44f6:566f with SMTP id 5b1f17b1804b1-434a9dc14c7mr112122265e9.13.1732888478419;
        Fri, 29 Nov 2024 05:54:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:f573:30fa:4c5:27df? ([2a01:e0a:982:cbb0:f573:30fa:4c5:27df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74f18bsm87508445e9.4.2024.11.29.05.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 05:54:37 -0800 (PST)
Message-ID: <2c1ffbc6-0d67-4787-9fbe-03255b377c76@linaro.org>
Date: Fri, 29 Nov 2024 14:54:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 8/8] drm/msm/dp: Support external GPIO HPD with 3rd
 pinctrl chip
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-gpio@vger.kernel.org
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
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
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_055440_606501_052D577E 
X-CRM114-Status: GOOD (  22.37  )
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

On 29/11/2024 08:57, Xiangxu Yin wrote:
> Add support for handling HPD (Hot Plug Detect) signals via external
> GPIOs connected through pinctrl chips (e.g., Semtech SX1509Q). This
> involves reinitializing the relevant GPIO and binding an interrupt
> handler to process hot plug events. Since external GPIOs only support
> edge interrupts (rising or falling) rather than state interrupts, the
> GPIO state must be read during the first DP bridge HPD enablement. This
> ensures the current connection state is determined and a hot plug event
> is reported accordingly.
> 
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>   drivers/gpu/drm/msm/dp/dp_display.c | 83 +++++++++++++++++++++++++++++++++++++
>   1 file changed, 83 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index eb6fb76c68e505fafbec563440e9784f51e1894b..22c288ca61b9b444a7b8d4a574c614bfef9d88be 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -13,6 +13,8 @@
>   #include <linux/delay.h>
>   #include <drm/display/drm_dp_aux_bus.h>
>   #include <drm/drm_edid.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/of_gpio.h>
>   
>   #include "msm_drv.h"
>   #include "msm_kms.h"
> @@ -78,6 +80,10 @@ struct msm_dp_display_private {
>   
>   	unsigned int id;
>   
> +	bool ext_gpio;
> +	int gpio_num;
> +	struct work_struct  gpio_work;
> +
>   	/* state variables */
>   	bool core_initialized;
>   	bool phy_initialized;
> @@ -1182,6 +1188,42 @@ static irqreturn_t msm_dp_display_irq_handler(int irq, void *dev_id)
>   	return ret;
>   }
>   
> +
> +static void msm_dp_gpio_work_handler(struct work_struct *work)
> +{
> +	struct msm_dp_display_private *dp = container_of(work,
> +			struct msm_dp_display_private, gpio_work);
> +	struct gpio_desc *desc;
> +	bool hpd;
> +
> +	if (dp->ext_gpio) {
> +		desc = gpio_to_desc(dp->gpio_num);
> +		if (!desc) {
> +			pr_err("Failed to get gpio_desc for GPIO %d\n", dp->gpio_num);
> +			return;
> +		}
> +
> +		hpd = gpiod_get_value_cansleep(desc);
> +		if (hpd)
> +			msm_dp_add_event(dp, EV_HPD_PLUG_INT, 0, 0);
> +		else
> +			msm_dp_add_event(dp, EV_HPD_UNPLUG_INT, 0, 0);
> +	}
> +}
> +
> +static irqreturn_t msm_dp_gpio_isr(int unused, void *data)
> +{
> +	struct msm_dp_display_private *dp = data;
> +
> +	if (!dp) {
> +		DRM_ERROR("NULL data\n");
> +		return IRQ_NONE;
> +	}
> +
> +	schedule_work(&dp->gpio_work);

this msm_dp_gpio_isr is already threaded, would would you also schedule a work ?

> +	return IRQ_HANDLED;
> +}
> +
>   static int msm_dp_display_request_irq(struct msm_dp_display_private *dp)
>   {
>   	int rc = 0;
> @@ -1193,6 +1235,21 @@ static int msm_dp_display_request_irq(struct msm_dp_display_private *dp)
>   		return dp->irq;
>   	}
>   
> +	if (dp->ext_gpio) {
> +		int edge, gpio_irq;
> +
> +		gpio_irq = gpio_to_irq(dp->gpio_num);

But as Dmitry reported, the system should use a dp-connected as a next bridge
instead which already supports all this much better:
drivers/gpu/drm/bridge/display-connector.c
Documentation/devicetree/bindings/display/connector/dp-connector.yaml

> +		edge = IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING;
> +
> +		rc = devm_request_threaded_irq(&pdev->dev, gpio_irq, NULL,
> +		msm_dp_gpio_isr, edge, "dp_gpio_isr", dp);
> +		if (rc < 0) {
> +			DRM_ERROR("failed to request ext-gpio IRQ%u: %d\n",
> +					gpio_irq, rc);
> +			return rc;
> +		}
> +	}
> +
>   	rc = devm_request_irq(&pdev->dev, dp->irq, msm_dp_display_irq_handler,
>   			      IRQF_TRIGGER_HIGH|IRQF_NO_AUTOEN,
>   			      "dp_display_isr", dp);
> @@ -1308,10 +1365,32 @@ static int msm_dp_display_probe(struct platform_device *pdev)
>   		return -EPROBE_DEFER;
>   	}
>   
> +	if (of_find_property(pdev->dev.of_node, "dp-hpd-gpio", NULL)) {
> +		dp->ext_gpio = true;
> +		dp->gpio_num = of_get_named_gpio(pdev->dev.of_node, "dp-hpd-gpio", 0);
> +		if (dp->gpio_num < 0) {
> +			dev_err(&pdev->dev, "Failed to get gpio:%d\n", dp->gpio_num);
> +			return dp->gpio_num;
> +		}
> +
> +		if (!gpio_is_valid(dp->gpio_num)) {
> +			DRM_ERROR("gpio(%d) invalid\n", dp->gpio_num);
> +			return -EINVAL;
> +		}
> +
> +		rc = gpio_request(dp->gpio_num, "dp-hpd-gpio");
> +		if (rc) {
> +			dev_err(&pdev->dev, "Failed to request gpio:%d\n", dp->gpio_num);
> +			return rc;
> +		}
> +		gpio_direction_input(dp->gpio_num);
> +	}
> +
>   	/* setup event q */
>   	mutex_init(&dp->event_mutex);
>   	init_waitqueue_head(&dp->event_q);
>   	spin_lock_init(&dp->event_lock);
> +	INIT_WORK(&dp->gpio_work, msm_dp_gpio_work_handler);
>   
>   	/* Store DP audio handle inside DP display */
>   	dp->msm_dp_display.msm_dp_audio = dp->audio;
> @@ -1678,6 +1757,10 @@ void msm_dp_bridge_hpd_enable(struct drm_bridge *bridge)
>   	msm_dp_catalog_hpd_config_intr(dp->catalog, DP_DP_HPD_INT_MASK, true);
>   
>   	msm_dp_display->internal_hpd = true;
> +
> +	if (dp->ext_gpio)
> +		schedule_work(&dp->gpio_work);
> +
>   	mutex_unlock(&dp->event_mutex);
>   }
>   
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
