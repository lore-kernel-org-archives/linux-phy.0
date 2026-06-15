Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59102CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 07:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oMbr/YrRTT2WYG436CCXDfTPGQHVQtfFsyXt+xuqXf0=; b=uCDgT0KUBLTUQ0
	NMqqw5Z/PzL44J2icbxEE80vDHtj1Jjzbv+LMKs5dHVZC4CkUkjEl6GyXKlAGbjDk0mzqsxAPkp8c
	Brg+EPuutPnumoJ9bGh1oHPG+Cy5FCTY5WfjJx8tcciixD63rKcfw7WF9yZrpOqfBR/K0Fh2nadUA
	dlMyufp3AcBfnBUycmiRJQzYw3SWMUQQShNfteZq7A8dv1W0L1Fjkqq5/viQl94FQEpp3EoP6Kctw
	c0Q9oZHCaxBjOzjtxidgwBBFpUMyso1BT754BJI1McDNjHnnWcWtlRw4+aWvyQEApywjCoqbjgblA
	VN4Cxmravi8kHnOCNIzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1KA-0000000DjM0-3iOZ;
	Mon, 15 Jun 2026 07:01:34 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1K7-0000000DjLJ-26b6
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 07:01:33 +0000
Received: from localhost.localdomain (unknown [111.196.245.140])
	by APP-05 (Coremail) with SMTP id zQCowAD3fABFoy9qLh+UEw--.24583S2;
	Mon, 15 Jun 2026 15:01:25 +0800 (CST)
From: Pengpeng Hou <pengpeng@iscas.ac.cn>
To: Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: pengpeng@iscas.ac.cn
Subject: [PATCH] phy: broadcom: brcm-usb: unwind late probe failures
Date: Mon, 15 Jun 2026 15:01:23 +0800
Message-ID: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAD3fABFoy9qLh+UEw--.24583S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWrWDZF17XFW5JFyUXFy7KFg_yoW5Ary8pa
	9rGa9Ygr4DJFW7Ww4fX3WDZFWFkw1Fq3W0yry7Xry7Za4qkwnrJrWIqFyFvF4fJFZ8G3y5
	ta45XFy5uanrCw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jw0_WrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc7CjxVAaw2AFwI0_
	JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67
	AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIY
	rxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF7I0E14
	v26F4j6r4UJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_
	Cr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUTnQ
	UUUUUU=
X-Originating-IP: [111.196.245.140]
X-CM-SenderInfo: pshqw1xhqjqxpvfd2hldfou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_000132_451777_D36DCB5B 
X-CRM114-Status: GOOD (  11.41  )
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

brcm_usb_phy_probe() registers a PM notifier and may create a sysfs group
before registering the OF PHY provider. If provider registration fails,
probe returns the error with those resources still active.

Track which optional resources were installed and remove them on the late
provider-registration failure path. Use the same state in remove() so
cleanup matches probe progress.

Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 59d756a10d6c..e606db489698 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -71,6 +71,8 @@ struct brcm_usb_phy_data {
 	int			wake_irq;
 	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
 	struct notifier_block	pm_notifier;
+	bool			pm_notifier_registered;
+	bool			sysfs_group_created;
 	bool			pm_active;
 };
 
@@ -545,7 +547,11 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 		return err;
 
 	priv->pm_notifier.notifier_call = brcm_pm_notifier;
-	register_pm_notifier(&priv->pm_notifier);
+	err = register_pm_notifier(&priv->pm_notifier);
+	if (err)
+		dev_warn(dev, "Error registering PM notifier\n");
+	else
+		priv->pm_notifier_registered = true;
 
 	mutex_init(&priv->mutex);
 
@@ -561,6 +567,8 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	err = sysfs_create_group(&dev->kobj, &brcm_usb_phy_group);
 	if (err)
 		dev_warn(dev, "Error creating sysfs attributes\n");
+	else
+		priv->sysfs_group_created = true;
 
 	/* Get piarbctl syscon if it exists */
 	rmap = syscon_regmap_lookup_by_phandle(dev->of_node,
@@ -581,16 +589,29 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	clk_disable_unprepare(priv->usb_30_clk);
 
 	phy_provider = devm_of_phy_provider_register(dev, brcm_usb_phy_xlate);
+	err = PTR_ERR_OR_ZERO(phy_provider);
+	if (err)
+		goto err_remove_debug;
+
+	return 0;
+
+err_remove_debug:
+	if (priv->sysfs_group_created)
+		sysfs_remove_group(&dev->kobj, &brcm_usb_phy_group);
+	if (priv->pm_notifier_registered)
+		unregister_pm_notifier(&priv->pm_notifier);
 
-	return PTR_ERR_OR_ZERO(phy_provider);
+	return err;
 }
 
 static void brcm_usb_phy_remove(struct platform_device *pdev)
 {
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(&pdev->dev);
 
-	sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
-	unregister_pm_notifier(&priv->pm_notifier);
+	if (priv->sysfs_group_created)
+		sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
+	if (priv->pm_notifier_registered)
+		unregister_pm_notifier(&priv->pm_notifier);
 }
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.50.1 (Apple Git-155)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
