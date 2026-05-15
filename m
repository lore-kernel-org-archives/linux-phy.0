Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24177CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 09:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvWk88Xa9AzsNFwL1GLvVE6OX4nUjyCjg3K4g1AyxNY=; b=tJt3WdYoCqFciP
	+AUFuYID4GkCs7UeuNGQpsaw9keTRhOXDdILzQtOiEmn19y9I2U6XPsRDYR7c6mT1EVFI8vpXKvpk
	mGD7lB1vdOXwieZmpJ6GNqB+BeYKrAwIrq/5HXRDt5y33RvArvgzH+BdJ2nU0UfXW7sWmrBYSvo7Y
	pXDzgLuM4r5fmhRlD/2dupl9f6zq2A5GGZ0qzF4cw+T9FsaNleSBJP2bwac730gJLlqOKHDrQLnvu
	AhxB9DTUwlAi8uac3GxhfPcgDSifoosbvqnk/54iSi6V4hkTWtozYMvZepJAvfEpb6Sf/xuRc5ojG
	VRM/t2DiNx35keZyDs1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNp9A-00000007wuA-2j8Y;
	Fri, 15 May 2026 09:47:56 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNp97-00000007wtP-3jNC
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 09:47:55 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-48d146705b4so105671775e9.3
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 02:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778838472; x=1779443272; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r/e37VgLdpUmdJ/sT4E0Yd2dWN5tYEQahe7Aa4DMknc=;
        b=TZqgi4R6rEdajlaE5bBErxcOgUgasGas8u3dZaRq8iyheki5qp08QNggCrx9Qrc26e
         Y3+gQDwuzpUddHB/EMkM5LL9trq6cCatl6S+15ZziYQrIqS+VmJ9MBcIfmJcRxzPUDPG
         w3Sj0vnvUih9pKy4lQfpV2XaJZOBXIV6OmBGfL8yhSTahaFVupnCCUIKqAFo0n1VWMks
         aROvnKwa2YXc1tHms5B+pPIp2cyKngBuSAutCEniiSbXWX19FluhEYUMHIsDCsZP2Jlw
         fKmPuF+u+8On9g0Qb85TqAWTqjE3VrNpjB7724ngXzB3U9OVjzYoV6A0+qzHmeB1QiBf
         0yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778838472; x=1779443272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r/e37VgLdpUmdJ/sT4E0Yd2dWN5tYEQahe7Aa4DMknc=;
        b=LspeG+gTA0DKxQq+1dnWqg2pB5Xh/9LafbYkJeISGiTBKlzerXPM0mVwHQ6Ltb82h2
         M2xjVvB/aKm+HipAd2IbmxCxjJqwjlJjrJ/OF8EKOEHhY1isXW+ctePXFTCPIRUrlxGs
         +Zs+ORlt3m2K/nEcYGj/tMU1+h2OcMjESM5tUFj7Tu21U5tWNJfxxwjbq556rojXLfFZ
         wSSDjTegXKaWggRI8V8RxHnNqTK0+5+EVdmVcXz1C/kPU3H/l/bJe2qBEW8CFm+izB81
         JQcKEjtBSAI6XfvO9NtFNlIaqzYqUdmPVWYxsFOVylmo/nEOVd+l7ifQARHGMF7UljYs
         LGEw==
X-Forwarded-Encrypted: i=1; AFNElJ8haSfmoPC6DPyL0aJ35lm5CpJtNvIVv5cxOxYSA/bku9cMG6pkWRQ0uTI/K89uuriFsw9Dxm7DZZc=@lists.infradead.org
X-Gm-Message-State: AOJu0YykDkUctA3ik2lttH+WjBIvTeGgYo+WfeGSmArA3azKBwiw3ua/
	S5m45IEOSz9RuVkJuquAt7TDp6FyRxCBhHukhlktsS0sMym2FxcFecTO
