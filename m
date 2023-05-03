Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E43C77B75
	for <linux-phy@archiver.kernel.org>; Wed,  3 May 2023 18:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQitzoxl/nGOI3xYK9iRyWBodRAKcQR5EQ64KPYgn44=; b=fL3W25vpLjsBNu
	hqDaYGMpRqQGTZOpVG95MHR81J9DzWnGRzadPxveZBqb7bbwVQDd2K1z7xKVM9vNrQjnKrohS8hfp
	zYyxSwJY9sk9kGL2CKgWn6xE+Wx5C5TEbIPxQ3FH0YBQ71FUS6LZmOwQO/xwsKGXc+1B6RuBXqIRL
	oyx7x6IJsFD9e/hhKVigZFpaFoNKvlWbSZ4LyIa82xPUQiHztaccPqK8bX4gvowWTCjOAtTAd+YSe
	0/zUbP36kPwXEp3djQbsNlfXKZ2prtD4ewjQ5i3aEZh9RujYI8O8ece5O3NSPLgAWcDYNlJ9cKsWU
	bXm+P3uiDbp9n3NTWzRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puHH3-005PSm-0k;
	Wed, 03 May 2023 18:32:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puHH0-005PRv-07
	for linux-phy@lists.infradead.org;
	Wed, 03 May 2023 18:32:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA09462F5F;
	Wed,  3 May 2023 18:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2DF43C433D2;
	Wed,  3 May 2023 18:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683138736;
	bh=0wIttIPof6+XCGZuRAIFD1NPVVm2uFFs1iAfaR6EXRw=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=DFDPL2jz/y2BPyqzrDxGzixTrmCYORISdzEQyawaV5k1XdY9qJ3TkA8eMQ92VsnAW
	 yWHRM51Y4tr5k8r9Ofs1XSyE6XTFAD9/nM+3pmhYGG8IBEZZd8o72I0Ho/JXQT5DWQ
	 RSp1/+AQINhehZgBE3m0V74pLPiuLmxQR6skltrkK5UIOrdjLMUPQjqJnkhTl/NluZ
	 o0+G0aMr+dYG7qKXGZfZM2umMVw/PM+YxXDW25zdugICZJFu7l/MJJ2fADisq4U/p7
	 uXE4CsnZ2K0NrJOQaXudc2+jQOnD2vPtzxvf4KjH7UZv74iVxE0eesmMSVI844f4Gu
	 ydpSPRj5GBgsw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 12552C395C8;
	Wed,  3 May 2023 18:32:16 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy updates for v6.4
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZFI74eeUzVPKhi4f@matsya>
References: <ZFI74eeUzVPKhi4f@matsya>
X-PR-Tracked-List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
X-PR-Tracked-Message-Id: <ZFI74eeUzVPKhi4f@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.4
X-PR-Tracked-Commit-Id: a0106132372120dd0abf5ad7636614e5aeb5da08
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 54bdf8a39931cf8fe2c74432e715353d9a1c1107
Message-Id: <168313873606.23026.140779276363218902.pr-tracker-bot@kernel.org>
Date: Wed, 03 May 2023 18:32:16 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, Linux Phy <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_113218_137062_EE4F9870 
X-CRM114-Status: UNSURE (   5.22  )
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

The pull request you sent on Wed, 3 May 2023 16:18:01 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/54bdf8a39931cf8fe2c74432e715353d9a1c1107

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
