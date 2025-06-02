Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73A56C54FB3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jun 2025 09:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K88WmS46DvPxDiCt811R9M8gnapxRwOgXwoHOAx8Eck=; b=M/f1zeZXhRh1rHuIVHrY7d93kb
	KXdRnBXvdqVlaA0bFsnzb9EqaB0RoNkHfNQNE6FvRKBGZ7fLee4fNnuICRwNN/kYGDNjaqOxCWLiS
	HdTbEUZ7BLCiys1cT5Z5/aiDgU8ibLHOTJnMaZS2MVXUIf2R6CkZT/WEC+i9xl92fiFxBJzbB9dhm
	qqQlKF8JNrQEfLxZJZ3If44VoW6G1oZKStFmYSkzWaGdQJI+ox6GyEOMT8ldj16QzUwyJjGblbwrd
	FP6I0eJez21huN4HcIm3TfUlBhC87il2ufSB+x7l9GMvBBiLovc2A8dOnb5Jxk1aFk42KiY6101HF
	7S4xfoeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1Bt-000000073DT-0QJF;
	Mon, 02 Jun 2025 09:10:45 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1Bq-000000073D4-1uG8
	for linux-phy@lists.infradead.org;
	Mon, 02 Jun 2025 09:10:43 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so47929795e9.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Jun 2025 02:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748855441; x=1749460241; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fz5WoLh7+2BqWFgE4Sn4NQbSlq+fXNwl5Sh5y2BFmQ=;
        b=eJvwdJhD2hIixXnLIzpHov9YEg/cqvwFgvGyv8Vyvf9VT5PNRq+LOCkUZCQ02GFHBK
         SrUnksOCjPZsceVbsED2vfd9iSl2MJbzgnJ2QT6dMS1YozIufRRkrK0ecWqoy9svUrO1
         FWe4p0C+dkDXK8PXEI7hC6XztezAiHoBD/wUa7MTgjfbt30sJAqzCE0afdyUupX+dKNx
         6hUUv91djQ5P8JKKAbPIN+eHTv4eRtspd8sIPXwTl3agUqVOx7kLZeksyFhEOWn/EmbF
         w1cid6DDej/xVdOiDi9b3T8PMQkIXeY+fNkxmcbGfY1vlSkSMLMh7GYFnm7BOedK2RF0
         jaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748855441; x=1749460241;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3fz5WoLh7+2BqWFgE4Sn4NQbSlq+fXNwl5Sh5y2BFmQ=;
        b=fR/ZMOmlr/NsXuLU/RQy+TDRWMutl9emnXjiw/2W0Anu9LllhQ/yxZOWoZ5askG7kt
         4foclCeDTapysQvUwEkm6J0rLJ4d7+Bgw46YvD6G0jyaPY+zcuFukTskgF5Tax6TXThz
         iKTN0shyIwilVnuwl/QRwhsSxgdhtSEKOwvlcLux/HHEIZKZXABLGzsejR2MMmceqh3L
         tYlsk5l6TPei5lT6vuAFJJwWP9Btl+WwxO8GdmYWGvDe4ddmSk1g2bc4rKyuuYch6dDg
         bBp8NnPj+pm1zg8LnOmwfIM8ynr2ebnTowUSoZFGMsuyEiN2/U4jDX3SlE6Yq7NGIgem
         aQnA==
X-Forwarded-Encrypted: i=1; AJvYcCUctySHXHw4/IL/LFYMFWW/c5JkaTVJWS8JRU08arZ32hcEPZ2Fy11B5/DwZGRxMV0gtgnnhEeHulw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx70yPO+rkcHJHX2yjq6BVOUTuv38LfOg+urjlGEbXmzMuWyrzP
	P9SSriCDqnGe6I6oyhRiAGJx7EPl20aYQn2tV7NS15eTBH9rOMtjNTVGiR+9WBJgtjJyhgicQMK
	n5H9B
