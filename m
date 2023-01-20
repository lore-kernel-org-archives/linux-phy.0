Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EA40C38159
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 18:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mvPfkdF3LLeWlR6S3cjJ8SjR49HAn983JuRBeCDcYU=; b=cF/z2uiqTHhbTd
	/OgVtHjTphS2i6nLkWE8oDP/wVBdXuBPcJz4RyBXQDP/oMRGDBHhogOlJjZE3b14pUwnKepnIXtWe
	Dg4+PHdqIUVckuTkNR9S2Dlkk9d/jN6WriaScjlcWxAzbhQg/3XiUmg91ZynXdXg/rmm3oqlGcY//
	9dTOPmtgUCXL++T028ldDHoNOqHuVpwH+KKe3dQwnLRiJr/F+Y6yQxv3J49/hipeBC3BFfLfqu8Rx
	/PEy43EoHDddRKgeV/XcFgR68566PrYLhTtPkk9tHCLIMAvH0RaLmFyKZ0N7E5fbVqBngIaI97xeK
	F+gxSJdTnz6d1EVniiLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIwPj-00Bto7-Co; Fri, 20 Jan 2023 18:46:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIwPg-00BtnU-Rj
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 18:46:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 614B06205C;
	Fri, 20 Jan 2023 18:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8D1C4339C;
	Fri, 20 Jan 2023 18:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674240415;
	bh=kNbcAezO8Z4DN/HcD77SaNz5ilkQJtnSKKl1dD3ukYM=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=b+3z6eGL9J0tqjZ4jcLR56cs6OcP90JAJKb5H8siehDfNjWWHszHxUjAuWum/vTUH
	 zRKAS28dv5w2lntlnZHJGUDiOZPhZeYDPw3QIKu67h+bkr2r/Gc8GtRlYv0GRxuszl
	 GpfWoN/oOzxb/xhU514uiuG4WEslBfh6sj7Py/sL8fqGqvZnwCZhOMP//9qc+unP1T
	 Zu671TzO/zzyJsL8tfiPsjKIm9Mmv8mwfByMCtqSGhH5cH8wN6CJPGlP3LxaecNGWh
	 K8mO8/7uJx3S3t2HkWyorxnI3MazClhgNsu2su0P3zlzOn0+n7Pj4cjHALr7deVoMl
	 pyHnVJ6NgoRzQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id B80A5C04E33;
	Fri, 20 Jan 2023 18:46:55 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic Phy fixes for v6.2
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y8qr3cy7eA5RJqbO@matsya>
References: <Y8qr3cy7eA5RJqbO@matsya>
X-PR-Tracked-List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
X-PR-Tracked-Message-Id: <Y8qr3cy7eA5RJqbO@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.2
X-PR-Tracked-Commit-Id: bc30c15f275484f9b9fe27c2fa0895f3022d9943
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: aaaf919c2ef595ab9a8a6810f53a6db685dbba40
Message-Id: <167424041574.21297.11151887306594739677.pr-tracker-bot@kernel.org>
Date: Fri, 20 Jan 2023 18:46:55 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Linux Phy <linux-phy@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_104656_976092_EA3B047F 
X-CRM114-Status: UNSURE (   4.89  )
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

The pull request you sent on Fri, 20 Jan 2023 20:27:33 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/aaaf919c2ef595ab9a8a6810f53a6db685dbba40

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
