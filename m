Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C3E1C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 12:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vY+U9XkLkZmrgbKZRieco8PzcQGY3Rn3uPuLx2j9+jQ=; b=GVqArHPDY4OKim
	TZPS9MiC+adaO0CWpsJc9qeooTT9T3nRCy+X+dGYK0r28A4vgH2OBBXQ+VQGI8ndGXHN8p0xmr/iU
	2i7tV0xfanIIibP4XM63mZY7lsp4WHrSeewilPDF89yxQ6LtNyGaHTNllqfwr4TAhtooWoAUd+rnQ
	sLd7XbMdDyaW/UKSd9WddsHGSrBhb+C4mExcR6D3aXQ7BqLaSmhdhk50pmRKpOYQEDEo/6S63mfl/
	PRtSZydLuGFANOD+nb7DHAoSigP2ZAy6rZsPpruwuCF30/c3zl8iGPhWh6oaXUc2L4YXJOQuUVuRn
	Kr85P0y100ZbS4Ud1Jvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZBOq-00CHBJ-2P; Tue, 29 Mar 2022 12:56:40 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZBOn-00CHAj-D9
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 12:56:38 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:d553:ff0a:6830:6bde])
 by laurent.telenet-ops.be with bizsmtp
 id CCwa2700b49QC4401CwaKt; Tue, 29 Mar 2022 14:56:35 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1nZBOk-007Glv-69; Tue, 29 Mar 2022 14:56:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1nZBOj-00CERB-JT; Tue, 29 Mar 2022 14:56:33 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Richard Zhu <hongxing.zhu@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "David S . Miller" <davem@davemloft.net>
Cc: Greg KH <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: PHY_FSL_LYNX_28G should depend on ARCH_LAYERSCAPE
Date: Tue, 29 Mar 2022 14:56:31 +0200
Message-Id: <20220329125631.2915388-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_055637_628965_2C793F27 
X-CRM114-Status: GOOD (  12.27  )
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

From: Geert Uytterhoeven <geert+renesas@glider.be>

Freescale Layerscape Lynx 28G SerDes PHYs are only present on
Freescale/NXP Layerscape SoCs.

Move PHY_FSL_LYNX_28G outside the block for ARCH_MXC, as the latter
is meant for i.MX8 SoCs, which is a different family than Layerscape.
Add a dependency on ARCH_LAYERSCAPE, to prevent asking the user about
this driver when configuring a kernel without Layerscape SoC support.

Fixes: 02e2af20f4f9f2aa ("Merge tag 'char-misc-5.18-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc")
Fixes: 8f73b37cf3fbda67 ("phy: add support for the Layerscape SerDes 28G")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/freescale/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 8d945211c7b40727..f9c54cd02036285b 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -26,14 +26,15 @@ config PHY_FSL_IMX8M_PCIE
 	  Enable this to add support for the PCIE PHY as found on
 	  i.MX8M family of SOCs.
 
+endif
+
 config PHY_FSL_LYNX_28G
 	tristate "Freescale Layerscape Lynx 28G SerDes PHY support"
 	depends on OF
+	depends on ARCH_LAYERSCAPE || COMPILE_TEST
 	select GENERIC_PHY
 	help
 	  Enable this to add support for the Lynx SerDes 28G PHY as
 	  found on NXP's Layerscape platforms such as LX2160A.
 	  Used to change the protocol running on SerDes lanes at runtime.
 	  Only useful for a restricted set of Ethernet protocols.
-
-endif
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
