Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A122DC48BF6
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5xeRwh5EBOD6Hq5TaJ2amvKEueH7F/SnIs5MRGVYMk=; b=y+dJYBRFtqcv4q
	GrdFDRFrzOsCN+PWNVTd3IaL5habPy1BYj46P1OzsFElmhy/8pJg1+TTk50HNdcc1GMEqo9d0tJ1N
	s78oApcAXmlHbtCQXx77tgM3HymKBMDEqHdCNA+g1/rrqkfxf/s48rN5UsLRSe29i9vyMJ8GHK8F+
	UuMNRPRkzYJtqXZrwlF3mGEwUpmwqX+vS2lPnfgGomgwfcgeXgoXEmAhhehG4Kf71aYz+Zu8KJyqf
	yuXYnLRPCBDrOWObT7OH84fthlw4b50a9O64c8b0AqLT57XQgFKorhqH+js9Sw4ozddhTry6oSBlc
	T7tGAEV+9csrESFYzjKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMW-00000009cRr-2zTZ;
	Mon, 04 Mar 2024 15:36:20 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMQ-00000009cOA-2YPv;
	Mon, 04 Mar 2024 15:36:16 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2CF251BF206;
	Mon,  4 Mar 2024 15:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aDSdXnXZZ/5NY8WXefk2LzOT1GQOCIJxtJenx3zvKZU=;
	b=L9gcfnpxclDI7aWK0k287Bw2zily1E6V4OBDUOmCgHFuMwtlTLxsZXjhY0yAaIolBQ/H5Z
	p6H3l71mRdh6Ugil8bst7Tyatr8UzCpkqRWriNLmgtQk08Mo2S+iLQii4tL6w6iGLUsSYI
	DPifmPExQfvsmXkFGv/1Olrn4v0CLoa/KmNqQYcYW50cRLQYwHRxgbEabXrm9OyBZgElBm
	cHb2Dmxdx60kEc2kIVWS8cjZDN1rgmuwPLcpPK2RPt93wrZpd2o27drdMriPh2Yx8OMRP4
	Y0yyD4GTAGcNTvsTK1g6tV7cdAoXe2bKuLUEoO2izsXueMBvAmAubNEv42SSTw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:45 +0100
Subject: [PATCH v4 02/18] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
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
 Thomas Richard <thomas.richard@bootlin.com>, 
 Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_073614_989688_30B6C502 
X-CRM114-Status: GOOD (  14.75  )
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

No need to check the pointer returned by dev_get_drvdata(), as
platform_set_drvdata() is called during the probe.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pinctrl/pinctrl-single.c | 28 +++++++++-------------------
 1 file changed, 9 insertions(+), 19 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 19cc0db771a5..0dd4b0e11adf 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1625,7 +1625,6 @@ static int pcs_irq_init_chained_handler(struct pcs_device *pcs,
 	return 0;
 }
 
-#ifdef CONFIG_PM
 static int pcs_save_context(struct pcs_device *pcs)
 {
 	int i, mux_bytes;
@@ -1690,14 +1689,9 @@ static void pcs_restore_context(struct pcs_device *pcs)
 	}
 }
 
-static int pinctrl_single_suspend(struct platform_device *pdev,
-					pm_message_t state)
+static int pinctrl_single_suspend_noirq(struct device *dev)
 {
-	struct pcs_device *pcs;
-
-	pcs = platform_get_drvdata(pdev);
-	if (!pcs)
-		return -EINVAL;
+	struct pcs_device *pcs = dev_get_drvdata(dev);
 
 	if (pcs->flags & PCS_CONTEXT_LOSS_OFF) {
 		int ret;
@@ -1710,20 +1704,19 @@ static int pinctrl_single_suspend(struct platform_device *pdev,
 	return pinctrl_force_sleep(pcs->pctl);
 }
 
-static int pinctrl_single_resume(struct platform_device *pdev)
+static int pinctrl_single_resume_noirq(struct device *dev)
 {
-	struct pcs_device *pcs;
-
-	pcs = platform_get_drvdata(pdev);
-	if (!pcs)
-		return -EINVAL;
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
@@ -1986,11 +1979,8 @@ static struct platform_driver pcs_driver = {
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
