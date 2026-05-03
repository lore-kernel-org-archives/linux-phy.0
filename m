Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40AABCD3424
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 17:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egbOdN51+MiavWgUhFg+8zGgvfARfSoIf7SGsiIpHT4=; b=laLGXE7GH7/USD
	3wyhGcXbWqYVFFZGCGq60bX2Cwc7q7YVmwEOjxU0H2NJXyPi6qA/Ag9lM0lx4Iee3OngkL26fc/HH
	e+CrHIsHJaTlJoiC3zoZ9wI7h+13m4rtPnnse+xOeIQWJP2Z3IKp+ndyOXmUkvY7Vkqib1SWb8UpF
	V2fnP0qWStj+7tz9H+3GNEzcnSFq/wnIposuQ/2m4b7XoHiDvHlLuaif5xpdncZdooS4Y5W2d6lX9
	sP0XTeSP/7HLk/w+brYnESKxvLTb9zArYIc7kRbERgobU+c/+cnnQ7FwLBdwlZ+HvT2zicLBOTy9G
	OSl+OBKLJhz6PKXK6DCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaCP-0000000BMML-4BMk;
	Sun, 03 May 2026 17:01:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaCO-0000000BMLp-1u5q
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 17:01:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5904060120;
	Sun,  3 May 2026 17:01:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D568C2BCB4;
	Sun,  3 May 2026 17:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827703;
	bh=fiLiaWwKrVIjOWaSnEWgSySv6Hyt/1f/Gq3WlcytnLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JDqRoansc7LG0FO9DJlMaR6cfChtEWl70hCLSoGRDnFHnCkaQwAenBhsF2TzVfISa
	 NXqeR+nQdHHWLLvU5DmPtFtymssVHP5VuVxpa0mGwPH7htL6DspW+U5V9z7kJrixnk
	 0e0O3bvmgP8nP0PKboyyHyNXBHHyFIhoINu4wMetgRoEZ2XEj1F2LoiGncWJ6DDhWP
	 Qp3fCc+WHA6KhKHQxBQ0gJdXGq0pojPs2M9Xxz/k5RCDapNVMjkr5uFoQ1Ieu13I+F
	 q+/y48w4rfKewY+hSdHpZwkT+5kGY4tdPYTazqRO+NwWXi8y85gbSFblD5PGcDYdr6
	 Eg85pMzHzPmAQ==
Date: Sun, 3 May 2026 22:31:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <afd_csl0eHFfVWLP@vaman>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad6KwGIhpJn_2eVz@ashevche-desk.local>
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

On 14-04-26, 21:43, Andy Shevchenko wrote:
> On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:
> > The driver does two things that need to be addressed:
> > - includes subject to remove gpio.h
> > - checks for error code from device property APIs when it can be done in
> >   a robust way
> > 
> > This series addresses the above and adds a couple of additional refactoring.
> 
> Any comments on this? Doesn't look like it being applied so far...

Apart from stray delete, rest looks, fine. Can you fix that and rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
