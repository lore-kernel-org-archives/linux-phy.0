Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97444C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Nov 2021 05:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xA86QAHkVw/TpN8EsCP2vvB+46hbmwilc+/Bybp0pP4=; b=KQvva19xniXx5k
	Do9UbnY1lPcT6MOJmpRQIFWJt7H68w9n/kjssCuvJBk+FJJPaAxocVCTvnV6qly+PyaiDyMDfNGUa
	2k0AbZ3MPo2DkGRqZSHyE2ZPuYi1uW84XKtua/tPJ8/WDw8PvIGdnXpeJQNV6hXdS2fiWPd09viQc
	9WQgXhlq1IAfyxd1ayIWvw4esjyOKJ0839gW4fuZv5UzGvb84gpJER3yBkBMvK82BkaSR+WPzYhVG
	6IO4CidlprG29wwVVD0eGR1fdlND0MZ4D6jN3briYcHAAYuk8pHE0a3n6ByEL6/BgufZrOesIPvs6
	8ZDBJFhXGlElkRDnQv7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq754-006O1u-3S; Thu, 25 Nov 2021 05:13:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq752-006O1M-A5
 for linux-phy@lists.infradead.org; Thu, 25 Nov 2021 05:13:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E18A60FD9;
 Thu, 25 Nov 2021 05:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637817235;
 bh=GU6JgszEfSd7WhXm8ULpVRPGKfHeIqRiBnSpxytVmrc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I0d74j/sb8w9Nrtb2kLpdjdehAmwJ9h7QLNLAfpHZf1IXbo90S5/8k1/kQTGcnrYe
 VDe9oXsVpMwWkiI5hi1JxjlFkwFWnZ0s02u820166mjlvO5I8ssMRRKc5uR7NT5P4j
 NXxD7ShpVjAPRJZlpD+wsk0xtWl7CENxdXEba+NTzOzl4qkX+bU9e98gAge/g5bkgG
 bHp4lT+lfEBF7kAkFz8oLXsjMGgywFTEARaXk6j6XgpA1iLGJ/xQZgw3Sq0xEB/JiI
 b6RucuAPeU1CCWOWhpezTwSqBe+xYKXoHh5Ai9s/19KXcYUYf5ouBt0mnmMNdd0p2a
 6FIu6P1XYA04w==
Date: Thu, 25 Nov 2021 10:43:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liam Beguin <liambeguin@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: ti: omap-usb2: Fix the kernel-doc style
Message-ID: <YZ8bj+q4jLXfMD3X@matsya>
References: <20211120061531.410771-1-vkoul@kernel.org>
 <20211120061531.410771-2-vkoul@kernel.org> <YZkum7CrX/51TpMx@shaak>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZkum7CrX/51TpMx@shaak>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_211356_398299_E90047A4 
X-CRM114-Status: GOOD (  17.89  )
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

On 20-11-21, 12:21, Liam Beguin wrote:
> Hi Vinod,
> 
> On Sat, Nov 20, 2021 at 11:45:31AM +0530, Vinod Koul wrote:
> > The documentation uses incorrect style, so fix that.
> > 
> > drivers/phy/ti/phy-omap-usb2.c:102: warning: Function parameter or member 'comparator' not described in 'omap_usb2_set_comparator'
> > 
> > While at it, use a single line for function description
> > 
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> > Changes in v2: use () for function names
> > 
> >  drivers/phy/ti/phy-omap-usb2.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> > index ebceb1520ce8..3a505fe5715a 100644
> > --- a/drivers/phy/ti/phy-omap-usb2.c
> > +++ b/drivers/phy/ti/phy-omap-usb2.c
> > @@ -89,9 +89,9 @@ static inline void omap_usb_writel(void __iomem *addr, unsigned int offset,
> >  }
> >  
> >  /**
> > - * omap_usb2_set_comparator - links the comparator present in the system with
> > - *	this phy
> > - * @comparator - the companion phy(comparator) for this phy
> > + * omap_usb2_set_comparator() - links the comparator present in the system with this phy
> 
> My apologies for the noise, I just noticed your v2.

No worries :)
> 
> Reviewed-by: Liam Beguin <liambeguin@gmail.com>

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
