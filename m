Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A159C001B0
	for <linux-phy@archiver.kernel.org>; Tue, 15 Aug 2023 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ksygEAwqR5saI7CWRPtlc7HABz1a8RmAfVdIWI9cPcg=; b=QVmjlBmn870SOf
	b8H+2sXhrEXnyez/bvosvQzm6hVsZSzIsG5RR50im1JHBApWcfcRaVZ+sEGujxu4HNcUmwbjVJaMG
	RMW9QzIRmkOXDt8n4nb6/AxJrRRgnFEAzBKK7OkZlvGjY7D4Bx2OMqZ0DXqoVf9bPLotRjzwif/jG
	vJZqVLdCZE2oVjdQRyPIRIk+KilorGtxg2oIxUUFKgkoU+34OPCWSCJD9XVuKakZeDwM9vgBF6wVf
	tXKzQJ9BmZF5+FJwFiV6SQw9jM59DSUjhUDmMeZH8sL67TPgQqnTGt8At8JTd9FdS1QMui1jcHpa4
	cBN6wvZl9qkjOSM6/VJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVvyO-001rW2-0m;
	Tue, 15 Aug 2023 15:28:44 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVvy8-001rGu-2F
	for linux-phy@lists.infradead.org;
	Tue, 15 Aug 2023 15:28:31 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:5d0c:f209:12a7:4ce5])
	by laurent.telenet-ops.be with bizsmtp
	id ZrUF2A00845ualL01rUFq5; Tue, 15 Aug 2023 17:28:16 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qVvxo-000j7s-Sp;
	Tue, 15 Aug 2023 17:28:15 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qVvxv-005ckC-6V;
	Tue, 15 Aug 2023 17:28:15 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stanley Chang <stanley_chang@realtek.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: realtek: Realtek PHYs should depend on ARCH_REALTEK
Date: Tue, 15 Aug 2023 17:28:13 +0200
Message-Id: <2892527cac9af6fa8f5e7b8daeffd7d4351fde68.1692113167.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_082828_876293_1A135357 
X-CRM114-Status: UNSURE (   9.36  )
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

The Realtek SoC USB2 and USB3 PHY Transceivers are only present on
Realtek Digital Home Center (DHC) RTD series SoCs.  Hence add a
dependency on ARCH_REALTEK, to prevent asking the user about these
drivers when configuring a kernel without Realtek SoC support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/realtek/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 650e20ed69af41d2..75ac7e7c31aec6f2 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -2,6 +2,9 @@
 #
 # Phy drivers for Realtek platforms
 #
+
+if ARCH_REALTEK || COMPILE_TEST
+
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
 	depends on USB_SUPPORT
@@ -25,3 +28,5 @@ config PHY_RTK_RTD_USB3PHY
 	  The DHC (digital home center) RTD series SoCs used the Synopsys
 	  DWC3 USB IP. This driver will do the PHY initialization
 	  of the parameters.
+
+endif # ARCH_REALTEK || COMPILE_TEST
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
