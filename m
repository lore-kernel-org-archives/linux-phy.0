Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D4AC6FA86
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 16:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8TPUMx6p+F2ZLi1y4y2yHgyo6YzA7jCp4+vRCcBg7U=; b=z+NkDLyifoNGhR
	Ru3O02eDKqOODCtXPpN1kCO9DXYV4ZSv62dxBSZCYsxECsjlB2E/2zwtZ9EFRf+aqfWoPZuTz0Po8
	GRUngY673EwVgDYjmK/ioNx4jGvVpWW2hUX0TXvQVNsP2iLPmFovkOrvMIA/kmMpBs5Tti9s0i9Ic
	GZ/c9VWuS53OCt4tDZfEnQSm0LKhV8g81CS0HDt7dHSlgEXHK/w77HqqpF/FQPIHsIcmZ+TPkN2XU
	KozIrkB3aX1XTnScwyZU8kF5nMw1+fXTHX41UtysPse5zyBwOLOlUArgbHhnZNFVrO/2qUxAMI0oV
	OLFbMg3lX4vnVAHQ11gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVF9m-006zmv-EX; Mon, 05 Sep 2022 16:41:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVCe7-00405m-PE
	for linux-phy@lists.infradead.org; Mon, 05 Sep 2022 14:00:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 48833612EC;
	Mon,  5 Sep 2022 14:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E3C433D7;
	Mon,  5 Sep 2022 14:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662386414;
	bh=Xuprs2MAHE3FNmZK/wLqJF3xpvEk6SEVjYJwRRAVh70=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=KKV9kimMSkHJHH/2mLd7bbMxvzRNSI98TWtghR1rSt/83kgRhgjwV84dFCtwfPuBt
	 aVNcVFX/Wmd25Vx+WcRyz4+uytjbGniVTOGDDQynndCpfFyAnPgmYDNqTvCr2XRKrP
	 JnSe6UM1WtjLqycB0xJopkhg1XYXY/mtXVM3hpbSwgEJRvB4h8EPVccKTdHRjxnjJQ
	 M0tv7ytOJzKgCojUkEwDv43BCBtogCNtJomvkJmb9IxfijuieoiK9aAUDVvmGdpWFS
	 W362tM0BbpHbCHz/Uz6T+prIUYDbwmvidxXAvUC2xuzHsA+5v+Q8mmu1rHH6CxmYVm
	 N8hvGpvWh0v/A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 8D02FE1CABF;
	Mon,  5 Sep 2022 14:00:14 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [net-next PATCH v3] net: phy: Add 1000BASE-KX interface mode
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <166238641457.11602.14140679950100520661.git-patchwork-notify@kernel.org>
Date: Mon, 05 Sep 2022 14:00:14 +0000
References: <20220902220240.996257-1-sean.anderson@seco.com>
In-Reply-To: <20220902220240.996257-1-sean.anderson@seco.com>
To: Sean Anderson <sean.anderson@seco.com>
Cc: andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 netdev@vger.kernel.org, kuba@kernel.org, corbet@lwn.net, pabeni@redhat.com,
 olteanv@gmail.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, davem@davemloft.net, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_070035_412619_936AE510 
X-CRM114-Status: GOOD (  11.66  )
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

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Fri,  2 Sep 2022 18:02:39 -0400 you wrote:
> Add 1000BASE-KX interface mode. This 1G backplane ethernet as described in
> clause 70. Clause 73 autonegotiation is mandatory, and only full duplex
> operation is supported.
> 
> Although at the PMA level this interface mode is identical to
> 1000BASE-X, it uses a different form of in-band autonegation. This
> justifies a separate interface mode, since the interface mode (along
> with the MLO_AN_* autonegotiation mode) sets the type of autonegotiation
> which will be used on a link. This results in more than just electrical
> differences between the link modes.
> 
> [...]

Here is the summary with links:
  - [net-next,v3] net: phy: Add 1000BASE-KX interface mode
    https://git.kernel.org/netdev/net-next/c/05ad5d4581c3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
