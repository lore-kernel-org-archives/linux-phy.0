Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89075C54F4C
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 13:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJj30XOCRc0ZqCPxxhtavO26mk6PPXNVYmjvB6BW5rI=; b=2kY64AsIDDlmkc
	mD1jD6ywtGqm5HbSASKyj9HIBVih7mFCDrUqyKFGWWK6SXc2urXL6oPk0+zCcyCgo6CPr0pSFZm+X
	REem9echj4qLjQmAmcrifNdW3JqvS7nVYfi6V6pFvSdvuh7DsIrnSlBM6UAb5oZQ0R5xhSAPteQ4k
	5Zoz/nhK+KS+y2S0e7Ejz0B9M3zYg2qS0EtnhxUj8lRgQo2KV7S1wJmLtLT1wCAmQ55yQw1CY5z/2
	2wQGQsIaC5pFa+kCuye3pZDBNMT/R5YoPJbZUe5exoJO48J+HzHcoGsMRYkSVAkyV8yl8pWm64yUj
	YFBF9nuFMEeHhzXbFX4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wohwy-00000005MJA-421C;
	Tue, 28 Jul 2026 13:34:28 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wohwu-00000005MHv-2KxO
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 13:34:27 +0000
Received: from LAPTOP-99KJFSET (unknown [58.241.16.34])
	by smtp.qiye.163.com (Hmail) with ESMTP id 47e1eefb8;
	Tue, 28 Jul 2026 21:34:19 +0800 (GMT+08:00)
From: Hongyan Xu <getshell@seu.edu.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org
Cc: Hongyan Xu <getshell@seu.edu.cn>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jianhao.xu@seu.edu.cn
Subject: [PATCH RESEND] phy: broadcom: ns2-usbdrd: cancel delayed work
Date: Tue, 28 Jul 2026 21:34:18 +0800
Message-ID: <20260728133418.103-1-getshell@seu.edu.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-HM-Tid: 0a9fa8eef0ce03a1kunm8f77cbc5f0b30
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTElDVh1CGUxDTR1LSU8YTVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlOQ1VJT0pVSk1VSE9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhOQ0
	NVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=gBr0odXRqaxZg9JvQo3zGuWrAdtcCskGpU4DTLm3g4cEGiXpSnMVbfU1cIDtynPZdkqeR1UL1g8JiFoki7RaSQ7NMNSwxxpOa7nUAlJJ0HNkX4kqoWUbXPQojI8XKXC/9m6wHpyEHGcwk6tALWai/HJRgJtLDW6e+iCSBw0Aa00=; s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1;
	bh=reBVBLQ/WmlRGfDr/+7iF31Ac88ZLTMinYEjEhGwALo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_063424_806918_901F2836 
X-CRM114-Status: UNSURE (   9.65  )
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

ns2_drd_phy_probe() initializes wq_extcon. Both GPIO IRQs and the probe
tail can queue it. There is no remove hook, so the delayed work can run
after driver-managed resources are being released.

Add a managed cleanup action before requesting IRQs. Devres releases the
IRQs first, then cancels the delayed work while extcon, GPIO and MMIO
state is still valid.

This issue was found by a static analysis tool.

Signed-off-by: Hongyan Xu <getshell@seu.edu.cn>
---
Resend with recipients from the current MAINTAINERS file. No code changes.

 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index 36ad02c33..54929edb1 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -264,6 +264,13 @@ static irqreturn_t gpio_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static void ns2_drd_phy_cancel_work(void *data)
+{
+	struct ns2_phy_driver *driver = data;
+
+	cancel_delayed_work_sync(&driver->wq_extcon);
+}
+
 static const struct phy_ops ops = {
 	.init		= ns2_drd_phy_init,
 	.power_on	= ns2_drd_phy_poweron,
@@ -342,6 +349,10 @@ static int ns2_drd_phy_probe(struct platform_device *pdev)
 
 	INIT_DELAYED_WORK(&driver->wq_extcon, extcon_work);
 
+	ret = devm_add_action_or_reset(dev, ns2_drd_phy_cancel_work, driver);
+	if (ret)
+		return ret;
+
 	driver->id_irq = gpiod_to_irq(driver->id_gpiod);
 	if (driver->id_irq < 0) {
 		dev_err(dev, "failed to get ID IRQ\n");
-- 
2.50.1.windows.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
