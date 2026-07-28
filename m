Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B90C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 12:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jeOcEkS2GW1vB/bptq1q+e6ifBQe4JOIiYV4vhSsGDQ=; b=u5+DhsLREazrM1
	BNDycsMBoLtijwDtls6CHtzs1y8CJaPxynShUeGvqXJvYDTtTKfW0pgIifcMBVRXUpbA4MILQy83L
	ZQ72prKMm9GW08Rrjo2IT1/P5CRZZGTJYZAoYIAGPvgmKyUgu/e3azYW8k8XcO5wZQMj+sSmS+7dm
	VLyVPa8K+oJhFYWpF6GuJehMa0DSmDJ96+rc3AFJV/WOjvB9TS+zep/YLoWwhdnxXLuBhH4kt8Cue
	Oa30ZOAhDzoPqTco/iBpKN9j/kRFv6i2A/j/uzRa/zHH1MjICzoAgpO3/ldXVV9I5qqAfgZSOfRPT
	/MgnmN2oHwZhwulWrSHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woh14-00000005Fu2-3qHs;
	Tue, 28 Jul 2026 12:34:38 +0000
Received: from [101.71.155.101] (helo=mail-m155101.qiye.163.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woh11-00000005Fsa-3iHE
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 12:34:37 +0000
Received: from LAPTOP-99KJFSET (unknown [221.228.238.82])
	by smtp.qiye.163.com (Hmail) with ESMTP id 47e10a909;
	Tue, 28 Jul 2026 20:34:26 +0800 (GMT+08:00)
From: Hongyan Xu <getshell@seu.edu.cn>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: Hongyan Xu <getshell@seu.edu.cn>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jianhao.xu@seu.edu.cn
Subject: [PATCH] phy: broadcom: ns2-usbdrd: cancel delayed work
Date: Tue, 28 Jul 2026 20:33:36 +0800
Message-ID: <20260728123423.781-2-getshell@seu.edu.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-HM-Tid: 0a9fa8b81cce03a1kunm4c64fbaeeecee
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaQxpLVkseTEpNSE9NSEpPGlYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUpVSUlDVUlIQ1VDSVlXWRYaDxIVHRRZQVlPS0hVSktJSE
	5DQ1VKS0tVS1kG
DKIM-Signature: a=rsa-sha256;
	b=G/G032YcM8zK70HDohDwj7TGtfsPZ+snjRlCP5IQRXlN9WJb9DvXseozpFnAkhkZxbxuSxU0MO/dMwTCfONQXYdtnvxOBXN+7KQ2u6SqBAUJlmtbgcwh26Hnin2zX8W/1HsR1bWb8y4NRYRzVNf0RfhpzttRTR2MgtiswzvHxU0=; s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1;
	bh=2PPymfwvlSf6hPUOCIr3axymdBfQH+HIh++NrR2XsaI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_053436_547498_DC98B607 
X-CRM114-Status: UNSURE (   9.52  )
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
