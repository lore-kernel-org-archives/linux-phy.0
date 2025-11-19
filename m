Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 858A7CF34C0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 14:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkQ9ruaath38pKy5Vg//YF1Zv/mvF4xupyyMkNP0ZdQ=; b=uCroA56DSOsJ7I
	xBW8JRbzPkIuR/Um4O54EpsnsKiw5NZBRRfP69fD4+UDePonMwThD2gPfcnvtSb67H7qB1dpTT5WG
	4zwmu+aFNSMNuX/oi9x7Q/N9iauZdpK1fXxo+WS1YdCwRUJ2V8lU+m/djiTt/FX5oyzNOtc9B/kY+
	o3ZiimssOcuvJ3+DtFl+rPPHn9BPqLHD+uBq4lTvQ0XPWmlGP9JUKLlTECTsznnbdOfM/dZ2QaRp+
	a7sw3fpXlBOWLKyTkUGBjOeSMXK1tdE1mmlcUXh650b8HHj1MpAwm61JjLuVrwwe8qgKgV5ZdwUPd
	AyUwvmNabk50lHa0qkqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjVU-00000003Ps4-1ICG;
	Wed, 19 Nov 2025 14:50:04 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjVS-00000003PrN-0aFu
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 14:50:03 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-47755a7652eso46262965e9.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 06:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763563800; x=1764168600; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5IwlyQmN7aEr+k0dKo1C91kTz/zASMriIrf+oh75Bc=;
        b=pl28rQkBCFwh/Dl+EIwxdKf6JzFgWcTO/noErfM5Vc8QjXOPVE10fseOqXHMKDWaVm
         T9CTtB3b4Fn61XzTcghmTzIxES6kIHO4lgfNiwVmmn8hwC0zzVgT8ALwpy9/Fflxvsgi
         y9kq4arhvWpj6y1nemnzne9mo4RCdkaWB4+MnzcwhH1h3phpv95lqTNx6jWS01Ydvjxn
         WIAVSwuM1YL4RBGJYont5RLM5bhPba0fkdp0kNbGWtgzUqf+7qhNljNsMFbTRAhmpMbB
         ctnM3/9SiCNRv8H8KcK3W18n39LYVu3PYAXQ3sdC+u2K5CN+w24yWmptQ8gNdFk0jwBC
         J0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563800; x=1764168600;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5IwlyQmN7aEr+k0dKo1C91kTz/zASMriIrf+oh75Bc=;
        b=kids0jCF8yCuVJx8ieaUYJIL8mG6PV4Eis9/ZIPjvecW6zk7Pzbi89+Av+xsSo5KMa
         oUEsAx2mdbvqO8ofm3DEKp2Xf8xJxf51yz+Cm3RwSlO2qbNrM29NzmW1IGNwhfzqivM+
         YiwPdXM87sYMsroofHAUxUt3m1w7Exowf0kHTJP4UwWXqyawl7uwz4qJHayKTdwDIpv4
         salLW6Oc6vqTqDGF7QiGzA+ZF4ht9BA6DRFccwxTL2phb1X9U+Dz4RpdiNx4zEp9rgfO
         lLVHNVCNtFzitdrAxjSxxyq39HkK17ugXramqN5oe+QifOyBCleB1MN26zUo2ZLIEgdU
         czvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlJKfncfJq6ZDrqkBERoffgU3HOfp16k8aZsMWKLrcxgsngA//yDzttA8wbp93T12kDt6Y5JXGp5E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7cSVOh+7XoKwMY8QIonrBhVXrkSO1zTVDC8Bo3kCQf5PPcZZt
	pO7O14RxFmlOxZHwmrvtcbDqx1LLKtIH/XQkSCSg7mhUxBJbGNB79NgD87JmZovCaOg=
X-Gm-Gg: ASbGncv2SK7lKQSrztR3bp3N3Xvx8IentJ7+zicdabUOqoQ3iLF65FAWHlTtpr+2top
	NpnIPCohnsi84UHhn7Ua5RcLLovwRIhCcRb89K1d1leLgk1TDjYhylJZBQYBXPpzNOwDziQD4+q
	KrNXz5gNBzJkbz1o3OMppo+bCgleDQePGTa0ldDMhTeklYv6dml2PY9bqnx0JuUkfGC8xdJ3Lez
	th/swbDTIOi/0WVnTXyQzkRM13Ak+3oSjr7G6pDSgIUoA3DD4cGQZyehg+0m+w37JL0cz00Xcfx
	a44LgYk1tlgjIPn6VyUY1GQ8oM2GCzqHysfMBd9rfi5rWibPIX8DGlbu9IJP/uvSVvrN6QpsTpA
	XoiZtU4u2wyfLe7CdFB72MSJar3us9n+wbhHSXui9sbSQyl8rsmq9gwtavjwtqdzce52fbhLOUb
	3UdlvssU5pcMlZCRf5/I1RP8vYKspwlcRgkiaC6Idtiyd8ptnNBdynWbgtZgsZTXdv3k6v8DsEg
	Q==
