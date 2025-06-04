Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E5EAC5B549
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 15:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IpnpuJDCKOj34il7qqWqgh9w7JxcXjIBBwkyL6J2Mck=; b=cH5ISIBXxKTP4NI0SG8GRE0RAH
	S3vryApUr4v7zbcrhp5bmTFKSj6t02fokfs9lgnlApihusmGKjdy2vAMOasAAc0m2AFgqGAOXy7OH
	Y20mBJxPwg20T5tAv15bVtA0YW1JLZ8Cq6yzW86/Jnb9h41ncLNBoCMvPaq3VW7BgrRJwMYczALBv
	Qf06OF5+cpiZylhJIQCFB2sfN1eap+gVABMRaJlbj/s0ODdO7aGqCmnmfLA6sZV2fT70YlhDcKjor
	th+8b8A8z9CsTTrf+OnTErWIP3WFr1vmdqmqgGEp/JF4iHQBPsprky7gvn3Qlp4CPT5U88ad59YtG
	LIdGPd+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMq0G-0000000DgfL-38es;
	Wed, 04 Jun 2025 15:26:08 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMq0E-0000000Dge5-2cH9
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 15:26:07 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45024721cbdso56600785e9.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 08:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749050764; x=1749655564; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0lcqU7F4Smj0GWpb9honM7MK06fJTYKjPwZgoAkico=;
        b=OJhpf4wGBNXm3ICNVFkjXLLRcrPzrue0QZ8BO+pt8+Rs6XALbYoH0H48C/0PKIXtK8
         1neaFxdPVEuP1/IR7usF1tOLn8/p9miSJz7cIhgFFVRnTQcC37e5M6fzLzXFDpzuQsNn
         YkMgQfGiEfJUaPO0MnZn9SDWdz67qAwdrhA+U5+3IzFXoaZvN1vuIuHuxlBfvaLiIPCZ
         d5WRHKn4WaxJ8YQVck2qBXIhawJdqSDGcKg6PdQnAc3x7xxlNyy6bvZEKd99IwsANot6
         9+5J0+P5a+sUPQuH49YSuwX8mYQ/VjXACZK45O5Ziev3raF7hzJNX5bt63SiUUu5LBLR
         EcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749050764; x=1749655564;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B0lcqU7F4Smj0GWpb9honM7MK06fJTYKjPwZgoAkico=;
        b=igtUUq1f2Rin8cJFqCXF4QMSnddEu2foeeApM1pAvvJs18HQS3Um30nMg5tMk85r2z
         P+q4kVIY1mr3ZPqTJH8tv5vaBD50HODjWPnqIvKPU3RKPGTWQCiP2/Z74k0xJ135HgIL
         fEMJdrKxd5cbolwB62MDC1Rupo3/h/FgsyXJU99Tj0nVPaTZ/PM4/Oh8S45sGlqdZ7kS
         GI2vWNfnByZVro8R6xm9XQS26mHHI6aH+aehyu0G443/hXCZ9n7ODL6FXMVKsWajob7M
         kc76rCW1mw+pS83+wYa9eYt/CdLAveSw8tWdQmp+pFn4x1X66S5Pd6meiBq38QldT0Jr
         /ShA==
X-Forwarded-Encrypted: i=1; AJvYcCVae+Og6V9zW90K/omDh1vzEQZ+yvU5sC8km4Q3/u7FuDvd+dBDtRDvEwSfGCBcfUyoZQjSGJ/cmu4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAk6hM6qw8NgnwdTkkb3v9yDx01/RaPwB/dwEbknNlVAgzS98u
	Eb4H/mV4oo7ScjY/Yc0p2CVv+i4yeGjIQnNaXZGPoXVNY/VXwzFGoFWo4lMWOjgpXCE=
X-Gm-Gg: ASbGnctYoRG3/OR6M7mVAr9nyy2frvLn4Zz8zlbOGQMH1+L9Z0p4+rsHfS7AEiiNNew
	T39vhwh6uv/AtSVRlHd9+di/hKZB7UePwUERYnGU2HWRVpn7mRkYIZ7bLHCDdWNk/75nfZYvYyJ
	WU+nfHJOo84b1ZGI62xYHa3gua60L1U03WQB/NcfD+ONruPMQOEid8xLfr4wannA3lvxjbLyif7
	29o4EHekas8Czl0oJgNIp/ZlA+3xmENSG946DG0LRVlnM3VPC29vitA28GVKb9frTPq/ts/ovln
	GdCGgmX/xh0sPBRtZclSxlkQH1FdQnjKCYNhy6ou6lZsGV1+GReZiNnTkBblbzruUrGl2j5PkdV
	zXl5Q9UFLlel8LveBhtsCmWnFtw==
X-Google-Smtp-Source: AGHT+IHSHAjhdXAKFOooiLdh3xOijEcwpDuXOWN1lz1ky8KfmORabIgw+h1ADRjlvhvZfDXR1mvoYw==
X-Received: by 2002:a7b:c41a:0:b0:43c:ed61:2c26 with SMTP id 5b1f17b1804b1-451f6502b42mr12017605e9.17.1749050764240;
        Wed, 04 Jun 2025 08:26:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8? ([2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f00a0421sm22296664f8f.97.2025.06.04.08.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 08:26:03 -0700 (PDT)
Message-ID: <35789b5b-76a3-472f-adef-cc47f6d23dd4@linaro.org>
Date: Wed, 4 Jun 2025 17:26:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: use per-PHY lockdep keys
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
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
In-Reply-To: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_082606_669580_086D9703 
X-CRM114-Status: GOOD (  12.27  )
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

On 30/05/2025 18:08, Dmitry Baryshkov wrote:
> If the PHY driver uses another PHY internally (e.g. in case of eUSB2,
> repeaters are represented as PHYs), then it would trigger the following
> lockdep splat because all PHYs use a single static lockdep key and thus
> lockdep can not identify whether there is a dependency or not and
> reports a false positive.
> 
> Make PHY subsystem use dynamic lockdep keys, assigning each driver a
> separate key. This way lockdep can correctly identify dependency graph
> between mutexes.
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

Commented the wrong version:
In fact, other drivers were using sub-phys before:
./amlogic/phy-meson-axg-pcie.c
./amlogic/phy-meson-axg-mipi-dphy.c

(yeah I know, my bad !)

so it should be:
Fixes: e2463559ff1d ("phy: amlogic: Add Amlogic AXG PCIE PHY Driver")

With the Fixes changed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
