Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 195D6C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 06:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mM59r81KId1tQGwyWVNrdZc4xNIY6YKL/Yg9ETSc0rU=; b=1DIysIQzRr7fj1
	6iCUyiYRGT8rz/7ckzOkVh56acqdEjHvu1uTLqivsIGQLZ6ViaxAXo3UAgAeBi6Re8AlLKnx9dLSd
	XzDvdEUqnfwqgoO/97G1ZRp3/vq8hq8CEjjdfw//Qw4h7rQCfR0dlJm4KkTm7c2XeSfFA+zmP/vTX
	vYMUvmYXzWAVZnEUoIP6hLgpUnM47CIdsPtRbAwHHxLMGZItXo6VabRdtT11JMmWthFGY49JTa6te
	d0LVI1NHUVauY/1VzFGcMbGMZi8ItBh/pDMNxIFVkIRx6tN+NyePRMHF52QYGjcfkSye3Nls6mRP3
	XNPjRpUWkHICkcSM8kWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiVOu-0073SD-8M; Wed, 12 Oct 2022 06:39:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiVOq-0073Qk-Vh
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 06:39:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5B09561403;
	Wed, 12 Oct 2022 06:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC41AC433C1;
	Wed, 12 Oct 2022 06:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665556757;
	bh=B1ff8uHzFrPosXTXSv8vraozDbLxdmDekoGelWUPSek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SUgtgHCR+BXs1NX4KxvttGTrUGPZxsG4fIToaGlU4mZcGCNw3VYsy+Lf93UieiKMy
	 Qt6b3qMC/+AQFAOyMJ0qe0xZd2ZNYusRevgylGZO9g3irg+AdBRUkGoVfZo210nQjj
	 To774GG+Gv9hwX5PjzPn9kCeb5can2NJ93A3dXevJXMln0QgMz+L3DODLhDeDknOsA
	 Nf50V1wyDmAi7UKChVOIDoZwsAMzP9rnhp+ku4eWB5splzA9eLI+ivP109uluFMo0q
	 0P1zSLdkvxvoLzX6MJ7uCKZwZeAK4aoX5lC9aYG9jEZ1/Hyh90Kjn5gEBcUr4Ntw4/
	 fuB0lDLq5GyCA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiVOV-0006Bh-R6; Wed, 12 Oct 2022 08:39:08 +0200
Date: Wed, 12 Oct 2022 08:39:07 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Message-ID: <Y0ZhC0apqGoAyeII@hovoldconsulting.com>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
 <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
 <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
 <ebe1e26a-7335-29ac-4990-6b8fdb02ba7c@linaro.org>
 <Y0V66q53I4ivlXI+@hovoldconsulting.com>
 <dbd85c78-86dc-8dd0-83d2-43af933e5a92@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbd85c78-86dc-8dd0-83d2-43af933e5a92@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_233929_274922_33DC96DD 
X-CRM114-Status: GOOD (  33.86  )
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

On Tue, Oct 11, 2022 at 05:41:28PM +0300, Dmitry Baryshkov wrote:
> On 11/10/2022 17:17, Johan Hovold wrote:

> > Yeah, I noticed that ipq8074 was the first to abuse the prwdn_delay
> > and possibly because of it starting the PHY already in its PCS table
> > (which it never should have).
> > 
> > I'm talking about the intent of pwrdn_delay which was to add a delay
> > after powering-on the phy and before starting it.
> > 
> > The vendor driver has a 1 ms delay after starting the PHY and before it
> > starts polling as the PHY on newer SoC tend to take > 1 ms before they
> > are ready.
> > 
> > So, I still claim that that delay in the vendor driver is a different
> > one entirely.
> > 
> >> Thus, I'd say, the PCIe delay should be moved after the registers
> >> programming.
> > 
> > No, not necessarily. Again, that's an optimisation in the vendor driver
> > to avoid polling so many times. Since I can say for sure that there are
> > no PHY that start in less than 1 ms, I wouldn't add it unconditionally.
> 
> I don't think it's an optimization. For me it looks like some kind of 
> stabilization delay before touching pipe clocks.

I meant that it's effectively an optimisation as the driver still works
without that unconditional delay after starting the PHY and before
polling its status. And the mainline poll-loop takes care of waiting
also for that 1 ms of "stabilisation".

But I guess you could be right in that later contributors have seen that
delay in the vendor driver and thought that prwdn_delay corresponds to
it without noticing that they are not at all equivalent.

As the current delay is pretty much pointless (you can wait for 20 ms if
you want, it doesn't matter as the PHY hasn't been started yet) I guess
we can move it and avoid a few loops when polling for the status.

[ The next batch of clean ups also increases that silly 10 us polling
period. ]

> > Either way, separate change.
> >   
> >>>> I think we can either drop this delay completely, or move it before
> >>>> read_poll_timeout().
> >>>
> >>> It definitely shouldn't be used for any new platforms, but I opted for
> >>> the conservative route of keeping it in case some of the older platforms
> >>> actually do need it.
> >>>
> >>> My bet is that this is all copy-paste cruft that could be removed, but
> >>> I'd rather do that as a separate follow-on change. Perhaps after testing
> >>> some more SoC after removing the delay.
> >>>
> >>> SC8280XP certainly doesn't need it.
> >>
> >> I think in our case this delay just falls into status polling. We'd
> >> probably need it, if we'd add the noretain handling.
> > 
> > I'm not sure I understand what you're referring to here ("noretain
> > handling")?
> 
>  From what I see in the downstream (4.19 at hand), the sequence is the 
> following:
> 
> program_phy_config() // including SW_RESET & START_CTRL
> 
> delay
> 
> for pipe clocks:
> clk_set_flags(info->hdl, CLKFLAG_NORETAIN_MEM)
> clk_set_flags(info->hdl, CLKFLAG_NORETAIN_PERIPH)

Heh. Crazy vendor-kernel magic.

> set clock rates, prepare & enable pipe clocks
> 
> wmb()
> 
> poll for the PHY STATUS

But 5.4 has something similar:

	program + start
	delay
	enable pipe clock
	poll for status

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
