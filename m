Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC785CF258C
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpVPMlzIdtVdRR1sesM7Bvbez7Iy5MwJXsnre9cV5aQ=; b=i5ukBPkBF5LwyB
	4fOo73q1QeBzt1OQr3IIDnIfuqGgL0lSrVRwxdDI3C6lB3ywPlSQ1nkjWyS5EkXWJ4ahLqL+sSqL4
	ri3m+o7mtvKrDJv7plMGpmWBQYgBpctdMqSBGIygZCBLNvpjaChF7crCT/0ZXpM9Ufitti253Lt1/
	MBPWXdogQXP4RK+30BmR6ywsIkJL+DN09dqStR24WA8Nb+ryekSxKb/XsJ18DBoYyPKqqXPP6GocS
	XJFpy/L/yPoeQ6PRKkH9AMsDROkd9bSaYitV1Ok9SLjw/Hnj9fu4jwv90kqqM+8zHgSl2xl3+Jhex
	SN6jOiDg4rFEar02hf2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdk4-00000002oA8-2eRr;
	Wed, 19 Nov 2025 08:40:44 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdk1-00000002o94-0Gwj
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:40:43 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso28529105e9.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541639; x=1764146439; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nBbixjBnBbPva8e3qQDLXuoT9sUiTXbil/L9/fukswI=;
        b=eO0KlOTNSB2bWjykraRgKi+0y0UP1nADJEhFYO0OUtdD3AyYAJlzxgIo27VQpSf0IU
         5J12c41cx/wYPDidK0IC2nrKpofiFo1n6J1CQ4zgqbx41XRxuP+Q2mXO3NKtT/ip9VtG
         ttva2t9lQ1mVpeA5UkXOc5Qs1I0m1LGdA4XRUhGD61D171rot4p5HNmp33FVKqq/yY+h
         A7EWDPXPAyKS72L4lflhr0qjStXDLEzTakgKleU4XNksQWNMad9Fs8uCt32mSdLirEsB
         pmLGGWUEbAZ/DYDUGF6f1nAqqcriVxjiWxJVC6RRJMqbpn/qv5UPVBdcZxkHI7kdd8Kf
         gpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541639; x=1764146439;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nBbixjBnBbPva8e3qQDLXuoT9sUiTXbil/L9/fukswI=;
        b=hag1OKU85iKFqJGcqo63Zr6PY0LMpwqzjgk/qd6MdfM0Me0odDun01KVlVxarEsD/j
         NtlTvHN3MkLj+3AxIxswBbAeCNu3ep3UbnNoJVTeu1qW7Pow/eLe8udfoA6cZiic8Uov
         45WyNupLkwKDZP6RKL/nXhoxsN9kh6RzkOA9oN0P5kURc/SQjpLONOyQLwIKBeBVknS3
         /SEIeDdApIJ4Eqvsc73j+ErMVdFojYYTYgv7BgFMICRdGk55YFf6RoMPB6RRXYmFPliX
         pE91svkIcOr/wY/2FIQkUPgDEMy1cBtU06ObvLStkqokf+ZTTpR4GZ0n+LXMk1A3G2H4
         GK2w==
X-Gm-Message-State: AOJu0Yx7rb4F7m311VBLIpHkCJ7cwNcclKvTalH3K7ZtbMK8si7dW5z8
	TCazgl8zm/u5D3727uDOvVac152rVWFH8fZu2IX025CcrBDlOJbg4AGYIaNnAx9NkpA=
X-Gm-Gg: ASbGnct3nGvdNK7zTqp5Py5Cx9rhon0bvP5YpJ2SniN6liEXRprEcotYNZ/HsCmERta
	RENeeZEF+CNrTqQjW3WUJKgOyTdrLommhxvfzqWD1t2edfe9tBxaRBiM6RmhtqH0qZ5C3ZP+L9o
	AB6rwyA4n1JN748O7ibFREl29fVJEKw79DqM8XGxYo26xVkYRpUPAycl48FzbgCvlsqMjeYoH75
	95uNAiYBEpK9TmNm84uTUUZidYA1mHe4lkH2fjvn0Ek8ECTqbPcpLJP15qS9EJQpMd2/iWk5VFi
	9+HDm9e4t82Qf+fqq78JJtwhtVDS6plrF8hHf+NW7JDQ+LDShCwoe2YpHHo65rH2SuNzODxPpMx
	NjgECl+dgYz/iGWwxgKwZ1a87o5ru2orGxgdmUu/vVUF96/5PLp8lKMVR+zu6MZHy920i6PFeNA
	UFAmHs3areHDmFMohyIli0NE1bUZhvTH6c/6gg/gaXQU9HYzaKAoANfZ0/w41YInI=
