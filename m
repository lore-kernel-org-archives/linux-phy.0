Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5369CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLKpV4vuL9FesVqKXmMYmHbwngHWyOX14ZbtMYw1aG0=; b=ZybKEcjNkqwM0g
	EnFMn7513ICVvxBWBBKalzY8s3qeOTKF9S6Onl941bGusp3mjIsBmFUil49PYeKRVIibC/sDgmRLu
	fmOSRAxYydy+HO+eaOLiX4zqAqTTbgNgffvXg4UpBYAZfwwW5Av0xevbmog4JoI+Uhl6tk/TsBezk
	eJx7ATDc3RgzGShKr991Oapkbycf+yevjjfZu11txuY0msRUjjKPBgDWhRw/fau/sG+eVAJrhqSiD
	9fySdEgyW1qoo+E/5BCy9yw16p3/Q22OJtSlarpbbi81sDuxph4BZ+75QyJYw073mT7PbE+P7VPhB
	wc00lZ9XnLv5zOWCdAqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNToX-0000000BQU1-25Dx;
	Mon, 24 Nov 2025 10:28:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNToU-0000000BQTe-3Az4
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:28:56 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso2520230f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763980133; x=1764584933; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0uurpWoiXyeJlYETo98u+Dc5YI9PDFSW9c3Y9DoZXtk=;
        b=SwfhJ2/HDmycYS5GV4YIq5I12Kg3r8/771OmQV3sWSMjUQbfxcc5dtldfDiLoNw2vU
         a22349Cy9CE2BHroeJcwBIrNWKvLK5539kQMGrvq7a8hTaNxAWYEXftjHOWYYesuv6xQ
         gRvsNCAouVd/WKQPrS3suT81GD9QaZHWsrHRJDLqyundCjdvFCBfNBLCe2EeFJsCBxM3
         1Fbq+eqP1cr2JZEVipHRCo022qi/lhrgXzMF5o5MKi2+LrFDYromXVKDcE+7qKV5qnxv
         g+AJWnNMw/LAb+RV1WHFkGyrL5Am3hGRqaqhF00u5wfqqkWRqe3LaGVU974B8uC6ASE2
         ETjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980133; x=1764584933;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0uurpWoiXyeJlYETo98u+Dc5YI9PDFSW9c3Y9DoZXtk=;
        b=lsuLQoJKuuFwuScJLuseOgJSGyZ2hRLGv+GJHQbvdJgP5FfIsME6C45gFB68ExChWr
         MAGsTFaYCLZl3iZ0htiXyqd+2zmiip0/s1FgrM5iu/xM6nKKhZRbtHZeeEr7AbbeFEgJ
         lTMHPz3GF/fEeOWK49Nqbe6Pztr+Bj3kg7/r4NwkVdnS0cpCdBud0CRtnhu4AuwtB1E+
         9lRHCOghT64NjiiOtZnF+tkcE0xB/NeveChBJH9ZnKCMRFoGspjYIJTsAXd5FMfBx1Ts
         aM8aRf31gLEMEjLonEc1aA/Y2Ci2a5cv/1OxGrhmeZKIkuO7aYfCPw6UZFQaZzCRXidz
         B8rQ==
X-Gm-Message-State: AOJu0YzqUlfwYJG2ZjiQXAnqFUCvKZnVHj2za2a0EA0X75rMk9AzEry7
	USlclRJjTlw4DqMnaA+Y3UdQCEpvotMlqkHyLILdYQiAR/oPJ89855MHenrUpQOfMIbpBAv6Ba5
	X/yJg
