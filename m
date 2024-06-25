Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94AE7C2BBCA
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jun 2024 08:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHbSHtl2xj9r+7vHRzsF2ko/ywR+BlBfnR561jwBO9Y=; b=ZCtvzfMnrNy/dlRUF9fQFYsrqa
	awsuUwMTAYbyoDBnIWQ4aegq9gyG4COgAEeLCbsCtrb3BjZo5nNtJXv9SUVv463//cDLvc2pn7Exm
	o4DAbc0ky0XeVGCBKW3P/qstjCre1vSpbUEAz2xMtIO2tSriiZAY/MT74XmVsEVNLEhDr41CJLlFL
	3zzny1DnrRF00vgsT9zwtTZ+FSX6wdsmkXLmhpwoQa0O8IWgEI3/XyRr54pqQFD1c5FPKhu7h/Kws
	/dwOonVBhIWaOyLo1Sz531z/iKEFeU9SqC56rPAL/TzvjC42EeoyS6IaOg03xTthzABvWXA2g/soX
	+BmIoZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1PS-000000025Lf-3pFS;
	Tue, 25 Jun 2024 08:20:15 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1PP-000000025KS-3NHY
	for linux-phy@lists.infradead.org;
	Tue, 25 Jun 2024 08:20:13 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52cd6784aa4so4208457e87.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Jun 2024 01:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719303609; x=1719908409; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EWCiwD2F7GvS6ILidCuuM+NWtCPTY//mkBwwHB/PAwU=;
        b=G8Ocxt7pr4ZS/wvMFWvHN1A290DDODTPiLwBenW+bu3zvSdGQmw1Nz6lbON/ssbDS5
         dCTCYPx0CSYf7BP+MOUf6R8h+VEh87gnM7lwp+iP5GtdwxrgfeiJCpRoEVAKIy8VRXe1
         QDmGhAuWhIbeQXrONLUZp7ckmlOIRrsl+xKR73JLwJnX1rd7C0QWNoiDhd2BVo2FLcX2
         rf2IBFDELa56f/Jt9sjkIebfvYguvYXTcWfgcezSXZ8umlm0auMPgvaxhxK7lqTQS4d4
         qljEeVZnq/a5+EgcTAoV+mtshApgIBj284SPUxhBXhddZQpqJp4cqlQ/+oTJyLo6xptH
         cLtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719303609; x=1719908409;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EWCiwD2F7GvS6ILidCuuM+NWtCPTY//mkBwwHB/PAwU=;
        b=Vp9eDET0gjFKsqjD72PohJFwpmjycG1HTzq9/vnzCGBeRwYG1VNyyZwvm3JyhocmvH
         7GUesVfNtPxN8l3OCbRxv5d3KJwSC9OCCjBbQCszjCb4PTz8mT1HnqxcV/BpJh1n0UtA
         3lCooHJ2FeNc4ntNP8wzXCzt0Nagciibxm3h3r22305Z38mMLnE+qWlQ8nrNI5merCYs
         OvVheMJSvzutxhE+EPuqP3p7r50ZruTHaZEmq7Due1BTkuUHCEp1Tz85ut04WQKOHsZh
         7bBhzkZbrM8gr/xFkVHnrSdv7k+E22DB8beIfXrX9zANWlcFVztfU5XiO5+75+S1EQbm
         u+4A==
X-Forwarded-Encrypted: i=1; AJvYcCW8sDM/v5yteCvE2vhakfjESoKEzF9KrgF5YIIK8gYLRIbi64U59Ou65lq+8KiyImhd7doVpcSci03UkC/Z8ol0O0upi+2BbRulLhP2Kg==
X-Gm-Message-State: AOJu0YyaCU7JXdc7qn0qxJwdNipJTQN6fJDzNJfXgwmrPiovF250Pp+p
	f4Cx6dJn4hLzQFWtzKCTTUJzSZcB0PlXtzUACkFzgOIpQITk7Gbz1wEkLgSuc/U=
