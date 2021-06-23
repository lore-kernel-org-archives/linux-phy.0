Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C13C48BC2
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:35:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E69E611AC
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:35:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9E69E611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFZKyZBGiLuo9m+wdu2oSVjt28oyNMNJkGGJw/SLkJ8=; b=2QO4WCSi/pabW8
	WYC24baWg3euyNbt9y6Yf1tvVZanc1md5BwnnzvtTB92tB8+cGyBrq2nnBX+HUuTZiGq2YcLUCkT3
	noQgXUpJnH/hoCz0HaoWjy5X/YODSL8GyelEFi8BoNGnXG+olhzaW35YqoDddAZcBsD57xlhYTZ6u
	6FDyBfVsXVbVDpqfGXdrpjoUS7rFF1W9XSsLUwHZ7kDQdOsOmJ5D7fFpsLX6yogICmb2yQkvTQIe6
	KhPBtQCJzflFXl7sLHmkkSTwIK143IvnhDSxTvChnu4vJwU+jO4gxvgKmXDZD2sQzsLzY/uvdPU9F
	zfAhkxQTmV5NFzwvQ2Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxQN-009n4l-6P; Wed, 23 Jun 2021 07:35:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxQK-009n3v-5q
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:35:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04F536128A;
 Wed, 23 Jun 2021 07:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624433747;
 bh=pCOhVJN/mvleiRbdksd7EMIoZK9+lmr+dtQTNulvelw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MjhbzRFvwHvypgQZoJh5SxzpMVOS+MbnMFxQH6BZ6fspyIZpjteJhlTekt6oyhSvp
 N13atBa15MCb3ULaLM3fJe2BDYGygXhjVo7MEreOX4Ltp7yKk//J4dlY75QnfkW8cj
 c1laWpwl1fAGavsgwXPkbd/AvX/oyTqYgU/spWBpsm2mcgaWQSd7UK5AUZyfj0skVj
 8eMcjYR7NgQZa2nRCa5X7mNqo4NaOaTtSH5xRJbAKxy1cC6CF58FPPZiRqYLoXV6V9
 Zt5lpqRbSqLgc0BPl0Tecr9hQPyHfk9gEnLaf7N2gBBMMDymQRJ4noOpRhelYjioy1
 AyWOb8IOAG5jQ==
Date: Wed, 23 Jun 2021 13:05:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
Message-ID: <YNLkUNrqIV13NtMI@matsya>
References: <YNLRn/5JkyYhYwxi@matsya> <YNLhBZokBed/jxNC@kroah.com>
 <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_003548_289486_EA56F816 
X-CRM114-Status: GOOD (  24.23  )
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

On 23-06-21, 09:29, Sergio Paracuellos wrote:
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

Agree, I should have _not_ picked this, sorry.

I am reverting this commit and sending updated series shortly

> This was turned into bool to automatically be included if CONFIG_PCI_MT7621
> is set. This should be the only requirement to add this phy driver for
> real hardware since it has nothing to do if there is no
> CONFIG_PCI_MT7621. That's why Kconfig is now:
> 
> depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
> Am I missing something here???

Yes a module can also be added. I think you should select PHY_MT7621_PCI
in the PCI_MT7621 Kconfig

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
