Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EDACCD19A
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 09:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74mEyVAUjTwT4PT6dqGDbj88rMwgkkv11q4qO+bKi6g=; b=OdqCU6h68Tt70S
	f41fkkrs2W17WK4edq5v4J4eJtiVFdd/qOwdF9UpZaJi4rNBL3yTkFUwWx3M/rnRcAGyJyq74HNmY
	wzI1ZlrmdoHd2uN3SIU/Qnxgh3S/X80t8sr5aPAidMsmfW3Z2tgrDzj4BNK6Jz8POWXvuoKUFB9Qu
	ZYIcb8kzNUlZUfm6fhIRUe9CTSmTw3WvC9MiB/sffsU3XOn7fHOL34q3NykNcz4I4DeFYjuwa/tiu
	L+yUrVw2+lp9gdXNepYOsM4nANrhXaWFysPiFEHjA02T3csBeyY3M4HsXh0E3MOW90fHGobqLTUYM
	Pv8Uz4VQrYbOb6PMSujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHiI-000000008MV-0mZ5;
	Tue, 18 Nov 2025 09:09:26 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHiG-000000008Lp-0dnx
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 09:09:25 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so53811735e9.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 01:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763456962; x=1764061762; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6oIfItUat9PClJ/7841Lk0/EAWLm0Y5CqmDrv2Vv/oI=;
        b=r3u/XrqnT0DTzK/APA39iPpcqdQIWkrtkoDlnW1FFncoGY1CM2uOy2SO8u72hPW+VH
         FN7dKT1Za2xQj+Qo40KCD5ac5E0tUtij2FNvqbNRnUn4uqWTHetMMRMbGhWnJE4SPz5U
         phTWcs9o73TV/8fEeMqu2erYRJ83+AjlDUfMcC2G35l5TjFvEAuQrhET793bFBxK4xDV
         C7Ridd3GPXe64XKReuzFiqBHvXtcMSmazdtnpQhEq4GKUmt0IW7muy/V2Ma1soeGBAVa
         dewegKN2oVYLDV8acTcDDVL/FwB7ffdIshmkI2vDiQbuv0RcCj+B4fZw8dEAwqbKOplC
         1Y3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763456962; x=1764061762;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6oIfItUat9PClJ/7841Lk0/EAWLm0Y5CqmDrv2Vv/oI=;
        b=c/Vw0AnWe0MSkJwB+FRZVDrKhV4xp38DedVO+EydPlCr/f2Lk5CwGR/UdCeac5cr7O
         j0TnM/Wfk+VXMy0fG2ZJ+GP0uVoZIsbzf5JaiLlERGUbnccNT8xXcYcWqJpk4PfNhciM
         mJp6zK4NBag7PFyNWAt3le9bxyfdVRCafoWscRkJVOeMlsVo/pZiXAtOdtmr7xNGU9n8
         f3se9q80npK5C+PxMmlTKCMCjudghcnUtTyz8hkdgiiu4B4zswbyI0G45Hq4filwmUzl
         Fqzykg+FqYlCJxW9FpSwrNsDnR5YgKgbQFVcJHusxoecJBghDWFfQIyCNDeMcZWXnGti
         f/Mw==
X-Gm-Message-State: AOJu0YxElNVmyqpBhZteXnYijzS0DfKb2xZgKpme3NMXA0c9Jf4CmOAQ
	K4v9GABxV9LJA+8cGiIL2ppuDu0t3rclg2XFUYsIJhh/RcFGFOhts0y5EWhJqITf7m8=
