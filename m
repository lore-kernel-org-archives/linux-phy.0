Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA153C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 11:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xGjMOvpDJl5z6EHZq5b/MorIO8nkgFnQs8cVB3yhqhs=; b=lJCiVTJEHFHZUh
	gp5GtFSBwPgGzRAF/i8jjRrcAxVE2MPqEd+hJ8JVL9zaWUHHKPci+07l+1z4t5A5p4JmokmavF4V+
	MSM1GmXA0RTcQxOv65yKowkv6nZIxjvBdsb1kMaNdlfPFp6MFR91cbpbY5z7+lVAV2S7HfK6fCpww
	/in8cQTh95VK/LCnWscccpyVDb20wyb0+obc7owTDFnGlRHoRrO5JvPgVMLsD+PcC6/ZRK6jPBPM2
	4T8tLwCnCJYBJ8rHmKP5ttiP8PkCMBkfxGZjTGUMJg9ykQUK9zrfGiyeaBSUkpNQH26NtfhHgxqSZ
	zAtMEHz0uTwDbgpneM7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7bzl-002KBL-4c; Wed, 12 Jan 2022 11:40:49 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7bzi-002KAY-6b
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 11:40:47 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:76d0:2bff:fec8:549])
 by laurent.telenet-ops.be with bizsmtp
 id hngg2600A0kcUhD01nggAt; Wed, 12 Jan 2022 12:40:41 +0100
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1n7bzb-009FhI-V2; Wed, 12 Jan 2022 12:40:39 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1n7bzb-000S4m-Go; Wed, 12 Jan 2022 12:40:39 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Richard Zhu <hongxing.zhu@nxp.com>, Li Jun <jun.li@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: freescale: i.MX8 PHYs should depend on ARCH_MXC && ARM64
Date: Wed, 12 Jan 2022 12:40:38 +0100
Message-Id: <393868affd830016d35f0d9aba32ccd7098c8073.1641987369.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_034046_425578_0EB745C8 
X-CRM114-Status: UNSURE (   8.83  )
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

The Freescale/NXP i.MX8 USB3, MIPI DSI, and PCIE PHYs are only present
on the NXP i.MX8 family of SoCs.  Hence wrap the config symbols for
these PHYs inside a check for ARCH_MXC && ARM64, to prevent asking the
user about these drivers when configuring a kernel without NXP i.MX SoC
family support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/freescale/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index c3669c28ea9fe83a..856cbec7057d9e54 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -1,4 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+if (ARCH_MXC && ARM64) || COMPILE_TEST
+
 config PHY_FSL_IMX8MQ_USB
 	tristate "Freescale i.MX8M USB3 PHY"
 	depends on OF && HAS_IOMEM
@@ -22,3 +25,5 @@ config PHY_FSL_IMX8M_PCIE
 	help
 	  Enable this to add support for the PCIE PHY as found on
 	  i.MX8M family of SOCs.
+
+endif
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
