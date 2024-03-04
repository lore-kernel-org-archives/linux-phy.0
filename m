Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E82BC54E4A
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYMqZUHRF6zr9sF4OYT/AB6uxrKOZ+huiJCxnfRJdOw=; b=1EQZw30Wo5QGan
	utc5y3BJ0p9ul4JfO4rMcWoHEgpCA8LPywkSxyt8OT2z/hy2O56Q8TLOhxnAgytkJwI7ujXZKdX5O
	c0jZRUsLiId8GfwNHyojfW5zNEw8YA/xI3IPEZXBrUQkvqudhP3pUYclR5nKvGrgXg6TdA4HDy7iQ
	uw4na1VEiHFRZ54B6QDlIRaKMXmRODLXahqm3bjXI79H0xamKlEPl1ameKAuAeI6A4AZbeFs2jyfk
	pA83JJeNL+m41ZeZBb9o8L/mrqcwhoy/Z65CRvER40flxjQGG/vF4vDHR71+QP4km657PUuAzTBda
	D7n/aKm36bHWLsSZ/FUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMZ-00000009cTZ-0Acw;
	Mon, 04 Mar 2024 15:36:23 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMS-00000009cOt-3zli;
	Mon, 04 Mar 2024 15:36:18 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0A9B61BF20A;
	Mon,  4 Mar 2024 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gl1VkLUtlzwgjyFHXIWhWfMxiJmBAtrbqfGEcOsrt6A=;
	b=KEWC1IKFF6+WH764Ea9IkJgO1K0u3tppkwQfA0RE2+3oC4gLo8ZNlA2jHd4/2XDAe4PmK0
	TMiqXGm31hhI4L5f7IOPlKybsmyogXbRtpAQaI3hwmg0ibql2l4y7t3NmeUdGGFoQkFwM1
	tIEszKtCKzxUKAVMKyy1Qam5JZwCrUDzidj0FFO+ZFhBbhXgEJMHIaJF0+nWSZoJ32pdh3
	N2cNG9JALpmFvLzLB0Nf9aP3kgiFHcVK/4aWQ0ULdXTXW/6VX8D6FZ3UEWEXTSGRYbBGsM
	rZ0om+g5FXbQDL5fk4mi4A6muXj3dpVWn1V+wqf867eqall84fE/FZ2xC7aObA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:46 +0100
Subject: [PATCH v4 03/18] i2c: omap: wakeup the controller during suspend()
 callback
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_073617_353182_4D3F08A4 
X-CRM114-Status: GOOD (  13.39  )
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

A device may need the controller up during suspend_noirq() or
resume_noirq().
But if the controller is autosuspended, there is no way to wakeup it during
suspend_noirq() or resume_noirq() because runtime pm is disabled at this
time.

The suspend() callback wakes up the controller, so it is available until
its suspend_noirq() callback (pm_runtime_force_suspend()).
During the resume, it's restored by resume_noirq() callback
(pm_runtime_force_resume()). Then resume() callback enables autosuspend.

So the controller is up during a little time slot in suspend and resume
sequences even if it's not used.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/i2c/busses/i2c-omap.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 42165ef57946..28417b2a18b0 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1575,9 +1575,31 @@ static int __maybe_unused omap_i2c_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static int omap_i2c_suspend(struct device *dev)
+{
+	/*
+	 * If the controller is autosuspended, there is no way to wakeup it once
+	 * runtime pm is disabled (in suspend_late()).
+	 * But a device may need the controller up during suspend_noirq() or
+	 * resume_noirq().
+	 * Wakeup the controller while runtime pm is enabled, so it is available
+	 * until its suspend_noirq(), and from resume_noirq().
+	 */
+	return pm_runtime_resume_and_get(dev);
+}
+
+static int omap_i2c_resume(struct device *dev)
+{
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
+
+	return 0;
+}
+
 static const struct dev_pm_ops omap_i2c_pm_ops = {
 	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
 				      pm_runtime_force_resume)
+	SET_SYSTEM_SLEEP_PM_OPS(omap_i2c_suspend, omap_i2c_resume)
 	SET_RUNTIME_PM_OPS(omap_i2c_runtime_suspend,
 			   omap_i2c_runtime_resume, NULL)
 };

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
