Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 418DCC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:17:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B9AE60F41
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:17:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B9AE60F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+WC7r/pqOtd0vj6Y2Y5jIkvMIl78HVndte09zjOM5c=; b=l5NJNJlZzWpqTV
	T+1CUS51tTNRlj7unC1WthGnfpFrx0zP2V2xYXzZ2hnn2SqSGbBEBHTiQk2e5RWxsNK1a3jFLPH5n
	6McWBk91sDxBypX0jSupuCZLOPgPzAgSHCnF0quvakdBbgsDhPFjdOdDr0BxDfnboSHMSETpxfuQc
	f3MXv+Ds9cytQAuNGZ1qU99TpSQWHLdEvtxmXsA1u6RmvXLVKzOVNP/5Ozlnoyrj75hgboKQYvfLt
	0ESiSNvw9H4spU5DJkpOm9+i4DoPXagdxuuNQeg5oxjUN7YZRu69j1dgFpL5u3RUzowejLqkAHPvJ
	WYbHwLGjtXoUU3NtBf1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw9T-0024Iz-Dh; Tue, 17 Aug 2021 10:16:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw5e-0022T5-FM
 for linux-phy@lists.infradead.org; Tue, 17 Aug 2021 10:13:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C401F60FD8;
 Tue, 17 Aug 2021 10:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629195181;
 bh=4F7fdKFyUEZWj0E/8F8dIeSaqH6q3diYSPRZQZMMyiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A19Xvrus49Lnhzl3aMazUp5nqsFGrE9Ya60O09HOrkVLBWTzp/+kYMHOKGHxRTUwY
 IlSzgQbbJAn/Zy+BpeMWBuY7qK54Q5pKtO/ox4qj3BXNazG+Yn4q2ykO6VKNxMdDMV
 YzAVNReBX4Hq5LFuAw4jLIq0eDAIIR9yvFp1z8upaXsVb0a2Z+ZEU4ZZvppoSxOJro
 lmhfgH16peUA5PWW+InmKJiQomLRuJBYMgPz1949zdWYDZEn6C036820Ah2pUJbKjQ
 XwGOKe/HRWZlChs0O8aWbjiel2HVo5EC8SCLnt1SsPSIxfdZjWnXdpSB2j79thY0os
 Z0AEJCisYBHrQ==
Date: Tue, 17 Aug 2021 15:42:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, p.zabel@pengutronix.de, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, mparab@cadence.com, lokeshvutla@ti.com
Subject: Re: [PATCH v3 0/9] PHY: Prepare Cadence Torrent PHY driver to
 support multilink DP
Message-ID: <YRuLqAH12Llvbqti@matsya>
References: <20210728145454.15945-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210728145454.15945-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031302_580988_5C315365 
X-CRM114-Status: UNSURE (   7.73  )
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

On 28-07-21, 16:54, Swapnil Jakhade wrote:
> This patch series enables Torrent PHY driver to support different input
> reference clock frequencies. It also does the basic cleanup in order to
> add support for multilink DP configurations. The multilink DP series at
> [1] will be split in 2 parts and sent separately. This is part 1 of the
> series.
> 
> Support for DP multilink configurations with register sequences will be
> added in part 2 as a separate patch series after validation.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
