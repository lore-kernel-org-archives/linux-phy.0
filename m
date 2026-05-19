Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD31CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEQDBvUKIiVvp94VIj/rCvPEYu+gCrnX/fzq3Los5MI=; b=AIQhY38rOpwH6X
	Y4aCRum++0n5oD0SITPMy+Wu0ItPXBMCPWffLDVjA9CiLpQKYCC58Aj7/xqjWM1zUmA0sv8+D1qNx
	SDdqdc4ZPyK2imHCgbFKbvVFu5bBgBey9tUhHNzLvgxrzvWw6v+hFPtpiOn4TWTnTnKIBrawTYsHW
	6QYeGa//O/08Ld+k3ZtBISofJWghzViqI5lg5q/oyo2efYBrM4EL/TcvrBnVcZbPG4wcXer4CBEF5
	vOJwDrIXRJMlPzRLGk72Cy4y+ffOx+Cy3tcicpk9E+M/i/YHRRTl8U5+cAXV6JdvvUHZWDU71fRC2
	wGRNjgkiOD5kLdyEYAmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0E-00000001CVQ-3w12;
	Tue, 19 May 2026 10:48:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0D-00000001CUZ-3BEt
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:48:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2FA0360126;
	Tue, 19 May 2026 10:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0F1C2BCB3;
	Tue, 19 May 2026 10:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187724;
	bh=O3osayXAPVNKmdWCcmEqTldGekty8xNwlWaSW/MioZA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LzldBPFF+eqnDubxLjtWtrpweaDXNUytgGbfbtIo5/cPOwqeVSn+mF9p58LYSwzqc
	 Hj7rjyXUok0kx4uRKK8FrDwNtW/zLo2LRb/4dJqd+HVatFT5jw2I7clDqlWCMetgk9
	 fd5SayJquedFgAzxno/KHlAjYIQ0QXCzQ1f1c49HwhY3hhO2iZ/MCDNd7f+8Gq11zQ
	 f5UsF/cssHWuC9F6RmkrtknM+dV/M1tG1JPa8pcE+6JA3WLKSaIpGFv5XcKd5dJ5MJ
	 PZBZrlD3morwde3vrPNQqkQynXZRO/azap+4e0R5xqVCRtmCMgmzb7OsXJOjCRti2Q
	 0Ux0t0MuUqCww==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, johan@kernel.org, linux-phy@lists.infradead.org, 
 Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260518142026.3098496-1-ioana.ciornei@nxp.com>
References: <20260518142026.3098496-1-ioana.ciornei@nxp.com>
Subject: Re: [PATCH v4 linux-phy 0/3] phy: ti: add driver for TI DS125DF111
 Dual-Channel Retimer
Message-Id: <177918772208.269794.12633369479244518899.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:18:42 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 18 May 2026 17:20:23 +0300, Ioana Ciornei wrote:
> This patch set adds a generic PHY driver and the corresponding DT
> binding for the TI DS125DF111 Dual-Channel retimer. The datasheet on
> which this driver was based on can be found at -
> https://www.ti.com/lit/gpn/DS125DF111.
> 
> A separate generic PHY is registered for each of the two channels of the
> retimer, so consumers can drive each channel independently. This allows
> for independent control of the channels, which is especially important
> since each channel can be routed to different SerDes lanes and it is not
> guaranteed that the same retimer will do both directions of SerDes lane.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
      commit: a62d9440ebbce3d9f0bd6c346a7fda2a53726850
[2/3] phy: ti: alphabetically sort Kconfig and Makefile
      commit: 711f64979e500799b27b33a8f030e2fd939fd07f
[3/3] phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer
      commit: 9bf5c16a6e63ebf2803deb32ba984a7fcf2c5ed7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
