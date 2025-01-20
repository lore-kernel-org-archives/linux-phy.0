Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10247C02181
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 14:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLomZnYnx4z4YkTMy3P4dOsfa2Cj9VFpUOh1K9ApuKQ=; b=i83iDCB3OD4cDS
	J2zXJ9vqUOs41YoUhz3/4yiaHo6JlRv5TitkVFCAd5GsTuixHq8DYVglBTk/qOG/HYxZkYVILzb8A
	7kx2Skf3Qy85vRI3FYh678lrWDyuCU9vjn+NSDHbdqJUD5d2dAzIoqGClXAaD8lK694ShdzsfEwp2
	0FNd1Tuj2OoqXAHlObL8Asz4Gu8r9rjYG4SUyy9VW4kAMlUi2APm0cDyMQ2ufaKvgUL0amZfnf9RO
	jrojnQ218uKBF/Q47IMIDdyGbYnXQsPrfPbZCD5ZSVUDvHI7C/+AklJNDZ0SghbNbXMQN0AC6yEqU
	y/wuy0bl0IaQvq46LKTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsrv-00000005nuQ-3O41;
	Mon, 20 Jan 2025 14:35:11 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsrt-00000005nsv-17U8
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 14:35:10 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by albert.telenet-ops.be with cmsmtp
	id 3Sb42E00H0raqVW06Sb41D; Mon, 20 Jan 2025 15:35:05 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTa-3YKN;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZZ-1bBT;
	Mon, 20 Jan 2025 15:35:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v3 3/3] phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 || MCHP_LAN966X_PCI
Date: Mon, 20 Jan 2025 15:35:03 +0100
Message-ID: <369233dfded88ff6fb342e03794fe31985d84d82.1737383314.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_063509_450979_62E5E830 
X-CRM114-Status: GOOD (  10.47  )
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

The Microchip LAN966X SerDes PHY is only present on Microchip LAN966x
SoCs.  However, when used as a PCI endpoint, all peripherals of the
LAN966x SoC can be accessed by the PCI host.  Hence add dependencies on
SOC_LAN966 and MCHP_LAN966X_PCI, to prevent asking the user about this
driver when configuring a kernel without Microchip LAN966x SoC and PCIe
support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Herve Codina <herve.codina@bootlin.com>
---
v3:
  - Fix symbol name in description,
  - Add Acked-by,

v2:
  - New.
---
 drivers/phy/microchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
index 38039ed0754c6548..2f0045e874ac81ad 100644
--- a/drivers/phy/microchip/Kconfig
+++ b/drivers/phy/microchip/Kconfig
@@ -15,6 +15,7 @@ config PHY_SPARX5_SERDES
 config PHY_LAN966X_SERDES
 	tristate "SerDes PHY driver for Microchip LAN966X"
 	select GENERIC_PHY
+	depends on SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
 	depends on OF
 	depends on MFD_SYSCON
 	help
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
