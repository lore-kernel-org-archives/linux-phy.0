Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CB2C432BE
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 10:45:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B4F661052
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 10:45:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6B4F661052
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GaejnXvaO3UDPKTXkfuYaLiMeCpS0jYr39qOPb+5yfY=; b=g82ObCmIp1WFsJ
	5Cb+GDvNtw3QznnJ6KHniHTYan50w+3FYZxgXtPfXFQg5QYFdO4IIghPdS4BVcaepgBIUlwDBB9Jz
	Sw1gfIfP+7mv9oI83KWJ6duhOZrdsKrlvIgbT5I6d+9ORsEL1NOoSh2+/8lk0//ejbvJ/OaTUsFrZ
	I5OR1uDvLZr4jhQfwXJb5HPy8E6XMc+mfBkioAsLIL7G+fOH54m4w7ER4A48l4fByF03yfdzKJAT3
	LFGpIrCXUOLHzTm0crZa+2QqCYzNyy241fi98fJZsSk+CyUEalkoyeksFp3ZyC8spTf6KkTAqJFm/
	GUwGWr58cz8ZO0ZAuMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8KaS-00EUEg-VN; Tue, 27 Jul 2021 10:45:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8KaQ-00EUDu-1h
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 10:45:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id EAE9080F0;
 Tue, 27 Jul 2021 10:45:37 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-omap@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH] phy: phy-twl4030-usb: Disable PHY for suspend
Date: Tue, 27 Jul 2021 13:45:12 +0300
Message-Id: <20210727104512.52968-1-tony@atomide.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_034522_173798_FFC849D3 
X-CRM114-Status: UNSURE (   9.45  )
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

Since commit 88d26136a256 ("PM: Prevent runtime suspend during system
resume"), PM runtime will not let devices idle during system suspend.

This is because of the pm_runtime_get_noresume() call done in
device_prepare() that is not released until at device_complete() after
resume.

We must now disable the USB PHY in suspend if no USB cable is connected.

Cc: Andreas Kemnade <andreas@kemnade.info>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -162,6 +162,8 @@ struct twl4030_usb {
 	atomic_t		connected;
 	bool			vbus_supplied;
 	bool			musb_mailbox_pending;
+	unsigned long		runtime_suspended:1;
+	unsigned long		needs_resume:1;
 
 	struct delayed_work	id_workaround_work;
 };
@@ -384,6 +386,9 @@ static void __twl4030_phy_power(struct twl4030_usb *twl, int on)
 	WARN_ON(twl4030_usb_write_verify(twl, PHY_PWR_CTRL, pwr) < 0);
 }
 
+static int twl4030_usb_runtime_suspend(struct device *dev);
+static int twl4030_usb_runtime_resume(struct device *dev);
+
 static int __maybe_unused twl4030_usb_suspend(struct device *dev)
 {
 	struct twl4030_usb *twl = dev_get_drvdata(dev);
@@ -395,6 +400,10 @@ static int __maybe_unused twl4030_usb_suspend(struct device *dev)
 	 */
 	dev_dbg(twl->dev, "%s\n", __func__);
 	disable_irq(twl->irq);
+	if (!twl->runtime_suspended && !atomic_read(&twl->connected)) {
+		twl4030_usb_runtime_suspend(dev);
+		twl->needs_resume = 1;
+	}
 
 	return 0;
 }
@@ -405,9 +414,13 @@ static int __maybe_unused twl4030_usb_resume(struct device *dev)
 
 	dev_dbg(twl->dev, "%s\n", __func__);
 	enable_irq(twl->irq);
+	if (twl->needs_resume)
+		twl4030_usb_runtime_resume(dev);
 	/* check whether cable status changed */
 	twl4030_usb_irq(0, twl);
 
+	twl->runtime_suspended = 0;
+
 	return 0;
 }
 
@@ -422,6 +435,8 @@ static int __maybe_unused twl4030_usb_runtime_suspend(struct device *dev)
 	regulator_disable(twl->usb1v8);
 	regulator_disable(twl->usb3v1);
 
+	twl->runtime_suspended = 1;
+
 	return 0;
 }
 
-- 
2.32.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
