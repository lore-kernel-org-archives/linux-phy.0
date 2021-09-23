Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21FCDC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA5EB61131
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EA5EB61131
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ad9q6OgSS2XrWGKVTGxy7dDy+1pgT770ZeoHvTZbFc0=; b=mes5bEpSS11Nss
	qES8EA2u2LQcbdGubS7COB8y//vY5Jj7nKfyQ9oaYOMGyEXNRUgUYz3lEpohglZ4bR+lrwI+V4gwn
	4WGjZ80TLxbyh7eRFki2Pbhu+M9ywnFnuSX7PVvYHymibY08UmPeqiK1WK2LTj7lYsVJIa4IjtBJ0
	2q1VSIh2evcsKJzWBDksj0GtIshaAkzGFyxNjq6rDX87bXx+3eAGs7rPLCGcVYpO1+zo0BB8uAM7w
	GJRR05CKlhAkS8Ckqxw2ELTZdLJl/SOw8eqifpv2LaS9TlmCrHbtOpNE81fDtkulwPbxIel9as5EU
	vP/pPGBkjGZ3/jB0Y6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTEpR-00A7Sr-Fe; Thu, 23 Sep 2021 02:51:17 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTEpO-00A7RY-0N
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 02:51:15 +0000
Received: from BC-Mail-Ex22.internal.baidu.com (unknown [172.31.51.16])
 by Forcepoint Email with ESMTPS id 07B80323EAD5CF7D5FF9;
 Thu, 23 Sep 2021 10:51:13 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex22.internal.baidu.com (172.31.51.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:51:12 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Thu, 23 Sep 2021 10:51:12 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: socionext: Kconfig: Add configuration menu for Socionext
 phy drivers
Date: Thu, 23 Sep 2021 10:51:06 +0800
Message-ID: <20210923025106.560-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex31.internal.baidu.com (172.31.51.25) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_195114_292252_782B9604 
X-CRM114-Status: UNSURE (   8.38  )
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

Adding a configuration menu to hold many Socionext phy drivers
helps to make the menu display more concise.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/phy/socionext/Kconfig | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/socionext/Kconfig b/drivers/phy/socionext/Kconfig
index a3970e0f89da..44241cdca97a 100644
--- a/drivers/phy/socionext/Kconfig
+++ b/drivers/phy/socionext/Kconfig
@@ -2,11 +2,12 @@
 #
 # PHY drivers for Socionext platforms.
 #
+menu "PHY drivers for Socionext platforms"
+	depends on ARCH_UNIPHIER || COMPILE_TEST
+	depends on OF && HAS_IOMEM
 
 config PHY_UNIPHIER_USB2
 	tristate "UniPhier USB2 PHY driver"
-	depends on ARCH_UNIPHIER || COMPILE_TEST
-	depends on OF && HAS_IOMEM
 	select GENERIC_PHY
 	select MFD_SYSCON
 	help
@@ -18,8 +19,6 @@ config PHY_UNIPHIER_USB2
 
 config PHY_UNIPHIER_USB3
 	tristate "UniPhier USB3 PHY driver"
-	depends on ARCH_UNIPHIER || COMPILE_TEST
-	depends on OF && HAS_IOMEM
 	select GENERIC_PHY
 	help
 	  Enable this to support USB PHY implemented in USB3 controller
@@ -27,8 +26,6 @@ config PHY_UNIPHIER_USB3
 
 config PHY_UNIPHIER_PCIE
 	tristate "Uniphier PHY driver for PCIe controller"
-	depends on ARCH_UNIPHIER || COMPILE_TEST
-	depends on OF && HAS_IOMEM
 	default PCIE_UNIPHIER
 	select GENERIC_PHY
 	help
@@ -37,10 +34,10 @@ config PHY_UNIPHIER_PCIE
 
 config PHY_UNIPHIER_AHCI
 	tristate "UniPhier AHCI PHY driver"
-	depends on ARCH_UNIPHIER || COMPILE_TEST
-	depends on OF && HAS_IOMEM
 	default SATA_AHCI_PLATFORM
 	select GENERIC_PHY
 	help
 	  Enable this to support PHY implemented in AHCI controller
 	  on UniPhier SoCs. This driver supports PXs2 and PXs3 SoCs.
+
+endmenu
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
