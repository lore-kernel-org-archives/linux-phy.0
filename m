Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC744C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 09:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxvNsOIxwjpqGCYJgHvOtjOO5faAcbvYxpN1P3HIB60=; b=grEz82kFI/Xjc1
	7l6Riwd4X1dIoVEoJt7h5TSzOB2qc6F6j5bavQH/yNrBMRZGFv+fn33U9Wz2p6pS+2oEPSpZvQ/IL
	03IqO/h8bqReI6cDJ/sy8Q4QKZrNlINNstu6pJsYt493ISqDleHggjZBX+RHCGPyK7mEmF9RcSNrP
	/5pBXe5VT2cC1RPV9J/p5r4MwSj2XK1BcnoydpJVghpC7oREj8xBa/i5x4lP24EUijLvG0ULchkWa
	Uj2dxV2tNuAbJ82BELkv8dN8FpH/R7+HNHwLCW1LqjfKFxMl1l9huyecEFKyTWxd7lGRk7A5Ed2V7
	gDWgNj12YIB9EksMZSNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6Rs-008H9s-4c; Wed, 20 Apr 2022 09:16:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6RU-008H3T-2P; Wed, 20 Apr 2022 09:16:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 98C9B615A5;
 Wed, 20 Apr 2022 09:16:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED7F3C385A1;
 Wed, 20 Apr 2022 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650446166;
 bh=7yudAvSE7gN9vy9mr6PGYyYIw2HFR1Yph0xhljxKTVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BNOJvvP2+MFNjKFjeVK9OU5ZgIru8ZCub3g7Sc0HPRAKHp4QdPyJGahcE33oOPETc
 dX3tLviqYcq0Xre7tzRUn54Aq76MaH8H631Oc9ZX2gWYQxjQFr0o3gxORQ42KnrQLP
 VvWZXGCL3Yi3xnoRWxNRr3Xew+UmhXBh6yU+CF6jl9ALf5M5AANblynshmRu45rpDd
 8PqvE0gcdEYdUtiOJEMaTObEPulxvQJRN+UginYM20f2OClznRhVKyoavir6x82XIb
 TS/9gGYwPPpBhqdf3yFkmtplRaTHkMQeUuXqLqsYZ/G7EJTdHKB/6ZP30JdtUiJ75S
 pCm4rMu4YW+3g==
Date: Wed, 20 Apr 2022 14:46:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-phy@lists.infradead.org, Richard Zhu <hongxing.zhu@nxp.com>,
 Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Message-ID: <Yl/PUiJ5WkJGbH+5@matsya>
References: <20220413140710.10074-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220413140710.10074-1-marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021608_213506_13615E26 
X-CRM114-Status: GOOD (  10.87  )
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

On 13-04-22, 16:07, Marek Vasut wrote:
> The 'fsl,refclk-pad-mode' DT property used to select clock source for
> PCIe PHY can have either of three values, IMX8_PCIE_REFCLK_PAD_INPUT,
> IMX8_PCIE_REFCLK_PAD_OUTPUT, IMX8_PCIE_REFCLK_PAD_UNUSED. The first
> two options are handled correctly by the driver, the last one is not,
> this patch implements support for the last option.
> 
> The IMX8_PCIE_REFCLK_PAD_INPUT means PCIE_RESREF is PHY clock input,
> the IMX8_PCIE_REFCLK_PAD_OUTPUT means PHY clock are sourced from SoC
> internal PLL and output to PCIE_RESREF external IO pin. The last
> IMX8_PCIE_REFCLK_PAD_UNUSED is a combination of previous two, PHY
> clock are sourced from SoC internal PLL and not output anywhere.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
