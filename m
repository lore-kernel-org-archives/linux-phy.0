Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BA7C54E4A
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SayRv+/4soYFHnIQ4LpgfLIJ7at8PcTRIRZARGEpkto=; b=lS2fkF+k1T0EcB
	79u43eLT35lnng9xDma2zcRBgY+so4HoUYX7UNzHJLnz0UaOzTU0huCVia7PHWHWUr0TxFo+pm40K
	m7Wl97XpWkZIvA4Nnh65lATdb6gLKdTe75iTHmZRza6GFpcZKIefVszp0SV2EenU6X8KYPk/tvxdT
	pwSdbLKjJuZBCM4UwzEYQ6MB8fYkLEt28oKTq6WBe+L6W2ATUuajXKbTs+FqFp7bY/ORl19uKUScq
	b6Di3qLfQn/JBDj4Ve42kfoWI5ypMyOHpc6HQUh+UBc7D4qlMrh//6lvPL12Cw3LgH7O4cUTOCpcp
	F6sGcZwIMFX7UBfxHDkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMV-00000009cR0-2lOo;
	Mon, 04 Mar 2024 15:36:19 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMQ-00000009cO3-0kjy;
	Mon, 04 Mar 2024 15:36:15 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 360FF1BF210;
	Mon,  4 Mar 2024 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S70Ysmy7GOlawn6RWq9qzGyOkNk33BPaQBIqrV30L4w=;
	b=SoKAV7l1oULBbize5FjHEPjME+6LADGMzeXVTkq+CIh7y7M/Ycx5mrDbeTJuHw/sUhWu4l
	+EkdGkyaoBEtZLLmGRY6YB1lx+oj3LIiIdiHE5vmXhwNgGI6TMDQVyJkFFAvvA4hU4rhub
	gIxKMAMM+dHWDq9IhtMNoSB38D/F7Sd7T2q+qhYkt6L2e9UqV6aAvf9QFDuvQRq7jV/jtX
	fFQnfWNJLhgDowZwlqqoGQmkQd9lK69dtlpb2R5H39CWFoFau1tSoES584IumVVsShNhnc
	6zbshGVKikIKdBoDBdZUXS9enzShujTMDAUSYpvoFWK2DV04KUKRSDzH2asO1g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:44 +0100
Subject: [PATCH v4 01/18] gpio: pca953x: move suspend()/resume() to
 suspend_noirq()/resume_noirq()
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-1-6f1f53390c85@bootlin.com>
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
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_073614_548924_0AE33772 
X-CRM114-Status: GOOD (  10.23  )
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

Some IOs can be needed during suspend_noirq()/resume_noirq().
So move suspend()/resume() to noirq.

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/gpio/gpio-pca953x.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 00ffa168e405..6e495fc67a93 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -1234,7 +1234,7 @@ static void pca953x_save_context(struct pca953x_chip *chip)
 	regcache_cache_only(chip->regmap, true);
 }
 
-static int pca953x_suspend(struct device *dev)
+static int pca953x_suspend_noirq(struct device *dev)
 {
 	struct pca953x_chip *chip = dev_get_drvdata(dev);
 
@@ -1248,7 +1248,7 @@ static int pca953x_suspend(struct device *dev)
 	return 0;
 }
 
-static int pca953x_resume(struct device *dev)
+static int pca953x_resume_noirq(struct device *dev)
 {
 	struct pca953x_chip *chip = dev_get_drvdata(dev);
 	int ret;
@@ -1268,7 +1268,8 @@ static int pca953x_resume(struct device *dev)
 	return ret;
 }
 
-static DEFINE_SIMPLE_DEV_PM_OPS(pca953x_pm_ops, pca953x_suspend, pca953x_resume);
+static DEFINE_NOIRQ_DEV_PM_OPS(pca953x_pm_ops,
+			       pca953x_suspend_noirq, pca953x_resume_noirq);
 
 /* convenience to stop overlong match-table lines */
 #define OF_653X(__nrgpio, __int) ((void *)(__nrgpio | PCAL653X_TYPE | __int))

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
