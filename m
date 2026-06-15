Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91163CD98CE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 07:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C9cAvl89RWB/M6VcipaIdWizljiwH1+bbVQavPyaHP0=; b=RINeK9RfqRXHdC
	27LXp65pB3dpPsm7mgd1PCMeP8DXg/HhIE7eXLCs2WOUwNle0S3s9GTZAtIzHq1qrT94f1UWuIm0V
	z3VrLwSHivpSlRVqNANmuvJFaKK3Od0iuOZOjWQRPrwzTM0CsmMOqoZi9tqSOgiPm2f7WjgxQDKBt
	98zPMuxkgJ5gIwyzNRirjb3ByTP5ksAmVD8woJEu6gh7ObtdmQJ7wh7Dn3sKtjfrJOHsA/SkyBK20
	2OQGNZdQlQuPTu4SLrpsrWxhsvkAOmbtl9wZawvjh5tKOyx6z/oHuYgtVkl6mCv+UBqr/sirWO+H7
	8RvP/urtZDQi2bVroqaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1L5-0000000DjTQ-0g2x;
	Mon, 15 Jun 2026 07:02:31 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1L2-0000000DjSR-1xY2
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 07:02:29 +0000
Received: from localhost.localdomain (unknown [111.196.245.140])
	by APP-05 (Coremail) with SMTP id zQCowAAHfO+Boy9q4SWUEw--.39269S2;
	Mon, 15 Jun 2026 15:02:26 +0800 (CST)
From: Pengpeng Hou <pengpeng@iscas.ac.cn>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: pengpeng@iscas.ac.cn
Subject: [PATCH] phy: ti: twl4030-usb: unwind late probe failures
Date: Mon, 15 Jun 2026 15:02:08 +0800
Message-ID: <20260615070211.59144-1-pengpeng@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAAHfO+Boy9q4SWUEw--.39269S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWFWDCw4DGw47Gw1Dur4xCrg_yoW5Ar48pr
	WrWa4rKrsYg347t39xAr48Xa45CrW3t3y7GryIg3yY9F1Fgw4qvay3G3WYqa18tF95Ga1D
	XFn8tFWfCFsrWF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkE14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jw0_WrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc7CjxVAaw2AFwI0_
	JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67
	AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIY
	rxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF7I0E14
	v26F4j6r4UJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_
	Cr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x0JU2Q6
	JUUUUU=
X-Originating-IP: [111.196.245.140]
X-CM-SenderInfo: pshqw1xhqjqxpvfd2hldfou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_000228_877599_0FDD5751 
X-CRM114-Status: GOOD (  10.66  )
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

twl4030_usb_probe() publishes the USB PHY and may create the vbus sysfs
file before enabling runtime PM and requesting the IRQ.

If the IRQ request or PHY lookup fails, probe returns directly. That
leaves the USB PHY registered, can leave the vbus sysfs file published,
and leaves the runtime-PM get from probe unbalanced. The return value
from usb_add_phy_dev() is also ignored.

Check usb_add_phy_dev(), remember whether the vbus file was created, and
unwind the runtime-PM, sysfs and USB-PHY state on the late failure paths.

Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
---
 drivers/phy/ti/phy-twl4030-usb.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index a26aec3ab29e..6a5968e6cfd8 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -162,6 +162,7 @@ struct twl4030_usb {
 	enum musb_vbus_id_status linkstat;
 	atomic_t		connected;
 	bool			vbus_supplied;
+	bool			vbus_file;
 	bool			musb_mailbox_pending;
 	unsigned long		runtime_suspended:1;
 	unsigned long		needs_resume:1;
@@ -746,11 +747,15 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "ldo init failed\n");
 		return err;
 	}
-	usb_add_phy_dev(&twl->phy);
+	err = usb_add_phy_dev(&twl->phy);
+	if (err)
+		return err;
 
 	platform_set_drvdata(pdev, twl);
 	if (device_create_file(&pdev->dev, &dev_attr_vbus))
 		dev_warn(&pdev->dev, "could not create sysfs file\n");
+	else
+		twl->vbus_file = true;
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&twl->phy.notifier);
 
@@ -773,18 +778,29 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 	if (status < 0) {
 		dev_dbg(&pdev->dev, "can't get IRQ %d, err %d\n",
 			twl->irq, status);
-		return status;
+		err = status;
+		goto err_runtime;
 	}
 
 	if (pdata)
 		err = phy_create_lookup(phy, "usb", "musb-hdrc.0");
 	if (err)
-		return err;
+		goto err_runtime;
 
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
+
+err_runtime:
+	pm_runtime_dont_use_autosuspend(&pdev->dev);
+	pm_runtime_put_noidle(twl->dev);
+	pm_runtime_disable(&pdev->dev);
+	if (twl->vbus_file)
+		device_remove_file(twl->dev, &dev_attr_vbus);
+	usb_remove_phy(&twl->phy);
+
+	return err;
 }
 
 static void twl4030_usb_remove(struct platform_device *pdev)
@@ -795,7 +811,8 @@ static void twl4030_usb_remove(struct platform_device *pdev)
 	usb_remove_phy(&twl->phy);
 	pm_runtime_get_sync(twl->dev);
 	cancel_delayed_work_sync(&twl->id_workaround_work);
-	device_remove_file(twl->dev, &dev_attr_vbus);
+	if (twl->vbus_file)
+		device_remove_file(twl->dev, &dev_attr_vbus);
 
 	/* set transceiver mode to power on defaults */
 	twl4030_usb_set_mode(twl, -1);
-- 
2.50.1 (Apple Git-155)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
