Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE50FE7C4F4
	for <linux-phy@archiver.kernel.org>; Thu,  5 Oct 2023 07:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9EuWjL4WjFpYskOuyRMCVARqiG5npD0vLDNQbFRxBI=; b=wbimfjclGzNnxQ
	ZdCwrt1r8w87r6DOKXxS6ExCXkkmqCj4N+1HJq4J4mdx7OpGvNnSGZ/2lnUVJEGIRlqKLEGD+KJWv
	cBG/9Da4KXJBOa6Xqpn0yviBXN6fi+HeLbazyDgsOyVKbbD5riF7/obsGKk+oTn9EMCkMAXCSiIEq
	5tqpjAgx/RgAI4a0HstuUMmY8gHobKYmwLSoPcRKitDh2oTF3sNWAqCxYgLPS8I6B/iNpiMVWFBZD
	0fGN0f3Tym9yqqwvWKUFr/s349mMRSfUDcXIFgetasWewh7SX5UQeZZGS4iELlEHSf+ZmSqt2GV7X
	4nbqMnDuasywFHpc3vvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIg1-001aSB-1z;
	Thu, 05 Oct 2023 07:21:41 +0000
Received: from out203-205-221-221.mail.qq.com ([203.205.221.221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIfx-001aP9-2P
	for linux-phy@lists.infradead.org;
	Thu, 05 Oct 2023 07:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1696490474;
	bh=mEz3qN1zMsh5aAl/Ud3iyqDBpz/bpXnFb0XD+VFRL10=;
	h=From:To:Cc:Subject:Date;
	b=ZVTfwORQL0TEi3/fZieipp3dSUgNQBpeSJgMseOD/U7DODuQkV1Lz6jMF4yjULI9H
	 7vwFthwXsfUcuNkvq/mElAc0ku3rapU1kTOJagFwtqsgEqgrWU4Qss14XkeRKyiSHP
	 lfym1HDDfLT1ojE9LI0wKE3n2TIHSiMTVZww/VcY=
Received: from KernelDevBox.byted.org ([180.184.51.134])
	by newxmesmtplogicsvrszb1-0.qq.com (NewEsmtp) with SMTP
	id 54B928D2; Thu, 05 Oct 2023 15:21:11 +0800
X-QQ-mid: xmsmtpt1696490471t0on7jxki
Message-ID: <tencent_7BAC04DF4D5AEDCA160A9883078BC23DEA06@qq.com>
X-QQ-XMAILINFO: NQR8mRxMnur9pP6PuEmg0r5eft/0qO3h0e5aWLJK8cL0DUkZoH4FEOxba32rcD
	 fTWCuv2nNvZl+gL9m50ygpW2A31i5UepUhEKpIqVkkn0RStjAb6tLM1tD+KF5eEnhULmhY0Z43yP
	 Gf45Xvol8w2SDsJADwXKMBnts2A5+Bzv9s0Q4p8fuMsG0ej61h4XUbMmHxJGGjS6BF0aUsLtAoCs
	 e4FMedZZts0GQuqU+XZHSS5mI/j9PmU35hlwWBOPklGpwudllMHbPLpTgpzUXKcyIfZMyopJyxOI
	 ZMdObHXR/lRFscgN6TgYtwmC7HKbhn8BnCX5IySRvCP7Mprpg7JSAQ8cytLnEwzX09Srnb8tjgAe
	 g9wywKIpwSWjtFBcWOcwQfJEKbCfDN+ySlSfHdNUE4HHsRq0u+eoqQWjecwBn5h0/QGn7nCvpYZI
	 9NXnpsrkoWHywXVTOQyWht0ZyL4RVN/Az3HLZ1yKfdFpZDVcTrqjwsMULnh8CuOStEHn2teiww2C
	 PGeJAEcT9CL9oogpCpM2v1yGqZNXNKMLV0looakd12Vp675faxVDoMwPXQA45fLa3CMipxjU1qfi
	 jQm//DtGdgMt2WwkYkCCK4j4cS3/V4iI8L6+Je2ghuANZ6ZljpWmBGuZWU1B+IZJxZ5tb6vUoMpm
	 w5rpDBbKlKLUp+RnU6qng5gxmDqfGlKJzyNo0qHuwTkHbEMvK/uBUpqlv7Nv4SA4DLGzYiF6LduL
	 rSwqjYnRW3hG8sMJTFcM3jIHeg+1hVQiyXcVXI5G6Nz1rUSFzaxETmznhV5e18C09eAIgCZvt5MF
	 kPJh5Mk6oHYulaEH93j8+318YoSQL6p5LcBJ/lMRyocdq/qydgfDW2b9WCqtznwTJU2E9KUmHb7h
	 iQzrELsOiUwkHeroBhRE954I5uQZc02zZeVV7NPK3hIogu1rKGX1AP3VeDd+CaDhks3gujkOKvDU
	 b4Mg0NeBf2lbcDBASZOe/KJCdUcd35R5cUnNUajcFkCBHiCCzF+KXXScKROO8wG5KRiW6Fkk25n0
	 DGKmzYzCTobPe5dD9YZOS93INcAwQM+634XBBllQ==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
From: Zhang Shurong <zhang_shurong@foxmail.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	robh@kernel.org,
	u.kleine-koenig@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Zhang Shurong <zhang_shurong@foxmail.com>
Subject: [PATCH] phy: phy-twl4030-usb: Fix PM disable depth imbalance in twl4030_usb_probe
Date: Thu,  5 Oct 2023 15:21:09 +0800
X-OQ-MSGID: <20231005072109.1664387-1-zhang_shurong@foxmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
phy: twl4030-usb: Fix unbalanced pm_runtime_enable on module reloadFrom 645c8475b9f9578a2a0dbe7213e8d7775fc52336 Mon Sep 17 00:00:00 2001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_002138_116987_539CF367 
X-CRM114-Status: GOOD (  10.67  )
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

The pm_runtime_enable function increases the power disable depth,
which means that we must perform a matching decrement on the error
handling path to maintain balance within the given context.
Additionally, we need to address the same issue for pm_runtime_get_sync.
We fix this by invoking pm_runtime_disable and pm_runtime_put_sync
when error returns.

Fixes: 96be39ab34b7 ("usb: phy: twl4030-usb: Fix regressions to runtime PM on omaps")
Fixes: 58a66dba1bea ("phy: twl4030-usb: Fix unbalanced pm_runtime_enable on module reload")
Signed-off-by: Zhang Shurong <zhang_shurong@foxmail.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index 6b265992d988..537562645009 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -773,19 +773,25 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 	if (status < 0) {
 		dev_dbg(&pdev->dev, "can't get IRQ %d, err %d\n",
 			twl->irq, status);
-		return status;
+		err = status;
+		goto err_put_rpm;
 	}
 
 	if (pdata)
 		err = phy_create_lookup(phy, "usb", "musb-hdrc.0");
 	if (err)
-		return err;
+		goto err_put_rpm;
 
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
 	dev_info(&pdev->dev, "Initialized TWL4030 USB module\n");
 	return 0;
+
+err_put_rpm:
+	pm_runtime_put_sync(twl->dev);
+	pm_runtime_disable(twl->dev);
+	return err;
 }
 
 static void twl4030_usb_remove(struct platform_device *pdev)
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