X-Gm-Gg: ASbGncuW24PR/PZx5X6+EGq9N1eVriegEBNeNom+kUQ0wQGwgFE90V5Hq539j3+uGqG
	llOeSaBgv3SpXQJoHaOU5Y3EGQ9sC0PY+e1dgFgsNCGeQZVxereIPUelfCaeJmI/6QngV0NKtyU
	CJx6DyC5aNa6+Dw/YBtoV0+ATSSFH8s/+Fcu52Sa+7PVRoyg/fB8uwHyc4q4DKnt1Wxfxmyozel
	yNzfXVlv/dWIvFaOxjmVdH2HVO84ulYx4yLrWprDh/1T8waa07FXC9ab6qf4UvW76q1Gw6IXaR3
	K2gxIAVEXRIqZcXJTJIMPaAJzodX31nTOm7OXWoul2CQd0pxjI1p0qGT2nvDLj0KMFDcQFhBKOe
	a1qUbHTrwaC30l06Yh49LlJawbFN9qFKq5SflbjQvHzLuFpHJN2XgnaQZ/06KofXZKY/O/2v9T0
	mHi3EaOwM/1ICwGw6We+S/n+Hx0yrWGLYolD/V0GGUB3j01PujVtblfPcNcC2tX6AJzw+Zx2r9K
	A==
X-Google-Smtp-Source: AGHT+IGFIXuE51/Wx1m5dAKkQqQ4sR93uMfCOrshx6BO11xSvbdJAKgoJqc4OEQ2SfnOODBQr5swgw==
X-Received: by 2002:a5d:588c:0:b0:429:c774:dc08 with SMTP id ffacd0b85a97d-42cc1d22e1fmr11402266f8f.53.1763980132741;
        Mon, 24 Nov 2025 02:28:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:ab13:96f5:1459:8396? ([2a01:e0a:3d9:2080:ab13:96f5:1459:8396])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb919bsm27485153f8f.34.2025.11.24.02.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:28:52 -0800 (PST)
Message-ID: <62d5d788-bb44-4778-9388-62fde29490e3@linaro.org>
Date: Mon, 24 Nov 2025 11:28:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable()
 errors
To: Haotian Zhang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251124011919.1581-1-vulab@iscas.ac.cn>
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
In-Reply-To: <20251124011919.1581-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022854_853269_0CBB0EB6 
X-CRM114-Status: GOOD (  17.21  )
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

On 11/24/25 02:19, Haotian Zhang wrote:
> devm_pm_runtime_enable() can fail due to memory allocation. The current
> code ignores its return value after calling pm_runtime_set_active(),
> leaving the device in an inconsistent state if runtime PM initialization
> fails.
> 
> Check the return value of devm_pm_runtime_enable() and return on
> failure. Also move the declaration of 'ret' to the function scope
> to support this check.
> 
> Fixes: ee8e41b5044f ("phy: ti: phy-da8xx-usb: Add runtime PM support")
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
>   drivers/phy/ti/phy-da8xx-usb.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-da8xx-usb.c b/drivers/phy/ti/phy-da8xx-usb.c
> index 1d81a1e6ec6b..be9c77f8c288 100644
> --- a/drivers/phy/ti/phy-da8xx-usb.c
> +++ b/drivers/phy/ti/phy-da8xx-usb.c
> @@ -180,6 +180,7 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   	struct da8xx_usb_phy_platform_data *pdata = dev->platform_data;
>   	struct device_node	*node = dev->of_node;
>   	struct da8xx_usb_phy	*d_phy;
> +	int ret;
>   
>   	d_phy = devm_kzalloc(dev, sizeof(*d_phy), GFP_KERNEL);
>   	if (!d_phy)
> @@ -233,8 +234,6 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   			return PTR_ERR(d_phy->phy_provider);
>   		}
>   	} else {
> -		int ret;
> -
>   		ret = phy_create_lookup(d_phy->usb11_phy, "usb-phy",
>   					"ohci-da8xx");
>   		if (ret)
> @@ -249,7 +248,11 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
>   			  PHY_INIT_BITS, PHY_INIT_BITS);
>   
>   	pm_runtime_set_active(dev);
> -	devm_pm_runtime_enable(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable runtime PM\n");
> +		return ret;
> +	}

As the error would only be -ENOMEM, just return ret and drop the dev_err().

Neil

>   	/*
>   	 * Prevent runtime pm from being ON by default. Users can enable
>   	 * it using power/control in sysfs.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
