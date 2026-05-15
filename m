Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5863CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 14:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY+qD1Gha68bzBRnfnwItYc0p8Nv3SVrovyHGeVzS/Y=; b=Q9L+yMJlKDIuum
	339EIUfBdM9j+mDUXY0Fvja1aXV1Erj7YP/7uJ6lgmEl+htIYlLElDsSfT0HGfpkJYjYIyb5qC1ES
	wcijLDiiLnhxQbdIdwJWjE1ElwKDyNvqkHbrfq2/C30xOZ8BJc0G0TMbzfq6lGaWYIohhpik5vFUT
	bLvnZGFfo3xKiIlnT1D5KCKXhDufaQSXNN4jpvooxfnMBK668uTrwbEAgWJHhJaF6hc+j7A1GoIo9
	MIWwUbIimwcfrP8jfnr/Q32n+J8ZS1zK3Wfzb4YjRVHNh83VqgeT56gaA2TiTxncCoJohKmRVPmln
	WPXKHQZmwfGphDQ009IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtJf-00000008Y0G-17X9;
	Fri, 15 May 2026 14:15:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtJd-00000008XzN-2DYe
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 14:15:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 68C0543302;
	Fri, 15 May 2026 14:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29EB8C2BCB0;
	Fri, 15 May 2026 14:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778854500;
	bh=yQWnXkmSBYV3ZtuAW2rc6CZYiOl9hk/SlqVzEGyJZ90=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Z36CpN9UitkhDRLCBX4339ww2Q3wmt7AatBmqS35QCWKCSW9V/CGzn2OQYG6ACjH4
	 KbDxhYJcE4KcRXYTW01AKt/yBnM5fdFqAWbiqSl5Q/s+L7ezf/EmwqTCF2sZQ1rlIM
	 ldvCd4J4yqHw5312J0vsWVpdsPyr70sgCXhus8zxoKy8Iz2SdvbvJIA9Jc21ob708n
	 Yjy3eNrHHzkfU3q30gIcAy3llGgaJSRQ0xW6KeJpDQzqCE6XCS26P5sFbinGaUReg4
	 JlNv3liMT3HtiIwH7uPLKGB55XcZLySxgtVPnS0Hy6w6rxxFQgMqLF31hOus3bjDAL
	 rG9XauhDwgaug==
Message-ID: <26a33ed4-d851-462a-948e-b19079d12ea8@kernel.org>
Date: Fri, 15 May 2026 17:14:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic
 context
To: Pavel Machek <pavel@nabladev.com>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org,
 Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
References: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
 <agY8NAyCcHkhBvBv@duo.ucw.cz>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@kernel.org>
In-Reply-To: <agY8NAyCcHkhBvBv@duo.ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_071501_625920_79B5E771 
X-CRM114-Status: GOOD (  22.25  )
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

Hi, Pavel,

On 5/15/26 00:18, Pavel Machek wrote:
> Hi!
> 
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The OTG PHY initialization sequence needs to wait for 20 ms at a specific
>> step, as described in commit 72c0339c115b ("phy: renesas:
>> rcar-gen3-usb2: follow the hardware manual procedure").
>>
>> Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
>> registers and driver data") tried to address various problems in the
>> rcar-gen3-usb2 driver and converted the mutex protecting HW register
>> accesses to a spin lock, leaving, however, a long delay in the critical
>> section protected by the spin lock. This may become a problem,
>> especially on RT kernels.
>>
>> To address this, release the spin lock before sleeping for 20 ms as
>> required by the HW manual and reacquire it afterwards. To avoid other
>> threads entering the critical section and configuring the HW while the
>> software is waiting for the OTG initialization to complete, introduce the
>> otg_initializing variable alongside the otg_init_done completion. Any
>> other thread trying to configure the HW while the OTG PHY initialization
>> is in progress waits for the completion instead of immediately returning
>> errors to PHY users. The IRQs were also disabled while waiting for the OTG
>> PHY initialization to complete, as the interrupt handler may also apply HW
>> settings.
> 
> Just... there has to be a better way.
> 
>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> +static int rcar_gen3_phy_wait_otg_init(struct rcar_gen3_chan *channel,
>> +				       unsigned long *flags)
>> +{
>> +	unsigned long timeout = msecs_to_jiffies(25);
>> +	unsigned long ret = 1;
>> +
>> +	lockdep_assert_held(&channel->lock);
>> +
>> +	/*
>> +	 * The OTG can be initialized only once and needs to release the lock
>> +	 * and wait for 20 ms due to hardware constraints. Wait for the OTG PHY
>> +	 * initialization to complete if another PHY executes configuration
>> +	 * code while the OTG PHY is waiting. This avoids returning failures to
>> +	 * PHY users.
>> +	 */
>> +	if (READ_ONCE(channel->otg_initializing)) {
>> +		spin_unlock_irqrestore(&channel->lock, *flags);
> 
> This is not nice, passing flags between functions like this is a red flag.
> 
> You are only accessing otg_initializing under the spinlock. That means
> that READ_ONCE is reduntant.
> 
> But AFAICT spinlock is only held over this function to protect
> channel->otg_initializing access. I suspect correct answer here is
> getting rid of spinlock over this function, and using
> test_bit(BIT_INITIALIZING, ...) or something similar.

If I understand correctly your point here, I don't think making the 
otg_initializing atomic (or using test_bit()) and moving it out of the spin lock 
works for all the cases. Suppose the following:

thread1:                               thread2:

0: sleep                               spin_lock_irqsave();

1: still sleep                         otg_initalizing = 1;

2: check otg_initializing              // ...

3: spin_lock_irqsave();                // ...

4:                                     spin_unlock_irqsave();

5:                                     fsleep(20000);


In this way, thread1 will get access to the HW registers once instruction at 
line 4 will be executed and be able to configure other HW registers when it 
should wait for the fsleep() to finish.

The point with the solution provided in this patch was to not allow any other 
thread to configure the HW while the fsleep() is executed.

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