X-Google-Smtp-Source: AGHT+IGKiZiYBXjHj/z9lV7e7rsBSdkQWY5bFdVCTdvJUrbHHgREFhMcJGGNNV9FKXHCj3CnZDcH/g==
X-Received: by 2002:a05:600c:1986:b0:46e:35a0:3587 with SMTP id 5b1f17b1804b1-4778fea7037mr172201975e9.27.1763541639176;
        Wed, 19 Nov 2025 00:40:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b1012a92sm34648755e9.4.2025.11.19.00.40.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:40:38 -0800 (PST)
Message-ID: <50bdc65e-b052-4f81-b501-016b36e86574@linaro.org>
Date: Wed, 19 Nov 2025 09:40:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: freescale: Initialize priv->lock
To: Xiaolei Wang <xiaolei.wang@windriver.com>, Frank.li@nxp.com,
 vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250925013806.569658-1-xiaolei.wang@windriver.com>
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
In-Reply-To: <20250925013806.569658-1-xiaolei.wang@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004041_143260_F283E5E3 
X-CRM114-Status: GOOD (  17.30  )
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

On 9/25/25 03:38, Xiaolei Wang wrote:
> Initialize priv->lock to fix the following warning.
> 
> WARNING: CPU: 0 PID: 12 at kernel/locking/mutex.c:577 __mutex_lock+0x70c/0x8b8
>   Modules linked in:
>   Hardware name: Freescale i.MX8QM MEK (DT)
>   Call trace:
>    __mutex_lock+0x70c/0x8b8 (P)
>    mutex_lock_nested+0x24/0x30
>    imx_hsio_power_on+0x4c/0x764
>    phy_power_on+0x7c/0x12c
>    imx_pcie_host_init+0x1d0/0x4d4
>    dw_pcie_host_init+0x188/0x4b0
>    imx_pcie_probe+0x324/0x6f4
>    platform_probe+0x5c/0x98
>    really_probe+0xbc/0x29c
>    __driver_probe_device+0x78/0x12c
>    driver_probe_device+0xd8/0x160
>    __device_attach_driver+0xb8/0x138
>    bus_for_each_drv+0x84/0xe4
>    __device_attach_async_helper+0xb8/0xdc
>    async_run_entry_fn+0x34/0xe0
>    process_one_work+0x220/0x694
>    worker_thread+0x1c0/0x36c
>    kthread+0x14c/0x224
> 
> Fixes: 82c56b6dd24f ("phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY driver support")
> Signed-off-by: Xiaolei Wang <xiaolei.wang@windriver.com>
> ---
> v1: https://patchwork.kernel.org/project/imx/patch/20250923141611.1295395-1-xiaolei.wang@windriver.com/
> 
> v2: Use devm_mutex_init() instead of mutex_init()
> 
>   drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> index 5dca93cd325c..977d21d753a5 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> @@ -533,7 +533,7 @@ static struct phy *imx_hsio_xlate(struct device *dev,
>   
>   static int imx_hsio_probe(struct platform_device *pdev)
>   {
> -	int i;
> +	int i, ret;
>   	void __iomem *off;
>   	struct device *dev = &pdev->dev;
>   	struct device_node *np = dev->of_node;
> @@ -545,6 +545,9 @@ static int imx_hsio_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   	priv->dev = &pdev->dev;
>   	priv->drvdata = of_device_get_match_data(dev);
> +	ret = devm_mutex_init(dev, &priv->lock);
> +	if (ret)
> +		return ret;
>   
>   	/* Get HSIO configuration mode */
>   	if (of_property_read_string(np, "fsl,hsio-cfg", &priv->hsio_cfg))

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
