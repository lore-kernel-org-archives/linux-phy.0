Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD80FE7314A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Feb 2026 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DaCB+1V01ADa4KN2vctwir5YHzULC8MoDGaPKiZkFUw=; b=rGkQP1djV8BWJZ
	UX/CdjJZvUkPQivdfLlVExlXCUJW/TEB1r5s0ExkGb3sdQwvPGxRPL7b+WjZgUOkP1pYnsI1zHrJH
	noOYUZvA1q46r3ggQ149zjXciyMtvZ8LMGBBquV7YYvMQb7ejfUNqQmRYqLkqBavpPRzPl7MSfD5O
	1g7qV5r3SX1D4O9Jnr/EULBVTB8uVKO8FH8EZ5Fbz0EzB/3tMhihV5fx1gHrP715PyUJJqIMbpnor
	Nf5/5CP1MIzFuKKhuCmRRDnrHoeGF2sjc8yglh/m+Q35j3y6e8QF8v/k8cMZlopTwvkO0PTKFE49g
	IQpvIeEP2bgz+NLd/QTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqab-00000004kFD-1n3G;
	Mon, 02 Feb 2026 09:51:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqaZ-00000004kEb-3tkH
	for linux-phy@lists.infradead.org;
	Mon, 02 Feb 2026 09:51:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3650343593;
	Mon,  2 Feb 2026 09:51:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C342C116C6;
	Mon,  2 Feb 2026 09:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770025883;
	bh=YV9HHIwjBjG1fsLQb14txCR6ZgiPOq1JRjTdfpScIhI=;
	h=From:To:Cc:Subject:Date:From;
	b=oaAoYLye4wh0JhHV/qdBdJKB4b1Guz+axCBJAnI+T8eVRqXetDORZiK8ff415Ac+Z
	 5C0H3EWuCKps1+eu+tK0vMKHHhtJXpfFEdvwK8gLvX2tzVUf66tecDyhTxZ4Ma6L2K
	 7X4szEMoqEOjtjudrCXEHvIYoqT5wvTc34o7R4/FkSv4WYDzh57LPW94azcT7SJi2g
	 5LWqvTBfcc5OBoyiOGPkovpm6E4pfM8USQKSQXqzpRpC34GgjaCqNCTvP7mJnvohWV
	 bkmmKoyEUf8Xev2xnM+7uggSmqpT+M6laEKJpvVeLQfnSziK4TFLGaU2iHO1idsc4c
	 GbMD7uwUWYjoQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: add regulator dependency
Date: Mon,  2 Feb 2026 10:51:14 +0100
Message-Id: <20260202095118.1233046-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_015123_986908_9DF35161 
X-CRM114-Status: UNSURE (   9.87  )
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

From: Arnd Bergmann <arnd@arndb.de>

The driver start registering a regulator, but can still be
enabled even when it is unable to call into the regulator
subsystem:

aarch64-linux-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in function `rcar_gen3_phy_usb2_probe':
phy-rcar-gen3-usb2.c:(.text+0x2884): undefined reference to `devm_regulator_register'

Add a Kconfig dependency to avoid this configuration.

Fixes: b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/renesas/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
index d217c630b2fd..90a9ca2db7fc 100644
--- a/drivers/phy/renesas/Kconfig
+++ b/drivers/phy/renesas/Kconfig
@@ -29,6 +29,7 @@ config PHY_RCAR_GEN3_USB2
 	depends on ARCH_RENESAS
 	depends on EXTCON || !EXTCON # if EXTCON=m, this cannot be built-in
 	depends on USB_SUPPORT
+	depends on REGULATOR
 	select GENERIC_PHY
 	select MULTIPLEXER
 	select USB_COMMON
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
