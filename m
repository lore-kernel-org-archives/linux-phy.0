Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FED0CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 15:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJY91uFbyipX4UFhrWTVQ6DqC9g3J44R7nzvaT1Lovc=; b=h4pRVzb6lZHcja
	7Wbtm32bSW8tvr8o8isHiYQaLcz/6yILCYuoEi4YWbpa5aTjTNvCohqYsNEEeWUj2m0CCxLKPjyTS
	rFd9c/QmFPjnmbHL1W1TOerlq2LpobQXQDzoZRItd3/ihnnLqOlOqgIJYkWunAUsVqyihCiZOZ7JV
	x7RBbqq38o92NJiZ0TS7oLG9KFjDfE0ofyYYguNZnc50QbKj4jOhvxVpWT82anUAaVbOTjtRzxuGx
	ka3ztI8o8zIl4OYcXTndwM85W4C8lTyhsOWPKB18panG/NbLdjFuYq95yVg3wlUEUnlPp60SeUYtx
	+9wDRZJOXUC46GZJ2G1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNu2u-00000008e8L-2T9W;
	Fri, 15 May 2026 15:01:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNu2s-00000008e7q-3Wy2
	for linux-phy@bombadil.infradead.org;
	Fri, 15 May 2026 15:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lnKTgvtBv5w3QLZxXO/tUN3AchRLc0Ub4s/Ab/VZ0iI=; b=jdGsJZfmfbgayhgHNIbDzTM5FZ
	SLhXuE83kMVFji+4aQqu4l3al9RuTHtMxLJsaIJ+YJWUhyKMYeekCh7ITak2KFSzITAQ2Ls//EPfC
	G96FTIPEHVBW2m3K/5hx21KT1tx9DwRxvLRFDAluANshyAqgXPXWZDFt1E2nJQKdMtcajaczZ2Lsx
	+64XqTtTbdgc8Rh2ue/tAT/32QNK13uU4DBZA/1g1c+TgU8CNDnvcpduj6c9luF3DqmMYfe3ULvYm
	/dUDeYkBsw8RBcJqs8iTB/mH909y5EkUjzXWL6rovzMqJalpWG1mKmeh12BTH3UjZTHrlr0ydiJCy
	PhWQ1tXw==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNu2p-00000005WBS-0eE7
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 15:01:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 57D9743C73;
	Fri, 15 May 2026 15:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031B7C2BCB8;
	Fri, 15 May 2026 15:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778857299;
	bh=itExJiGkZ6HIPPRSW3hnX46O42Hw5jWW8bgNWcx6GsA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oQKwRrRe+/gqfIF44ewwvEckptBQdewfykuUSWQAKwdmmGt9Wr2XALjGWxvoeDCiz
	 ywwr5HOqaXNvrSFtQiXF9Dr252nRDzq5AFbaI2/RAhcn50gsc3vuwl/0tw0EA/RqNB
	 HUG28TG3001zHJKvndJspacIZpvj65viG6R1eIq9cPN0Vx1Wbr4+vBuAXO+t8iTF2H
	 PGi8yPgj1V4ID+0sip1lgadlIizGnOR1F1+I4eqSnfgf6luSt2nAWLrxlf4qtcSlCQ
	 KYZvRmK9lIc+keSX4WRKxDI+AHHsWL1IT8pepkDZlhEyT7TNJ/J+W5ZY4ED9hE4C28
	 lSTJ2PbHUecgw==
Message-ID: <a88cbcff-2114-45fe-9ab6-d456c69dba99@kernel.org>
Date: Fri, 15 May 2026 18:01:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: sashiko review: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Avoid long
 delay in atomic context
To: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org,
 Pavel Machek <pavel@nabladev.com>, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
