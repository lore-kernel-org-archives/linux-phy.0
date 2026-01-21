Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D1CC44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 16:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPklc6Cqny/PwjMCQJjKIf+cG52SuhlmQKjVUcHDqns=; b=y39ph2LpwT7hyU
	GaD17hCe1/EO0RuA9Dqaoik8IDqg6M577RRVHHXPmMzVyN1y2VuuhmhgqpUVeXBshQVhWPIp9/meo
	c2r4hDEZmRvTMM8lhfFeUAc8D7/CYlnIMAVwTXyqxDgWPvfcLic7eS2XoSKGOcM8WIUeuwGjITcSk
	FDf8Up/7t5vWdPUFIyh6B2fMKjiWzACQTh+TGVGo5jagA0VDKXXr6MW6eJoyU/9JePkH+MWDTzoJe
	rwe9KLwhjoqVcqC7pQQ6THxvgx7PzR8krRpYUqc81pHMLpXT3pMorcgnM9m6c1riEXbvvgv1cr4hr
	W5CdbRcLUi/NubzWcxig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viazs-00000005nAK-3BA1;
	Wed, 21 Jan 2026 16:23:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viazp-00000005n96-0X8z
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 16:23:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-47eda5806d7so21085e9.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 08:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769012629; x=1769617429; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6T3WJuA4E+9aoryIRHTxSBnO+FD6uxeUirc/O0FSnGs=;
        b=aLjwgtHaKfSz6qpYd3qYzBlG88XlXfDgXj0MG47EZkXHsAPkMUINfJpy9cMQDYK4W4
         UvVJ8kYSprwdoUTK3FUDwu+JCdvP4cFcQG1AyDR997Sjix8YJVp0b7MyOenLA12YzP/b
         PRQt4NHecTgLrTvbORwey5R4ptxcXn6XUiEKEkcnVvP2myRizfV7tf4BteG1zmkmxGaz
         RseoB+MOefax60TdAhVmtXpZtbpAbG/Z2s721d/CChJKLwzolPHwt3ZEISJrAjzmhq9Q
         jzC79yCUl+KqZrFSe7TeMZcarK3IAlzTSQki1yLRQQknhYq1oMKvB9C0kLsW1JWR0G53
         qEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769012629; x=1769617429;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6T3WJuA4E+9aoryIRHTxSBnO+FD6uxeUirc/O0FSnGs=;
        b=bJPiO6j5Yk+/CXzRAJiBK4QZ1eIEjstNP3B7gE7qQMtx0ytivhSNOEufgFc+E+mN7z
         /FZxVey0SGoBBpYaB+BBBqJth4q4NV1tbuO/Bni3+gXwSodmAz0IShde6GvDmaIPYgdf
         o2oV+p9H3ChyzLN/dzS0tp4FL+8ZVowJBuJL1xsqzTeWWwasuuXHvSHeesjkH/QAb8oA
         rxB+N5DPnBLAJsx3gOwaF1z8THv8pRHrF1yro2WSBF51vnC/P02Om0TWgz9jbvUUakiF
         UkOBYsECvpbgMc8D/CBC/Z9dBOEPRb2ddOrKsTla+nmb2FgFPRr0EfIERn0Dctf4UUjX
         an1g==
X-Forwarded-Encrypted: i=1; AJvYcCXw2Z2Bly9VHrYNNaY0AHiebuF+0U23SNkGCZQCm/v9+MYK5QsJwLv9kw5hCY+reSz20yl2FSSkfZk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCV5qGLfCyOG2Iar+x9u1/6L9c/L6PSX3uDloIl0Nqc009uc3Q
	e6qGhKB6hMvQDL98TfS1UE/pH2YYaGBbWWvEy4pF4XZMs/6r4gAA041M
X-Gm-Gg: AZuq6aKK33zz3oUYBzHHuqjD2M6k6KG1REyaFbO5ASGv6ILcQpL9TvsQVlwzl8fIxdP
	cJyAges2YITk1OmCjEQhLdBEu63SnSr9mt3TCTJdzM9NERAiohyLxSGpU4XtSfC9kGo7643vspD
	S448iE+Z9bK612LLNG8m2CIhlCr2Nlnb/KCgFt1D3bzJawYT6anIANqWZFX4Jhhukf0hfZcwlXc
	KFxWZh4MTZmZfCoBiDbZsf8xyAU1FY+fqJ21N2LJGQq3mXvuZTT3eD7eL4YeymoNntTMieoe+kw
	gGIvrLKdGVghRJqbpTPnHYPi7juUXgzwgnBlmnbzSy0t+mL68raoZjfZsbHD9JuXFfSp23yMCxq
	EnkNFoDYDa3Q+nonLEnYqqqHF3NOYmHbRNJBeoT5HaS2sI6W3CmAoVV8mQU+UoYAOhtGKBoFU+d
	7uuMk=
X-Received: by 2002:a05:600c:64cf:b0:477:a6f1:499d with SMTP id 5b1f17b1804b1-4801e33c5ecmr150113385e9.3.1769012629150;
        Wed, 21 Jan 2026 08:23:49 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:c2ab:16f0:db90:9d02])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43597ae9f37sm8153161f8f.8.2026.01.21.08.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:23:48 -0800 (PST)
Date: Wed, 21 Jan 2026 18:23:45 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-phy@lists.infradead.org,
	davem@davemloft.net, maxime.chevallier@bootlin.com,
	alexandre.torgue@foss.st.com, mohd.anwar@oss.qualcomm.com,
	neil.armstrong@linaro.org, hkallweit1@gmail.com,
	mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
	edumazet@google.com, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, vkoul@kernel.org,
	andrew@lunn.ch, pabeni@redhat.com, andrew+netdev@lunn.ch,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [net-next,05/14] net: stmmac: add stmmac core serdes support
