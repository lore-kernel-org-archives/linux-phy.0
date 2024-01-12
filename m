Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35724C4706C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgi29oary+lpa/uOiz2aelx1jne7hIiUw3Z2kkCfGPQ=; b=v+z3N8JSFOAsIe
	owGBffPVcD0yLArJ22vPzaen64/qdsk0KeqoTPhOV9CXehah81+9T5BjGqGZgCkBP4ASWhP8dpg4M
	xezUxLJDOlIUrHsH/Q1TUPmxdxnO35+GFNx1Yw6OLIszNOZvc4ePOVndZVadeVc9gLgLnXgDRSOh+
	3d4ROFwuvPtxCjLZaK8x/Bjp4YEpcteIN5znNAZWwc4GAI6f/Xzq3k22NUrfBiH8AbFG71jG/3weT
	B2HR+Z3JsCbe892xQ7Ck35exnbIHMXPkBH4ScZTjs+0lacWxsKGTwsDNs1ft765K2mIjYHVkpFwM3
	FvDTZgzSNCgwXyQAd7/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOCQh-0029Kb-2x;
	Fri, 12 Jan 2024 07:58:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOCQe-0029HC-2F
	for linux-phy@lists.infradead.org;
	Fri, 12 Jan 2024 07:58:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C7E07CE2381;
	Fri, 12 Jan 2024 07:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87218C433F1;
	Fri, 12 Jan 2024 07:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1705046283;
	bh=bWqyRoGbqZkUMpB07zA4RdTIaZK8BiWqqZtsb6JvOmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A2uvgJlm6fJHwsAGrCgwXIHiRztTcnL/4mogwAWZdzjjJVj1i/bMXHljMqs3dh4wF
	 JcJaL1kgYTz280FgKrHHFyREGCKo5pNpHbfaqKkVHFBpi10NXuHzsttZ7XQ2oPvUH0
	 zVGCGEbe4A4YIVsKbAVEx1XKcbwjKzHMtErgvZ9w=
Date: Fri, 12 Jan 2024 08:57:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Diogo Ivo <diogo.ivo@siemens.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	tjoseph@cadence.com, linux-pci@vger.kernel.org, ylal@codeaurora.org,
	regressions@lists.linux.dev, jan.kiszka@siemens.com
Subject: Re: [REGRESSION] Keystone PCI driver probing and SerDes PLL timeout
Message-ID: <2024011246-corned-disregard-7123@gregkh>
References: <20240111141331.3715265-1-diogo.ivo@siemens.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240111141331.3715265-1-diogo.ivo@siemens.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_235812_926244_872B4609 
X-CRM114-Status: GOOD (  24.55  )
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

On Thu, Jan 11, 2024 at 02:13:30PM +0000, Diogo Ivo wrote:
> Hello,
> 
> When testing the IOT2050 Advanced M.2 platform with Linux CIP 6.1
> we came across a breakage in the probing of the Keystone PCI driver
> (drivers/phy/ti/pci-keystone.c). This probing was working correctly
> in the previous version we were using, v5.10.
> 
> In order to debug this we changed over to mainline Linux and bissecting
> lead us to find that commit e611f8cd8717 is the culprit, and with it applied
> we get the following messages:
> 
> [   10.954597] phy-am654 910000.serdes: Failed to enable PLL
> [   10.960153] phy phy-910000.serdes.3: phy poweron failed --> -110
> [   10.967485] keystone-pcie 5500000.pcie: failed to enable phy
> [   10.973560] keystone-pcie: probe of 5500000.pcie failed with error -110
> 
> This timeout is occuring in serdes_am654_enable_pll(), called from the 
> phy_ops .power_on() hook.
> 
> Due to the nature of the error messages and the contents of the commit we
> believe that this is due to an unidentified race condition in the probing of
> the Keystone PCI driver when enabling the PHY PLLs, since changes in the
> workqueue the deferred probing runs on should not affect if probing works
> or not. To further support the existence of a race condition, commit
> 86bfbb7ce4f6 (a scheduler commit) fixes probing, most likely unintentionally
> meaning that the problem may arise in the future again.
> 
> One possible explanation is that there are pre-requisites for enabling the PLL
> that are not being met when e611f8cd8717 is applied; to see if this is the case
> help from people more familiar with the hardware details would be useful.
> 
> As official support specifically for the IOT2050 Advanced M.2 platform was
> introduced in Linux v6.3 (so in the middle of the commits mentioned above)
> all of our testing was done with the latest mainline DeviceTree with [1]
> applied on top.
> 
> This is being reported as a regression even though technically things are
> working with the current state of mainline since we believe the current fix
> to be an unintended by-product of other work.
> 
> #regzbot introduced: e611f8cd8717

A "regression" for a commit that was in 5.13, i.e. almost 2 years ago,
is a bit tough, and not something I would consider really a "regression"
as it is core code that everyone runs.  Given you point at scheduler
changes also fixing the issue, this seems like a hint as to what is
wrong with your driver/platform, but is not the root cause of it and
needs to be resolved.  Please look at fixing it in your drivers?  Are
they all in Linus's tree?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
