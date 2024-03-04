Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B61C48BF6
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6nuGlzgZJxzRFxzwqviUHtwrkI3E/qXymi6pp1T4Zo=; b=KH9Iw5m7SbWgF7
	7JdTz6LbfL3OpDAqE2Xdal6/B+6G8xlaREUoWwQSln0FXfAPy3Zng/LO4MMKRT4UnwP45gGZRXJab
	fLqLMPV6z/AnuvYTE/nmSlJyyB0XCFzp5DhvYfJEpYnhM/dP7aR/vwt7+BF1QTp+FtC+afrQMqiPM
	kEwL2GCskyzFMjDKlRs0UCRrbFdO6aOPY6fiIYo78p1blz9HjIqi8cpuVrsgTpx4Hf7XnrzvmX6oO
	YnxyKgpdpaQiFYIQGh7MT1u2BqkE067vpnuh8z8fZ1qRWf/Or3NfyMHe1DPBNbbDBagfBHlS6woDr
	UstIS1btv5pYpJ0vJi6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBWD-00000009tb2-3QIa;
	Mon, 04 Mar 2024 16:50:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMv-00000009coV-16X2;
	Mon, 04 Mar 2024 15:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KHgRE7AWaSOAAlSu+b/+Fh63+xKvjYyr+YQEe5ZFNNM=; b=GXn9Q/uidiP+FZqXxtxdVLwHO+
	0QW8fafew7tiKUwcEfR9oELwksKPLcF1pOuCr3/hcd6F9MF4fJs+sd0krxlQCrbcl1T2R/oxcyJUN
	4bUliihwzoCdSUWdMLVS8s4bWl6Q8dXlyfEpMtco7NoGAYfy5AvZqd5WIvB1KNopiAtk0s4cqIe6b
	oVb3jCVCf9tSmvY7PDTE8iTzhqpKIVIfF/wTDrhE+kB5g1QoyAv4zqybp1ulGNdr9e181J//2U2M7
	HOYLwq4eIvZIC97O0sqgYDHpxm1968Ir1/m1BxekkK2Jfl7AHPhq01bLxXSOjIjVM325wN6NTRt9a
	O/rHyOzQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMq-00000004weR-1ChK;
	Mon, 04 Mar 2024 15:36:43 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3EC7B1BF208;
	Mon,  4 Mar 2024 15:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KHgRE7AWaSOAAlSu+b/+Fh63+xKvjYyr+YQEe5ZFNNM=;
	b=aZhrnNepGDvUIjpqZPS2Mj2T+VGrvoVHTiGmgIK6SWeYriVx6Fsc0imTLaWFmxbv+SOBbq
	IRz/GynvGMJd/TuUwCO06iCpLAolLJNbp5SK46bUCZ721iEOsmd7vaD0vsUfl+KSADEqby
	8o5NdLzFsFT5FgdzFNNDwhiymGG5bTiNL4mcABGgAiZnJ6h9IA/9N1btGN5ksg7HVYORqX
	+jgBj35S7+ozRjumHtehBIXiUdREalVMwA5Ca7Cg4xS39/qRCEIoK7VbqiY8PXy0CtD2OE
	bOsQq8kpaOcIMtINeAqRRQ/xGg1HQ3STdf0+Ht9yFGoMZxK+yexyt6xInPikKQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:59 +0100
Subject: [PATCH v4 16/18] PCI: j721e: Use dev_err_probe() in the probe()
 function
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-16-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_153640_554991_446AF980 
X-CRM114-Status: GOOD (  11.47  )
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

Use dev_err_probe() instead of dev_err() in the probe() function to
simplify the code and standardize the error output.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pci/controller/cadence/pci-j721e.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/cadence/pci-j721e.c b/drivers/pci/controller/cadence/pci-j721e.c
index 85718246016b..98484f001562 100644
--- a/drivers/pci/controller/cadence/pci-j721e.c
+++ b/drivers/pci/controller/cadence/pci-j721e.c
@@ -482,20 +482,20 @@ static int j721e_pcie_probe(struct platform_device *pdev)
 	pm_runtime_enable(dev);
 	ret = pm_runtime_get_sync(dev);
 	if (ret < 0) {
-		dev_err(dev, "pm_runtime_get_sync failed\n");
+		dev_err_probe(dev, ret, "pm_runtime_get_sync failed\n");
 		goto err_get_sync;
 	}
 
 	ret = j721e_pcie_ctrl_init(pcie);
 	if (ret < 0) {
-		dev_err(dev, "pm_runtime_get_sync failed\n");
+		dev_err_probe(dev, ret, "pm_runtime_get_sync failed\n");
 		goto err_get_sync;
 	}
 
 	ret = devm_request_irq(dev, irq, j721e_pcie_link_irq_handler, 0,
 			       "j721e-pcie-link-down-irq", pcie);
 	if (ret < 0) {
-		dev_err(dev, "failed to request link state IRQ %d\n", irq);
+		dev_err_probe(dev, ret, "failed to request link state IRQ %d\n", irq);
 		goto err_get_sync;
 	}
 
@@ -505,28 +505,25 @@ static int j721e_pcie_probe(struct platform_device *pdev)
 	case PCI_MODE_RC:
 		gpiod = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 		if (IS_ERR(gpiod)) {
-			ret = PTR_ERR(gpiod);
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "Failed to get reset GPIO\n");
+			ret = dev_err_probe(dev, PTR_ERR(gpiod), "Failed to get reset GPIO\n");
 			goto err_get_sync;
 		}
 
 		ret = cdns_pcie_init_phy(dev, cdns_pcie);
 		if (ret) {
-			dev_err(dev, "Failed to init phy\n");
+			dev_err_probe(dev, ret, "Failed to init phy\n");
 			goto err_get_sync;
 		}
 
 		clk = devm_clk_get_optional(dev, "pcie_refclk");
 		if (IS_ERR(clk)) {
-			ret = PTR_ERR(clk);
-			dev_err(dev, "failed to get pcie_refclk\n");
+			ret = dev_err_probe(dev, PTR_ERR(clk), "failed to get pcie_refclk\n");
 			goto err_pcie_setup;
 		}
 
 		ret = clk_prepare_enable(clk);
 		if (ret) {
-			dev_err(dev, "failed to enable pcie_refclk\n");
+			dev_err_probe(dev, ret, "failed to enable pcie_refclk\n");
 			goto err_pcie_setup;
 		}
 		pcie->refclk = clk;
@@ -554,7 +551,7 @@ static int j721e_pcie_probe(struct platform_device *pdev)
 	case PCI_MODE_EP:
 		ret = cdns_pcie_init_phy(dev, cdns_pcie);
 		if (ret) {
-			dev_err(dev, "Failed to init phy\n");
+			dev_err_probe(dev, ret, "Failed to init phy\n");
 			goto err_get_sync;
 		}
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
