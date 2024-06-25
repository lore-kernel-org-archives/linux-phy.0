Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DE3C2BBCA
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jun 2024 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY8QQSyGSewQX5O9xZe+4oeCNhjJF50wOPtZkyAUcL0=; b=SercQXPkNyUWsN
	OUMZLutbgEEEJl7jkjLwifwaFbrckiXSPnJl3rbrCqsk4bih0h5q1IxTw0/iDAKJSY/mH5y21NB1J
	Ythyrt4LeOwxIet9Zou5AiA2ArhqoFluDCYXahDbx1wUp6c/L5cVx13RLF4QGLNz2JVJnMFFtH07P
	ojpO4+aDX0ehckkiS729S1yqhtLQ0pBfpLJ9nNnARgxqczfbcQfybTMrYT+qRJc37GGD1pLVpEtmC
	E76GV5vtUMZ+D5HtEOvd/oF6bq42cXupjU3ZPXeaEGySyR3CBKAPAzy1UZTUEuAHP3m++8IiSDmcV
	zdeL902oflTr+24t9UJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM0kD-00000001zNQ-2uQP;
	Tue, 25 Jun 2024 07:37:37 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM0kA-00000001zMf-38xH
	for linux-phy@lists.infradead.org;
	Tue, 25 Jun 2024 07:37:36 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-421eab59723so39075425e9.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Jun 2024 00:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719301053; x=1719905853; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IA00d3kXembGJbTRrQC3GHeXDT+bmLkyWcsrNiRNxk4=;
        b=bKvmruH4APtJ+wsgd8wIxSG+CRM+J2lBo9dxOjtMSxCwUbwsLX5Pll/SYRG7orXe8d
         1zoAR2TYB0Pdenh05IlwtczvohXUjlBIpqaFISJ686BaiCCiJspYLMMTrmwEK9bV1Ce6
         jzfgTWAZjrPKik6Z2Uv5PIOvm7a8pTl75pdDvyhtvNoDuFx2sHuHwqg8SoNwAvxyIov0
         9Zb0zOGIPuq3Qgna1Sj4vSZe7ftNn7QIJiIMHVVZOEw/hCAB2h8UQYYvoo3ViNWKnbaI
         hHwbTQTUjdQr6wBYD2sSdyzBE9Rl0VGtOyA8GcJiXJvJHFEDqs0TSN+XPE8IiNty1hS+
         sSVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719301053; x=1719905853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IA00d3kXembGJbTRrQC3GHeXDT+bmLkyWcsrNiRNxk4=;
        b=ANKotGej0NzZ8hcEor44GfsKV7gKl2m50KDhFlbjv6l+39YMEi8M7gdemcOIUXlJtd
         lUALDm4VTieNcLFjAVn7w/Bf/f8/Y0U3U5Sbm01hofNr+LQeFVIKs410NG8mXdh4LR5F
         hujBA2M/ejc9xBkYSC0Z4R50kT82XSjlq5nsEhFcYwPQpPxuYYsLsmofgz2PtO+qeexe
         1pYctk5tMjAMKP6Dw1u2kP8d4dd7HkEZd4L+YOwDuSVcMA4p2WH5/9wRHzdwEG/4iyPF
         DjuTBoAPSpHExw/X6Zz+PFFJbqy+xGbKuwjXaDTGyVLVrxFI1fYebEmMMLL1hKqEtk/4
         x17w==
X-Forwarded-Encrypted: i=1; AJvYcCW5Ye7IsScLxd8MvT4HZyKp4MB0gscAWbhOp9GXtkiXeSOCpX8C78k8rwjyLygvdEHHElLN09V2ocTC9dcFsEKRKwp0qE5SZK7Tziwrtg==
X-Gm-Message-State: AOJu0YyGS+fk5NBXOWzMDzpNE8eW8axJPsaLVr1FQnW6SET/SSrytdcC
	x8fqc0qd13vUGAFfj8u5a+PT8OIUUvriKFwL4INfePlu5yRa9a8pFUl32IfBk2c=
X-Google-Smtp-Source: AGHT+IF4VdM5dOrZ8HlsLIbSrR8JwJNLzbY53ONjUMXT1TZ83NWHj7Bn0RpZNW4PB6R45XccK7Ja7A==
X-Received: by 2002:a05:600c:3011:b0:421:72f3:33b5 with SMTP id 5b1f17b1804b1-42489e66ab0mr48271005e9.35.1719301052973;
        Tue, 25 Jun 2024 00:37:32 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424817a8ec8sm161372335e9.11.2024.06.25.00.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 00:37:32 -0700 (PDT)
Date: Tue, 25 Jun 2024 10:37:30 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: Lockdep broken on x1e80100 (was: Re: [PATCH v5 0/7] sm8550: Add
 support for eUSB2 repeater)
Message-ID: <ZnpzuhXqSLPkpkhn@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
 <ZnpoAVGJMG4Zu-Jw@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZnpoAVGJMG4Zu-Jw@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_003735_051924_6F94F64B 
