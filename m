Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6575D105F79E
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 19:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Lm+xfhoA3GSAo2b9FbhZMEwz6G5Mc7sRboIVIa9eu0=; b=AUv/kZsDaHZyjX
	YNZLN1ZNB1toSy2NDHBuiC6D5bmVmKKWwj2caTLGrNkDWjBDv3Gcosl9orondNsulo8k6SXPb66tf
	66nKP204kr9J4Yqw5b6OHVVQobEgONs86DO3IcAov4BAHDBDFmZ3y3bUZwqoUFpjS1pFboOzyvn3v
	+muA1M34pO68P90p0fAW2RkahMKCM5aWpUmOGBqXcizv6nCT4EsbaBS52ZgRdSeTODbwjUdjTUt/s
	GfRZORTnAFj/ndidERi5J3VRU+OfSYD/YW1svoBuzqxUPhpuagA0b0Y8BP6zYZCSQNp1CgwImfKCs
	tNf1n7qrN9p1MUhZIIVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1Ugt-000000027A2-3XuU;
	Sat, 14 Mar 2026 19:30:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1Ugs-0000000279r-0uns
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 19:30:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3CD726012B;
	Sat, 14 Mar 2026 19:30:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE5B6C116C6;
	Sat, 14 Mar 2026 19:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773516624;
	bh=APmw1QrkydnSiEcDg6aTb/isY0wGSJupEcg3DG3VK6w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=MBG4Cnp8TmSjYJ/nPnxaC9+u2NQoMP5Cuns3a18+6BsdMwq9YZ2NcgatqyssIO/b7
	 WRdMneJ1Q0MBpcryi8nG3wDYPAIRKGv+KQgfJ2SwuSrkblVhuYBhuZ7URoUzgkB/D8
	 CasuGk9/Vhz7SeKuOeCaXo2xctKobdWBw2EYfECkMCJeip56kGhSX377yFKzD+tirE
	 LvgF3hW192z/pFCLEPUHIOVOSYB1yxQNseNgEK79wl9Dt/Tb+jigpAdOUZBMfj+BRH
	 y4BV8zPhsbdhvYpu/SGqTQaNYj4Nm9qjf6jVDh+4klURhPzMzZ0XJ88KxTXJaCg8sS
	 SToMnoVEOdOGw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4007B3808200;
	Sat, 14 Mar 2026 19:30:20 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2 net-next 0/5] net: phy: further decouple provider from
 consumer part
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177351661903.1763199.2542451163758230122.git-patchwork-notify@kernel.org>
Date: Sat, 14 Mar 2026 19:30:19 +0000
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
In-Reply-To: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: andrew@lunn.ch, linux@armlinux.org.uk, pabeni@redhat.com, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, netdev@vger.kernel.org, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 9 Mar 2026 18:01:16 +0100 you wrote:
> This series aims at further decoupling the provider and consumer part
> in phylib.
> 
> v2:
> - patch 2: add needed Kconfig dependency changes
> - patch 5: explain false positive checkpatch error
> 
> [...]

Here is the summary with links:
  - [v2,net-next,1/5] net: phy: move mdio_device reset handling functions in the code
    https://git.kernel.org/netdev/net-next/c/2d7bebc9dd79
  - [v2,net-next,2/5] net: phy: make mdio_device.c part of libphy
    https://git.kernel.org/netdev/net-next/c/6df1459605ce
  - [v2,net-next,3/5] net: phy: move (of_)mdio_find_bus to mdio_bus_provider.c
    https://git.kernel.org/netdev/net-next/c/b69ceb387aca
  - [v2,net-next,4/5] net: phy: move registering mdio_bus_class and mdio_bus_type to libphy
    https://git.kernel.org/netdev/net-next/c/25b23d828318
  - [v2,net-next,5/5] net: phy: move remaining provider code to mdio_bus_provider.c
    https://git.kernel.org/netdev/net-next/c/c4399af5e556

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
