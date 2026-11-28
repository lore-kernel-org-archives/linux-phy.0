Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFB4606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 28 Nov 2026 11:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0IU4Tt5l;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=mail.sdu.edu.cn header.i=@mail.sdu.edu.cn header.a=rsa-sha256 header.s=default header.b=e2DBaiNk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=S4hAe3BMn1DtDwWoC5hP04JfA1NKTVHpnIYZNs92ovU=; b=0IU4Tt5lPaU3jtYCvtvk5pOz8j
	ncTY7MP7qkRbAe1/KeYY2biuCEz19bcg1pdXY508llzqy3qHCWbQPT/7BIMh+eP64TL93tlYAzP2P
	bx4P7dZaEG0dgMExcxUk1I59VOHV0ovQbyE/1dyqF116ZmAYCPnKORI+sg9ME7ityLT+ngMzoQqnY
	Ciu22ZTGCpTqe8HG+dLtvlJNqYQ3cExfDklyQ7mmyEgVMRr89xHodS+K+E4UcNflrkuI46Y2EIt0p
	X/aq2pt4oWG0M7rIzKShMMjsKsGbz2dHxLU7Ivvqh65aU2L9BH7/Vv52DwWVatz+A1tyioin8/sU9
	rPROaJXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXGCs-00000000hYe-1P5s;
	Sat, 28 Nov 2026 11:03:02 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXGCX-00000000hPW-1fqx
	for linux-phy@lists.infradead.org;
	Sat, 28 Nov 2026 11:02:42 +0000
Received: from user.localdomain (unknown [223.80.110.101])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5656652b5;
	Sat, 28 Nov 2026 19:02:38 +0800 (GMT+08:00)
From: Tian Xuechen <202300460064@mail.sdu.edu.cn>
To: vkoul@kernel.org,
	raviteja.garimella@broadcom.com,
	kishon@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	linux-phy@lists.infradead.org,
	liguangshuo@mail.sdu.edu.cn
Subject: [PATCH] phy: broadcom: ns2-usbdrd: Cancel extcon work on teardown
Date: Sat, 28 Nov 2026 19:02:37 +0800
Message-Id: <20261128110237.875444-1-202300460064@mail.sdu.edu.cn>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa221d244a003a2kunm3d10a3eb3cbc95
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZThkYVk9NGB8eQk5NTB9NHVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUhVQ0tVSkpLVUpLSllXWRYaDxIVHRRZQVlPS0hVSktJQk
	NDTFVKS0tVS1kG
DKIM-Signature: a=rsa-sha256;
	b=e2DBaiNkxS6nyfoA87rSu7uu+wRCh+xo30ECIkGPI5bYex47olWJLQGgEs/v4rK3+NKCc8gd3O3vz1baHHaIR4wxkX0fViOxjmIzAdiRm09VCf7uAkSJLqTGcrC78jTnIEjw2re0AtrL6MRyQKHJqWdbBMtTp6fJj9g/4ojVWd8=; s=default; c=relaxed/relaxed; d=mail.sdu.edu.cn; v=1;
	bh=ValE/bcYNXjU3qojA3L4q1krAaOksVHeTjFld7EPzYY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261128_030241_721102_6E83172F 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FROM_LOCAL_DIGITS,FROM_LOCAL_HEX,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Tian Xuechen <202300460064@mail.sdu.edu.cn>

The GPIO interrupts queue delayed work that uses the extcon device.
Register a managed cancellation before requesting the interrupts so
teardown releases the IRQs and drains the work before extcon cleanup.

This issue was found by our static analysis tool under development.

Fixes: 787f24543c4a ("phy: phy-bcm-ns2-usbdrd: Broadcom USB DRD PHY driver for Northstar2")
Signed-off-by: Tian Xuechen <202300460064@mail.sdu.edu.cn>
---
 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index bb4221fec01b..dc3294f1f4f5 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -2,6 +2,7 @@
 // Copyright (C) 2017 Broadcom
 
 #include <linux/delay.h>
+#include <linux/devm-helpers.h>
 #include <linux/extcon-provider.h>
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
@@ -337,7 +338,9 @@ static int ns2_drd_phy_probe(struct platform_device *pdev)
 	if (ret < 0)
 		driver->debounce_jiffies = msecs_to_jiffies(GPIO_DELAY);
 
-	INIT_DELAYED_WORK(&driver->wq_extcon, extcon_work);
+	ret = devm_delayed_work_autocancel(dev, &driver->wq_extcon, extcon_work);
+	if (ret)
+		return ret;
 
 	driver->id_irq = gpiod_to_irq(driver->id_gpiod);
 	if (driver->id_irq < 0) {

base-commit: 4dce97c6c265544342e716e62fd24bbb232590c5
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
