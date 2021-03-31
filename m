Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DEEC433E3
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 10:00:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE39C61969
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 10:00:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE39C61969
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dTb6416BdoiwI+oTM1XtGpiVhicAedUI+gzV7GU4Z2w=; b=GXA4sa5/brGLWOUH9KFBYNKIXc
	6WosGwZl/R6UVTZE+S6K+6bi+KHwa2E20lFdhXM7tdu+ZgnyPe59kHarugvHxyqsRRX9xgOQAsTg/
	zPRTYQ50ZrOWpIjtqk6BrCuLF1Gk3/xp0NhOG+i5pV53iO133+R8SARpAJwu4lOUMjDFh7YvZ0tsA
	iqCT/Nf1Tf1vLUbMO7CT5WGHSdC5QJvEgL0/XlOepKKwqKffbBVtMxFALMSCaQe63NfCsHgP1kEtJ
	O80OzA4+F8U3KkOYJW6AVIbOcNG6n7JLe36xhRZsqrTvubBXiayHLKOoHfFzzEsHrOHeMPVLoGkd+
	nQ/ih3Pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRXe7-006Cxg-4N; Wed, 31 Mar 2021 10:00:19 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRXdV-006CuM-1o
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 09:59:42 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:ada2:b4da:6568:5ad5])
 by xavier.telenet-ops.be with bizsmtp
 id mxzd240095W9KJv01xzdYP; Wed, 31 Mar 2021 11:59:38 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lRXdQ-00BseR-K9; Wed, 31 Mar 2021 11:59:36 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lRW4g-001Xah-7p; Wed, 31 Mar 2021 10:19:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Bjarni Jonasson <bjarni.jonasson@microchip.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: microchip: PHY_SPARX5_SERDES should depend on ARCH_SPARX5
Date: Wed, 31 Mar 2021 10:19:37 +0200
Message-Id: <20210331081937.367408-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_105941_255676_A6381C8C 
X-CRM114-Status: UNSURE (   7.28  )
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

The Microchip Sparx5 SerDes PHY is present only Microchip Sparx5 SoCs.
Hence add a dependency on ARCH_SPARX5, to prevent asking the user about
this driver when configuring a kernel without support for Sparx5 SoCs.

Fixes: 2ff8a1eeb5aa8bb4 ("phy: Add Sparx5 ethernet serdes PHY driver")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/microchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
index 0b1a818e01b88cc5..3728a284bf643d48 100644
--- a/drivers/phy/microchip/Kconfig
+++ b/drivers/phy/microchip/Kconfig
@@ -6,6 +6,7 @@
 config PHY_SPARX5_SERDES
 	tristate "Microchip Sparx5 SerDes PHY driver"
 	select GENERIC_PHY
+	depends on ARCH_SPARX5 || COMPILE_TEST
 	depends on OF
 	depends on HAS_IOMEM
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
