Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18DADC77B7C
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 00:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoDYybBY8AKuj91D7pdTl+xbJiJvJnKtoaVM/ERmnNA=; b=PL0WgG1FwiUxR6
	xzTO0u44rnmn9q2kTHUqP6V1qIQiqS2u6AOGIw4ZIU7Y6Wp8ADKY4D7dqOHZE7QDN1FsHGSIkh0MI
	Iq30Ao9MvA2xCC44MKyTQes1QbOJfV9Fvk+dUhGUF269CPT3wUlRVjU/9Ehb8NfLBIgoxVsfHmzfr
	vv9RkCcPAONcUQuT30qcNa+e0CiIyPjmli3e8T1nOYzK36j+lbGRDmHjQqtMSmQgYLoPOV1HHVsZD
	18dTyP8KB1TZWzKjg6B7NySvZl43pstiffbRDeFfiWtktjGKabJXMLO6DLtruB85t9GvbTdMR7fXo
	dHC4G4tFkx2aTLRq9KFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QTk-008i3u-1T;
	Mon, 29 May 2023 00:11:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QTi-008i35-1h
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 00:11:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0326360F39;
	Mon, 29 May 2023 00:11:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCFAC433EF;
	Mon, 29 May 2023 00:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685319071;
	bh=63hQ2WLDoWWC5Pz/mOa8TJJ4lnb1Cuun8voMWjta4RU=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=HXDZQHOSIMcJo92m7A4X0Pe349uxUzrATmb0TL75u4dHCZ/cRMra0mKUE4pZ56JsB
	 DTJcq7XUEqiFMRFQnpp584fwT4aJTj+5yiCGJ2xOZ+xrkJ647iiMxPTjj5rGiSbO3n
	 r7cMqmPvqYgUFlaqXuNAzgkCUU7SqjsP0Pz7JR9pP8QSLu9uiEhs0zMioVbiVL6jJm
	 NXrJIthRFyo3/6nrq9LPoc2oqE3xJ+87eGJNZPhwXR+qHHycgR8L6tMsy0a8DyPhFY
	 oREYEFyb9K4T0tOGaEPrMYRCPZJmci3EKoxj0WOXfM7QMZ4xGLGVcXoffgo0wS2Uhp
	 3Sv9VSLRhiMfA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4AE12E52BF1;
	Mon, 29 May 2023 00:11:11 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy fixes for v6.4
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZHOUGa/W46wBDwmv@matsya>
References: <ZHOUGa/W46wBDwmv@matsya>
X-PR-Tracked-List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
X-PR-Tracked-Message-Id: <ZHOUGa/W46wBDwmv@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.4
X-PR-Tracked-Commit-Id: 2a881183dc5ab2474ef602e48fe7af34db460d95
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e338142b39cf40155054f95daa28d210d2ee1b2d
Message-Id: <168531907129.13206.12583291061164513017.pr-tracker-bot@kernel.org>
Date: Mon, 29 May 2023 00:11:11 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Linux Phy <linux-phy@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_171114_615607_75F469AB 
X-CRM114-Status: UNSURE (   5.19  )
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

The pull request you sent on Sun, 28 May 2023 23:19:13 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e338142b39cf40155054f95daa28d210d2ee1b2d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
