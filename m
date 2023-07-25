Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AD7DC001DE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 15:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RXPw6fhy4PAXgd8LrR+9/ajOz74Ya3G0bMnxia10MgQ=; b=n3gX/pp3TLZUNA
	S1hm3kL2Iv71AfVKHgkeyA9BMj4JRNrceKlFO9qxVj8QYnwzqKu1SpXtBUx4K5gm1zD6b8XtAjLQe
	AhyvnrN5dgVgkZAUj3EDDEiSPv3uV7bnYBNN/wanZ2d8egMRtegJiVdyZDf91ew3S0vvl+/t3pMY8
	HzU+1TFiVonV3OVRr0rOQUc0IELYZo33slYBJupMQ9x3hzqfwlNVDrb06QZgriAs4mNDnLjuJ9GLG
	VkjrOXwmjD6BYHH62uCMZflxiwg1ewseJ+/C2THo9ah2M4LlyQ19k1cru4mUZPwLXoknv4jMBR6Yh
	h+lVmfBFLqmzwtlll2Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKIE-007xMc-2F;
	Tue, 25 Jul 2023 15:49:46 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKIB-007xL8-0b
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 15:49:44 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:2d50:2ea4:d4e1:2af3])
	by michel.telenet-ops.be with bizsmtp
	id RTpZ2A00V2TBYXr06TpZAJ; Tue, 25 Jul 2023 17:49:35 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qOKHo-002ViA-Ho;
	Tue, 25 Jul 2023 17:49:33 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qOKI1-009cZD-Mo;
	Tue, 25 Jul 2023 17:49:33 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Minda Chen <minda.chen@starfivetech.com>,
	Roger Quadros <rogerq@kernel.org>,
	Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: starfive: StarFive PHYs should depend on ARCH_STARFIVE
Date: Tue, 25 Jul 2023 17:49:27 +0200
Message-Id: <12097f6107a18e2f7cfb80f47ac7b27808e062c4.1690300076.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_084943_388388_FB765526 
X-CRM114-Status: UNSURE (   8.71  )
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

The various StarFive PHYs are only present on StarFive SoCs.  Hence add
a dependency on ARCH_STARFIVE, to prevent asking the user about these
drivers when configuring a kernel without StarFive SoC support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/starfive/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
index a560533a674ee0a5..4457b3872aa146a4 100644
--- a/drivers/phy/starfive/Kconfig
+++ b/drivers/phy/starfive/Kconfig
@@ -3,6 +3,8 @@
 # Phy drivers for StarFive platforms
 #
 
+if ARCH_STARFIVE || COMPILE_TEST
+
 config PHY_STARFIVE_JH7110_DPHY_RX
 	tristate "StarFive JH7110 D-PHY RX support"
 	select GENERIC_PHY
@@ -31,3 +33,5 @@ config PHY_STARFIVE_JH7110_USB
 	  used with the Cadence USB controller.
 	  If M is selected, the module will be called
 	  phy-jh7110-usb.ko.
+
+endif # ARCH_STARFIVE || COMPILE_TEST
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
