Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6551CF513EE
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 03:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=141Qm50gMpfJEQKKn8fM2lwDxSnS2dqcYLdCTJu8BwE=; b=gTL76qEch8gWrD
	/e1YoX6l31jCBIFYQgCv+TB+rX6KniUg0fO6x6zQckaLzLbE13xBheedaE48aQrnsF5JFUl9WM+PZ
	HkIALj1v9exwagk+r/UcTMYVrkupVtJ7EQolc3kdGQc/tUqbOAmMyKt/3SVqD52IbgRxj1HgK+/PP
	6tOlYntMq/0j1H5afMlX6OjNTJaWVv/4Ij2W4mepywgqyxbSyVtQ1nmIXd8dm2uZdR46vRC/b1+3X
	kdaHFUeR3wbFV6+rPv4l3h0gG2GNYQ95mEeZ5lcunQ5H9JPSG5cIKZLW2yq7LpK5S53sKY16Wfi5X
	zsuzJyp45bn+SGA01JeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLvt-00000002xy1-0cyY;
	Fri, 06 Mar 2026 03:32:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLvp-00000002xv7-2idy;
	Fri, 06 Mar 2026 03:32:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 82CEE4400D;
	Fri,  6 Mar 2026 03:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63326C116C6;
	Fri,  6 Mar 2026 03:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772767972;
	bh=J5WNpI9IFOZTn+5xxMTNRdxLsLhlZZ5pCnKzZHghzHU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=CiZHaT+iDF0JBJhKP5j+xHrw3HKoiJahdSNW1m5LuGTPLlSgRRlmggtREW6U1dtdu
	 eO1inZLnbuc81n2FDTFA5ImteQHR8K7Bg0t6726FgJf63jOJgUMvBSTLS2j1wuHiER
	 lDbPDz7PQ9WNn8Hh7HDoNbMVNAdO1dIXOyEPYVHlwcgA9Vay8p1Loo5INeR+2dSc30
	 ktxCqHrbbLEEdO0HgR2MbJBI4EysmfY3ATloJ0dJpvTT1IIx0axex6J4tS6bF9v5gF
	 Jn46/XT8RyMWYDrDfXYEaa5+Sp+KCyB8zeR/2CJUzESI2HgZT7uPBFh01v29Nzc94a
	 PyFl4bi2dPmbw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FEF53808200;
	Fri,  6 Mar 2026 03:32:53 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2 0/7] net: stmmac: qcom-ethqos: further serdes
 reorganisation
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177276797180.3348267.4879154054522782350.git-patchwork-notify@kernel.org>
Date: Fri, 06 Mar 2026 03:32:51 +0000
References: <aacD3osfaZkLsGxm@shell.armlinux.org.uk>
In-Reply-To: <aacD3osfaZkLsGxm@shell.armlinux.org.uk>
To: Russell King (Oracle) <linux@armlinux.org.uk>
Cc: andrew@lunn.ch, alexandre.torgue@foss.st.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 mohd.anwar@oss.qualcomm.com, neil.armstrong@linaro.org,
 netdev@vger.kernel.org, pabeni@redhat.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_193253_709260_85A9D93E 
X-CRM114-Status: UNSURE (   9.85  )
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 3 Mar 2026 15:53:02 +0000 you wrote:
> This is part 2 of the qcom-ethqos series, part 1 and patch 2 of part 2
> has now been merged.
> 
> This part of the series focuses on the generic PHY driver, but these
> changes have dependencies on the ethernet driver, hence why
> it will need to go via net-next. Furthermore, subsequent changes
> depend on these patches.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/7] net: stmmac: qcom-ethqos: move ethqos_set_serdes_speed()
    https://git.kernel.org/netdev/net-next/c/fc8ca5da896e
  - [net-next,v2,2/7] net: stmmac: qcom-ethqos: convert to use phy_set_mode_ext()
    https://git.kernel.org/netdev/net-next/c/4999e0a2ab34
  - [net-next,v2,3/7] phy: qcom-sgmii-eth: remove .set_speed() implementation
    https://git.kernel.org/netdev/net-next/c/b7721597547d
  - [net-next,v2,4/7] phy: qcom-sgmii-eth: use PHY interface mode for SerDes settings
    https://git.kernel.org/netdev/net-next/c/d2b20acdaed8
  - [net-next,v2,5/7] phy: qcom-sgmii-eth: remove qcom_dwmac_sgmii_phy_interface()
    https://git.kernel.org/netdev/net-next/c/f82210ce8cb8
  - [net-next,v2,6/7] phy: qcom-sgmii-eth: relax order of .power_on() vs .set_mode*()
    https://git.kernel.org/netdev/net-next/c/ebe8b48b88ad
  - [net-next,v2,7/7] net: stmmac: qcom-ethqos: remove phy_set_mode_ext() after phy_power_on()
    https://git.kernel.org/netdev/net-next/c/038a8e8eb90d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
