Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD489CEDD8A
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 13:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W5TnM56c/54a/SifcU8vP8S/GmvxeQYuvw34piNIQI=; b=S/tPYQv/moH3WA
	OF53B1H40mr65FUJn0Op1ygcx4kJXdu1+pYvfLfPl/2gLGObH9VCO3OPricdF4Z7bYgG6z8cLV+qM
	0ue8TD6tS7V2WyhkT6cQfFVfRgBf0ENAwT6iIMyWh4ZOEWinPmr7dZ3wp4mUOMq0N3zhBUH9OM90d
	6QpDTdLTRb++hPTh7lRkr7geit6Fv6B2qnW9cW0jbKL2J2GvkDLLvk+rTXNmF40R7+/Kh5BBh2Nj1
	HnBdJ25yaIuyHEHElrel4UnWzo5nNbiBJ7N5b94ehUQiEkGT286Blf9WDlerEETkei6y8hgmRPXXC
	thH/S6j+yB8qSDmmXmSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMAR-00000000Upg-2lTB;
	Tue, 18 Nov 2025 13:54:47 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMAP-00000000UpH-0KsL
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 13:54:46 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-477770019e4so59424095e9.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 05:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474083; x=1764078883; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z4rTQs6cNVDsxXvXmMBx4hq1l1GKxmU7dSKs02Pj2AE=;
        b=VbV9HRcB+gmuLzQwYicXdHwHOwjWbNzjWQQde8bGscCQtGYz5l/2T2W8Z1v8ejFHQk
         ywrnhmv55xfAlb3ohu4DIfgW4Mc9BF3cYaeNRADCDSoCjfbM9tsIVRhwG0FcBMuRCABj
         ZClkeKEQ6FFAqYSm95TpcT7ZLhVInd/zBBV3v15bCh6ifTSTbgNiMa2fT67+fp1VHBqG
         nZKGHyv7AHn23H07CwHiejP2TSlg9nLIqTsCXzNcldkdGo35YGCaZN02zHhicQs4iZEu
         TPcTCHcxBIMwi6L5YZXJr+sLFHb96CLROsiD1sLmzyPtmAeIlhJxTga5v1LHH5g4j0Jo
         zXjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474083; x=1764078883;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z4rTQs6cNVDsxXvXmMBx4hq1l1GKxmU7dSKs02Pj2AE=;
        b=j5DvBrBiDyLlR2F7Oy1FOzhdDcEI0KbL4wmuv+zUiLIitPVN/SqGnK8zJvLbf3l8J6
         t0emWmsA9zXvN6+1EB5NVeOhfAVB5P3YHPVTZF2xLiVb4Gv2yu+lT7SSXNgC001abr4r
         +PuJLPTJuqIyGLvbcLDxEKfwwWxh82ls69I3JZaL+lT0zMkHhV8iiCJ7X59jWwPy7PXB
         CKDRPqn6vGqVlG8s7iRQrM76CInpnav/bbs+DC5uy6dJvkY0/U6jWxt0s6wnDXFn0LRe
         oP1fKTZmroR+wk+N8ezYzfICCYkuRURDID6o4jz9dB8h8b3Re/jPilGAt8rxsjCzDgso
         t+iA==
X-Forwarded-Encrypted: i=1; AJvYcCUEOW+vcSrfBsyNMiXYMoZbjt8NRnwyiItl3sio8bDGvk4nZb3SbhcBxXpc/FZvMlVtXyp2ua5ktIs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr8gHXBMrEo4Awy/PQJU7I6onVPJCSiN6Q3hshy7NU/ZlExBfn
	aJyeevEL2dpDhd5cJLp0AIhI49X5nyFvw1Lq/pizjDlANckUiQh+frMeNzBAWdw32vc=