Message-ID: <20260121162345.4jpzvwqhfqxd7tl7@skbuf>
References: <E1vhoSH-00000005H1f-2cq9@rmk-PC.armlinux.org.uk>
 <20260119192125.1245102-1-kuba@kernel.org>
 <aW8M9ZiiftGBQIRM@shell.armlinux.org.uk>
 <20260120081844.7e6aq2urhxrylywi@skbuf>
 <aW9VHt6meEJFxV0I@shell.armlinux.org.uk>
 <20260120121114.2aedgu42i2wax3yp@skbuf>
 <aXDm0jVOYOZ9l6Wu@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXDm0jVOYOZ9l6Wu@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_082353_193107_A6E35889 
X-CRM114-Status: GOOD (  37.93  )
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

On Wed, Jan 21, 2026 at 02:46:42PM +0000, Russell King (Oracle) wrote:
> On Tue, Jan 20, 2026 at 02:11:14PM +0200, Vladimir Oltean wrote:
> > On Tue, Jan 20, 2026 at 10:12:46AM +0000, Russell King (Oracle) wrote:
> > > First, I'll say I'm on a very short fuse today; no dinner last night,
> > > at the hospital up until 5:30am, and a fucking cold caller rang the door
> > > bell at 10am this morning. Just fucking our luck.
> > 
> > Sorry to hear that.
> > 
> > > On Tue, Jan 20, 2026 at 10:18:44AM +0200, Vladimir Oltean wrote:
> > > > Isn't it sufficient to set pl->pcs to NULL when pcs_enable() fails and
> > > > after calling pcs_disable(), though?
> > >
> > > No. We've already called mac_prepare(), pcs_pre_config(),
> > > pcs_post_config() by this time, we're past the point of being able to
> > > unwind.
> > 
> > I'm set out to resolve a much smaller problem.
> > 
> > Calling it a full "unwind" is perhaps a bit much, because pcs_pre_config()
> > and pcs_post_config() don't have unwinding equivalents, unlike how
> > pcs_enable() has pcs_disable(). I don't see what API convention would be
> > violated if phylink decided to drop a PCS whose enable() returned an error.
> 
> While pcs_pre_config() and pcs_post_config() do not have unwinding
> equivalents (what would they be?) the issue here is that these could
> have changed any state that isn't simply undone by calling
> pcs_disable().
> 
> For example, pcs_pre_config() could have reprogrammed signal routing,
> clocking, or power supplies to blocks.
> 
> This already applies to Marvell DSA pcs-639x.c, where the pre/post
> config hooks change the power state of the PCS block (for errata
> handling), and the only way that gets undone is via a call to
> pcs_disable() which explicitly disables IRQs and power for the PCS. Its
> pcs_disable() isn't a strict reversal of pcs_enable(), it does more.
> 
> We already declare the interface to be dead on pcs_post_config()
> failure, but we don't do that for pcs_enable() failure.
> 
> Maybe I need to explicitly state that pcs_disable() does not directly
> balance pcs_enable(), but that _and_ the effects of pcs_pre_config()
> and pcs_post_config(). However, that itself will add to the problems.
> What if pcs_pre_config() and pcs_post_config() succeed but not
> pcs_enable()? pcs-639x needs pcs_disable() to be called, but if we
> require pcs_disable() to be balanced with a successful call to
> pcs_enable(), that messes up that driver, and pretty much makes it
> impossible to work around the errata.

What if we reordered phylink_major_config() such that phylink_pcs_enable()
comes first, followed by phylink_pcs_pre_config() -> phylink_mac_config() ->
phylink_pcs_post_config()? Superficially looking at pcs-639x, I don't
think it would break.

If we did that, we'd effectively have to also call pcs_disable() when
pcs_post_config() fails, and that is semantically compatible with saying
that pcs_disable() is balanced with pcs_enable(). It also gives the
ability for drivers such as pcs-639x to unwind in pcs_disable() any
actions done in pcs_enable(), pcs_pre_config() or pcs_post_config().

Plus, it's more natural/useful from an API perspective to say
"the PCS has to be enabled in order for anything to be done with it",
rather than the current "first mac_config cycle runs with the PCS not
enabled; subsequent mac_config cycles run with the PCS enabled".

> If you feel strongly about this, then the only thing I can think of
> doing is to move this SerDes support out of stmmac and into phylink
> (which is a point I already raised in the cover message) so that
> its failure can be dealt with at the higher level, where we can
> ensure that phy_power_off() is balaced with phy_power_on(). However,
> that means pushing even more of the stmmac specific "we need the
> clocks running to access registers XYZ or reset" weirdness into
> phylink.

I think core phylink support for generic PHYs eventually makes sense,
but at this stage it's perhaps too early, there's too much we don't yet
know. I would wait at least until it's clear, with an upstream example,
that multiple generic PHYs per phylink instance are needed: 1 SerDes PHY
per lane (for 40GBase-R etc), plus 1 retimer PHY per lane direction.
Also how do those retimers differ from SerDes PHYs. At the very least,
the phy_validate() of SerDes PHYs should be additive w.r.t.
supported_interfaces, whereas the phy_validate() of retimers should be
subtractive.

Also, moving SerDes PHY into phylink only avoids the problem, but if the
PCS driver needs to allocate memory, it will return. I have downstream
patches for a software backplane AN/LT state machine in phylink_pcs,
which is allocated in pcs_enable() and freed in pcs_disable().

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
