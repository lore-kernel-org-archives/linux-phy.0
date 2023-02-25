Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8384C7EE30
	for <linux-phy@archiver.kernel.org>; Sat, 25 Feb 2023 01:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owR0tl4DZwT3f0j5ZDwEgnE+KNHGtbsynGF1BZu4eC8=; b=NVurfORR9yAS7/
	cFVOACterwkduOhMHOSNk+pXmfrkuFOMaNsghFkIR+QAB1V0gO8Bsoq4EYaGcCPJ0vH3Qxnb0BX2V
	/9KPPV0CtRNNLVCwr9RUB7C3tIO/xYsVyIqOJYOh+k7r74UuQIQttxgOhnOrUdAIc9rCAvzqyRBzi
	S8hjUyB6+z+YVL1FrBL8+wFFIMSpfHGb5f+GhST0vq/5/3wgtopVvQxDqhQfm9qWiIJ6eJDu+sQiO
	w8yr095cU5k8P6Sd76SW2B8ON/ybRbOoTn9jCQT/lU6Fk4/TqJ9lPDBRiytZ6O8Dke0HFETpATsRu
	BUKttWzsHXoAvxDBbpGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVjVf-004Yd1-V1; Sat, 25 Feb 2023 01:37:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVjVd-004YcQ-2S
	for linux-phy@lists.infradead.org; Sat, 25 Feb 2023 01:37:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9749B61912;
	Sat, 25 Feb 2023 01:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08ABBC4339E;
	Sat, 25 Feb 2023 01:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677289075;
	bh=4jayJUebCMjDp6THBy6SHTCNXR/U37FXifVzlOzX59o=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=Kza/Gb+S5DAvIOeDXA/1HkT2va5gEDikSsUQcD49+rbpxmsd7b+4wqbUMHHrkwFBq
	 Pck96k175zntty7y1dqSZpM2CsPb5DzI53l031Zd5bvfxvWXoSV4IS7tz6YWRZWTS2
	 2hL2HDcjj+JD6yTd/bHY3w4+tS1wZvwPrOL4zJ7oTrX/mkemk7zDUzbPayMKXtWReq
	 7cD3F/Yly+G/DcMs54f8NntNKx7WNPrrE/EdKdMl7YH9H1Q+523yKQ5ayLNTeaUtKt
	 vgpH17WnswnKC/puo++O2zpzXQrq6gHV5RFUNcYi+y98ChPYUrtWMTFXJ6IFpgX2rH
	 5f/Ge3J8/xWTA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EC5EEC43151;
	Sat, 25 Feb 2023 01:37:54 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy updates for v6.3
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y/i/dVFrB855ADjV@matsya>
References: <Y/i/dVFrB855ADjV@matsya>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y/i/dVFrB855ADjV@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.3
X-PR-Tracked-Commit-Id: 3584f6392f09440769246d4936e1fcbff76ac3bc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8ff99ad04c2ebacb272ff9e4f6155c35be136b3d
Message-Id: <167728907496.28954.935929983155164636.pr-tracker-bot@kernel.org>
Date: Sat, 25 Feb 2023 01:37:54 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Linux Phy <linux-phy@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_173757_191920_362241F6 
X-CRM114-Status: UNSURE (   4.46  )
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

The pull request you sent on Fri, 24 Feb 2023 19:15:25 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8ff99ad04c2ebacb272ff9e4f6155c35be136b3d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