X-Gm-Gg: ASbGncsw2nNcZztXRLigFVjPqEVa97AdSr9SsR18GhjAsXwhRilTMu73BlHnbTOP7Bz
	LiDoRhmt6n0B0Nn3WeHjPHlW2ps/xA73spyZsuMTuBgtKRzB4B7JzfexK8T1AjwAdRsswONwL6Z
	GmdnLYm0cCz5QLB/vQss0d+8pRdM0cIXsF/QVzbgx1UBjY8DKMWiOyCAd5ltqIh9MBSRDgJdL0u
	i7Ge/kXld3NXGSlqP9YasEVYREwxrwsSYnGrw2ZFVDtP/UXVqnvqng2QYedsFQTzcDvzmYC5Y5t
	tqj1axayybUP+zGTcaCM4ynuP8+o9G3qS3engk+GggO1lRPsndcifav9CG4Xa3MUcANr8ldSwz6
	34AmxW6MyWkHN6w2BYmd4GEMEzw==
X-Google-Smtp-Source: AGHT+IFgXm1kiT1/u4BnrJPjc8ieuDz8ucVyVOvChbk/+t0uNwDZBVqk29ONf2+4k4cHgunUmSrG/Q==
X-Received: by 2002:a05:600c:1c8f:b0:450:cf00:20f5 with SMTP id 5b1f17b1804b1-4511ecc2a46mr72379895e9.9.1748855440595;
        Mon, 02 Jun 2025 02:10:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145? ([2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe73fbcsm14074099f8f.48.2025.06.02.02.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 02:10:40 -0700 (PDT)
Message-ID: <b5ac79e5-22d9-4929-9131-28f4396658d6@linaro.org>
Date: Mon, 2 Jun 2025 11:10:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: use per-PHY lockdep keys
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.or, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250529-phy-subinit-v1-1-b74cadf366b8@oss.qualcomm.com>
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
In-Reply-To: <20250529-phy-subinit-v1-1-b74cadf366b8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_021042_509495_A1CC571C 
X-CRM114-Status: GOOD (  27.02  )
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

On 28/05/2025 23:29, Dmitry Baryshkov wrote:
> If the PHY driver uses another PHY internally (e.g. in case of eUSB2,
> repeaters are represented as PHYs), then it would trigger the following
> lockdep splat because all PHYs use a single static lockdep key and thus
> lockdep can not identify whether there is a dependency or not and
> reports a false positive.
> 
> Make PHY subsystem use dynamic lockdep keys, assigning each driver a
> separate key. This way lockdep can correctly identify dependency graph
> between mutexes.

Nice solution !

> 
>   ============================================
>   WARNING: possible recursive locking detected
>   6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 Not tainted
>   --------------------------------------------
>   kworker/u51:0/78 is trying to acquire lock:
>   ffff0008116554f0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>   but task is already holding lock:
>   ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>   other info that might help us debug this:
>    Possible unsafe locking scenario:
> 
>          CPU0
>          ----
>     lock(&phy->mutex);
>     lock(&phy->mutex);
> 
>    *** DEADLOCK ***
> 
>    May be due to missing lock nesting notation
> 
>   4 locks held by kworker/u51:0/78:
>    #0: ffff000800010948 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work+0x18c/0x5ec
>    #1: ffff80008036bdb0 (deferred_probe_work){+.+.}-{0:0}, at: process_one_work+0x1b4/0x5ec
>    #2: ffff0008094ac8f8 (&dev->mutex){....}-{4:4}, at: __device_attach+0x38/0x188
>    #3: ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>   stack backtrace:
>   CPU: 0 UID: 0 PID: 78 Comm: kworker/u51:0 Not tainted 6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 PREEMPT
>   Hardware name: Qualcomm CRD, BIOS 6.0.240904.BOOT.MXF.2.4-00528.1-HAMOA-1 09/ 4/2024
>   Workqueue: events_unbound deferred_probe_work_func
>   Call trace:
>    show_stack+0x18/0x24 (C)
>    dump_stack_lvl+0x90/0xd0
>    dump_stack+0x18/0x24
>    print_deadlock_bug+0x258/0x348
>    __lock_acquire+0x10fc/0x1f84
>    lock_acquire+0x1c8/0x338
>    __mutex_lock+0xb8/0x59c
>    mutex_lock_nested+0x24/0x30
>    phy_init+0x4c/0x12c
>    snps_eusb2_hsphy_init+0x54/0x1a0
>    phy_init+0xe0/0x12c
>    dwc3_core_init+0x450/0x10b4
>    dwc3_core_probe+0xce4/0x15fc
>    dwc3_probe+0x64/0xb0
>    platform_probe+0x68/0xc4
>    really_probe+0xbc/0x298
>    __driver_probe_device+0x78/0x12c
>    driver_probe_device+0x3c/0x160
>    __device_attach_driver+0xb8/0x138
>    bus_for_each_drv+0x84/0xe0
>    __device_attach+0x9c/0x188
>    device_initial_probe+0x14/0x20
>    bus_probe_device+0xac/0xb0
>    deferred_probe_work_func+0x8c/0xc8
>    process_one_work+0x208/0x5ec
>    worker_thread+0x1c0/0x368
>    kthread+0x14c/0x20c
>    ret_from_fork+0x10/0x20
> 
> Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Note: I've used a Fixes tag pointing to the commit which actually
> started using nested PHYs. If you think that it's incorrect, I'm fine
> with dropping it.

In fact, other drivers were using sub-phys before:
./amlogic/phy-meson-axg-pcie.c
./amlogic/phy-meson-axg-mipi-dphy.c

(yeah I know, my bad !)

so it should be:
Fixes: e2463559ff1d ("phy: amlogic: Add Amlogic AXG PCIE PHY Driver")

> 
> Note2: I've tried using mutex_lock_nested, however that didn't play
> well. We can not store nest level in the struct phy (as it can be used
> by different drivers), so using mutex_lock_nested() would require us to
> change and wrap all PHY APIs which take a lock internally. Using dynamic
> lockdep keys looks like a more ellegant solution, especially granted
> that there is no extra impact if lockdep is disabled.
> ---
>   drivers/phy/phy-core.c  | 5 ++++-
>   include/linux/phy/phy.h | 2 ++
>   2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 8e2daea81666bf8a76d9c936c1a16d6318105c91..04a5a34e7a950ae94fae915673c25d476fc071c1 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -994,7 +994,8 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
>   	}
>   
>   	device_initialize(&phy->dev);
> -	mutex_init(&phy->mutex);
> +	lockdep_register_key(&phy->lockdep_key);
> +	mutex_init_with_key(&phy->mutex, &phy->lockdep_key);
>   
>   	phy->dev.class = &phy_class;
>   	phy->dev.parent = dev;
> @@ -1259,6 +1260,8 @@ static void phy_release(struct device *dev)
>   	dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
>   	debugfs_remove_recursive(phy->debugfs);
>   	regulator_put(phy->pwr);
> +	mutex_destroy(&phy->mutex);
> +	lockdep_unregister_key(&phy->lockdep_key);
>   	ida_free(&phy_ida, phy->id);
>   	kfree(phy);
>   }
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 437769e061b7030105c9ea4e9b0da9d32b6fa158..13add0c2c40721fe9ca3f0350d13c035cd25af45 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -154,6 +154,7 @@ struct phy_attrs {
>    * @id: id of the phy device
>    * @ops: function pointers for performing phy operations
>    * @mutex: mutex to protect phy_ops
> + * @lockdep_key: lockdep information for this mutex
>    * @init_count: used to protect when the PHY is used by multiple consumers
>    * @power_count: used to protect when the PHY is used by multiple consumers
>    * @attrs: used to specify PHY specific attributes
> @@ -165,6 +166,7 @@ struct phy {
>   	int			id;
>   	const struct phy_ops	*ops;
>   	struct mutex		mutex;
> +	struct lock_class_key	lockdep_key;
>   	int			init_count;
>   	int			power_count;
>   	struct phy_attrs	attrs;
> 
> ---
> base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
> change-id: 20250528-phy-subinit-42c988a12b6c
> 
> Best regards,

With the Fixes changed:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
