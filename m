Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0611ED37499
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr97b/cK/gg269PISV3wVuFeCLUXMOvQ7voq7OV34Lw=; b=oWcizuPALWo9j3
	3+YxCL/ygOcAhHPxf7DXny50a9zxtdFGFZ608n/QkNQi0FUX0wco9TYTcCh1VBnyL+C2dJjYjbTLX
	EsjDfB2ZWp3p+y3OMSHz/cf4A/sigPjL1SA3bS6AOTEMkG99FQv3U/rQ5B8dxkWg57hY5iZ7ZqY2w
	GuEaZImMd70symrGVXcHgYquogP40tMhL8jYp/mxHkbU+6KfwrDSzwsmQ3IZKJ54tjtlaOxuaGvq+
	xinCHVd1rklXaEVIXQGY0X9zy4mwRSYxEmXwLTuS2Lke35KAUkV6w0etpL7hevqLxTLWq+jgAisn/
	Xz0LgdgCwvKsni5Yyjkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZl-0000000FJdO-3BcS;
	Thu, 17 Oct 2024 15:38:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXW-0000000FIpt-3NuU
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:35:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D85905C6157;
	Thu, 17 Oct 2024 15:35:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D084C4CED6;
	Thu, 17 Oct 2024 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179350;
	bh=EScb9nMi9NmY7UdMx3kpuBDC9dEcJvoI2pYk4X1rbrs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZXkEfj7zV6ujMqwZWkVWVzqj5mfbNf7uWDGPyKLsKPCE8u6nCu67A/oyNtA85lPC3
	 sdNS9RvRP4Mtg8302BsnIZpUfDmErmkbQznfJrp30W9clNdbj1sxZ2XVJhODJKMkq3
	 u8JlbQHCPJFBp+CNIl+nSnINQmmKc4Do1z+HbDWtFZGVxq5A/Fao+/4PVPTyWnboQV
	 9MT+ZM6XyNa3RjyqTG0YwSYC64yxvhnYfhTbXySLV/7xvbY5vF5mjhIs4+aMh3uzP+
	 Ny6AwaN+G2Dhk+hIMH7/n8RCFiQLhS1JctyP4PEySlx0+eDW6YXRn0Iwl+OnqZXeZb
	 Ru7/36FSP0PuA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: dominique.martinet@atmark-techno.com, linux-imx@nxp.com, 
 festevam@gmail.com, frieder.schrempf@kontron.de, aford@beaconembedded.com, 
 Sandor.yu@nxp.com, neil.armstrong@linaro.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Lucas Stach <l.stach@pengutronix.de>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240914112816.520224-1-aford173@gmail.com>
References: <20240914112816.520224-1-aford173@gmail.com>
Subject: Re: [PATCH V8 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy
 clock options
Message-Id: <172917934608.288841.3227929508460848302.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083551_578497_C64605C0 
X-CRM114-Status: UNSURE (   8.64  )
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


On Sat, 14 Sep 2024 06:27:44 -0500, Adam Ford wrote:
> Currently, there is a look-up-table to describe all the clock options the HDMI PHY
> can use.  Some of these entries in the LUT are using a fractional divider which does
> not have a well documented algorithm for determinging values, but the the integer
> divider can use an algorithm to calculate the integer divder values dynamically
> beyond those listed in the LUT and also duplicates some of the entries.
> 
> The first two patches do not do anything functionally other than simplify
> some of the register accesses and de-duplicates some of the register look-ups.
> 
> [...]

Applied, thanks!

[1/5] phy: freescale: fsl-samsung-hdmi: Replace register defines with macro
      commit: 4a5a9e2577d61a4ee3e9788e0c2b0c1cbc5ba7b3
[2/5] phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
      commit: 375ee44adb3640099508c5c0c01d86f0bdb16e97
[3/5] phy: freescale: fsl-samsung-hdmi: Support dynamic integer
      commit: 1951dbb41d1dff7c135eed4fa1a6330df6971549
[4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
      commit: 058ea4a06704c6ad3032bdb3ead9ed3dc1f7fe6e
[5/5] phy: freescale: fsl-samsung-hdmi: Remove unnecessary LUT entries
      commit: 7588444551c65ddd37d6ee9e232bd944d2df2c8c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
