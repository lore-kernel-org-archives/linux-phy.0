Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81D4FC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 17:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kvkfbr5351OhOOIL0DjCVaY+Z1Iw80VGXed8sf7l3I=; b=DF+opniWdUDz9g
	vcZA1ms6mbXIeD8aENJPbcAuR0Glj/98kZMu1BEt6CGK+NSYc+oA+/Kgc0VUTPIWHk4y/+TmMAGNW
	DuMOMpIw2uPRLiSXZfrJELJX9lQvxOAn6XYMucM33eQQ3HVJOfUbhlZk8MLB1+aC+yJvildyRT893
	6P5rleny45x3nGR668+/3JHJ7Omb18XM+CKN+IAiHiO3qZfrKHLBplk364t5IC9oQWtuSkF9Oimfr
	FmV6lhIMDwwihCMpQGaeLH2myxleTVtjQlU7TAVmrSIK9Jo2sSNMw0js0YcSb2hQHTrXRoPR7srjY
	SnIrheE905jRlhpQ6eyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAxj-007SJe-LZ; Thu, 10 Nov 2022 17:03:35 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAxg-007SGc-0x
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 17:03:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CE1BAB8225E;
	Thu, 10 Nov 2022 17:03:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BF7C433C1;
	Thu, 10 Nov 2022 17:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668099808;
	bh=JqjcwJ5MnkAs4iuw3TTnpB8D3xFVrTblNg8QcKn1S+c=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=CjlA8ADiLIvWSZtKHtK6S4PYRVnvblXkNwLqaF1+jV4TSElAMtPYYCAxh4nN0vbYw
	 s1h89+R5oa8EZ9VY98b8iCTyPnivdeda4AnvY4CxojhBY5y0my0I5wGGgTfJ0Fa2Xr
	 gXq39ueitCjRvVeDanp7LF1p9hdn6oS5EThuqS86a+YffSSZKSPc95HpjKtMfCLHrf
	 B4fUSsVaKRiB9iQT2EN3C2mt6/wG2u/1egRq+IgC665+So5m0xXtMqPzwthiEILM7e
	 aOKXwPUXsvqg0IfbAKOBWxrcbpEDLO9NWZb+hpR84h0NYdsvknLDte73lUzkB2is0F
	 H6pkUIBEPseEg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 609D8C395FD;
	Thu, 10 Nov 2022 17:03:28 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy fixes for v6.1
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y2zGjvUEs1402DEw@matsya>
References: <Y2zGjvUEs1402DEw@matsya>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y2zGjvUEs1402DEw@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.1
X-PR-Tracked-Commit-Id: 819b885cd886c193782891c4f51bbcab3de119a4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8395ee62b1b78a3d2789840bf6bf1a7c43deaa32
Message-Id: <166809980839.1852.13706251158020656636.pr-tracker-bot@kernel.org>
Date: Thu, 10 Nov 2022 17:03:28 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, Linux Phy <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_090332_260208_2A2F1BA0 
X-CRM114-Status: UNSURE (   4.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The pull request you sent on Thu, 10 Nov 2022 15:08:22 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8395ee62b1b78a3d2789840bf6bf1a7c43deaa32

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
