Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEC8CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 14:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iEQzNzb60R24raax0A0hHRg1DMxZDCh7ufVh+Cv2nk=; b=Z+0ffvMtz27FGQ
	bxBNTJKlTCOUDc5vz5crcQAIIxzlYqG2sLxne7iwL5+wJjK5ROsyj3NM10g0NWfAV1DJLIvsW+3i0
	A5lXe3v91y+nPwW5zkNe/FCupuEAbb9WWqCPvTV2GmzlhWjunxmNFqKZcRM1Ugv8y3CneJU8pvm63
	69kBJrd7o7wjjdDyTl8YpDAplGko5dSUXt0ddw3/tVNpNJXfEJkB/ioav+uccVhbzXmjmGkB5dXlo
	OlSMuXINMkqzBNmod2feRGuEycOvnfLOSHiAkUs+jFAXd8tRT5h4RaEIFsgqjGK8qivLUFoSfERBZ
	HyWvupJ6UCn1oWBA7CfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtfy-00000008are-2Bs9;
	Fri, 15 May 2026 14:38:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtfx-00000008arI-1q9k
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 14:38:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A48CD6015B;
	Fri, 15 May 2026 14:38:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B19E3C2BCB0;
	Fri, 15 May 2026 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778855884;
	bh=PWeexAqHp+to3y+8P/Yutu/QqNE28sBZxhOH6puKRM8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tCv75lBXSxkE9qmOvQAEtN6TIp1Z1O4cUSp+BubGPjcPKIAsqk2i58drOCu471PJm
	 KXIItg4+leKxNfP5AQje18Zb5JQGy3VtrsPazHOzBuQOrqjNoudAvobfYdVpJsJejr
	 bkv9+y6ZRN/w0Ynk9+w56irA4PdF8U0AJ/TiASuiAKhsFxPJNy71OlfPW286JF80rx
	 /e/0WFg5J8saIUSLCP4Fp6k2UmOX8QklIu6PU6pLMA+7XICuxkYTD9t2rOPacpQ2si
	 CiEi5uwBMsWqaLOG7vG6fhZYskPJpsHdCTopXtyFYdMKgjr/FtBYfrkRhsHP9EXgaY
	 w2rZubpKwB2AQ==
Message-ID: <b333b1a8-5b6a-4584-b76c-0e1bd0e41a19@kernel.org>
Date: Fri, 15 May 2026 17:37:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic
 context
To: David Laight <david.laight.linux@gmail.com>,
 Pavel Machek <pavel@nabladev.com>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org,
 Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
References: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
 <agY8NAyCcHkhBvBv@duo.ucw.cz> <20260515104749.24135f22@pumpkin>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@kernel.org>
In-Reply-To: <20260515104749.24135f22@pumpkin>
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

Hi, David,

On 5/15/26 12:47, David Laight wrote:
> On Thu, 14 May 2026 23:18:44 +0200
> Pavel Machek <pavel@nabladev.com> wrote:
> 
>> Hi!
>>
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The OTG PHY initialization sequence needs to wait for 20 ms at a specific
>>> step, as described in commit 72c0339c115b ("phy: renesas:
>>> rcar-gen3-usb2: follow the hardware manual procedure").
>>>
>>> Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
>>> registers and driver data") tried to address various problems in the
>>> rcar-gen3-usb2 driver and converted the mutex protecting HW register
>>> accesses to a spin lock, leaving, however, a long delay in the critical
>>> section protected by the spin lock. This may become a problem,
>>> especially on RT kernels.
>>>
>>> To address this, release the spin lock before sleeping for 20 ms as
>>> required by the HW manual and reacquire it afterwards. To avoid other
>>> threads entering the critical section and configuring the HW while the
>>> software is waiting for the OTG initialization to complete, introduce the
>>> otg_initializing variable alongside the otg_init_done completion. Any
>>> other thread trying to configure the HW while the OTG PHY initialization
>>> is in progress waits for the completion instead of immediately returning
>>> errors to PHY users. The IRQs were also disabled while waiting for the OTG
>>> PHY initialization to complete, as the interrupt handler may also apply HW
>>> settings.
>>
>> Just... there has to be a better way.
>>
>>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>>> +static int rcar_gen3_phy_wait_otg_init(struct rcar_gen3_chan *channel,
>>> +				       unsigned long *flags)
>>> +{
>>> +	unsigned long timeout = msecs_to_jiffies(25);
>>> +	unsigned long ret = 1;
>>> +
>>> +	lockdep_assert_held(&channel->lock);
>>> +
>>> +	/*
>>> +	 * The OTG can be initialized only once and needs to release the lock
>>> +	 * and wait for 20 ms due to hardware constraints. Wait for the OTG PHY
>>> +	 * initialization to complete if another PHY executes configuration
>>> +	 * code while the OTG PHY is waiting. This avoids returning failures to
>>> +	 * PHY users.
>>> +	 */
>>> +	if (READ_ONCE(channel->otg_initializing)) {
>>> +		spin_unlock_irqrestore(&channel->lock, *flags);
>>
>> This is not nice, passing flags between functions like this is a red flag.
> 
> It would be better to just inline the code.

I can do that, I tried to avoid it.

> And I'd guess you need to redo the initial tests after re-acquiring the lock?

Could you please let me know what do you mean by "initial tests"

> Or even need to do a state change/reference count before releasing the
> lock to stop other threads 'doing anything nasty'.

I'm not sure I understand this. I'll explain how the patch works:

The HW provides a single OTG PHY. As the HW has a single OTG PHY and the start 
of the OTG PHY initialization is done under spinlock, at any moment, a single 
thread could set the otg_initializing. That would be the thread configuring the 
OTG PHY. And once the OTG PHY was set there is no way it will run again (due to 
rphy->initialized). Unless the struct phy_ops::exit() is called for the OTG PHY.

With the solution in this patch, once a thread sets the otg_initializing, all 
the other threads that will want to set HW registers should wait due to the 
completion mechanism.

If there is any thread that executes wait_for_completion() while:
- otg_initializing is set and
- the OTG configuration thread released the spin lock to execute the fsleep()
if the wait_for_completion times out, the PHY code returns error to the caller 
so the thread calling into the PHY driver will not continue into the PHY driver.

If instead there is no timeout, the waiting thread will have to re-acquire the 
spin lock before executing any HW settings.

If there is no timeout, the code that setup the OTG PHY have already been 
running rphy->initialized = true for the OTG PHY, under spinlock, and no other 
thread will enter the above OTG initialization section:

	/* Initialize otg part (only if we initialize a PHY with IRQs). */
	if (rphy->int_enable_bits && channel->is_otg_channel &&
	    !rcar_gen3_is_any_otg_rphy_initialized(channel)) {
		rcar_gen3_init_otg_phase0(channel);
		disable_irq_nosync(channel->irq);
		reinit_completion(&channel->otg_init_done);
		WRITE_ONCE(channel->otg_initializing, true);
		spin_unlock_irqrestore(&channel->lock, flags);

		fsleep(20000);

		spin_lock_irqsave(&channel->lock, flags);
		WRITE_ONCE(channel->otg_initializing, false);
		complete_all(&channel->otg_init_done);
		enable_irq(channel->irq);
		rcar_gen3_init_otg_phase1(channel);
	}

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
