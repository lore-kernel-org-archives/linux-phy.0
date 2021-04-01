Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29EC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 21:00:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D55806108B
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 21:00:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D55806108B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1e8E5x5zozvJUgyWrGSf4rnq2e6Dc8tAs2qtnTGfshM=; b=jYEWJm7RmdNZ7J10QJfDzaXnud
	asFFRg5C2hLMIIODMvz+cceAMYpzrfpMcQybY/5bPjwkZaED0EEYVGCGfNo0KHTc8HiQzjbW8esok
	vJAdTYyBa71cbKeMuvNc5dZRAXsh3RYBsTFiG4yd2/VZO3V+vF0v1Zm3ldQs087Fx1161tP6OTc/y
	rsWmSpg44ckr1ClsdmqWecjVp2DUAvkpGK5fToHEr51oVq5NVRjGF0C0RMci2ktoT6b7lf/eJNxNo
	CI7cyVvnEyQ72X82lACzC+wYUK7aYwghKqKOHq11dLmV1+BmVuc0kVNqngN2zHoJYlJzB1y5K0/l3
	cdL8d8bQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS4Qv-00B0dd-Vv; Thu, 01 Apr 2021 21:00:57 +0000
Received: from [2601:1c0:6280:3f0::e0e1] (helo=smtpauth.infradead.org)
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lS4Qs-00B0d6-TX; Thu, 01 Apr 2021 21:00:51 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Kostya Porotchkin <kostap@marvell.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org
Subject: [PATCH -next] phy: marvell: phy-mvebu-cp11i-utmi needs USB_COMMON
Date: Thu,  1 Apr 2021 14:00:45 -0700
Message-Id: <20210401210045.23525-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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

When USB and USB_COMMON are not enabled, phy-mvebu-cp110-utmi
suffers a build error due to a missing interface that is provided
by CONFIG_USB_COMMON, so make the driver depend on USB_COMMON.

ld: drivers/phy/marvell/phy-mvebu-cp110-utmi.o: in function `mvebu_cp110_utmi_phy_probe':
phy-mvebu-cp110-utmi.c:(.text+0x152): undefined reference to `of_usb_get_dr_mode_by_phy'

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Kostya Porotchkin <kostap@marvell.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org
---
 drivers/phy/marvell/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20210331.orig/drivers/phy/marvell/Kconfig
+++ linux-next-20210331/drivers/phy/marvell/Kconfig
@@ -70,7 +70,7 @@ config PHY_MVEBU_CP110_COMPHY
 config PHY_MVEBU_CP110_UTMI
 	tristate "Marvell CP110 UTMI driver"
 	depends on ARCH_MVEBU || COMPILE_TEST
-	depends on OF
+	depends on OF && USB_COMMON
 	select GENERIC_PHY
 	help
 	  Enable this to support Marvell CP110 UTMI PHY driver.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