X-Gm-Gg: Acq92OHBBxtrDorBGcjhsmiID9ELgPlYVb8XdjNxDX9RCDYUgoeee5Erb75MyO5lPqp
	KRVY8Og734ZRbDo5vaLxbxIGeoJ0LnbKlYAm+cuePMe9XQIaP2VPX3jxY1rzAP4xVgRVD7G5bMe
	QLK3Ges8cNpUPrLlYvSgsXFw2jJdgxJvR34HTylhmK8oBvk5Kw01qxmLJtuCwPsFUiAfqVtbSB8
	m5RzojbGN3dGTRCVOzKdnl3YO5dvgrUTg7tlPjzpeskrHhGh1ix54hlJIotws3K1+2LStJ63ynD
	wj8RkLRkCNO5tGZk2SKxVKnkzOP2t4fQ0Obdm+///uc/8E9/X9Kw2lr5dJHlhlZO212GIMr2NuS
	UAbDUbFIfHZFi7kZN9aD0K1cRB2aZVxrr23vJoIxGGqoz0u1c2RBqyaYyQx0MyHwRpyglFlYrkg
	lw5oi1VYDzJpLkk1GATaME9mr/LjzApQiJKi9Kxuc5FKCqnxneMYx8wRbnRD+Z
X-Received: by 2002:a05:600c:a4f:b0:48f:e230:2a24 with SMTP id 5b1f17b1804b1-48fe66204e8mr41076455e9.31.1778838471669;
        Fri, 15 May 2026 02:47:51 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5cab882sm54024555e9.13.2026.05.15.02.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 02:47:51 -0700 (PDT)
Date: Fri, 15 May 2026 10:47:49 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Pavel Machek <pavel@nabladev.com>
Cc: Claudiu Beznea <claudiu.beznea@kernel.org>,
 yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Claudiu Beznea
 <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org, Nobuhiro
 Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Avoid long delay in
 atomic context
Message-ID: <20260515104749.24135f22@pumpkin>
In-Reply-To: <agY8NAyCcHkhBvBv@duo.ucw.cz>
References: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
	<agY8NAyCcHkhBvBv@duo.ucw.cz>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_024753_961515_E419E344 
X-CRM114-Status: GOOD (  27.26  )
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

On Thu, 14 May 2026 23:18:44 +0200
Pavel Machek <pavel@nabladev.com> wrote:

> Hi!
> 
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > 
> > The OTG PHY initialization sequence needs to wait for 20 ms at a specific
> > step, as described in commit 72c0339c115b ("phy: renesas:
> > rcar-gen3-usb2: follow the hardware manual procedure").
> > 
> > Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
> > registers and driver data") tried to address various problems in the
> > rcar-gen3-usb2 driver and converted the mutex protecting HW register
> > accesses to a spin lock, leaving, however, a long delay in the critical
> > section protected by the spin lock. This may become a problem,
> > especially on RT kernels.
> > 
> > To address this, release the spin lock before sleeping for 20 ms as
> > required by the HW manual and reacquire it afterwards. To avoid other
> > threads entering the critical section and configuring the HW while the
> > software is waiting for the OTG initialization to complete, introduce the
> > otg_initializing variable alongside the otg_init_done completion. Any
> > other thread trying to configure the HW while the OTG PHY initialization
> > is in progress waits for the completion instead of immediately returning
> > errors to PHY users. The IRQs were also disabled while waiting for the OTG
> > PHY initialization to complete, as the interrupt handler may also apply HW
> > settings.  
> 
> Just... there has to be a better way.
> 
> > +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > +static int rcar_gen3_phy_wait_otg_init(struct rcar_gen3_chan *channel,
> > +				       unsigned long *flags)
> > +{
> > +	unsigned long timeout = msecs_to_jiffies(25);
> > +	unsigned long ret = 1;
> > +
> > +	lockdep_assert_held(&channel->lock);
> > +
> > +	/*
> > +	 * The OTG can be initialized only once and needs to release the lock
> > +	 * and wait for 20 ms due to hardware constraints. Wait for the OTG PHY
> > +	 * initialization to complete if another PHY executes configuration
> > +	 * code while the OTG PHY is waiting. This avoids returning failures to
> > +	 * PHY users.
> > +	 */
> > +	if (READ_ONCE(channel->otg_initializing)) {
> > +		spin_unlock_irqrestore(&channel->lock, *flags);  
> 
> This is not nice, passing flags between functions like this is a red flag.

It would be better to just inline the code.
And I'd guess you need to redo the initial tests after re-acquiring the lock?
Or even need to do a state change/reference count before releasing the
lock to stop other threads 'doing anything nasty'.

-- David

> 
> You are only accessing otg_initializing under the spinlock. That means
> that READ_ONCE is reduntant.
> 
> But AFAICT spinlock is only held over this function to protect
> channel->otg_initializing access. I suspect correct answer here is
> getting rid of spinlock over this function, and using
> test_bit(BIT_INITIALIZING, ...) or something similar.
> 
> Best regards,
> 								Pavel
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
