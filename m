Return-Path: <SRS0=m+Tr=NJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30D75C432BE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:10:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E24AE6109F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:10:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E24AE6109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zlbsFO9YJPXTp67MBmCnCjburzergXnrCIZX6pvqx0=; b=VTFvheSbgpuwk4
	58OqlnNqpeOCquZceHSvyOfEYXLrt0NwpLUT0aaIlQu3lK8WFDBmTGzNcWjLfCyJ2HQYCcWKSZsyD
	VtTUs5vArLTsw/PMXV5qKe2+Dw1OtC9tonPqaLgYWqT11E+J6DhNGUzsbY5UlElIwHxJ3KpT7aOig
	L5HqwLdfYaQXyv/1usYsS7IfYs9n6G+anq/dZVrDMswk3N/MHzBfyQKWtEbgxcubNgNikbOXTsGXt
	fiJbyGWngy59r47EGhtg58TXcpMV1QRyZ1e3fQ+OJrSy7VgYgsQVt5idtT91zSjb02FMiGyPe81rT
	qQqDF9V3PE22bYZb5L8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGIWs-0053Ff-Du; Wed, 18 Aug 2021 10:10:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGIWn-0053DM-2d
 for linux-phy@lists.infradead.org; Wed, 18 Aug 2021 10:10:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3357660524;
 Wed, 18 Aug 2021 10:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629281432;
 bh=wtzJaNgezxfs0TQnqSoSUw27h/DL/OT0MGIc9e+X4pI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q6UvBf55t8CPKajq0+X6SO+xnWGNl4TcIWSz0YSf03rMO1S0eIUaJXE1qjH3IE0+Z
 5t/YhHVZCGysC8PnT0YNX1mmSKzV8YbAf3xfBT6wET0IGSWA1hQAtUOoX/bIvkmgPJ
 29PIYLB9IVGyelebgAVPUpHWN16SS9ZXMmMG3oLP6GMz95GGz1+7cYwoDvbR9qQtE4
 jQkY9lUUNVWdqw79/si7mVWkPsPD2Q5VbaaH8wAYMdHbVtwz8PCv69rBLIoymswL1f
 xcsXLgIuBFmaqjnwDuR4wxKP8uzbsQZn4kF7Cc0Yp2XWmexxJuGe7jc72yLCaoZ439
 N7/UpvLD+SNYw==
Date: Wed, 18 Aug 2021 15:40:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe
 PHY
Message-ID: <YRzck9WqerFtu846@matsya>
References: <cover.1628755058.git.mchehab+huawei@kernel.org>
 <7788c5ead6d6f5a6f9e5faaee4460eb2149967c4.1628755058.git.mchehab+huawei@kernel.org>
 <YRuSnXHSZHhBC40r@matsya> <20210818110123.33eba838@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818110123.33eba838@coco.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_031033_244303_FFF7D970 
X-CRM114-Status: GOOD (  32.05  )
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

On 18-08-21, 11:01, Mauro Carvalho Chehab wrote:
> Hi Vinod,
> 
> Em Tue, 17 Aug 2021 16:12:37 +0530
> Vinod Koul <vkoul@kernel.org> escreveu:
> 
> > > +	/* FIXME: calling it causes an Asynchronous SError interrupt */
> > > +//	kirin_pcie_clk_ctrl(phy, false);  
> > 
> > when will you fix the fixme and pls remove the deadcode
> 
> Working with clocks on this SoC is very tricky: there are lots of clock
> lines (~70) that are critical for this device to work. Such lines are
> enabled via the Device's firmware, and are supposed to be always
> powered. Powering off such clock lines cause a SError.
> 
> Most clocks on this device are managed by the clk-hikey3670 driver.
> At the current state of clk-hi3670, the only way for HiKey 970
> to even boot is to add:
> 
> 	clk_ignore_unused=true
> 
> as a Kernel boot parameter. That is the solution given by the downstream
> official distributions for HiKey970 at 96boards.
> 
> The fix is to flag the critical clocks with CLK_IS_CRITICAL at the
> clk-hi3670 driver, but finding the right clock set has been a challenge.
> 
> I spent the last couple of weeks trying to identify the critical ones,
> as I'm aiming to be able to use a Kernel built with a default arm64
> one of my goals is to have this device working fine with a
> "make defconfig" Kernel.
> 
> So, I added this patch:
> 
> 	https://lore.kernel.org/lkml/2d2de5e902ced072bcfd5e5311d6b10326b9245b.1627041240.git.mchehab+huawei@kernel.org/
> 
> to my tree (which reduces the set of clocks using CLK_IGNORE_UNUSED
> from 308 to 163 clocks). Than I ran script that was dropping the
> flag one by one, boots the new Kernel and do a sanity check. When it 
> fails to boot, I manually dropped the patch, and re-run the script
> to test the remaining clocks. After a couple of weeks, I reached a patch
> with 78 clock lines that seemed critical, but the resulting patch was
> not stable, as, depending on the day I boot the Kernel with such patch,
> it crashes with SError in a couple of seconds after booting, or 
> cause the Ethernet firmware to not load.
> 
> I intend to keep trying to find the clock lines that can't be disabled,
> but this is very time consuming, as I couldn't find any documentation
> about that. So, it has to be done empirically.
> 
> -
> 
> In any case, fixing it doesn't sound a critical issue for the PHY
> driver. I mean, right now, this patchset allows removing and 
> re-inseting the PCIe driver, which is already an improvement over the
> original upstream driver, which was missing the power-off logic for
> Kirin 960.
> 
> With this patchset, both power-off/power-on logic for both HiKey960
> (where the PHY is inside the pcie-kirin driver) and for HiKey970,
> which uses this PHY driver. On both devices, I tested an endless loop 
> with rmmod/modprobe for the PCIe.
> 
> Besides that, in practice, removing PCIe in runtime is something that
> people usually don't do.
> 
> So, while it would be cool to balance the clock disable logic,
> I don't think this is a critical issue in this particular case.

Okay sounds fair to me, I think fixme should be left but the c99 style
code commented out can be removed

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
