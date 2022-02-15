Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72AE9C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 15:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3Z1NOwoBKwCqGj79+sKyuJDMMFMrLcgC3CdJ5h+USY=; b=nUZbprjdYbdKzN
	Ge48oJJhPXPSOZg3N9uPSZPsrou9DYWXD0FKbHefp1BwSQG9mw4wXewJqI1kYgdbzpbSV/qTXHzJD
	SKXSqj5CGxezMtA92tZg+TrWWgdGeZ/wEEeDvmIU9KOFIb4KUZjVZcxsAGfzJaZ5vBdovRIXhdy3l
	FRygO2kudjy6YOS5Wk/V0BWzM8xeGZaN0LdDFhsPZmSWUUQ8bVOWh99RFafIZTGJlRmVBEBr2Jsyn
	bdirhFMKlIICDKqS/LEkEbkYeeivtc1mVoK6KtXG4ZcrRMoaiALmAUbcPyn08MyMY9Zgl4AwtElfj
	UjWBayJl8356CzlCkccw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJzrz-003KaE-Pp; Tue, 15 Feb 2022 15:35:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJzkr-003GiN-Th
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 15:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 55888615F2;
 Tue, 15 Feb 2022 15:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34064C340F4;
 Tue, 15 Feb 2022 15:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644938917;
 bh=iPC6rs41KA4hADJiYkVNEN+JZ5gWdDD0SEeI8wwJ1HI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ParUpoZdAH+kH+6jGOolehXVj0goCB6KEtRni5+vx5tQIAzImomy/U57n2OJvOVsY
 9HAQHnXfbn2+X+b0Ui2E1jI8WjF6JNxx4faeVEj12MwuiaqnIKm6goY4U0oWKyTc/5
 Cb9VyByLMM50HmGUjsu/99Q5ZbUsQybyhXo9IL4fS+U0oOGSLZSFNJowsJZP8Eevhu
 hXdcIewtuXvzKsRTyUsVDLrxT6FOYKy0uw9DXI0YV9ckXfpK82ih+H39bU40BM0rpO
 KWvja2buIlkwUkgjO3MHJQRgjzhZFTPgnPdySaNZTlNaigyCnwUAyBClFffGFzyIS7
 lt/h1gb0FsIjg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Sasha Levin <sashal@kernel.org>,
 kishon@ti.com, bcm-kernel-feedback-list@broadcom.com,
 linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 03/33] phy: usb: Leave some clocks running during
 suspend
Date: Tue, 15 Feb 2022 10:28:01 -0500
Message-Id: <20220215152831.580780-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215152831.580780-1-sashal@kernel.org>
References: <20220215152831.580780-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_072838_043421_9DF71DFB 
X-CRM114-Status: GOOD (  21.25  )
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

From: Al Cooper <alcooperx@gmail.com>

[ Upstream commit 42fed57046fc74586d7058bd51a1c10ac9c690cb ]

The PHY client driver does a phy_exit() call on suspend or rmmod and
the PHY driver needs to know the difference because some clocks need
to be kept running for suspend but can be shutdown on unbind/rmmod
(or if there are no PHY clients at all).

The fix is to use a PM notifier so the driver can tell if a PHY
client is calling exit() because of a system suspend or a driver
unbind/rmmod.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Link: https://lore.kernel.org/r/20211201180653.35097-2-alcooperx@gmail.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 38 +++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 116fb23aebd99..0f1deb6e0eabf 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -18,6 +18,7 @@
 #include <linux/soc/brcmstb/brcmstb.h>
 #include <dt-bindings/phy/phy.h>
 #include <linux/mfd/syscon.h>
+#include <linux/suspend.h>
 
 #include "phy-brcm-usb-init.h"
 
@@ -70,12 +71,35 @@ struct brcm_usb_phy_data {
 	int			init_count;
 	int			wake_irq;
 	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
+	struct notifier_block	pm_notifier;
+	bool			pm_active;
 };
 
 static s8 *node_reg_names[BRCM_REGS_MAX] = {
 	"crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
 };
 
+static int brcm_pm_notifier(struct notifier_block *notifier,
+			    unsigned long pm_event,
+			    void *unused)
+{
+	struct brcm_usb_phy_data *priv =
+		container_of(notifier, struct brcm_usb_phy_data, pm_notifier);
+
+	switch (pm_event) {
+	case PM_HIBERNATION_PREPARE:
+	case PM_SUSPEND_PREPARE:
+		priv->pm_active = true;
+		break;
+	case PM_POST_RESTORE:
+	case PM_POST_HIBERNATION:
+	case PM_POST_SUSPEND:
+		priv->pm_active = false;
+		break;
+	}
+	return NOTIFY_DONE;
+}
+
 static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
 {
 	struct phy *gphy = dev_id;
@@ -91,6 +115,9 @@ static int brcm_usb_phy_init(struct phy *gphy)
 	struct brcm_usb_phy_data *priv =
 		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
 
+	if (priv->pm_active)
+		return 0;
+
 	/*
 	 * Use a lock to make sure a second caller waits until
 	 * the base phy is inited before using it.
@@ -120,6 +147,9 @@ static int brcm_usb_phy_exit(struct phy *gphy)
 	struct brcm_usb_phy_data *priv =
 		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
 
+	if (priv->pm_active)
+		return 0;
+
 	dev_dbg(&gphy->dev, "EXIT\n");
 	if (phy->id == BRCM_USB_PHY_2_0)
 		brcm_usb_uninit_eohci(&priv->ini);
@@ -488,6 +518,9 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	priv->pm_notifier.notifier_call = brcm_pm_notifier;
+	register_pm_notifier(&priv->pm_notifier);
+
 	mutex_init(&priv->mutex);
 
 	/* make sure invert settings are correct */
@@ -528,7 +561,10 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 
 static int brcm_usb_phy_remove(struct platform_device *pdev)
 {
+	struct brcm_usb_phy_data *priv = dev_get_drvdata(&pdev->dev);
+
 	sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
+	unregister_pm_notifier(&priv->pm_notifier);
 
 	return 0;
 }
@@ -539,6 +575,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
+		dev_dbg(dev, "SUSPEND\n");
 		priv->ini.wake_enabled = device_may_wakeup(dev);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			brcm_usb_uninit_xhci(&priv->ini);
@@ -578,6 +615,7 @@ static int brcm_usb_phy_resume(struct device *dev)
 	 * Uninitialize anything that wasn't previously initialized.
 	 */
 	if (priv->init_count) {
+		dev_dbg(dev, "RESUME\n");
 		if (priv->wake_irq >= 0)
 			disable_irq_wake(priv->wake_irq);
 		brcm_usb_init_common(&priv->ini);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
