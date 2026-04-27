Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B2AFF8868
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 19:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4sNFpzdTGYZnqN5oMWI/T8F43AZH3DJgswAF5D8n4w4=; b=bgKQodTd49NHqt
	IIYf+WUItQFQ01jJvEEubzHF7tm2R20qdfynQPRIlxTZvL9js92gTRDEtVBshuUO5s6FjZ4pd+BPy
	bJNlkKcD645FP1qyyVqp+89wVgtBEQ5ToD7NpDvA/QANsd8tRT1WSyBQ+bhp2fKYmIs0VDRGIFyH+
	xoouwr+gitiB8DuJq1lwCofrjv0qaSz1dbgarIoNEubmvLC07OpJtPjrilmDQ6QsTwLCcmkEFuJgI
	4lVXjxMP4msu3acdUH6THUgWau5HsAkcHlTcZU84zoMmfxhUcsqXWwaqN88u8Ro1gFub5eb3zcl9f
	IFaAU6f9eOkqPjax9dLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRw2-000000004iI-3P5g;
	Mon, 27 Apr 2026 19:48:02 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRw0-000000004hX-0Hn4
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 19:48:01 +0000
X-CSE-ConnectionGUID: g1R6AtjKSc6XXZDk9QyuEQ==
X-CSE-MsgGUID: V/1qxHOeQ2yp2jX/DEtgfw==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 28 Apr 2026 04:47:55 +0900
Received: from vm01.adwin.renesas.com (unknown [10.226.92.8])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id AA95B4001B5C;
	Tue, 28 Apr 2026 04:47:52 +0900 (JST)
From: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Subject: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow during suspend
Date: Mon, 27 Apr 2026 19:47:41 +0000
Message-ID: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_124800_228664_82EE1A3D 
X-CRM114-Status: GOOD (  15.53  )
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

On the Renesas RZ/V2H platform, if the xhcd driver is unbound and the
system is suspended afterwards, a PM underflow error will occur:

 # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-hcd/unbind
 # systemctl suspend
 15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq returns -13
 15870000.usb-phy: PM: failed to resume noirq: error -13
 15870000.usb-phy: Runtime PM usage count underflow!

Since the PHY framework is managing the runtime PM of the PHY via
phy_power_on()/phy_power_off(), there is no need for the PHY driver to
manipulate the runtime PM state during suspend.

To fix this, remove the runtime PM calls from the suspend/resume paths
and add a get/put pair inside rzg3e_phy_usb3_init_helper() to make sure
the clock is enabled during init, even when there is no consumer for
the PHY.

Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
SYSTEM_SLEEP_PM_OPS because runtime PM is disabled during the noirq phase
and pm_runtime_resume_and_get() would not actually enable the device clock.

Fixes: ee5f1a3f90a4 ("phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver")
Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
---
 drivers/phy/renesas/phy-rzg3e-usb3.c | 31 ++++++++++++++++------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
index 6b3453ea0004..055775e1a0f7 100644
--- a/drivers/phy/renesas/phy-rzg3e-usb3.c
+++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
@@ -64,6 +64,7 @@
 #define USB3_TEST_LANECONFIG0_DEFAULT		(0xd)
 
 struct rz_usb3 {
+	struct device *dev;
 	void __iomem *base;
 	struct reset_control *rstc;
 	bool skip_reinit;
@@ -130,11 +131,21 @@ static int rzg3e_phy_usb3test_phy_init(void __iomem *base)
 	return 0;
 }
 
-static int rzg3e_phy_usb3_init_helper(void __iomem *base)
+static int rzg3e_phy_usb3_init_helper(struct rz_usb3 *r)
 {
-	rzg3e_phy_usb2test_phy_init(base);
+	int ret;
+
+	ret = pm_runtime_resume_and_get(r->dev);
+	if (ret)
+		return ret;
+
+	rzg3e_phy_usb2test_phy_init(r->base);
 
-	return rzg3e_phy_usb3test_phy_init(base);
+	ret = rzg3e_phy_usb3test_phy_init(r->base);
+
+	pm_runtime_put_sync(r->dev);
+
+	return ret;
 }
 
 static int rzg3e_phy_usb3_init(struct phy *p)
@@ -143,7 +154,7 @@ static int rzg3e_phy_usb3_init(struct phy *p)
 	int ret = 0;
 
 	if (!r->skip_reinit)
-		ret = rzg3e_phy_usb3_init_helper(r->base);
+		ret = rzg3e_phy_usb3_init_helper(r);
 
 	return ret;
 }
@@ -187,6 +198,7 @@ static int rzg3e_phy_usb3_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, r);
 	phy_set_drvdata(phy, r);
+	r->dev = dev;
 
 	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(provider))
@@ -199,7 +211,6 @@ static int rzg3e_phy_usb3_suspend(struct device *dev)
 {
 	struct rz_usb3 *r = dev_get_drvdata(dev);
 
-	pm_runtime_put(dev);
 	reset_control_assert(r->rstc);
 	r->skip_reinit = false;
 
@@ -215,27 +226,21 @@ static int rzg3e_phy_usb3_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = pm_runtime_resume_and_get(dev);
+	ret = rzg3e_phy_usb3_init_helper(r);
 	if (ret)
 		goto reset_assert;
 
-	ret = rzg3e_phy_usb3_init_helper(r->base);
-	if (ret)
-		goto pm_put;
-
 	r->skip_reinit = true;
 
 	return 0;
 
-pm_put:
-	pm_runtime_put(dev);
 reset_assert:
 	reset_control_assert(r->rstc);
 	return ret;
 }
 
 static const struct dev_pm_ops rzg3e_phy_usb3_pm = {
-	NOIRQ_SYSTEM_SLEEP_PM_OPS(rzg3e_phy_usb3_suspend, rzg3e_phy_usb3_resume)
+	SYSTEM_SLEEP_PM_OPS(rzg3e_phy_usb3_suspend, rzg3e_phy_usb3_resume)
 };
 
 static const struct of_device_id rzg3e_phy_usb3_match_table[] = {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
