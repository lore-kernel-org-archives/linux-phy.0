Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC28C49EAF
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:36:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EDC4611AC
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:36:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EDC4611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVcKtynRGQ6mQFSFBUDJ7u1XxO7jrrljoLL4ayeYLZY=; b=3FiZ+5folqv8Rp
	yZTVBBeBNyodHXOmh850d19KIC4CbUAUIXaMuA2CTUU+u7iCj/4Ipvy99iajavWmesSHF/Ccbc+st
	B41+TQPH27e/mkiEtU5IagHi8mzeAYtqRgDbxVUKVca87rC+FR9fGV+e5YKq+OWWKpkyeQXit9F9s
	myX/I1sHRWeLF8iJ9ykROw7W5qUnWh0RK7rc+/9G9hoD1BK3eDRzGUsSS5CCkNOnS8Rdyv1drRkUp
	dwU02yamXVazghLax4dFeRWykPqzoTzGbA0BMi9L5Ndw4QqwrJOYtCzNDRnQQh/MVR1CEZZgZDZ0O
	I7gBkRrpH7M7gD1j0gdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxQd-009nBv-NA; Wed, 23 Jun 2021 07:36:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxQZ-009n8C-Oa
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:36:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DDCA06137D;
 Wed, 23 Jun 2021 07:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1624433763;
 bh=XBAuxXOkzaaLdcKTXSUZTtN+nXd9vRcx+VfqSOqorYs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BoHUugxI2FaRuGoc7FsziX5spMrlXKCo0+ysKbJGJUAcSpWJFC1RFkZhdzKzZHVAd
 0oGtidCpXlbUUClgY37cLiSwj1BXBqrM0qRVZV4aMwgcNRGJsbt0oke252ITM9wJh9
 UK1TJYWaNeoD9bVpngioFBrzDdMLW8vMUgZ3Gbbc=
Date: Wed, 23 Jun 2021 09:36:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
Message-ID: <YNLkYPa/+Gs88loj@kroah.com>
References: <YNLRn/5JkyYhYwxi@matsya> <YNLhBZokBed/jxNC@kroah.com>
 <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_003603_858675_56FF88D4 
X-CRM114-Status: GOOD (  24.21  )
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

On Wed, Jun 23, 2021 at 09:29:06AM +0200, Sergio Paracuellos wrote:
> Hi Greg,
> 
> On Wed, Jun 23, 2021 at 9:21 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Jun 23, 2021 at 11:45:59AM +0530, Vinod Koul wrote:
> > > Hello Greg,
> > >
> > > Please pull to receive Generic phy subsystem updates for v5.14
> > >
> > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > >
> > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.14
> > >
> > > for you to fetch changes up to f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f:
> > >
> > >   phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe() (2021-06-21 12:04:18 +0530)
> > >
> > > ----------------------------------------------------------------
> > > phy-for-5.14
> > >
> > >   - Updates:
> > >         - Yaml conversion for renesas,rcar-gen3 pcie phy and
> > >         rockchip-usb-phy bindings
> > >         - Support for devm_phy_get() taking NULL phy name
> > >
> > >   - New support:
> > >       - PCIe phy for Qualcomm IPQ60xx
> > >       - PCIe phy for Qualcomm SDX55
> > >       - USB phy for RK3308
> > >       - CAN transceivers phy for TI TCAN104x
> > >         - Innosilicon-based CSI dphy for rockchip
> >
> > Why is PHY_MT7621_PCI only y/n?  Shouldn't this be able to be built as a
> > module?
> >
> > The USB phy enables this driver, which now forces me to build it into my
> > kernel, which does not seem like a wise idea.  I'm not sure which commit
> > in this series does this, but that isn't a good thing.
> >
> > Ah, it's 6eded551cefe ("phy: ralink: Kconfig: convert mt7621-pci-phy
> > into 'bool'"), why is that needed?  We are working to turn more code
> > into modules, not force them to be built in, this feels like the wrong
> > way to go :(
> 
> This was turned into bool to automatically be included if CONFIG_PCI_MT7621
> is set. This should be the only requirement to add this phy driver for
> real hardware since it has nothing to do if there is no
> CONFIG_PCI_MT7621. That's why Kconfig is now:
> 
> depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
> Am I missing something here???

It is forcing it to be built into the kernel, why can it not just be a
module?  You took that ability away here by making the value a 'bool'.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