X-Gm-Gg: ASbGncsANCXfvtYdmB/09ZUe//pxp5Pg4qTPZc9BaHX/wkiMadm3fptTpwdXamq21dp
	6LBy4Xm1hppJVbhjtQeN5jUegnrk1vYqBFab6tihIVg4vQDmUygtCZgdhWh6dqPjmvQeNAb8khU
	k6CK98nbEv+oC6w8/7vh3xp+Jms357x4AzyFI1adDxvKAehQCnHhu0YY65WdVDUG64TdNDa/3ZV
	4vXAAvd2hSLkdlVM3f7T1dpFMO1ZwIVN6mzDfOj/rkvaxhIZFPA0CrwxITw4XWmZcXv8A8dcqGT
	nkC/UgJ7tqDHj/mv0H6Ra588ifqkLBVZZu/0NHKUnIhVL0yQ35N2wKqteCVF4U/m3K5C238SBBf
	0yuUhtrrd3ilqvGpGLdx97ZyR9lDvNemIo7GJ7fAmWDj3sxRjpNWrJ/s4T0FiZwtPzG96061Qe0
	EUhic7T+E1a3pk4hEibQfcR8pfrqsIMbN3+bCQBDFHKJgb8D0MCQc4u46ajBikDtHexZ4h+Aqsg
	g==
X-Google-Smtp-Source: AGHT+IHhitoziKhXGK/4vUvir0RlhvYqtbf0w6VoUxFm0DXXGjIIgAo5tsERHyW1tWVmq0iyACjNnQ==
X-Received: by 2002:a05:600c:3593:b0:477:557b:6917 with SMTP id 5b1f17b1804b1-4778fe4fdecmr165470535e9.18.1763474082956;
        Tue, 18 Nov 2025 05:54:42 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a96a58c5sm19787245e9.0.2025.11.18.05.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:54:42 -0800 (PST)
Message-ID: <4d486bd8-9e87-4bf2-a96f-38aa0f701c45@linaro.org>
Date: Tue, 18 Nov 2025 14:54:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
To: Claudiu <claudiu.beznea@tuxon.dev>, yoshihiro.shimoda.uh@renesas.com,
 vkoul@kernel.org, kishon@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
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
In-Reply-To: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_055445_185240_0ABE1AE1 
X-CRM114-Status: GOOD (  27.81  )
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

On 11/6/25 15:41, Claudiu wrote:
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
> This patch is built on top of patches 1/7, 2/7 at [1]
> 
> [1] https://lore.kernel.org/all/20251023135810.1688415-2-claudiu.beznea.uj@bp.renesas.com
> 
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 66 +++++++++++++++++-------
>   1 file changed, 47 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index a38ead7c8055..3c063e4dea41 100644
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
> @@ -778,35 +779,24 @@ static void rcar_gen3_reset_assert(void *data)
>   static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>   {
>   	struct device *dev = channel->dev;
> -	struct reset_control *rstc;
>   	int ret;
>   	u32 val;
>   
> -	rstc = devm_reset_control_array_get_shared(dev);
> -	if (IS_ERR(rstc))
> -		return PTR_ERR(rstc);
> +	if (!channel->phy_data->init_bus)
> +		return 0;
>   
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
> @@ -846,6 +836,18 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
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
> @@ -861,11 +863,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   	platform_set_drvdata(pdev, channel);
>   	channel->dev = dev;
>   
> -	if (channel->phy_data->init_bus) {
> -		ret = rcar_gen3_phy_usb2_init_bus(channel);
> -		if (ret)
> -			goto error;
> -	}

I don't see why you changed the logic of calling rcar_gen3_phy_usb2_init_bus(),
moving the reset setup and handling should be enough, no ?

Neil

> +	ret = rcar_gen3_phy_usb2_init_bus(channel);
> +	if (ret)
> +		goto error;
>   
>   	spin_lock_init(&channel->lock);
>   	for (i = 0; i < NUM_OF_PHYS; i++) {
> @@ -936,10 +936,38 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
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


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