X-CRM114-Status: GOOD (  21.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24-06-25 08:47:29, Johan Hovold wrote:
> On Wed, Feb 08, 2023 at 09:01:53PM +0200, Abel Vesa wrote:
> > This patchset adds support for the eUSB2 repeater found in pmic PM8550B,
> > used along with SM8550. Since there is no dedicated generic framework
> > for eUSB2 repeaters, the most appropriate subsystem to model it is the
> > generic phy. This patchset also adds support for such repeater to the
> > eUSB2 PHY found in SM8550. Basically, the eUSB2 PHY will have its own
> > "phy" which is actually a repeater.
> 
> The decision to model the repeater as a PHY unfortunately breaks lockdep
> as you now have functions like phy_init() calling phy_init() for a
> second PHY (the repeater, see splat below).
> 

This was reported by Bjorn off-list a couple of months ago. I did check
it then and the order is perfectly fine. The solution here should be to
use mutex_lock_nested in the PHY framework. This would allow supporting
chain-linked PHYs. The possibility of moving out the repeater out of PHY
was also discussed. Unfortunately, I didn't have the bandwidth to
circle back and properly investigate and fix it.

> As long as the locks are always taken in the same order there should be
> no risk for a deadlock, but can you please verify that and add the
> missing lockdep annotation so that lockdep can be used on platforms like
> x1e80100 (e.g. to prevent further locking issues from being introduced)?
> 
> Johan
> 
> 
> [    8.613248] ============================================
> [    8.669073] WARNING: possible recursive locking detected
> [    8.669074] 6.10.0-rc5 #122 Not tainted
> [    8.669075] --------------------------------------------
> [    8.669075] kworker/u50:0/77 is trying to acquire lock:
> [    8.669076] ffff5cae8733ecf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
> [    8.669087]
>                but task is already holding lock:
> [    8.669088] ffff5cae8a056cf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
> [    8.669092]
>                other info that might help us debug this:
> [    8.669092]  Possible unsafe locking scenario:
> 
> [    8.669093]        CPU0
> [    8.669093]        ----
> [    8.669094]   lock(&phy->mutex);
> [    8.669095]   lock(&phy->mutex);
> [    8.669097]
>                 *** DEADLOCK ***
> 
> [    8.669097]  May be due to missing lock nesting notation
> 
> [    8.669097] 4 locks held by kworker/u50:0/77:
> [    8.669099]  #0: ffff5cae80010948 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work+0x1a4/0x638
> [    8.669108]  #1: ffff800080333de0 (deferred_probe_work){+.+.}-{0:0}, at: process_one_work+0x1cc/0x638
> [    8.669112]  #2: ffff5cae854038f8 (&dev->mutex){....}-{3:3}, at: __device_attach+0x38/0x1d4
> [    8.669117]  #3: ffff5cae8a056cf8 (&phy->mutex){+.+.}-{3:3}, at: phy_init+0x4c/0x12c
> [    8.669121]
>                stack backtrace:
> [    8.669122] CPU: 9 PID: 77 Comm: kworker/u50:0 Not tainted 6.10.0-rc5 #122
> [    8.669124] Hardware name: Qualcomm CRD, BIOS 6.0.231221.BOOT.MXF.2.4-00348.1-HAMOA-1 12/21/2023
> [    8.669125] Workqueue: events_unbound deferred_probe_work_func
> [    8.669128] Call trace:
> [    8.669129]  dump_backtrace+0x9c/0x11c
> [    8.870384]  show_stack+0x18/0x24
> [    8.870386]  dump_stack_lvl+0x90/0xd0
> [    8.870391]  dump_stack+0x18/0x24
> [    8.870393]  print_deadlock_bug+0x25c/0x348
> [    8.870396]  __lock_acquire+0x10a4/0x2064
> [    8.870399]  lock_acquire.part.0+0xc8/0x20c
> [    8.870401]  lock_acquire+0x68/0x84
> [    8.870403]  __mutex_lock+0x98/0x428
> [    8.870407]  mutex_lock_nested+0x24/0x30
> [    8.870410]  phy_init+0x4c/0x12c
> [    8.870412]  qcom_snps_eusb2_hsphy_init+0x54/0x420 [phy_qcom_snps_eusb2]
> [    8.870416]  phy_init+0xe0/0x12c
> [    8.870418]  dwc3_core_init+0x484/0x1214
> [    8.870421]  dwc3_probe+0xe54/0x171c
> [    8.870424]  platform_probe+0x68/0xd8
> [    8.870426]  really_probe+0xc0/0x388
> [    8.870427]  __driver_probe_device+0x7c/0x160
> [    8.870429]  driver_probe_device+0x40/0x114
> [    8.870430]  __device_attach_driver+0xbc/0x158
> [    8.870432]  bus_for_each_drv+0x84/0xe0
> [    8.870433]  __device_attach+0xa8/0x1d4
> [    8.870435]  device_initial_probe+0x14/0x20
> [    8.870436]  bus_probe_device+0xb0/0xb4
> [    8.870437]  deferred_probe_work_func+0xa0/0xf4
> [    8.870439]  process_one_work+0x224/0x638
> [    8.870441]  worker_thread+0x268/0x3a8
> [    8.870442]  kthread+0x124/0x128
> [    8.870443]  ret_from_fork+0x10/0x20

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
