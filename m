Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B511C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XRoLilGo66kAUPepN88sle8LjRiwDdlo9MJUYdOY+8=; b=ahxp00o8qiB5Ro
	D72xEZZnr6zmSZnWJpnjuEPtweeqs9CWVAXzb1/ujptI/7iqS6lw9bTUcruowk5rCAOOa31J5ad/C
	A5hl8JEHwuPg8dW6PEjRyzmkY54v6mIGYiPOjD6CnlEoQWqWDZfMiIJhmj6LBW6YJmdF1lQLAflS0
	p4ewA2Xxjp7PazqQQvmLAnsIIlDxEm0t4b8jTqTa7AMaMDTgV+MslHbmiCCW70hck53fl/DJ1ve1Y
	z4Cx/0tdkpC0nujR/PrOTWF8NVXZuo8sREVq+SCnXYE/dchsG8MzQ/xSzTl9cCMaXveKLgqg9XncH
	AXUE80fXQWgBojAjOxcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV8-0000000GgvT-0DqG;
	Thu, 15 Feb 2024 15:18:14 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radUy-0000000Ggoa-30AA;
	Thu, 15 Feb 2024 15:18:07 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C540724000A;
	Thu, 15 Feb 2024 15:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J6YtYEPkWQliDBXfdSpeuMo61P38HreYk7GRFYqtXkw=;
	b=GWEL8kMTuyWm7ECMBeYelFKt5Q6vwC0YFhuakiRf3NgJ4SBetjufDuAbCa4NJNSLtfIKWV
	ImLFqNcgDQYVLO3cbQuuw8NIoN4nnrh1b64RWoi0gQpI/vawF3LZXPoK/rifPfVg+uCD00
	ilFkwuYn3JROW1CkcDFCvPNZuKBGle+6lYipptiewaLr8MT5IfZV28OhCL/K6W76efhLm+
	unZdb1L2x+xQKZi4yw0LsR140IPSbJJI9VzZIhTmPRZjP2t+4mu8zR8X8dSdu3sDpvSLGb
	U3g7hket/T2SQvbAjCO7mVpT/AY81IVeWS6NM4U7DA1px1hAhBQcCZZESczqlg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:47 +0100
Subject: [PATCH v3 02/18] pinctrl: pinctrl-single: remove dead code in
 suspend() and resume() callbacks
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-2-5c2e4a3fac1f@bootlin.com>
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
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_071804_937793_56D2162D 
X-CRM114-Status: GOOD (  11.24  )
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

No need to check the pointer returned by platform_get_drvdata(), as
platform_set_drvdata() is called during the probe.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pinctrl/pinctrl-single.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 19cc0db771a5..02eabd28d46e 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1693,11 +1693,7 @@ static void pcs_restore_context(struct pcs_device *pcs)
 static int pinctrl_single_suspend(struct platform_device *pdev,
 					pm_message_t state)
 {
-	struct pcs_device *pcs;
-
-	pcs = platform_get_drvdata(pdev);
-	if (!pcs)
-		return -EINVAL;
+	struct pcs_device *pcs = platform_get_drvdata(pdev);
 
 	if (pcs->flags & PCS_CONTEXT_LOSS_OFF) {
 		int ret;
@@ -1712,11 +1708,7 @@ static int pinctrl_single_suspend(struct platform_device *pdev,
 
 static int pinctrl_single_resume(struct platform_device *pdev)
 {
-	struct pcs_device *pcs;
-
-	pcs = platform_get_drvdata(pdev);
-	if (!pcs)
-		return -EINVAL;
+	struct pcs_device *pcs = platform_get_drvdata(pdev);
 
 	if (pcs->flags & PCS_CONTEXT_LOSS_OFF)
 		pcs_restore_context(pcs);

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
