Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1808C5AE59
	for <linux-phy@archiver.kernel.org>; Thu,  5 Jun 2025 08:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnv6anrbpxlONXhhIlbmJEkaa5HAX2CCiXK/g52rziM=; b=TQw+6Ld7UOOWm1
	WZaj9AZg26fOQXqh6u9H2dnca080oFuiY7uEhJWd3gzCMJSlAyKVGJ3dCe8k4DI6krpIijDP8LahP
	gJlYJkDSD1Fk9CThaWEugb+vFeSUwlyuWEFDqobsX6W77Wd+WqyZvbjgTTr61a1r5ic0CqoIpu0p4
	2+w5Yfttp1wsNHEOX2KCoNk1Js4b6VlVBU75VxW0UJjvCBEtWzAAHzYcz5K1FAEQMwzLkMv69hvuK
	hKL2xTqd0g0y0C113JKXgj79/kIyhCWBpUzYWFPhdZoX85vXmx8asHeZjJusge2sR53zLKgxaHve6
	qvCPoZ8UPzrffCC12eXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5ZN-0000000F1ed-1Kmj;
	Thu, 05 Jun 2025 08:03:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5ZJ-0000000F1eC-3A6P
	for linux-phy@lists.infradead.org;
	Thu, 05 Jun 2025 08:03:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 47E8B5C4AA1;
	Thu,  5 Jun 2025 08:01:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5BEAC4CEE7;
	Thu,  5 Jun 2025 08:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749110600;
	bh=vIck/aI7o/j2TdP1WtctZ4n5LTFEe86IRscOn0Amryk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BoJZTW4T2E5gIxRD0FE9cTQGT9qwAExYR+Nruj6oEtUQeDxwaleDwG8jSoE3sjtPe
	 pS2JNOUGEs2uZ498STCliar9BO/5ElrVUmjzzDxN6/oWIS/AiWCpc+LTFpYJQXk/Hk
	 tDEM1Vz2F83zX7jdkN9doP4zrOQ+N4WaVCA8x4sv5/zIm97gqISfxBKqFh7oFfZ5Bj
	 cqIAnxPS4W/cIZfUwApopUVdkaPKu+fBl+06POSwlDzyAETbV9MtWZyGxM2aHoDkrf
	 eTW9rm3tNnqJwsl27UOMUvb5l4Bf6zmii/rIYZb3PqnHwQfwhR0Ft1Xt6OWUk9qVmc
	 RPuinMl0UbKfg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uN5ZF-000000005bD-3s24;
	Thu, 05 Jun 2025 10:03:17 +0200
Date: Thu, 5 Jun 2025 10:03:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: use per-PHY lockdep keys
Message-ID: <aEFPRWErB4QkbMkt@hovoldconsulting.com>
References: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_010321_885342_9F56FE5D 
X-CRM114-Status: GOOD (  20.79  )
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

On Fri, May 30, 2025 at 07:08:28PM +0300, Dmitry Baryshkov wrote:
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
>  ============================================
>  WARNING: possible recursive locking detected
>  6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 Not tainted
>  --------------------------------------------
>  kworker/u51:0/78 is trying to acquire lock:
>  ffff0008116554f0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>  but task is already holding lock:
>  ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>  other info that might help us debug this:
>   Possible unsafe locking scenario:
> 
>         CPU0
>         ----
>    lock(&phy->mutex);
>    lock(&phy->mutex);
> 
>   *** DEADLOCK ***
> 
>   May be due to missing lock nesting notation
> 
>  4 locks held by kworker/u51:0/78:
>   #0: ffff000800010948 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work+0x18c/0x5ec
>   #1: ffff80008036bdb0 (deferred_probe_work){+.+.}-{0:0}, at: process_one_work+0x1b4/0x5ec
>   #2: ffff0008094ac8f8 (&dev->mutex){....}-{4:4}, at: __device_attach+0x38/0x188
>   #3: ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c
> 
>  stack backtrace:
>  CPU: 0 UID: 0 PID: 78 Comm: kworker/u51:0 Not tainted 6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 PREEMPT
>  Hardware name: Qualcomm CRD, BIOS 6.0.240904.BOOT.MXF.2.4-00528.1-HAMOA-1 09/ 4/2024
>  Workqueue: events_unbound deferred_probe_work_func
>  Call trace:
>   show_stack+0x18/0x24 (C)
>   dump_stack_lvl+0x90/0xd0
>   dump_stack+0x18/0x24
>   print_deadlock_bug+0x258/0x348
>   __lock_acquire+0x10fc/0x1f84
>   lock_acquire+0x1c8/0x338
>   __mutex_lock+0xb8/0x59c
>   mutex_lock_nested+0x24/0x30
>   phy_init+0x4c/0x12c
>   snps_eusb2_hsphy_init+0x54/0x1a0
>   phy_init+0xe0/0x12c
>   dwc3_core_init+0x450/0x10b4
>   dwc3_core_probe+0xce4/0x15fc
>   dwc3_probe+0x64/0xb0

>   platform_probe+0x68/0xc4
>   really_probe+0xbc/0x298
>   __driver_probe_device+0x78/0x12c
>   driver_probe_device+0x3c/0x160
>   __device_attach_driver+0xb8/0x138
>   bus_for_each_drv+0x84/0xe0
>   __device_attach+0x9c/0x188
>   device_initial_probe+0x14/0x20
>   bus_probe_device+0xac/0xb0
>   deferred_probe_work_func+0x8c/0xc8
>   process_one_work+0x208/0x5ec
>   worker_thread+0x1c0/0x368
>   kthread+0x14c/0x20c
>   ret_from_fork+0x10/0x20

Nit: This last bit of the stack trace adds little value and can be
dropped.
 
> Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Note: I've used a Fixes tag pointing to the commit which actually
> started using nested PHYs. If you think that it's incorrect, I'm fine
> with dropping it.

I think it's warranted. And if there were further users before this one
as Neil suggested you could just list them all as each has been
introducing a new splat.

> Note2: I've tried using mutex_lock_nested, however that didn't play
> well. We can not store nest level in the struct phy (as it can be used
> by different drivers), so using mutex_lock_nested() would require us to
> change and wrap all PHY APIs which take a lock internally. Using dynamic
> lockdep keys looks like a more ellegant solution, especially granted
> that there is no extra impact if lockdep is disabled.

Thanks for fixing this. I've been using a local hack based on
mutex_lock_nested() too but dynamic keys looks like the right way to go.

Perhaps you can add:

Reported-by: Johan Hovold <johan+linaro@kernel.org>
Link: https://lore.kernel.org/lkml/ZnpoAVGJMG4Zu-Jw@hovoldconsulting.com/

Works fine on the T14s:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
