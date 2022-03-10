Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F8A8C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4JU3S7EmCVleGGVr/KytoptHIsYPjJUvofGR0yAZKA=; b=mQh5X55mC4AFdL
	0PXtwws78KRq5+cRfr2HZgV5P8fRSI6wvYW2yb5M+QTk8kvBtHPPVlN5SNwqQstSu1Jw9e+LO3QTM
	bmzJR61wwUJelGymKKRLu2UDdk/0wAHV0HmqWUASpiW+63KY8cBKI4hZEopiev5huBjO/TmXuZJ1N
	bGbKUORhMa208lJraHr52+UmF5TK6JwewK4YiomL1ZTIGIY2KnM0/6O8OZusyQDdlp5OYzDE4y3zv
	7n/EicE6wXzx6e6VfjGEl0Pcplf76i+u4vuH26hhdRC9iPHtSPcjhOaGZ3A3uctze3fkkOkyBuWdi
	xHFLnA8RnJ3M7BCNJszw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSQin-00E7a5-Vi; Thu, 10 Mar 2022 21:53:21 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSQil-00E7ZB-JS
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 21:53:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3C64EB82663;
 Thu, 10 Mar 2022 21:53:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87F59C340E8;
 Thu, 10 Mar 2022 21:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1646949196;
 bh=ELDMz4ZJxMMGxscYfx34KKaOhnj2XGHJKkEOFAkp6JY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T7GxiRBjKwzXfujEBnnTkfhs5eDX3moRl3BTfNw1KfdnaRxeoUs9gB89QwhS3S6/C
 RWWQMTwenRiDdDFUByvSwKZMBIhd4fz2mXgVoRcMPcn8eUzOS5Ary/qTKleAkb71Xh
 l2PYM/LGtF2LhMDiAoR0qbocsd9vNthFyiFNPjEk=
Date: Thu, 10 Mar 2022 22:52:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL] Generic phy updates for v5.18-rc1
Message-ID: <YipzBhbHRbcwlWzt@kroah.com>
References: <YiJM/aHDOqqcvimp@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YiJM/aHDOqqcvimp@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_135319_827757_9C147B64 
X-CRM114-Status: GOOD (  10.62  )
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

On Fri, Mar 04, 2022 at 11:01:41PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive the Generic phy updates for v5.18. Bunch of new
> device support and updates to few existing drivers.
> 
> The pull is based on fixes tag you had merged earlier. I had merged
> that into next for resolving dependencies between next & fixes.
> 
> The following changes since commit 9a8406ba1a9a2965c27e0db1d7753471d12ee9ff:
> 
>   phy: dphy: Correct clk_pre parameter (2022-02-02 10:33:04 +0530)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.18

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
