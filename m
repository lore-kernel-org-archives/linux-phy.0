Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37BF1C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 23:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/ZLMVhcPKBuIqx+itu4qIJhcbVdxYk3p+yfmWmCds8=; b=CGAZoc0YhSn+0a
	9ykNf2PVHPcY8xMEwdDrQbYE7wcZXUF8hzsJWQdYo9r2GDTeKWCzr2fcmtwQBZzbbK3gsVufjfFVn
	SwS9tKOnc5RzaDRpyR16wTFoMHISIGPrKmdqnNFGXw9qOoNQl982ZwsG0B3JbCs/W81fWrxJFWuSB
	MqXcVajVfLvyEEoQqbLE+F8QmFonDRlDyliW3xsluQ1atr/feeY86QkemB+xOc6qhdWF/veKDD3ch
	/PLzqKeqzT9S7pcYqC3+NljvqvtFr2qWsi7lqfm2fWLT4r39sDynqejPlOxGMiJIs7maYpg2VYAf3
	nbNQrVo3DPVt8EtBpy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogwuh-00Aw6c-Gw; Fri, 07 Oct 2022 23:37:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogwuf-00Aw4t-Bu
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 23:37:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D1170B82463;
	Fri,  7 Oct 2022 23:37:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B01C43470;
	Fri,  7 Oct 2022 23:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665185870;
	bh=UT0fBj3Q/sSTm4mfK3K3G+RoC0C3koDkuE0Ecw+3nEI=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=myee/WwgnPcvg3AJ4n8Nmka2aNIk5kpbj9UJ77hZt5hZPkQRjPXBNAVab7wwl51au
	 t6L0qH/PBfOGVSti0VzlFtqoq0Qv4HQm8BC0PWXdEVydpwlyJNYz7ufdJ75tu2FW4h
	 GOt6pCLHq93Mioq1r9QItZ1503c9Zd/wrIsbHElQkY5gV5Wlr7W4BaLYZHkc5dVho0
	 VkuHGks65PHMbu24wY14yqjz6+P1fD07y9ENGM710Bnr331TFgTwAshQ+8hgPDgsgl
	 TJWH3jEVt6mOiRZYqzwfQysbhYQMc/qith5DKUlxh8jcJ1l9qb0iehXQfft2JPKPzo
	 SkxIClhwVa6Og==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6EE72E2A05C;
	Fri,  7 Oct 2022 23:37:50 +0000 (UTC)
Subject: Re: [GIT PULL]: Generic phy updates for v6.1-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y0Ak14T6qDHEq8bi@matsya>
References: <Y0Ak14T6qDHEq8bi@matsya>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y0Ak14T6qDHEq8bi@matsya>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.1
X-PR-Tracked-Commit-Id: 9aa0dade8f6b4cdcbb114e1a06037939ee3238bc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 33e591dee915832c618cf68bb1058c8e7d296128
Message-Id: <166518587045.18327.1307511524367186977.pr-tracker-bot@kernel.org>
Date: Fri, 07 Oct 2022 23:37:50 +0000
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Greg KH <gregkh@linuxfoundation.org>, Linux Phy <linux-phy@lists.infradead.org>, Kishon Vijay Abraham I <kishon@ti.com>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_163753_578595_833B8916 
X-CRM114-Status: UNSURE (   4.49  )
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

The pull request you sent on Fri, 7 Oct 2022 18:38:39 +0530:

> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-6.1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/33e591dee915832c618cf68bb1058c8e7d296128

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
