Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F75EC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgJs1QJKLNNUEnIot6cTS586UNsf4z6na8YLYacKyGE=; b=4kPXF6LUuF/8ui
	Xry2pyj9X0yKj25KrRpdJtcfCq9Dvm+GNbCYsIBR0Jrt/F9i1PNcJj9XSGPF3fdf2NwM/QUESZpdv
	B0sVadWOTmzn4rCcCycfZrHjf0MkH2dFFZ4kEu7LP6CFbIZlhjp43Hy/fJVQYogi5mj+QSy5P0hy1
	aNgehyXHq3b03ruJ4irYs/oml+CBXaV24UTGPM1a4TKj07DDCEG6UvdppSkhOkZ4uNvFH/i5DxnWN
	Ut/fejS57ZS3tuH4kBSH4isg2oMw/WOeinShEOzmq9lK/cbA9Ywels3m5RXMAmyH0oiStO4IzS7IL
	3G4LutaI5NtBDvSD7tEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdT-009aae-2q;
	Mon, 15 Jan 2024 16:16:27 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdM-009aV6-3A;
	Mon, 15 Jan 2024 16:16:23 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5BDB9C0009;
	Mon, 15 Jan 2024 16:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1mtR7io+GXcxCNgtcR6WdMbs4r9dsHCXx4WfnCMzH5I=;
	b=MF2pnLzV5ERkgaPFDMVpO9L/ap+ntfbAdlwCxqnW9WBDAlKlU5rGdhan0Y1J2sXjvZUQsv
	bAKBoXOObsbZEFEyxFagqyS4Ive4NF7RRGHKAChFmsLbY8+Tipsrai2ZGas++CrOvtaj1e
	hx5zPYubHf27pxZ1kSCe6mPbOtrjvPIZ3PB2nAWZEahvIoxXa9wZ7XrJaKH7HJnWZITSMD
	Rq1IjF+vmaNTQ/of7m/qZrrZn06agVzaPGeVGr4h3ISwIT59aDgsrBV4HpylpNpHxA4Lyl
	giZvssdEom/0NkTgNPRuDjqno0MS2QSyrRruEsiUjoWJ/+PQRK9PsaqBM6/RqA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:43 +0100
Subject: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to
 suspend_noirq/resume_noirq
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
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
X-CRM114-CacheID: sfid-20240115_081621_301345_C4913BDA 
X-CRM114-Status: GOOD (  12.32  )
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
Some devices may need active pinctrl after suspend and/or before resume.
So move suspend/resume to suspend_noirq/resume_noirq to have active
pinctrl until suspend_noirq (included), and from resume_noirq
(included).

The deprecated API has been removed to use the new one (dev_pm_ops struct).

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pinctrl/pinctrl-single.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 19cc0db771a5..4ad0f66cf42a 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1690,12 +1690,11 @@ static void pcs_restore_context(struct pcs_device *pcs)
 	}
 }
 
-static int pinctrl_single_suspend(struct platform_device *pdev,
-					pm_message_t state)
+static int pinctrl_single_suspend_noirq(struct device *dev)
 {
 	struct pcs_device *pcs;
 
-	pcs = platform_get_drvdata(pdev);
+	pcs = dev_get_drvdata(dev);
 	if (!pcs)
 		return -EINVAL;
 
@@ -1710,11 +1709,11 @@ static int pinctrl_single_suspend(struct platform_device *pdev,
 	return pinctrl_force_sleep(pcs->pctl);
 }
 
-static int pinctrl_single_resume(struct platform_device *pdev)
+static int pinctrl_single_resume_noirq(struct device *dev)
 {
 	struct pcs_device *pcs;
 
-	pcs = platform_get_drvdata(pdev);
+	pcs = dev_get_drvdata(dev);
 	if (!pcs)
 		return -EINVAL;
 
@@ -1723,6 +1722,11 @@ static int pinctrl_single_resume(struct platform_device *pdev)
 
 	return pinctrl_force_default(pcs->pctl);
 }
+
+static const struct dev_pm_ops pinctrl_single_pm_ops = {
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(pinctrl_single_suspend_noirq,
+				      pinctrl_single_resume_noirq)
+};
 #endif
 
 /**
@@ -1986,11 +1990,8 @@ static struct platform_driver pcs_driver = {
 	.driver = {
 		.name		= DRIVER_NAME,
 		.of_match_table	= pcs_of_match,
+		.pm = pm_ptr(&pinctrl_single_pm_ops),
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
