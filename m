Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 009E5C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 14:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEDCm2CE0iQhobLJeyxA3duGEL/EJGo3c7qCIzkMt04=; b=V8jDs+20MV85Vu
	4fmpmE5Mq+tE1I3LGjoh3kSjCmHmgu6DEwXpViMbFocFzrek5U9Lk1hYh9+wMBCnv6s9BdqOzfLVH
	KFM6bNWpSYzki5o1yymW14/B0rXAY1Y3B7s8nEgNv0EuY7sNBvm5QWSARU7O8gbiTniRdDbmPSizr
	WYKDWD4V410iceWCXEDvLb8a6WzOIIfg9cfKJ8uaPSFUco6WSsZ6MA8fuTpbrIED9nkIZTNxbzI+d
	ixo1Gr1+Wg1L/9uKSPOuRu6gBaMOaKEV+NlQT8EYZNtkGc6vC7GYHR9wBzJemhE8l/Hk57lM1SilE
	T8YckQ3UF8Uu09qTnJjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKQI-006jRt-Ed; Sat, 05 Nov 2022 14:45:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKQG-006jQm-KR
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 14:45:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 23A85B80159;
	Sat,  5 Nov 2022 14:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 402D6C433D6;
	Sat,  5 Nov 2022 14:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667659521;
	bh=Uua9rMH8ov9+Gw+sFv2bzgzFPoAmAFSHy0HK4DaGsuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cwf0o+MI6eTvc8eEGGSkmY65qCb34GT2TnmxyNdEJrDRoJrtcJXox1JRT/o6Rfww/
	 ihv2k3Gcf/CKm5GtqARip6tQXM5Rxgs1o1dgkaDxUI1RW8mc1EJu1djdEJTSzTyRJ+
	 q5pgPo/zdF/9oveipcBqV7Zl0F1nWlRr+sIus+HBJJVmCCkeLq4gWupT3/ngcNDYjg
	 tOdan45o0m+dscyG9p7Xv5rvFAelqr4xQZ/me8JGAgI0Nrr117QxS7UvGzCvNFnL6j
	 wAZw4O9BdOo1snrqVsMvj/Gbp0f7JB8ZcTmsannVAJRwsbY8Z5KRYEtO9V3xe2e8/D
	 G5zvdiPvM6OUw==
Date: Sat, 5 Nov 2022 20:15:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
	Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH] doc: phy: Document typical order of API calls
Message-ID: <Y2Z2/Sz20QyZrek3@matsya>
References: <20221018175841.1906611-1-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221018175841.1906611-1-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_074524_827181_10DE2972 
X-CRM114-Status: UNSURE (   8.77  )
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

On 18-10-22, 13:58, Sean Anderson wrote:
> Document the typical order of API calls to used by new drivers and
> controllers. Many existing controllers follow this order, but some do
> not. This is especially true for controllers designed to work with one
> particular PHY driver, which may not need a call to (for example)
> phy_init.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
