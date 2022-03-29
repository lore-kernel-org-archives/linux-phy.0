Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FECC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 13:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9hazKDn7PCQZRFvbO/4TL2PwxEbLuESr7sl7TAzmekc=; b=w5F/Q3KfT2VI7j
	CsZodTeph0jvee5C/7UNoL9US5LijCTEnkLnBDchkL0ImayySPmlMO/KOfYfsMQxDpu1nUvWzrGhy
	fpJxhXFchonEsAfqsOKnPHz20yxylnl8Ref6hIXzgBGNZ/VmoF4DlvsT6bu9CqXgKrJOKX1Va/nlu
	ahZyvLrjZ6AvWLRFrVNKSbtQOCJ2fk8tzUrrAmQVDRH7R53ObjmJTC7NgsUdm7+kfI5kQAoAK2Nki
	pnIl74IdZOApCW7o2fkyRBk9rEFUhPdi52FOQv2lBeam+73P+BrYn8BKFY2e+WjFBCY9tCypnctnw
	ZzfvpfAyD4kFGD/PysEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZBkA-00CKCU-6V; Tue, 29 Mar 2022 13:18:42 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZBk7-00CKAR-BE
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 13:18:40 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:d553:ff0a:6830:6bde])
 by xavier.telenet-ops.be with bizsmtp
 id CDJb2700E49QC4401DJbrV; Tue, 29 Mar 2022 15:18:36 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1nZBk2-007Gv0-Nh; Tue, 29 Mar 2022 15:18:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1nZBk2-00CEos-5O; Tue, 29 Mar 2022 15:18:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Richard Zhu <hongxing.zhu@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "David S . Miller" <davem@davemloft.net>
Cc: Greg KH <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] phy: PHY_FSL_LYNX_28G should depend on ARCH_LAYERSCAPE
Date: Tue, 29 Mar 2022 15:18:29 +0200
Message-ID: <20220329125631.2915388-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_061839_573011_F5C560DC 
X-CRM114-Status: GOOD (  12.19  )
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
Message-ID: <20220329131829.jhnBu8Ha1Q13X4AaLplmH-khfzpO7bgQmTmAkAbHm7A@z>

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
v2:
  - Fix From/SoB chain.

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
