Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6735EC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhq1hNO4RNYQvNV4HNOHm9PnTxesufx0clTlxhXwS70=; b=N/UX0uV+V9v9G5
	diQc1WpD1UiNVMnChT3RXzqjghe05gypaQGptW7iEW967A/nZP7jqS9xqqpckwxuQgMpIjVrNdNTr
	vZ5Jinn2PIop0PAj91noc0Ojy3tAD6e99DMpfRld9doFvYSMKVTTQSPBLYf38cdZgLaasGzdR5sAo
	aisHzOAUQrN7dODbuVJB/6x+elXT1omZSW0m3SvrkmJVKsXWiJKz5ZsKgXDd4GmQX2mr8QPJnb+iv
	J9Xld+3qtHGn7SAIquoZVJh+2vcc3HO2+br0nn3YTGZeQTuIbg6iy820EV0W07Wn+dwi1SVIgM9a3
	xqKIq/rQSks4w3sUS+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiG4X-004TkT-Rx; Tue, 11 Oct 2022 14:17:29 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiG4V-004Tjl-4H
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:17:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8B3E8B81615;
	Tue, 11 Oct 2022 14:17:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36B6AC433D6;
	Tue, 11 Oct 2022 14:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665497844;
	bh=HAtIkE4Nq6uMZHxLROfnqNP70Tqgnzkajbf2PxL7J6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L//2BzibMtbDKa1lJfhNXesywReCJsVCj/tjJv+NkTr1m1QVlkgF2H4V8F7ZmnVzC
	 PM/PJLvhXjg5pD/iYrENzSYBV9LdtDGAzgGZNF872xbGwSp7uV1r7s5J5Jhxd/LcdJ
	 PtDj1BRf0tGYxPwS+f5QNpR+o0Xahj2/8V73UY3oTJDbkrNOFFln+VGxo9p29Hkmfc
	 byyyOTI9buoEJqrPBX+4fzULM3NxXrCqYE7Ohibp80M1hv82YkfqfVK9WJQHAfAzeR
	 rkd7fJutjFvcktdnWmSMhwA5bab8KSgOYvD6e9/tdMcyLuOF0o68uTuW6vHptJLOhe
	 H2yCcg1ce1nvw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiG4I-00036O-Dv; Tue, 11 Oct 2022 16:17:15 +0200
Date: Tue, 11 Oct 2022 16:17:14 +0200
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
Message-ID: <Y0V66q53I4ivlXI+@hovoldconsulting.com>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
 <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
 <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
 <ebe1e26a-7335-29ac-4990-6b8fdb02ba7c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebe1e26a-7335-29ac-4990-6b8fdb02ba7c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_071727_492920_F89253D6 
X-CRM114-Status: GOOD (  36.17  )
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

On Tue, Oct 11, 2022 at 05:04:04PM +0300, Dmitry Baryshkov wrote:
> On 11/10/2022 16:53, Johan Hovold wrote:
> > On Tue, Oct 11, 2022 at 04:46:53PM +0300, Dmitry Baryshkov wrote:
> >> On 11/10/2022 16:14, Johan Hovold wrote:
> >>> The power-down delay was included in the first version of the QMP driver
> >>> as an optional delay after powering on the PHY (using
> >>> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> >>> this sequence by powering on before initialising the PHY, but the
> >>> optional delay stayed where it was (i.e. before starting the PHY).
> >>>
> >>> The vendor driver does not use a delay before starting the PHY and this
> >>> is likely not needed on any platform unless there is a corresponding
> >>> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> >>>
> >>> Let's keep the delay for now, but drop the redundant delay period
> >>> configuration while increasing the unnecessarily low timer slack
> >>> somewhat.
> >>
> >> Actually, the vendor driver does this 995..1005 sleep. But contrary to
> >> our driver it does that after programming whole PHY init sequence, which
> >> includes SW_RESET / START_CTL, but before programming the pipe clocks.
> > 
> > Right, it does it after starting the PHY which means that you don't have
> > to poll for as long for the PHY status.
> > 
> > It's a different delay entirely.
> 
> No-no-no. The 995-1005 delay was added guess for which SoC? For ipq8074, 
> where the config tables contain the ugly CFG_L writes for SW_RESET / 
> START_CTRL. So, it is the same delay, but added by somebody who didn't 
> care enough. The original 10-11 delay is a completely different story, 
> you are correct here.

Yeah, I noticed that ipq8074 was the first to abuse the prwdn_delay
and possibly because of it starting the PHY already in its PCS table
(which it never should have).

I'm talking about the intent of pwrdn_delay which was to add a delay
after powering-on the phy and before starting it.

The vendor driver has a 1 ms delay after starting the PHY and before it
starts polling as the PHY on newer SoC tend to take > 1 ms before they
are ready.

So, I still claim that that delay in the vendor driver is a different
one entirely.

> Thus, I'd say, the PCIe delay should be moved after the registers 
> programming.

No, not necessarily. Again, that's an optimisation in the vendor driver
to avoid polling so many times. Since I can say for sure that there are
no PHY that start in less than 1 ms, I wouldn't add it unconditionally.

Either way, separate change.
 
> >> I think we can either drop this delay completely, or move it before
> >> read_poll_timeout().
> > 
> > It definitely shouldn't be used for any new platforms, but I opted for
> > the conservative route of keeping it in case some of the older platforms
> > actually do need it.
> > 
> > My bet is that this is all copy-paste cruft that could be removed, but
> > I'd rather do that as a separate follow-on change. Perhaps after testing
> > some more SoC after removing the delay.
> > 
> > SC8280XP certainly doesn't need it.
> 
> I think in our case this delay just falls into status polling. We'd 
> probably need it, if we'd add the noretain handling.

I'm not sure I understand what you're referring to here ("noretain
handling")?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
