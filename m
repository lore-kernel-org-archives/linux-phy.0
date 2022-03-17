Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E19C43219
	for <linux-phy@archiver.kernel.org>; Thu, 17 Mar 2022 02:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPIywnPzz5VA0IzwJqna/TmTzScVlNAVJ8FFY3+zy8g=; b=dkYbUdfeQjZRHY
	Z61zPN+nku2yKQZrsOMuWKdsOYNLLwct5UN35q/lkQeNVuKhd3POWKvx+s7I50dEbMR3mg1K5KuP+
	T/iBpZHKBV6FX6XwTCReiiH8X6R8sslTX+VUmSVKyAiOC8c5v13yksAhB6HjdscjkLYcsYJnGLUih
	ZjsuFbxPPS4/NG5vfJGNM9PBMg63mp1p7QCsLk9Ywdqt5XIlKPV/7IcE9Je6frnVSIUyfw9GsLzbR
	GxmmumAzqM4gJvZHz76WbIlUkf16x4eS952ovHIroGvLDwwbF18nMLVuWK9U5l76y3NPy+EtPBkgJ
	g5nZ2DNroGMMvgoeK84A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUg3l-00EkiG-3W; Thu, 17 Mar 2022 02:40:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUg3i-00Ekh8-72
 for linux-phy@lists.infradead.org; Thu, 17 Mar 2022 02:40:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D7214B81DE9;
 Thu, 17 Mar 2022 02:40:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C015C340F9;
 Thu, 17 Mar 2022 02:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647484811;
 bh=vTg9bCjzbKN8xCysi4DgNH3ZTibUDMpo9k34u/96jew=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=fSqgQmsYUIjiXtOZZXjkkjj9w36FemxGUjI2D0j8e0IkDh0ybhxBR+8fwjwCfr57c
 7pcKS64LaSmzx50BnUqZ5aW7pqknA9LlIP7oltNeRuIALDOexumd92tzjCNJabnkcL
 pDgd4OGWDtVUfUWynlUchlKBDx7Ga+ZxRiQZ3TzJobGT3T9OgeRipeDxZGy3LvhpWD
 v+GjPUNeZt1AIkQ9CbM6ESQxrhDqucQvk+hmkULP4UmIWyLpB5KLmy9iyoch+R2EfY
 TE2aqJmQDFI635q42nsUkpgVuGWi53DN8fWsfYvkldDtIAhJPcr1qx4rbWr6QVkE+k
 06K8iuy0lF7ww==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 DEC8AF03845; Thu, 17 Mar 2022 02:40:10 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH -next] phy: Remove duplicated include in phy-fsl-lynx-28g.c
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164748481090.31245.11547820410255926210.git-patchwork-notify@kernel.org>
Date: Thu, 17 Mar 2022 02:40:10 +0000
References: <20220315235603.59481-1-yang.lee@linux.alibaba.com>
In-Reply-To: <20220315235603.59481-1-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: ioana.ciornei@nxp.com, kishon@ti.com, vkoul@kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, abaci@linux.alibaba.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_194014_429999_BC46DBE9 
X-CRM114-Status: UNSURE (   7.11  )
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

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 16 Mar 2022 07:56:03 +0800 you wrote:
> Fix following includecheck warning:
> ./drivers/phy/freescale/phy-fsl-lynx-28g.c: linux/workqueue.h is
> included more than once.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> 
> [...]

Here is the summary with links:
  - [-next] phy: Remove duplicated include in phy-fsl-lynx-28g.c
    https://git.kernel.org/netdev/net-next/c/4de7c8bd6a38

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
