Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEE1C02181
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 14:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgca5z+w89uPyI6FC9PtexZ11auj5Wpn8jFxGM/p0B8=; b=2JYZ1RY3ONBQ9h
	fV1OvOrPM/jKuidJHdNRcddod9Qv0Ydb0VKChKT/hGuzkeHy2Xw4nfRt6VFjIoFcgXWPX3fzewG9l
	6Kzi+B5Liu6GveEZOXaxzPns5NLN+FQCcqBRVzAwAG49TkzpOfSs4imT2rgYkStbwP+gc4ZCSVOf7
	2FwNKc7gllHBkVdnnC/k7FrjLBVk2k8pTaIZKjOcUO0S+gE6WhCHZi99cwV/qEXw5EP4rrJZv2Be4
	SNGv4OCF7G4p6m8I9aF4N9+ZAIsItsD5RpFIDnjesxG7F/LQzYaB3+7TX8p1qiYdaRgkmXM/c99ts
	qaTtn0sPkG+XsXeZfgqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsry-00000005nvZ-1Nal;
	Mon, 20 Jan 2025 14:35:14 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsrt-00000005nsx-17c2
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 14:35:11 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by michel.telenet-ops.be with cmsmtp
	id 3Sb42E00C0raqVW06Sb4lK; Mon, 20 Jan 2025 15:35:05 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTW-3Rzj;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZV-1TKS;
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
Subject: [PATCH v3 2/3] irqchip: LAN966X_OIC should depend on MCHP_LAN966X_PCI
Date: Mon, 20 Jan 2025 15:35:02 +0100
Message-ID: <28e8a605e72ee45e27f0d06b2b71366159a9c782.1737383314.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_063509_453424_21C9601A 
X-CRM114-Status: GOOD (  11.50  )
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

The Microchip LAN966x outband interrupt controller is only present on
Microchip LAN966x SoCs, and only used in PCI endpoint mode.  Hence add a
dependency on MCHP_LAN966X_PCI, to prevent asking the user about this
driver when configuring a kernel without Microchip LAN966x PCIe support.

Fixes: 3e3a7b35332924c8 ("irqchip: Add support for LAN966x OIC")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Herve Codina <herve.codina@bootlin.com>
---
v3:
  - Fix symbol name in one-line summary,
  - Add Acked-by,

v2:
  - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
    PCI endpoint mode,
  - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
    symbol that ended upstream.
---
 drivers/irqchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 22f5fbd41f65d97e..cf713b6e9cc9346f 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -169,6 +169,7 @@ config IXP4XX_IRQ
 
 config LAN966X_OIC
 	tristate "Microchip LAN966x OIC Support"
+	depends on MCHP_LAN966X_PCI || COMPILE_TEST
 	select GENERIC_IRQ_CHIP
 	select IRQ_DOMAIN
 	help
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