X-Google-Smtp-Source: AGHT+IGschyJIRrjSGV8MI/uUMMke9I7XA20tehM3rxh0wtEbI4ylJlNZVV28a0dcLcxUWKiEyqonQ==
X-Received: by 2002:ac2:4838:0:b0:52b:c27c:ea1f with SMTP id 2adb3069b0e04-52ce185faa8mr3407033e87.55.1719303606782;
        Tue, 25 Jun 2024 01:20:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:bd71:2ff1:592d:f52a? ([2a01:e0a:982:cbb0:bd71:2ff1:592d:f52a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424817b5ca0sm161908245e9.24.2024.06.25.01.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 01:20:06 -0700 (PDT)
Message-ID: <2e22734e-6577-445d-af5e-846dbcce076e@linaro.org>
Date: Tue, 25 Jun 2024 10:20:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: Lockdep broken on x1e80100
To: Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
 <ZnpoAVGJMG4Zu-Jw@hovoldconsulting.com> <ZnpzuhXqSLPkpkhn@linaro.org>
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
In-Reply-To: <ZnpzuhXqSLPkpkhn@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_012012_068629_6E439B29 
X-CRM114-Status: GOOD (  17.78  )
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

On 25/06/2024 09:37, Abel Vesa wrote:
> On 24-06-25 08:47:29, Johan Hovold wrote:
>> On Wed, Feb 08, 2023 at 09:01:53PM +0200, Abel Vesa wrote:
>>> This patchset adds support for the eUSB2 repeater found in pmic PM8550B,
>>> used along with SM8550. Since there is no dedicated generic framework
>>> for eUSB2 repeaters, the most appropriate subsystem to model it is the
>>> generic phy. This patchset also adds support for such repeater to the
>>> eUSB2 PHY found in SM8550. Basically, the eUSB2 PHY will have its own
>>> "phy" which is actually a repeater.
>>
>> The decision to model the repeater as a PHY unfortunately breaks lockdep
>> as you now have functions like phy_init() calling phy_init() for a
>> second PHY (the repeater, see splat below).
>>
> 
> This was reported by Bjorn off-list a couple of months ago. I did check
> it then and the order is perfectly fine. The solution here should be to
> use mutex_lock_nested in the PHY framework. This would allow supporting
> chain-linked PHYs. The possibility of moving out the repeater out of PHY
> was also discussed. Unfortunately, I didn't have the bandwidth to
> circle back and properly investigate and fix it.

Well technically it's a PHY, and moving out from PHY will basically duplicate
the PHY core code... so we should rather make sure we can call phy code from
phy callbacks safely.

Neil

> 
>> As long as the locks are always taken in the same order there should be
>> no risk for a deadlock, but can you please verify that and add the
>> missing lockdep annotation so that lockdep can be used on platforms like
>> x1e80100 (e.g. to prevent further locking issues from being introduced)?
>>
>> Johan
>>
>>
>> [    8.613248] ============================================
>> [    8.669073] WARNING: possible recursive locking detected
>> [    8.669074] 6.10.0-rc5 #122 Not tainted
>> [    8.669075] --------------------------------------------
>> [    8.669075] kworker/u50:0/77 is trying to acquire lock:
>> [    8.669076] ffff5cae8733ecf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
>> [    8.669087]
>>                 but task is already holding lock:
>> [    8.669088] ffff5cae8a056cf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
>> [    8.669092]
>>                 other info that might help us debug this:
>> [    8.669092]  Possible unsafe locking scenario:
>>
>> [    8.669093]        CPU0
>> [    8.669093]        ----
>> [    8.669094]   lock(&phy->mutex);
>> [    8.669095]   lock(&phy->mutex);
>> [    8.669097]
>>                  *** DEADLOCK ***
>>
>> [    8.669097]  May be due to missing lock nesting notation
>>
>> [    8.669097] 4 locks held by kworker/u50:0/77:
>> [    8.669099]  #0: ffff5cae80010948 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work+0x1a4/0x638
>> [    8.669108]  #1: ffff800080333de0 (deferred_probe_work){+.+.}-{0:0}, at: process_one_work+0x1cc/0x638
>> [    8.669112]  #2: ffff5cae854038f8 (&dev->mutex){....}-{3:3}, at: __device_attach+0x38/0x1d4
>> [    8.669117]  #3: ffff5cae8a056cf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
>> [    8.669121]
>>                 stack backtrace:
>> [    8.669122] CPU: 9 PID: 77 Comm: kworker/u50:0 Not tainted 6.10.0-rc5 #122
>> [    8.669124] Hardware name: Qualcomm CRD, BIOS 6.0.231221.BOOT.MXF.2.4-00348.1-HAMOA-1 12/21/2023
>> [    8.669125] Workqueue: events_unbound deferred_probe_work_func
>> [    8.669128] Call trace:
>> [    8.669129]  dump_backtrace+0x9c/0x11c
>> [    8.870384]  show_stack+0x18/0x24
>> [    8.870386]  dump_stack_lvl+0x90/0xd0
>> [    8.870391]  dump_stack+0x18/0x24
>> [    8.870393]  print_deadlock_bug+0x25c/0x348
>> [    8.870396]  __lock_acquire+0x10a4/0x2064
>> [    8.870399]  lock_acquire.part.0+0xc8/0x20c
>> [    8.870401]  lock_acquire+0x68/0x84
>> [    8.870403]  __mutex_lock+0x98/0x428
>> [    8.870407]  mutex_lock_nested+0x24/0x30
>> [    8.870410]  phy_init+0x4c/0x12c
>> [    8.870412]  qcom_snps_eusb2_hsphy_init+0x54/0x420 [phy_qcom_snps_eusb2]
>> [    8.870416]  phy_init+0xe0/0x12c
>> [    8.870418]  dwc3_core_init+0x484/0x1214
>> [    8.870421]  dwc3_probe+0xe54/0x171c
>> [    8.870424]  platform_probe+0x68/0xd8
>> [    8.870426]  really_probe+0xc0/0x388
>> [    8.870427]  __driver_probe_device+0x7c/0x160
>> [    8.870429]  driver_probe_device+0x40/0x114
>> [    8.870430]  __device_attach_driver+0xbc/0x158
>> [    8.870432]  bus_for_each_drv+0x84/0xe0
>> [    8.870433]  __device_attach+0xa8/0x1d4
>> [    8.870435]  device_initial_probe+0x14/0x20
>> [    8.870436]  bus_probe_device+0xb0/0xb4
>> [    8.870437]  deferred_probe_work_func+0xa0/0xf4
>> [    8.870439]  process_one_work+0x224/0x638
>> [    8.870441]  worker_thread+0x268/0x3a8
>> [    8.870442]  kthread+0x124/0x128
>> [    8.870443]  ret_from_fork+0x10/0x20


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