X-Gm-Gg: ASbGncuhNJYbBsQBER5GHUVC2Z6Bn3YgW1mMoCTvdI6ODg5XNMFV5sfoqD8jEy0W1og
	ZTnfN7YnKMW+SzoGSob7G0mxSztHnhjpxvL5KyVKyiLQCTia96WmdBGazuEINVEub9FrVMqlGJo
	5CClyJvo4ndQMX6pYSaK73d49FH0yoy5WbhHoOZHYtForMDxXWZSPX1RqiC8PCKhWNSuef9WSoE
	b1/TO3jvohS7EXuCm6uV8snJ0hzqO/oc4wfcoVR+t6sarn5cgLFBWluOxyLVx6pKeimP3NxPQpl
	7ZfVEnnZebroKkEXDnv1FKXxwNJ880SIARBoniKobN6vWwb9D7hEeC+ynxJGmmqFX4b+5HRk3zL
	BwBA/j9LdbrFGYS2Au3e11vSLwdLtHFnDyG2Zoj5T0ozCxoV5noHrdRqBknST82LTTWd190g38o
	SyHePte3iGYmGtIU7x30i1XHTT3oN0hF7po7oo+EQbhyRq4u+QiZqK6j+Ym/Z45Uc=
X-Google-Smtp-Source: AGHT+IHc8ApN7ctjZzzYbFA8HW7vBukVzWPj5prvx9bmeaSfL0r9Voscu8eVE4UTNA+dfltTKtHYaw==
X-Received: by 2002:a05:600c:354b:b0:475:da13:257c with SMTP id 5b1f17b1804b1-4778fea1239mr167868515e9.27.1763456961571;
        Tue, 18 Nov 2025 01:09:21 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9741cbfsm13033615e9.6.2025.11.18.01.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:09:21 -0800 (PST)
Message-ID: <8d34bc6b-77e1-487e-af2f-fba99ab867ac@linaro.org>
Date: Tue, 18 Nov 2025 10:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: HiSilicon: Fix error handling in
 hi3670_pcie_get_resources_from_pcie
To: Ma Ke <make24@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
 andriy.shevchenko@linux.intel.com, mchehab+huawei@kernel.org, mani@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, stable@vger.kernel.org
References: <20251117010227.17238-1-make24@iscas.ac.cn>
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
In-Reply-To: <20251117010227.17238-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_010924_224773_B233CC35 
X-CRM114-Status: GOOD (  21.48  )
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

On 11/17/25 02:02, Ma Ke wrote:
> In hi3670_pcie_get_resources_from_pcie(), the reference obtained via
> bus_find_device_by_of_node() is never released with put_device(). Each
> call to this function increments the reference count of the PCIe
> device without decrementing it, preventing proper device cleanup. And
> the device node obtained via of_get_child_by_name() is never released
> with of_node_put(). This could cause a leak of the node reference.
> 
> Add proper resource cleanup using goto labels to ensure all acquired
> references are released before function return, regardless of the exit
> path.
> 
> Found by code review.
> 
> Cc: stable@vger.kernel.org
> Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
> Changes in v2:
> - modified the patch for the warning that variable 'ret' is set but not used.
> ---
>   drivers/phy/hisilicon/phy-hi3670-pcie.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> index dbc7dcce682b..9960c9da9b4a 100644
> --- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
> +++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> @@ -560,7 +560,8 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
>   {
>   	struct device_node *pcie_port;
>   	struct device *dev = phy->dev;
> -	struct device *pcie_dev;
> +	struct device *pcie_dev = NULL;
> +	int ret = 0;
>   
>   	pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
>   	if (!pcie_port) {
> @@ -572,7 +573,8 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
>   	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
>   	if (!pcie_dev) {
>   		dev_err(dev, "Didn't find pcie device\n");
> -		return -ENODEV;
> +		ret = -ENODEV;
> +		goto out_put_node;
>   	}
>   
>   	/*
> @@ -586,10 +588,15 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
>   	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
>   	if (!phy->apb) {
>   		dev_err(dev, "Failed to get APB regmap\n");
> -		return -ENODEV;
> +		ret = -ENODEV;
> +		goto out_put_device;
>   	}
>   
> -	return 0;
> +out_put_device:
> +	put_device(pcie_dev);
> +out_put_node:
> +	of_node_put(pcie_port);
> +	return ret;
>   }
>   
>   static int kirin_pcie_clk_ctrl(struct hi3670_pcie_phy *phy, bool enable)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
