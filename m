Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A76E92FFB
	for <linux-phy@archiver.kernel.org>; Fri,  6 Oct 2023 10:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1RhR82wWiI6Ticctx/nmqpzXf7lCGJ7fjESBJD3kcA=; b=ko4hCM6oNABdeK
	VhoTskhmK9sl05H8cVhmfaMH0AwZaieHBjPdy6Ebko7pHhVlQ9f0FccCubvxEW/QvjaeU780vQt2p
	8R+sKTIe2nrjPFFc3mc1bvHoy801yphnxzTymA7ddjJ6jMP4vVS1jVcjf52TxebQufqOT5cDpu6VP
	e+4I4ca3FM2/RsdPN635Bqx1kFF3nJcst2e3MeD9ygZS3g1+ymKNE3kvLtkbtlyZqFqYGLq41mc52
	6nO/eYP5eCOhwJMdsez2hgJARQbg++GoNiYcVvEHCpO5o35r0w5oNE2qQfXnOWKcQDjMzWHcVRpsp
	0or69LLQYbSaBfBkwROg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qohn6-005Sny-02;
	Fri, 06 Oct 2023 10:10:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qohn3-005Sn4-0a
	for linux-phy@lists.infradead.org;
	Fri, 06 Oct 2023 10:10:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E75C661CFB;
	Fri,  6 Oct 2023 10:10:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19889C433C9;
	Fri,  6 Oct 2023 10:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696587026;
	bh=TyMA7QWGzHqpaOo8yRqAooHEF0/hM+J1QpQ1B6n7uP0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=npO1I9xdhKl1rbvIEs7thvNZLqBhEreQi31ZWB8hbWycZfTGXLSqBY3wKTszi2EeH
	 NhshrnUj7JSUCM0L+mP8u3aHDH1af955xsVBTOoTOgP+sbwCXAjxfwwH+ydl0N/wr0
	 iTEEeHuWvpD4bPdukXyQD0kOepHD1VXBE0dfX1l1EUSSQ34MjHBlpUwmEspbIp4YGD
	 7ke8r9Gjz29GygfhqzMa4UZK3DZjZgySdXHZyRQFWSj/1qC36u5RmrJMWVOG1sLsU+
	 ezfdNwwgPTxFqHUr98uA548CpQ/LsPgkksuKLBbmrLQJDJ4qWMM/tZjO6mTjgu2PqM
	 mSF53uDcTOW6g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F1EF9E11F50;
	Fri,  6 Oct 2023 10:10:25 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net 0/3] Fixes for lynx-28g PHY driver
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169658702598.26383.13479730802203078272.git-patchwork-notify@kernel.org>
Date: Fri, 06 Oct 2023 10:10:25 +0000
References: <20231004111708.3598832-1-vladimir.oltean@nxp.com>
In-Reply-To: <20231004111708.3598832-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 ioana.ciornei@nxp.com, vkoul@kernel.org, kishon@kernel.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_031037_278339_681EDF9C 
X-CRM114-Status: UNSURE (   8.60  )
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

Hello:

This series was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed,  4 Oct 2023 14:17:05 +0300 you wrote:
> This series fixes some issues in the Lynx 28G SerDes driver, namely an
> oops when unloading the module, a race between the periodic workqueue
> and the PHY API, and a race between phy_set_mode_ext() calls on multiple
> lanes on the same SerDes.
> 
> Ioana Ciornei (1):
>   phy: lynx-28g: cancel the CDR check work item on the remove path
> 
> [...]

Here is the summary with links:
  - [net,1/3] phy: lynx-28g: cancel the CDR check work item on the remove path
    https://git.kernel.org/netdev/net/c/f200bab3756f
  - [net,2/3] phy: lynx-28g: lock PHY while performing CDR lock workaround
    https://git.kernel.org/netdev/net/c/0ac87fe54a17
  - [net,3/3] phy: lynx-28g: serialize concurrent phy_set_mode_ext() calls to shared registers
    https://git.kernel.org/netdev/net/c/139ad1143151

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