References: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@kernel.org>
In-Reply-To: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_160143_876151_3F09B481 
X-CRM114-Status: GOOD (  20.17  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

 >commit 856d28e68a5bcfa08fa03aa685cb15772197dedc
 >Author: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
 >phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic context
 >This commit releases the spin lock before sleeping for 20 ms during
 >OTG PHY initialization and introduces completion mechanisms to prevent
 >other threads from configuring the hardware concurrently. It also disables
 >IRQs while waiting to prevent interrupt handlers from applying settings.
 >Closes: https://lore.kernel.org/all/afhkX2Ys2BG1gnqy@duo.ucw.cz
 >Closes: https://lore.kernel.org/all/afhkX2Ys2BG1gnqy@duo.ucw.cz
 >> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c 
b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
 >> index 79e820e2fe55d..5a18bbd87c3b9 100644
 >> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
 >> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
 >[ ... ]
 >> @@ -388,32 +392,68 @@ static bool rcar_gen3_are_all_rphys_power_off(struct 
rcar_gen3_chan *ch)
 >>      return true;
 >>  }
 >>
 >> +static int rcar_gen3_phy_wait_otg_init(struct rcar_gen3_chan *channel,
 >> +                                   unsigned long *flags)
 >> +{
 >> +    unsigned long timeout = msecs_to_jiffies(25);
 >Could this completion timeout be too tight?

I tried to have a bit increased compared with the fsleep() value to avoid just 
being to tight but not to big.

 >The initializing thread uses fsleep(20000) which guarantees a minimum sleep
 >of 20ms. Due to scheduler jitter or timer wheel granularity (especially if
 >HZ=100, where 25ms rounds to just 2 or 3 jiffies), the 20ms sleep can easily
 >exceed 25ms of wall-clock time, causing this to spuriously return -ETIMEDOUT.
 >> +    unsigned long ret = 1;
 >> +
 >> +    lockdep_assert_held(&channel->lock);
 >[ ... ]
 >> @@ -427,7 +467,10 @@ static ssize_t role_store(struct device *dev, struct 
device_attribute *attr,
 >>                        const char *buf, size_t count)
 >>  {
 >>      struct rcar_gen3_chan *ch = dev_get_drvdata(dev);
 >>      bool is_b_device;
 >>      enum phy_mode cur_mode, new_mode;
 >> +    unsigned long flags;
 >> +    int ret = -EIO;
 >>
 >> -    guard(spinlock_irqsave)(&ch->lock);
 >> +    spin_lock_irqsave(&ch->lock, flags);
 >>
 >>      if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
 >> -            return -EIO;
 >> +            goto unlock;
 >> +
 >> +    ret = rcar_gen3_phy_wait_otg_init(ch, &flags);
 >Does checking the initialized state before waiting for the lock to be
 >released introduce a race condition?
 >Because rcar_gen3_phy_usb2_init() only sets rphy->initialized = true after
 >it finishes its 20ms sleep and reacquires the lock, a concurrent sysfs write
 >to role_store() during this 20ms window will see initialized as false and
 >immediately return -EIO instead of waiting for initialization to complete.

It is better to have it as suggested here, thus I'll adjust it as proposed.

 >> +    if (ret)
 >> +            goto unlock;
 >[ ... ]
 >> @@ -512,6 +556,11 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void 
*_ch)
 >>              goto rpm_put;
 >>
 >>      scoped_guard(spinlock, &ch->lock) {
 >> +            if (READ_ONCE(ch->otg_initializing)) {
 >> +                    dev_warn(dev, "%s: Got IRQ while waiting for OTG 
init!\n", __func__);
 >> +                    return IRQ_NONE;
 >> +            }
 >Does returning early here leak the PM runtime reference?

Indeed, I missed that, will adjust it in the next version.

 >The interrupt handler calls pm_runtime_get_noresume(dev) at the beginning of
 >the function, and releases it at the rpm_put label. By using return IRQ_NONE
 >inside the scoped_guard, the code bypasses pm_runtime_put_noidle() completely,
 >preventing the device from ever entering runtime suspend.
 >Additionally, since this interrupt is requested with IRQF_SHARED, could
 >another device sharing the line trigger a valid interrupt during the 20ms
 >OTG initialization window? If so, this would print a spurious warning to
 >the kernel log for a valid shared interrupt event.

That's a valid point. Better would be to just mask the interrupt locally.

 >> +
 >>              status = readl(usb2_base + USB2_OBINTSTA);
 >>              if (status & ch->phy_data->obint_enable_bits) {
 >>                      dev_vdbg(dev, "%s: %08x\n", __func__, status);
 >[ ... ]
 >> @@ -550,8 +605,22 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 >>      }
 >>
 >>      /* Initialize otg part (only if we initialize a PHY with IRQs). */
 >> -    if (rphy->int_enable_bits)
 >> -            rcar_gen3_init_otg(channel);
 >> +    if (rphy->int_enable_bits && channel->is_otg_channel &&
 >> +        !rcar_gen3_is_any_otg_rphy_initialized(channel)) {
 >> +            rcar_gen3_init_otg_phase0(channel);
 >> +            disable_irq_nosync(channel->irq);
 >Could channel->irq be 0 here?

In theory, AFAIK, this code should not be executed when the interrupt is not 
present as the OTG PHY needs the interrupt.

 >In rcar_gen3_phy_usb2_probe(), platform_get_irq_optional() is used. If it
 >returns -ENXIO, channel->irq remains 0. Since rphy->int_enable_bits is a
 >statically defined non-zero value for OTG PHYs, this would pass 0 to
 >disable_irq_nosync(), which manipulates critical system interrupts.
 >Also, does calling disable_irq_nosync() on a shared interrupt line starve
 >other devices?
 >Since the interrupt is requested with IRQF_SHARED, masking it at the
 >interrupt controller level means all other unrelated devices on the same
 >physical line will have their interrupts disabled for the full 20ms
 >duration. Should shared interrupts be masked locally at the device level
 >instead?

That would be better, indeed.

 >> +            reinit_completion(&channel->otg_init_done);
 >> +            WRITE_ONCE(channel->otg_initializing, true);
 >> +            spin_unlock_irqrestore(&channel->lock, flags);
 >[ ... ]
 >> @@ -598,6 +678,7 @@ static int rcar_gen3_phy_usb2_power_on(struct phy *p)
 >>      struct rcar_gen3_phy *rphy = phy_get_drvdata(p);
 >>      struct rcar_gen3_chan *channel = rphy->ch;
 >>      void __iomem *usb2_base = channel->base;
 >> +    unsigned long flags;
 >>      u32 val;
 >>      int ret = 0;
 >>
 >> @@ -607,11 +688,15 @@ static int rcar_gen3_phy_usb2_power_on(struct phy *p)
 >>                      return ret;
 >>      }
 >>
 >> -    guard(spinlock_irqsave)(&channel->lock);
 >> +    spin_lock_irqsave(&channel->lock, flags);
 >>
 >>      if (!rcar_gen3_are_all_rphys_power_off(channel))
 >>              goto out;
 >>
 >> +    ret = rcar_gen3_phy_wait_otg_init(channel, &flags);
 >> +    if (ret)
 >> +            goto unlock;
 >> +
 >>      val = readl(usb2_base + USB2_USBCTR);
 >>      val |= USB2_USBCTR_PLL_RST;
 >Does dropping the lock in rcar_gen3_phy_wait_otg_init() introduce a race
 >condition with the !rcar_gen3_are_all_rphys_power_off() check?
 >If two threads concurrently power on different PHYs, both will evaluate the
 >condition as false because neither has reached rphy->powered = true at the
 >end of the function. Both threads might then sleep in
 >rcar_gen3_phy_wait_otg_init().
 >Upon waking and reacquiring the lock, both will unconditionally apply
 >USB2_USBCTR_PLL_RST, which could catastrophically disrupt the PHY that was
 >just initialized by the first thread.
 >Should the power off condition be re-evaluated after the lock is reacquired?

Yes, rcar_gen3_phy_wait_otg_init() should be called first.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
