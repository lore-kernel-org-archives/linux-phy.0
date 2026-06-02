Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABE6CD6E56
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 02:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmbMM8oN7blyAs41Z50QxES2WR2w4+hGFA5zgqjLHCk=; b=kvU/U7mXaKBKJy
	Fr3lOOJ/gx4ih4NF7XdOUR05R5nOs8VuVKPQUUeCF8ZJUh4H/u+GQyF9c9hqv2Pz38X8wdlF15xUq
	c4Fe9NcVpq4f7yYB+PHb2r7rGeiw1lx7Qda8pnAUy14kqQ0WfY4Xwcl64YhEa6xQ+w8aVXap7nmyW
	UCe/nXJH3yy9heZWzzPZK8xTO/VTYl0MRD/VRGeBzEUKuyBJRD2Xt/wJd/gd2rxrF8aqXGwKsncrm
	CGq5YDWSsjDajAdMmOwZQBhpInt2JmqW5TI9CojC6VEsXl8VipoKSHqGRoTS0orrF5e8FnW/HuO3O
	2Uv+YnCIb1X3ZcDMCRIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUEtR-0000000CBUB-2eqk;
	Tue, 02 Jun 2026 02:30:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUEtQ-0000000CBU1-2Ue2
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 02:30:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 705A660141;
	Tue,  2 Jun 2026 02:30:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27B4A1F00893;
	Tue,  2 Jun 2026 02:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780367411;
	bh=lZkSUSYjEMHGPTXhxEmeSrFeNGSiRBa+fB1Z4/owV4I=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=ipPSxWZy6ltxXo0W9mbZWoBXIhi0svB+AyKAP0MPHzNKQe7CWsVAWhc6xr1iTI6Oh
	 yZg4s5nIOsPen9DY93iuV83OSCrmHVYfqSl2+8Ga5oMKmJuQKHZcLnTnWP3mM5xpNR
	 l4DDMfV6RH+FwxVxShP7bLaOpaMJvefM3TP/NVyx3jbhTkYMEeog6eykhhrgOWK1Pj
	 8ID7mybWm/FxQ0vZOS8rWmE5KxEhMaYY4U0yNTiUU8QMTawc3xGhMAuzVTL0+zXYkM
	 iUFAONcZ5LZfdrHSHTnjTkTipQUaVR90woFfdnmKMCXyGRcB7/IDD4RU47ut79JzNY
	 qXsqxAcHfQnLg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 939AE38119F9;
	Tue,  2 Jun 2026 02:30:14 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v8] net: phy: sfp: probe for RollBall I2C-to-MDIO
 bridge in mdio-i2c
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <178036741314.211970.4263055978278493592.git-patchwork-notify@kernel.org>
Date: Tue, 02 Jun 2026 02:30:13 +0000
References: <20260527053909.2118-1-petr.wozniak@gmail.com>
In-Reply-To: <20260527053909.2118-1-petr.wozniak@gmail.com>
To: Petr Wozniak <petr.wozniak@gmail.com>
Cc: netdev@vger.kernel.org, maxime.chevallier@bootlin.com, bjorn@mork.no,
 andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, jan@3e8.eu
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

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 27 May 2026 07:39:09 +0200 you wrote:
> The "OEM"/"SFP-10G-T" quirk entry in sfp_fixup_rollball_cc()
> unconditionally forces MDIO_I2C_ROLLBALL for all modules matching that
> vendor/part-number combination.  This works for modules that genuinely
> implement a RollBall I2C-to-MDIO bridge, but silently breaks modules
> that share the same EEPROM strings without having such a bridge.
> 
> The Realtek RTL8261BE-CG is one such module: a pure copper 10G SFP+
> media converter with no I2C-to-MDIO bridge.  Its EEPROM reports
> vendor="OEM", part="SFP-10G-T-I", and -- critically -- Vendor OUI
> 00:00:00, making OUI-based differentiation impossible.  With
> MDIO_I2C_ROLLBALL forced, the module silently ACKs the unlock password
> write, the MDIO bus is created, but no PHY responds; the SFP state
> machine cycles through the RollBall PHY-probe retry window before
> reporting no PHY.
> 
> [...]

Here is the summary with links:
  - [net-next,v8] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
    https://git.kernel.org/netdev/net-next/c/8fe125892f40

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
