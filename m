Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88481C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:50:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 21DE8610A1
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 21DE8610A1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tu+PodKIkC2vX2UcPqjleymdU5EayDQHMBvb1Rh/J2Q=; b=hUlvmsF9jp83pJ
	J0b+hOrzgcmrBk137W4wBAY9tR+QV4MhOlQoNLNI82siwjGoIoawc85P4DT+qfGD5h6aP5J6T+e40
	4505Xn7reaEIluvMkIBWlFK0TQfNMYTlx4pk5OP9mCD/8BQ//Usyf/I2ZEfO01b1mMZoSife98vT4
	FMHZQ4bUurW6Okjn/zJf9rg9PlDJDu1lw6pIJTc9N5y1gvqD0jGtdZ3P1JokqZWWVcTq99XqrW7Kc
	BSr3w8i+jfyuqE0/VbR3w8xzx1wJZCYxivXCRa1XjisdQzzwBdCDi8fyIuoMLKN/yJgGULiV7powb
	vvoXAA/WV1SVvvzNhjuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTEob-00A7Iq-Gm; Thu, 23 Sep 2021 02:50:25 +0000
Received: from mx22.baidu.com ([220.181.50.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTEoY-00A7Hz-38
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 02:50:24 +0000
Received: from BC-Mail-Ex30.internal.baidu.com (unknown [172.31.51.24])
 by Forcepoint Email with ESMTPS id 5E0E8D2FE4E6757A21E8;
 Thu, 23 Sep 2021 10:50:12 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex30.internal.baidu.com (172.31.51.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:50:12 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Thu, 23 Sep 2021 10:50:11 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: amlogic: Kconfig: Add configuration menu for Amlogic phy
 drivers
Date: Thu, 23 Sep 2021 10:50:04 +0800
Message-ID: <20210923025005.136-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex31.internal.baidu.com (172.31.51.25) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_195022_378825_003BF7A3 
X-CRM114-Status: UNSURE (   7.00  )
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

Adding a configuration menu to hold many Amlogic phy drivers
helps to make the menu display more concise.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/phy/amlogic/Kconfig | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
index db5d0cd757e3..f16802831d56 100644
--- a/drivers/phy/amlogic/Kconfig
+++ b/drivers/phy/amlogic/Kconfig
@@ -2,10 +2,12 @@
 #
 # Phy drivers for Amlogic platforms
 #
+menu "PHY drivers for Amlogic platforms"
+	depends on OF && (ARCH_MESON || COMPILE_TEST)
+
 config PHY_MESON8B_USB2
 	tristate "Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	depends on USB_SUPPORT
 	select USB_COMMON
 	select GENERIC_PHY
@@ -18,7 +20,6 @@ config PHY_MESON8B_USB2
 config PHY_MESON_GXL_USB2
 	tristate "Meson GXL and GXM USB2 PHY drivers"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	depends on USB_SUPPORT
 	select GENERIC_PHY
 	select REGMAP_MMIO
@@ -30,7 +31,6 @@ config PHY_MESON_GXL_USB2
 config PHY_MESON_G12A_USB2
 	tristate "Meson G12A USB2 PHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
@@ -41,7 +41,6 @@ config PHY_MESON_G12A_USB2
 config PHY_MESON_G12A_USB3_PCIE
 	tristate "Meson G12A USB3+PCIE Combo PHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
@@ -52,7 +51,6 @@ config PHY_MESON_G12A_USB3_PCIE
 config PHY_MESON_AXG_PCIE
 	tristate "Meson AXG PCIE PHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
@@ -63,7 +61,6 @@ config PHY_MESON_AXG_PCIE
 config PHY_MESON_AXG_MIPI_PCIE_ANALOG
 	tristate "Meson AXG MIPI + PCIE analog PHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	select GENERIC_PHY_MIPI_DPHY
@@ -75,7 +72,6 @@ config PHY_MESON_AXG_MIPI_PCIE_ANALOG
 config PHY_MESON_AXG_MIPI_DPHY
 	tristate "Meson AXG MIPI DPHY driver"
 	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	select GENERIC_PHY_MIPI_DPHY
@@ -83,3 +79,5 @@ config PHY_MESON_AXG_MIPI_DPHY
 	  Enable this to support the Meson MIPI DPHY found in Meson AXG
 	  SoCs.
 	  If unsure, say N.
+
+endmenu
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
