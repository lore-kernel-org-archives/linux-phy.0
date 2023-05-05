Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EEA6C77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 19:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08VygpzgeRCt8GVrJ//9YTWIdpwmLNDilqkuo0GLT7k=; b=IyxKH7KtzgklFr
	mNZL+sGSPR+FEv3Qqc6OFd1Fc3Uc6j/wHNeq3YylJBKJ928fL2KGgKcSFayTR/GflDhO3zpy1jK5H
	rypxZXGqFny54fnCND+O14XHKNxUWpvx4Vgy5rTfETW6TXBD7cJNKIct0VKdCVMgkB0f4Vu8Zzkz8
	2jL5fvuBr5yLbQy4xUa79bCvyRkYTcHITrcvmofPPyxIi5qy9kp/gTEJHrzFZhx0eU6j+rAzojUbu
	e3Jc6Gpj9L1j0s0NiZzuWSMcgTXhKmMniwhczgS3pmMRcBU+pGyuSIsoTnd2e2oln6wOkAoveHFCn
	8tklgMa70yj90edIBndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0qk-00BbDC-37;
	Fri, 05 May 2023 19:12:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0qh-00BbAf-1b
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 19:12:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 562556400A;
	Fri,  5 May 2023 19:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC288C433A1;
	Fri,  5 May 2023 19:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683313929;
	bh=K2Ty1cviSoGvbkucTdrELbYb+vY3LPDc6EGHXt7pVPw=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=EwJNh160qrpd5gTjYTWRtrAd1BvEOh9eHIoaCcPH2boaWBAM0ZBfXoYaNUWcBOtpe
	 MBf4YWeACB0YH/yjQmXPUXqCcMnRBmfNYdzxt2Wb2LPlNlroFB7pZagqIf8BnojS6/
	 Na72UCOOhxnJCqVTtNh1lG2CjnIruc6+9Nf/jDQ4r0dyt9y0L4X8HAxNjHaHPcxaVl
	 y6eM9XmLl+TJswbR6fFI/Tfzo7zxH9/2S1vqlapnWKEoI8teIlXZV+DgGGNY5Ne5Wg
	 5G8LCSBjHxj4qtMjJneaRMk/gp6Fa8XO+iu7Mln86w4Zl/joZ2eNT3ajY2/kWwKkVv
	 MJQ6u5wEwi8Zw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 92369C395C8;
	Fri,  5 May 2023 19:12:09 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy fixes for v6.4-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZFUELDT/xaxm0lmP@matsya>
References: <ZFUELDT/xaxm0lmP@matsya>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZFUELDT/xaxm0lmP@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.4-1
X-PR-Tracked-Commit-Id: 9d9ff3d2a4a567b543b71c2967d2ccc5e0ac6816
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b49178e68fc7e3333c3d9f96eb09937ca84d05fd
Message-Id: <168331392959.10509.18400093203969359314.pr-tracker-bot@kernel.org>
Date: Fri, 05 May 2023 19:12:09 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, Linux Phy <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_121211_589395_A6B860DC 
X-CRM114-Status: UNSURE (   4.58  )
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

The pull request you sent on Fri, 5 May 2023 18:57:08 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.4-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b49178e68fc7e3333c3d9f96eb09937ca84d05fd

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
