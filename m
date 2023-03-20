Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF48DC7618D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 09:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5qOE9P0uCVG9V/0ZYZvpIukuONDcNZcM5X1h9vgndQ=; b=m4/LX1ZITlJ1yH
	4N4Yr20mjCgi/v032J/+emXLzSz53zFp1sqJEkdSVpd27KFkR7FNGDtthyGJ4f/896Jhk6sE3pyFe
	ohKFLOQkLmcpqbzcXROe00ZccoMmcpSk5he4VJfvjKSCligx2CcvjGz3caPuqfsOLMEOrvIz9c2lV
	/GCGVpSo0imfXe7kYIjPMDdhYfGAB3M8LJBJq6KHvLAtjAcssEfa2ZTUNQqeoyEiyDd+CRyAUY2LO
	TzeK4TlwcXJcScZovigGkmJ1Y+er5svxjSE1veHqTz0epwuye1p93WEztSKPQm64+cy3o0/D5AtTe
	BzOOn3xcUVOqBO9Qp4FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peBgl-008SaI-1M;
	Mon, 20 Mar 2023 09:20:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peBgj-008SZR-0M
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 09:20:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 791A3612D7;
	Mon, 20 Mar 2023 09:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB099C4339B;
	Mon, 20 Mar 2023 09:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679304019;
	bh=aRfWzyfuMD/6LDTt48kesyPO7X9IlFJAhbBlvoIsV28=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=ZJnCPupcqPglYwWfYGoYPdwkoBIFV6ImH5xtJRdOe1+42ehZX/+VyoThZYrmNr5rk
	 FpRlXbTTrbioNzykR0+8T2ACi4MVab1y6Azpczq4yJ1DkKQktK8q7fQtFhFHKr3yHg
	 C96TsURdZOdpbTijCLHJYMofdnEQpro2d5BwuHJLLt2X4NmpQTNDxjVwzVoIJuLYKt
	 jk2R4BHImjNl+3lzdQ+X4jUhMcNlSQQmHBPLmsURtEXvxfAokcyRUGBdPVU9d+JrI4
	 Cmyb/QPWEF9kSA+3seyGDTLYNJ0DbICSEteFOEkggmoSGA0aA9NbqyxxJQJAt3xNyf
	 Y4i1rDiJnkecA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C44D8C395F4;
	Mon, 20 Mar 2023 09:20:19 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2 net-next 0/9] add support for ocelot external ports
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <167930401979.16850.3612356547133103899.git-patchwork-notify@kernel.org>
Date: Mon, 20 Mar 2023 09:20:19 +0000
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
In-Reply-To: <20230317185415.2000564-1-colin.foster@in-advantage.com>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, kishon@kernel.org,
 vkoul@kernel.org, pabeni@redhat.com, kuba@kernel.org, edumazet@google.com,
 davem@davemloft.net, f.fainelli@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.manoil@nxp.com, vladimir.oltean@nxp.com, lee@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_022021_188988_4AAA5531 
X-CRM114-Status: GOOD (  11.26  )
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
by David S. Miller <davem@davemloft.net>:

On Fri, 17 Mar 2023 11:54:06 -0700 you wrote:
> This is the start of part 3 of what is hopefully a 3-part series to add
> Ethernet switching support to Ocelot chips.
> 
> Part 1 of the series (A New Chip) added general support for Ocelot chips
> that were controlled externally via SPI.
> https://lore.kernel.org/all/20220815005553.1450359-1-colin.foster@in-advantage.com/
> 
> [...]

Here is the summary with links:
  - [v2,net-next,1/9] phy: phy-ocelot-serdes: add ability to be used in a non-syscon configuration
    https://git.kernel.org/netdev/net-next/c/672faa7bbf60
  - [v2,net-next,2/9] mfd: ocelot: add ocelot-serdes capability
    https://git.kernel.org/netdev/net-next/c/c21ff0939d1d
  - [v2,net-next,3/9] net: mscc: ocelot: expose ocelot_pll5_init routine
    https://git.kernel.org/netdev/net-next/c/fec53f449458
  - [v2,net-next,4/9] net: mscc: ocelot: expose generic phylink_mac_config routine
    https://git.kernel.org/netdev/net-next/c/69f7f89c0db5
  - [v2,net-next,5/9] net: mscc: ocelot: expose serdes configuration function
    https://git.kernel.org/netdev/net-next/c/dfca93ed51a7
  - [v2,net-next,6/9] net: dsa: felix: attempt to initialize internal hsio plls
    https://git.kernel.org/netdev/net-next/c/3821fd0107b0
  - [v2,net-next,7/9] net: dsa: felix: allow configurable phylink_mac_config
    https://git.kernel.org/netdev/net-next/c/544435c9346a
  - [v2,net-next,8/9] net: dsa: felix: allow serdes configuration for dsa ports
    https://git.kernel.org/netdev/net-next/c/6865ecee385b
  - [v2,net-next,9/9] net: dsa: ocelot: add support for external phys
    https://git.kernel.org/netdev/net-next/c/4c05e5ceecbb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