X-Google-Smtp-Source: AGHT+IEd8UzBZRk6+xwZV/5zJBAvrlyTzFTI1kOuA2QzNhTIpZ27xlgt44WdoWaXyXgP9582F+kYUA==
X-Received: by 2002:a05:600c:c177:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4778fea1336mr211048075e9.29.1763563799733;
        Wed, 19 Nov 2025 06:49:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:263d:925b:a11f:ae36? ([2a01:e0a:3d9:2080:263d:925b:a11f:ae36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b5ce849ddsm32017877f8f.14.2025.11.19.06.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 06:49:59 -0800 (PST)
Message-ID: <782ebaf9-38d9-4695-b5af-3cf77118e282@linaro.org>
Date: Wed, 19 Nov 2025 15:49:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: renesas: rcar-gen3-usb2: Add suspend/resume
 support
To: Claudiu <claudiu.beznea@tuxon.dev>, yoshihiro.shimoda.uh@renesas.com,
 vkoul@kernel.org, kishon@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119120418.686224-3-claudiu.beznea.uj@bp.renesas.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20251119120418.686224-3-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_065002_268655_B541D1A7 
X-CRM114-Status: GOOD (  26.13  )
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

On 11/19/25 13:04, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The Renesas RZ/G3S supports a power saving mode where power to most of the
> SoC components is turned off. The USB PHY is among these components.
> Because of this the settings applied in driver probe need to be executed
> also on resume path. On suspend path only reset signal need to be asserted.
> Add suspend/resume support.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v2:
> - dropped the changes that were integrated in patch 1/2
> 
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 57 +++++++++++++++++-------
>   1 file changed, 42 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index b9d5bb52e02c..3c063e4dea41 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -132,6 +132,7 @@ struct rcar_gen3_chan {
>   	struct device *dev;	/* platform_device's device */
>   	const struct rcar_gen3_phy_drv_data *phy_data;
>   	struct extcon_dev *extcon;
> +	struct reset_control *rstc;
>   	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
>   	struct regulator *vbus;
>   	struct work_struct work;
> @@ -778,38 +779,24 @@ static void rcar_gen3_reset_assert(void *data)
>   static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>   {
>   	struct device *dev = channel->dev;
> -	struct reset_control *rstc;
>   	int ret;
>   	u32 val;
>   
>   	if (!channel->phy_data->init_bus)
>   		return 0;
>   
> -	rstc = devm_reset_control_array_get_shared(dev);
> -	if (IS_ERR(rstc))
> -		return PTR_ERR(rstc);
> -
>   	ret = pm_runtime_resume_and_get(dev);
>   	if (ret)
>   		return ret;
>   
> -	ret = reset_control_deassert(rstc);
> -	if (ret)
> -		goto rpm_put;
> -
> -	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, rstc);
> -	if (ret)
> -		goto rpm_put;
> -
>   	val = readl(channel->base + USB2_AHB_BUS_CTR);
>   	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
>   	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
>   	writel(val, channel->base + USB2_AHB_BUS_CTR);
>   
> -rpm_put:
>   	pm_runtime_put(dev);
>   
> -	return ret;
> +	return 0;
>   }
>   
>   static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> @@ -849,6 +836,18 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   		}
>   	}
>   
> +	channel->rstc = devm_reset_control_array_get_optional_shared(dev);
> +	if (IS_ERR(channel->rstc))
> +		return PTR_ERR(channel->rstc);
> +
> +	ret = reset_control_deassert(channel->rstc);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, channel->rstc);
> +	if (ret)
> +		return ret;
> +
>   	/*
>   	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
>   	 * And then, phy-core will manage runtime pm for this device.
> @@ -937,10 +936,38 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
>   	pm_runtime_disable(&pdev->dev);
>   };
>   
> +static int rcar_gen3_phy_usb2_suspend(struct device *dev)
> +{
> +	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
> +
> +	return reset_control_assert(channel->rstc);
> +}
> +
> +static int rcar_gen3_phy_usb2_resume(struct device *dev)
> +{
> +	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = reset_control_deassert(channel->rstc);
> +	if (ret)
> +		return ret;
> +
> +	ret = rcar_gen3_phy_usb2_init_bus(channel);
> +	if (ret)
> +		reset_control_assert(channel->rstc);
> +
> +	return ret;
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(rcar_gen3_phy_usb2_pm_ops,
> +				rcar_gen3_phy_usb2_suspend,
> +				rcar_gen3_phy_usb2_resume);
> +
>   static struct platform_driver rcar_gen3_phy_usb2_driver = {
>   	.driver = {
>   		.name		= "phy_rcar_gen3_usb2",
>   		.of_match_table	= rcar_gen3_phy_usb2_match_table,
> +		.pm		= pm_ptr(&rcar_gen3_phy_usb2_pm_ops),
>   	},
>   	.probe	= rcar_gen3_phy_usb2_probe,
>   	.remove = rcar_gen3_phy_usb2_remove,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
