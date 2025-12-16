Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A901D5E374
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 14:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pCBqjGNzUefV9iyZeejWI1qUlu3dGfqhweaOQrgJmTk=; b=1J4Wduuq8rlFCZ
	Sz1PpcV6t//U5lkYIkOWchKNIm2WEhCYH31eRoTPDvFEoL664M8cgPM5tuPojJ+PsxdO6pwzsBZqm
	vt7/jwm/o4w90pb3G9rY2FgzxuuTGs0zJEuK+3suY5GiMrulb75t+7bK8Jj6xuUsDjmAvz3NIKuAF
	Og/njcaww+BZ72PF4f/Lius0aBU7ZxKConuKC759UN8sj9Hu/zJdZfko0j/tsYBb4j/uGkxQ/p8lb
	W9XonURVK2yX/+YETQRGLZIe8wT36cMbOqCW7pLfo5lyI8otW7nnhvmcecoKalQ/G3F1uQcSbC24P
	7KKNg41+SNnKfsLIse9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVW0n-00000005LAU-3F8G;
	Tue, 16 Dec 2025 14:26:49 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVW0i-00000005L9N-2cVg
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 14:26:48 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 18C091A223E;
	Tue, 16 Dec 2025 14:26:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E03BB6073D;
	Tue, 16 Dec 2025 14:26:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6FD2411943695;
	Tue, 16 Dec 2025 15:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765895196; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=aXdArrEv7P8qjQLi/yEInj1C2PVSeCo3HZ1LFRj2r+Y=;
	b=LetOZ3G14EaVuRrJOg5xAJRTbpwszkYAbOf0CrqYdS1fYYpn+xNf4LuuN3ZXz8SdgqOnBW
	VZvOZpQx8XHzGJ0eiUQ+If/JI8PfKgjj0FY6Poz1hVnhyKZAIclC2QH7jWcyA1nkokXA/Q
	mX+gmyPS3B0gn8xRP2RtxUtudPFiLPMWL6JoMaDEFpMNzyPC8cQGwU6v/dP8QomSXfBC0s
	dThlzeQ6/2U7fIHXetfBqSqL3QbMoZ6V0M353bxhKU+JPYO85VTBS5bQ7HXrDU82AfamQ+
	eVIpjCDUHweKl4HbVKLxIEKZKrb136MX1USTYHns5EaKCgYXpltyQou+HwCcdw==
From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Date: Tue, 16 Dec 2025 15:26:20 +0100
Subject: [PATCH RESEND] phy: ti: phy-j721e-wiz: restore mux selection
 during resume
MIME-Version: 1.0
Message-Id: <20251216-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-v1-1-771d564db966@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_062644_800523_35498289 
X-CRM114-Status: GOOD (  11.61  )
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

While suspend and resume mux selection was getting lost. So save and
restore these values in suspend and resume operations.

Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46b..ba31b0a1f7f7 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -393,6 +393,7 @@ struct wiz {
 	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
 	struct clk_onecell_data	clk_data;
 	const struct wiz_data	*data;
+	int			mux_sel_status[WIZ_MUX_NUM_CLOCKS];
 };
 
 static int wiz_reset(struct wiz *wiz)
@@ -1654,11 +1655,25 @@ static void wiz_remove(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 }
 
+static int wiz_suspend_noirq(struct device *dev)
+{
+	struct wiz *wiz = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_read(wiz->mux_sel_field[i], &wiz->mux_sel_status[i]);
+
+	return 0;
+}
+
 static int wiz_resume_noirq(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	struct wiz *wiz = dev_get_drvdata(dev);
-	int ret;
+	int ret, i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_write(wiz->mux_sel_field[i], wiz->mux_sel_status[i]);
 
 	/* Enable supplemental Control override if available */
 	if (wiz->sup_legacy_clk_override)
@@ -1680,7 +1695,7 @@ static int wiz_resume_noirq(struct device *dev)
 	return ret;
 }
 
-static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, NULL, wiz_resume_noirq);
+static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, wiz_suspend_noirq, wiz_resume_noirq);
 
 static struct platform_driver wiz_driver = {
 	.probe		= wiz_probe,

---
base-commit: a22c168bc6e1295fd878c87684a84db9e79c574f
change-id: 20251110-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-453f03abce4d

Best regards,
-- 
Thomas Richard (TI.com) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
