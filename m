Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD23C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPoGjJoY2e8VikX8cUdXKBcdNaheYMuASn0MC3lK3MU=; b=RRmrRJsE++c/cT
	msHd1grQZmSPjZOV0Klnfm+yhc4uK2Byh25sGIBVgIYCi8NvXprrHDOdfjInZv0gPM7S24F4JZt/P
	lw/e0+RzeKVCZ6k34DfuyUnE41STRXrKtdhHu6wNAQiNNdYh9nXboPfOAK6ghRtIaEgLsLyAMBB5C
	61y6iN46G3fG38QAu58BI2BDDKXWEiUpOZgjNdhYf5XrqOJ+YLaToWXxa07K7FPHzSY8m8PJ/GZff
	EFjs7/2u5ADcaTl2gXXd1RWPx/W8rr7MNpNHv0qEV+P9U6aR2ydPI32QJ4s4tWDCFZ2juWWUkWMcJ
	9FslOXXA5F22PoF9Xf/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVd-0000000GhFa-0A9u;
	Thu, 15 Feb 2024 15:18:45 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV1-0000000Ggoe-2Ner;
	Thu, 15 Feb 2024 15:18:09 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D55AE240008;
	Thu, 15 Feb 2024 15:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4i5VKICPkOcySB+v4EkO/Z1q1pJDA/ZgXOxMH2KXNho=;
	b=ZWbj4bpo0gq4xsPTML+Apv3A4CRTQTTzJoyfT4HYx2zruymwJsoWfJVA13e4KRMtDPAhK+
	CYCp73hrUA5wEGtsrs8ZmrZkHS3zDtVcyEV73Br3gjCoNp5H06Psz56lEIUgmWnaZrgltN
	qkyqqXYAkmLfL7shCLK6jw9bym09GzbECAWhaWXX4KvdHXqnVYqAmbEjdIfCXP5Ghq91dY
	SppJdi7Q+JU6MmUL4dTZzGws11jJ8shhPss0CuH4/Irt38bKfVLTdyeDwwNihKJ/gJWZ4i
	um3prNd11HKpF1aeFum/P8wwhqEKM5Lnhcc/ZRenW/xjd9mtqKhKqzoXwkGaIw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:48 +0100
Subject: [PATCH v3 03/18] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-3-5c2e4a3fac1f@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
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
 Thomas Richard <thomas.richard@bootlin.com>, 
 Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_071807_954199_C96FCE3D 
X-CRM114-Status: GOOD (  13.79  )
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

The goal is to extend the active period of pinctrl.
Some devices may need active pinctrl after suspend() and/or before
resume().
So move suspend()/resume() to suspend_noirq()/resume_noirq() in order to
have active pinctrl until suspend_noirq() (included), and from
resume_noirq() (included).

The deprecated API has been removed to use the new one (dev_pm_ops struct).

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pinctrl/pinctrl-single.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 02eabd28d46e..0dd4b0e11adf 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1625,7 +1625,6 @@ static int pcs_irq_init_chained_handler(struct pcs_device *pcs,
 	return 0;
 }
 
-#ifdef CONFIG_PM
 static int pcs_save_context(struct pcs_device *pcs)
 {
 	int i, mux_bytes;
@@ -1690,10 +1689,9 @@ static void pcs_restore_context(struct pcs_device *pcs)
 	}
 }
 
-static int pinctrl_single_suspend(struct platform_device *pdev,
-					pm_message_t state)
+static int pinctrl_single_suspend_noirq(struct device *dev)
 {
-	struct pcs_device *pcs = platform_get_drvdata(pdev);
+	struct pcs_device *pcs = dev_get_drvdata(dev);
 
 	if (pcs->flags & PCS_CONTEXT_LOSS_OFF) {
 		int ret;
@@ -1706,16 +1704,19 @@ static int pinctrl_single_suspend(struct platform_device *pdev,
 	return pinctrl_force_sleep(pcs->pctl);
 }
 
-static int pinctrl_single_resume(struct platform_device *pdev)
+static int pinctrl_single_resume_noirq(struct device *dev)
 {
-	struct pcs_device *pcs = platform_get_drvdata(pdev);
+	struct pcs_device *pcs = dev_get_drvdata(dev);
 
 	if (pcs->flags & PCS_CONTEXT_LOSS_OFF)
 		pcs_restore_context(pcs);
 
 	return pinctrl_force_default(pcs->pctl);
 }
-#endif
+
+static DEFINE_NOIRQ_DEV_PM_OPS(pinctrl_single_pm_ops,
+			       pinctrl_single_suspend_noirq,
+			       pinctrl_single_resume_noirq);
 
 /**
  * pcs_quirk_missing_pinctrl_cells - handle legacy binding
@@ -1978,11 +1979,8 @@ static struct platform_driver pcs_driver = {
 	.driver = {
 		.name		= DRIVER_NAME,
 		.of_match_table	= pcs_of_match,
+		.pm = pm_sleep_ptr(&pinctrl_single_pm_ops),
 	},
-#ifdef CONFIG_PM
-	.suspend = pinctrl_single_suspend,
-	.resume = pinctrl_single_resume,
-#endif
 };
 
 module_platform_driver(pcs_driver);

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
