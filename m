Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5C3C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 16:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRN0PakhDRRY3oupFsgh7FUT3hkkX20SDHhWjQKGeMk=; b=AyGfrWptq1BDQc
	YTNQTsRtBKLXotDiwqZHQAVj91PD9QVy2faNpoLY9NjAmYV82J/RNm2YwfXl0OLcsN3RylYq0HS01
	L10xfLGVIq8Km5uEXeNwDzVzdsnburs9NDy0PP/INdb59rt2j4RdSCqbAY51WzE/ATuEAaHfn1zuU
	SUOMnlAlnE9oneSR18cFEAIlyZEFc/9lkMX8vMUgV+yRxiCmZZ159ziSwcxe7Q/DAyg7IUrM6sPhu
	zWg5fRqS2c5yGBciui3HBzxap9XRHWimrC/VpVbHRvmNaUgMCAeZa6hMBm/sbCylUvqvv28nMMjbA
	RU4LlDHagerrygfCgXmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JB5-00GCIg-BW; Mon, 19 Dec 2022 16:39:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Hii-00F9B9-7A
	for linux-phy@lists.infradead.org; Mon, 19 Dec 2022 15:06:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CEF16B80D19;
	Mon, 19 Dec 2022 15:06:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9447FC433EF;
	Mon, 19 Dec 2022 15:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671462381;
	bh=DVHmH0wJVaOboHLD93hDESAzfWPcwtWVm+WNLpgDba8=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=vFbrCVKLqak0dUv6+9rr2BSk5153w7YWTWDoaR0xY7JSz3Y2YsUSj81SauUxLO2jV
	 5ZH7f+HgXa/Rk1QF/6nR2018qh/8bKDNQ/2jvTTIA9yddv4oAbYZiFv5NjgFRckFDG
	 hhdvdkQ1N09f0ZDk5GDKbNexEJckeNI0e1V3oKrU7Waio9P/8LagHJUpj3GduUvXWH
	 7ppIVq45E1PsSwSViYJ87it6hm7vD0TyHSbeOrEx1PlRVEml7EOiM2ndNSiEGhXAV/
	 7qj2r60/rs1SxMdUovyf+nuVacXxkPwtJmw7mPCy8aQRlZgpeZI7WB0uT/IBI6cYwd
	 PSCaJvmszC78A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7B914C00445;
	Mon, 19 Dec 2022 15:06:21 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy updates for 6.2
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y58jOP0HrtMxuP3y@matsya>
References: <Y58jOP0HrtMxuP3y@matsya>
X-PR-Tracked-List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
X-PR-Tracked-Message-Id: <Y58jOP0HrtMxuP3y@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.2
X-PR-Tracked-Commit-Id: bea3ce759b4664f20f1f57c53fe018c3b67da147
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e79041113b19b8c7b8410d862d4a3630debded58
Message-Id: <167146238150.24644.6715148494439977956.pr-tracker-bot@kernel.org>
Date: Mon, 19 Dec 2022 15:06:21 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Linux Phy <linux-phy@lists.infradead.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_070624_452382_DBC10E2E 
X-CRM114-Status: UNSURE (   4.87  )
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

The pull request you sent on Sun, 18 Dec 2022 19:57:04 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e79041113b19b8c7b8410d862d4a3630debded58

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
