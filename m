Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5E78C00528
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 06:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uXOhz+XMG0zIYbAlQewx0NW3aw8+kzL40IwNpSqp9Lc=; b=x3Zn59LbP4uNL3
	JmWEvDyiwR7NVfB1fORKBioEVJf3qzcVU3xoQF4m/noyQ1H6d1pOuOKD+KwV6B/er0h6ExbFPwi6o
	ZZUr+wz/4T71p4TGH9ZQpRcAoXUkPNLlUHMzMdQ2OchvnFf+kvbr71KTacp7jGqc85SKd7OVVXutf
	RjTIr09SUSRhU67Gs82goOlObMlU/ciYuOIeVQ7bk6xAf7F69iL2MH4M0+j0cJoLPFG4OCkK4SIGk
	2Kyp24H+YGoV6Doz71/qNi/HtyeZgRrE2H5t4ck4kF+6mBoHJ20weSpNT7gZRE7r8aj4k/c+ZgR7R
	NEQmkhN9JhTxBPFQ5spw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBRK-006P7B-0g;
	Tue, 25 Jul 2023 06:22:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBRH-006P6D-0s
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 06:22:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9554961525;
	Tue, 25 Jul 2023 06:22:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F2D2C433C8;
	Tue, 25 Jul 2023 06:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690266150;
	bh=n3Uh5qHpkolC0HaF+eLoKkrfVCAEXH697d19IJ8+xKY=;
	h=From:To:Cc:Subject:Date:From;
	b=scfP0CmaRqYLzh5KiRpMtDNCvhkgXbf7x1VTZqM0mHyO9+iuFIdEqHuAzTiuyYny1
	 JWthlq/FgBZxAht+aVPPeQMslgOD2YdFdeCCzTQekuDk2Nz5pY/yF6swkZdipRsl/a
	 MeD6QOYyxbcB3jICxSgz4evMuZuiXfq5N9P5EVoPc6SfaU8DynfmICXIXhmluTRPIk
	 mQhP4TdDlG8yBeTwd95+pzm9XNzCt20A5oDsiTnPvdw9ORihdUdqvzJqzUBhzlOrsd
	 t+FW3Tk4PbVGuShq2ADDyxTyjDutsr8Dahw3u5ntDX6B8QF/7S2rPol5L9XBIEUVmo
	 t1lx2dJjxiBxQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org,
	Minda Chen <minda.chen@starfivetech.com>,
	Roger Quadros <rogerq@kernel.org>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: starfive: make phys depend on HAS_IOMEM
Date: Tue, 25 Jul 2023 11:52:16 +0530
Message-ID: <20230725062216.481909-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_232231_356075_2CE0A5B1 
X-CRM114-Status: GOOD (  10.45  )
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

the startfive phy drivers use devm_platform_ioremap_resource() which on
some archs (s390) is not present. So make the drivers depend on HAS_IOMEM

Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202307250509.oeudxG28-lkp@intel.com/
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/starfive/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
index a560533a674e..ea82261ca818 100644
--- a/drivers/phy/starfive/Kconfig
+++ b/drivers/phy/starfive/Kconfig
@@ -5,6 +5,7 @@
 
 config PHY_STARFIVE_JH7110_DPHY_RX
 	tristate "StarFive JH7110 D-PHY RX support"
+	depends on HAS_IOMEM
 	select GENERIC_PHY
 	select GENERIC_PHY_MIPI_DPHY
 	help
@@ -24,7 +25,7 @@ config PHY_STARFIVE_JH7110_PCIE
 
 config PHY_STARFIVE_JH7110_USB
 	tristate "Starfive JH7110 USB 2.0 PHY support"
-	depends on USB_SUPPORT
+	depends on USB_SUPPORT && HAS_IOMEM
 	select GENERIC_PHY
 	help
 	  Enable this to support the StarFive USB 2.0 PHY,
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
