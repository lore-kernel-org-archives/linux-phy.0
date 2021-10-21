Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76134C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 06:11:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41B04610FF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 06:11:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 41B04610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKvvyfzrqcloGkzKHzKJNkP31ro/eBimBpZVOxzZpqI=; b=g7mwVzeM8ivP/9
	6BG2BJpWz69i+iyt7f3XqY6E0ToPe/abL6bcM7VqAq0C+F9qZUCu7J1xJniPA5PtKrXQA+jN0GnKn
	jGuutx9oKiukoDaH2jFgKBeBA8fIiYah1yJzYll/vJcD5YST9abdJAHgiEKoJjG+DyN8s1vU/IBQN
	1ektkUxOzrfal2p3M5bDa1fQSQhqUYcB/HIFS88OHn+EHd5kBrjbaJiSrgfnxFzPD7kU44xkC3cX9
	A8HVyMWSjTFlSZMw1gR8C4rQYgy0L2SiamZf2GD6G3r61jGSY+fX1LlnHEnb27r4yy4RLi52Lf/0f
	mS3qfSxrAjqgCG/JNy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdRI9-006UYw-OY; Thu, 21 Oct 2021 06:11:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdRI6-006UYC-JP
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 06:11:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3BDAF60F57;
 Thu, 21 Oct 2021 06:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634796662;
 bh=cLSPcz5o6Nd3ZF5ZYiGKFvfPxQ4wyBKrhoKQQIRSR7w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IJcRuG+eSBiqg7iPDFVDbfQQP+MQf113rokN4sFL0rXPfrwPTuG0V07qoq1+TxJs/
 YeEbBNgjp8lyhmJ7mRbBw1VwIeHKUbivVRwa6HO+deLHMgfrjBD7dSdkGaA6pgvpIB
 5nA04BSv7XDN6X7gRmhcklRSVGDVhLpEflYm2jbsCvWNpwIHY3JIZO5T+71VhiFPHi
 zEAiXPiBVJSz0NKkqwVjedvB3S588JGbRPIhfzYW5Yc4bMczcxOpYlOcSIxMngVA/W
 aQeMSHdga5PzdRuAUbsSPCIQ2LeTFsnhvwQgMstC/wX99BV7ShF+KVu5GeTkar4tvh
 5GsyxCiqj8pJA==
Date: Thu, 21 Oct 2021 11:40:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>, kishon@ti.com,
 robh+dt@kernel.org, andrew@lunn.ch, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <YXEEcJHuEdFLPyCU@matsya>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya> <YXA6lZBTeA6aNxVD@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXA6lZBTeA6aNxVD@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_231102_681240_D2065BA2 
X-CRM114-Status: GOOD (  10.33  )
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

On 20-10-21, 17:49, Alexandre Belloni wrote:
> On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > > 
> > > > Any reason why this is dual licensed, why not GPL only?
> > > 
> > > No reason, I think I copy this from a different file.
> > 
> > Please have a chat with your lawyers on the correct license this should
> > have!
> Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
> Microchip.

That is why they need to talk to someone and decide what license
applies :)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
