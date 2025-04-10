Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441C8C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BytkBSTen0lYqIJ8zHYNUJBOQ8m7LAxxphECoqGj8Y=; b=UfZVVCjaEiuM11
	o5Wb+qhItkz/lFodUBa7neIwEtVXX1Y18jMp2DI3+vrIyRpgco/9QdCNpR3cxxGxhWjDzp9dFIAMO
	/rLvHZhEnpA7VEaaq9gZyiVknvr0t5gZ8N6rQoVNR8BswTjmoxXyCzbzlnac3krU3ddyepLm5EGhN
	yMzeEdMuKbkdm9kGtbLZWMklQla8TeDIvpYBWsU5anf631plf55VUrTmlDX0wsWFxhR00Ne/L1KRX
	YKCK186yDVMPpaCOqfQf7kHFdq3wq1aSISrSeJjNXUJlvub3RNOVaoFBrwW6onqPCI3AGFnB730oG
	cFLP3+debsmgwzKaOHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2sIu-0000000Ak2v-08oW;
	Thu, 10 Apr 2025 13:50:52 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2sF9-0000000AjCP-0c4Z
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 13:47:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9C964A48973;
	Thu, 10 Apr 2025 13:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C33DC4CEE8;
	Thu, 10 Apr 2025 13:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744292817;
	bh=zwA4d25ah+mvZoYrC4tRowa2RLqWtvgbqQJWlfZnLMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JUoJWD8uYX4yM7s6elH8ae0Xd1wm1WehC7D3FSe3d4Mk+njp9fOTgIL1N+N2uylJ4
	 JQNUiatvFap/4ndjE7iJRZKc4dNVEtMWEGyHZaMqIc+UnTFxe4o+BEBADAj75HZ7Vw
	 unCOiZc+CpwjAEyZZGPwGkXjb5693vTD0hi/dCanPlK1kS6IGYwFshMmY7qVJC1n+z
	 9IgZwHHdREjOCsSvDn/wQyAsHmijCsClwg62wjtJXz8jQdMzcYcrJF1ccpZLdtFxCh
	 sGOYMXowBdBD9lyNriCrnebMIZ523012k862xWlSxmrIwOJNg8hjr+yvR3EvPkhzkj
	 fFsFk4F+InQ/g==
Date: Thu, 10 Apr 2025 19:16:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: markus.stockhausen@gmx.de
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
Message-ID: <Z/fLzpuj13WRe1/0@vaman>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-3-markus.stockhausen@gmx.de>
 <Z1XLheRVQYu43hI+@vaman>
 <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_064659_249860_EA309B31 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

On 08-04-25, 08:18, markus.stockhausen@gmx.de wrote:
> > Von: Vinod Koul <vkoul@kernel.org>
> > Gesendet: Sonntag, 8. Dezember 2024 17:38
> > An: Markus Stockhausen <markus.stockhausen@gmx.de>
> > Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; chris.packham@alliedtelesis.co.nz
> > Betreff: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
> >
> > On 17-10-24, 12:24, Markus Stockhausen wrote:
> > > The Realtek Otto platform is a series of 4 different MIPS32 based
> > > network switch SoCs. They consist of:
> > >
> > > ....
> > > +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> > > +
> > > +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid) {
> > > +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> > > +
> > > +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_reset_fops);
> > > +
> > > +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_polarity_fops);
> > > +
> > > +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_registers_fops); }
> >
> > Please create a driver directory and add files to that please
> 
> Sorry for the late response as I have been busy otherwise. I will take care
> about the things you noted. Regarding this advise: Do you want me to create
> a separate directory in the debugfs or for the driver source code?

Debugfs please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
