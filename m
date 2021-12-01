Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EB54C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8A77zPaR8Lx6WTKkD6QJezRkR9NjpJtUuGrv7mrxSQ=; b=JpDXfWNYg3Fakh
	8zI8SBafyt3I9dHeeTMxDFpkIkAGNr5TlI/ro8NqeaBmDpdyirXCd8Gfi/jsx4SsloT8eApwizpJU
	4lyDJgYzKgSWxES2uKNDVnQkT0Qyv7U2JstGtxd9l7cNckjpdxpDJFXmJwlxHAt0Qf3Cd3pyZ6Gp3
	UsTZkdEEyJGxkuKQMCB5Uathz/br66SITiQ6P0qnQ+dHd1dqmGhKOm2Cbw0IIen5olazTC5NQwKiY
	bLIxj7UqSWFq2DFhpFwxV7Pg29YvhTIxcxupLigsDHeW7yyoIXcyiV6UIes6lZ+JPebA/13LdpIdF
	llFtE5U7oSIm0zykDFdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msU0V-009hVT-HP; Wed, 01 Dec 2021 18:07:03 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msU0S-009hU0-RI
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 18:07:02 +0000
Received: by mail-pj1-x102f.google.com with SMTP id
 y14-20020a17090a2b4e00b001a5824f4918so356641pjc.4
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 10:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zWKI66hVWIsm1UjmNtmr6LT7Fi7B/zNN7cFHtvKJDKs=;
 b=QENXn3UhkrxYHTUnnU/Qqlf3ke8S1612FM0FGyrmbHzRXQQC4yBY5pRGoGXpvisB0r
 IyLRSpPBMkdL5uUIxdvfk2sZH5AH+WVnhMeYCZt1jF7qc5lWbRQXG8LW9yXfKm66WuV+
 q4CQo6WRC2xMRyQuY0wh+6d+wxjwV+x+ffDXUhV87Fhng135sFSJnE7W63XZeMarMYOd
 3g4hG/oA88/5pq0ABrsuQdb8GMLv6rBRSvXI+S/bWEkQh+E7BzFIHhOIpJRL0vfZEoA6
 XulROLr2zFjxcdz/m112UiT3WMOSGghOG11hC/pNsHP92XpOjizXDyWy+u5JGT91gLjd
 9Yew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zWKI66hVWIsm1UjmNtmr6LT7Fi7B/zNN7cFHtvKJDKs=;
 b=fNsGXV0oim9WblPhmQMnWfabwo+ZY7ixXLVbHDKLnfRkWe0NLdvM09fyBD4NRHlBF7
 1K5U2BIOTaSGGvn84XJsuHRo6qK46bunEfsLXJsZ+1g23frEHd14VmqP0uejhJyMG15F
 8GYIOcg72AuxWic64hL9uYO80QRXphHPanhZbReEbfnmS5uIvTq2ZgzoTajo1BQkY1CT
 GiD6zeWTGnHxiGJ7QqsBIY5iJoyASDj7p9uyfvAOln+8sMpd3Yab106TKE55lqAa9RZL
 MzTuaDUyhCxZuQ8RuoHZWMiLG9syA1d5CbVMrunRJ0n2fL3xSM6CjJD4PW/ODOIRTGDN
 hcPw==
X-Gm-Message-State: AOAM533eZWUNOKH9VF5Q8iuNyiiuc53+q2Nf2u1pt6Rj2AbFnyBWVW/a
 aFBxBcAY6lIj3aVBT0GZDcI=
X-Google-Smtp-Source: ABdhPJxO8QODxk+y6B10Qtq3Y+cGUdOf8qcl/BPukwUHTst/HAy6gFol6DNjPAOP2G6YgYyGaoTiuQ==
X-Received: by 2002:a17:902:d2cf:b0:141:b347:df9d with SMTP id
 n15-20020a170902d2cf00b00141b347df9dmr9249283plc.37.1638382020132; 
 Wed, 01 Dec 2021 10:07:00 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.11.250])
 by smtp.gmail.com with ESMTPSA id w142sm462582pfc.115.2021.12.01.10.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 10:06:59 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/3] phy: usb: Leave some clocks running during suspend
Date: Wed,  1 Dec 2021 13:06:51 -0500
Message-Id: <20211201180653.35097-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211201180653.35097-1-alcooperx@gmail.com>
References: <20211201180653.35097-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_100700_914597_E37E3AC2 
X-CRM114-Status: GOOD (  20.42  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The PHY client driver does a phy_exit() call on suspend or rmmod and
the PHY driver needs to know the difference because some clocks need
to be kept running for suspend but can be shutdown on unbind/rmmod
(or if there are no PHY clients at all).

The fix is to use a PM notifier so the driver can tell if a PHY
client is calling exit() because of a system suspend or a driver
unbind/rmmod.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 38 +++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 116fb23aebd9..0f1deb6e0eab 100644
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
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
