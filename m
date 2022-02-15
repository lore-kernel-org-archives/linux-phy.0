Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4579FC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 15:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoU2kFEv4NVz3biV/g1bKVOD1SUVz3owMl2LPQ37Ab4=; b=CVzgEsP0IESjh6
	KiE0/l7q3x+CsKVqFr9xjDKc7tPVQVQRXxj8kSSMUbqZ8/WUuCphwUpOkm63/lgdbl+KWBJ3KyMrr
	bPK/YXkDBekrBSMgQewVk6vMF40r14TLGalnam7N/RAp5w9p9k4LCsDy1LmsPX8NkNbpVxjbeqHad
	me5O9iJgc59CaE2+XsAmETYV/2/kDc3vSb6yGE4sd47fKyn8X5sKFxXmVFdM8K6drD1SLsG3yQUAQ
	WGDay3KgnoC/Bne43oLhqxYIdRU8d3xVmTKUwEGJ3U4IesCw9rEow6uKB8cKeFqMw29ZaFmf+u3/S
	eqdEPmjv3EtgEeB3b5CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK03i-003QHW-Fi; Tue, 15 Feb 2022 15:48:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJzmG-003HS5-NT
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 15:30:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 45BB06168F;
 Tue, 15 Feb 2022 15:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A64FC340F4;
 Tue, 15 Feb 2022 15:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644939003;
 bh=PFd0vWbuccoeBz31rmd7XX1dtx0C17Ku1YNGpKvMo6I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gyQYQbSy77Xyuii9zoq3t9OIDKCm3Qc59U+EFiLW8s3cfFHXiNV2Ghx9ijLtX2isY
 Pblnop9yMtDHwdbbIQ/uSE+9S0zlwWu5qs37Frzr6edQMhfF0WgcZxPEKwSpae0CAK
 DfrL3wSwWkcuJHgr5nJID6OCUj/NsCoBPrv2zF7ex+vXdN08jx2ioh3mMggHGt2cMd
 C7Yxl4gvnpgPoD18CNxYsLa2z2Eoh6TzxJ39w52zJbnd7jDB+jqvq5CpYTwpBME8a4
 6STGQSWKJxIJmLLehYs6eAAqs87ynqUgWs0VicZiK7gD6u+aJQ95dWvxcnS3Rpst0L
 S+Ag8iuikCXCA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Sasha Levin <sashal@kernel.org>,
 kishon@ti.com, bcm-kernel-feedback-list@broadcom.com,
 linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 03/23] phy: usb: Leave some clocks running during
 suspend
Date: Tue, 15 Feb 2022 10:29:37 -0500
Message-Id: <20220215152957.581303-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215152957.581303-1-sashal@kernel.org>
References: <20220215152957.581303-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_073004_947414_F3CA7764 
X-CRM114-Status: GOOD (  21.35  )
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
index 99fbc7e4138be..b901a0d4e2a80 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -17,6 +17,7 @@
 #include <linux/soc/brcmstb/brcmstb.h>
 #include <dt-bindings/phy/phy.h>
 #include <linux/mfd/syscon.h>
+#include <linux/suspend.h>
 
 #include "phy-brcm-usb-init.h"
 
@@ -69,12 +70,35 @@ struct brcm_usb_phy_data {
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
@@ -90,6 +114,9 @@ static int brcm_usb_phy_init(struct phy *gphy)
 	struct brcm_usb_phy_data *priv =
 		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
 
+	if (priv->pm_active)
+		return 0;
+
 	/*
 	 * Use a lock to make sure a second caller waits until
 	 * the base phy is inited before using it.
@@ -119,6 +146,9 @@ static int brcm_usb_phy_exit(struct phy *gphy)
 	struct brcm_usb_phy_data *priv =
 		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
 
+	if (priv->pm_active)
+		return 0;
+
 	dev_dbg(&gphy->dev, "EXIT\n");
 	if (phy->id == BRCM_USB_PHY_2_0)
 		brcm_usb_uninit_eohci(&priv->ini);
@@ -484,6 +514,9 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	priv->pm_notifier.notifier_call = brcm_pm_notifier;
+	register_pm_notifier(&priv->pm_notifier);
+
 	mutex_init(&priv->mutex);
 
 	/* make sure invert settings are correct */
@@ -524,7 +557,10 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 
 static int brcm_usb_phy_remove(struct platform_device *pdev)
 {
+	struct brcm_usb_phy_data *priv = dev_get_drvdata(&pdev->dev);
+
 	sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
+	unregister_pm_notifier(&priv->pm_notifier);
 
 	return 0;
 }
@@ -535,6 +571,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
+		dev_dbg(dev, "SUSPEND\n");
 		priv->ini.wake_enabled = device_may_wakeup(dev);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			brcm_usb_uninit_xhci(&priv->ini);
@@ -574,6 +611,7 @@ static int brcm_usb_phy_resume(struct device *dev)
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
