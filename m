Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA7DC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BE9C610A1
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1BE9C610A1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BWpKTaW3Ycp4rpgj87QDaiM5oHjIn/uAf7pk7CG8Nr4=; b=PRpqWW1N5pkc5E
	WDVvwspgtPLL8UHoAoajyX1Ev3ChM7CdPTh2Sc3LwWL4rVXey7LHqBkctcoHPWO/bXfoF6IYivmcB
	zgzGz1m+cCHzlehKemmI4YVPlFzW+QRF/Z3isGXlAbsqqk5agMJDbNBNZ5nOCyLODmbV2jDpphNCK
	fQnBexZchpv83HBKVhxXpdqayrHNbUTtr/WVzVVD+Ocd5XzBClsxmNQrcIzeH2OsG4G4iFpzvutpM
	Cmr6r7AWzJCMZtXx3Ht5OX5c/OGN2cdEwgxXlhYPns94pZMFNstrtg2ZbHwJfv8/VDylQ7laPO+bV
	oB8VEwG+ByG9DrZ54ALQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTEpX-00A7VF-JO; Thu, 23 Sep 2021 02:51:23 +0000
Received: from mx22.baidu.com ([220.181.50.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTEpV-00A7U7-FO
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 02:51:22 +0000
Received: from BC-Mail-Ex21.internal.baidu.com (unknown [172.31.51.15])
 by Forcepoint Email with ESMTPS id 7925F8E843ECB3A8E108;
 Thu, 23 Sep 2021 10:51:20 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex21.internal.baidu.com (172.31.51.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:51:20 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Thu, 23 Sep 2021 10:51:19 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: st: Kconfig: Add configuration menu for STMicro phy
 drivers
Date: Thu, 23 Sep 2021 10:51:13 +0800
Message-ID: <20210923025114.613-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex31.internal.baidu.com (172.31.51.25) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_195121_784009_4F4C44B8 
X-CRM114-Status: UNSURE (   6.69  )
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

Adding a configuration menu to hold many STMicro phy drivers
helps to make the menu display more concise.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/phy/st/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/st/Kconfig b/drivers/phy/st/Kconfig
index 3fc3d0781fb8..81b3e59ca07d 100644
--- a/drivers/phy/st/Kconfig
+++ b/drivers/phy/st/Kconfig
@@ -2,6 +2,8 @@
 #
 # Phy drivers for STMicro platforms
 #
+menu "PHY drivers for STMicro platforms"
+
 config PHY_MIPHY28LP
 	tristate "STMicroelectronics MIPHY28LP PHY driver for STiH407"
 	depends on ARCH_STI
@@ -47,3 +49,5 @@ config PHY_STM32_USBPHYC
 	  used by an HS USB Host controller, and the second one is shared
 	  between an HS USB OTG controller and an HS USB Host controller,
 	  selected by a USB switch.
+
+endmenu
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
