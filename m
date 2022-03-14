Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BCDFC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 11:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aq2/33WcGK9IyWTaCxZ6VQvSU4nGAPg8RgP3MLxbLCE=; b=oBRk51KDaMtDUN
	QiCoLrwfqWEbnlP76nAfMyLH4FUd1VrNlRFeQAqInW8d9GquA5GkQinSAPEH/fsUTsSMvfCYcWd51
	jUVAH8lv6Io/mgYXy8VKeMBFS77aNnNbnHbCe39SrmukudgiTmH2/PiNxmgDJUBmeF596TF4r4Own
	7fnR3JUpryf6PF1A3O2j8nxmoc5sxLZ5rkDQ7iGAhYL5xZQKjoZ2jJNFHoiTp219xg0TzcwKngY/D
	f+g8x2PJmqK2EpHyck8lu+kwAaC9ecSdrJC+K5QIbA+tCZMzqMtDOhvyCwP+0fKdrHvW/FvLxFePu
	SkEYtlld8T4TTHaVv/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTiR1-0054vR-Ep; Mon, 14 Mar 2022 11:00:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTiQy-0054uY-Bp
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 11:00:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 087DEB80D5B;
 Mon, 14 Mar 2022 11:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A85C340ED;
 Mon, 14 Mar 2022 11:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647255613;
 bh=IiJhlYhZ6g/TA/bacm+eqYg+DkQp9+bkqaktgR5tNaM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qZCXU+SIvg6ejPfjxgFwM94cwUr+dGrbSxKdwLCR582qjnMu4VvxbyChoa5R0+Kyy
 CUhGsIXxr4u5VruBHQBwcQSzebAWtC0e+pt/9IMyEtJpVA/7hixf+ixW8RrsG9rqCz
 rVgk2dDs7mEghjiR2R4IqYNPLfLzlc22fs0y7t6EHkksjrhqLjBv68PtshoiTwJZ27
 SHx7PM1I0NLAGBuWurySVzSF/uwHLhrvb4PR5reHMI/VJRm9kXk5BDPpswg5dC02am
 xkJ6O5ZkijqHch311ICB4xJ7Muq3Oke2n69Cq7pROywKk1sK7GQktXgBJHrA2r9aCT
 Cnjs16i6Y8jPQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A7636EAC095; Mon, 14 Mar 2022 11:00:13 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v5 0/8] dpaa2-mac: add support for changing the
 protocol at runtime
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164725561368.8211.12808979702945617706.git-patchwork-notify@kernel.org>
Date: Mon, 14 Mar 2022 11:00:13 +0000
References: <20220311212228.3918494-1-ioana.ciornei@nxp.com>
In-Reply-To: <20220311212228.3918494-1-ioana.ciornei@nxp.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_040016_565697_F223DD0A 
X-CRM114-Status: GOOD (  16.58  )
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

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Fri, 11 Mar 2022 23:22:20 +0200 you wrote:
> This patch set adds support for changing the Ethernet protocol at
> runtime on Layerscape SoCs which have the Lynx 28G SerDes block.
> 
> The first two patches add a new generic PHY driver for the Lynx 28G and
> the bindings file associated. The driver reads the PLL configuration at
> probe time (the frequency provided to the lanes) and determines what
> protocols can be supported.
> Based on this the driver can deny or approve a request from the
> dpaa2-mac to setup a new protocol.
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/8] phy: add support for the Layerscape SerDes 28G
    https://git.kernel.org/netdev/net-next/c/8f73b37cf3fb
  - [net-next,v5,2/8] dt-bindings: phy: add bindings for Lynx 28G PHY
    https://git.kernel.org/netdev/net-next/c/c553f22e0531
  - [net-next,v5,3/8] dpaa2-mac: add the MC API for retrieving the version
    https://git.kernel.org/netdev/net-next/c/38d28b02a08e
  - [net-next,v5,4/8] dpaa2-mac: add the MC API for reconfiguring the protocol
    https://git.kernel.org/netdev/net-next/c/332b9ea59e56
  - [net-next,v5,5/8] dpaa2-mac: retrieve API version and detect features
    https://git.kernel.org/netdev/net-next/c/dff953813e7d
  - [net-next,v5,6/8] dpaa2-mac: move setting up supported_interfaces into a function
    https://git.kernel.org/netdev/net-next/c/aa95c3711241
  - [net-next,v5,7/8] dpaa2-mac: configure the SerDes phy on a protocol change
    https://git.kernel.org/netdev/net-next/c/f978fe85b8d1
  - [net-next,v5,8/8] arch: arm64: dts: lx2160a: describe the SerDes block #1
    https://git.kernel.org/netdev/net-next/c/3cbe93a1f540

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
