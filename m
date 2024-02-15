Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41BA7C48BF0
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSw9Rze8JTa2ziqD0m8p/TQgnrgfJyCDr+M/jVHaO7A=; b=YVbmL/zJ0kCmir
	aC3vrU96O+HpBAz72yI+9HNpywVp4vrujX90L/R1TYvAM9VTQ10+2PCA6HYfdmYUzzzUS4O6/20mL
	BZLmIRntYLWVwFz5CHp9giFWm19eGeFoF9kIAUasEijNY2387RX902oYlw5AicaRsdxyY56zIeMgm
	pwWQ5CCaJp5kXFA5CAxfgRUUUTQf3AYsrHeW8Uswjij87E/Mtxz2DQSrlti+kMvljxD1ilunXZkJs
	H+X6LrWY/qkAM+7InpSg2UBWF7mVZaY3gV1PKdo0tb8554s+CB0xamoNHZe4WLj5hZKhbhkbjIVTd
	+AIY7NO+kjGt8lwznVUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVd-0000000GhFs-2Wkn;
	Thu, 15 Feb 2024 15:18:45 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV1-0000000GgpK-2Na0;
	Thu, 15 Feb 2024 15:18:09 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1CEBA24000F;
	Thu, 15 Feb 2024 15:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R9wanZgvZg9ml7GqR5bBizFjTTL8Y7tpLwMVbRWiGTQ=;
	b=h2c3O0R+H0aCNoaovxhZxz4fVFJgW/NkDJL4iE9MA9Bz5bB4Q8VUtl+qcZNa1VkafuNCvG
	Nh2QWFaXefaOXRuJwA1HeepNj94AJ5PRbtA5XvajB96K8R6+iEDM+Eua9YE9Ry7Iye7X4u
	Ec83gQy1b/PELMMhtjR8ynHlH9HaanPxGx4KfuDnTvSHlQ+bLIKxoFwKsVjb/2xmTkp+gh
	G0qRYloGTPFpOywJdOMsviEGR+p1ktX0l7KhCK+ZJYyBSBw56F87l6sgyFk0v+JehhmYXQ
	O90Sg5w+vvRoktD0MEwuP7eeBpOVjN1azXxru/XFZELdZ9L7jN4/MwooN/BlaQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:50 +0100
Subject: [PATCH v3 05/18] mux: add mux_chip_resume() function
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-5-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071807_978988_9AE8F49E 
X-CRM114-Status: GOOD (  13.27  )
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

The mux_chip_resume() function restores a mux_chip using the cached state
of each mux.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/mux/core.c         | 30 ++++++++++++++++++++++++++++++
 include/linux/mux/driver.h |  1 +
 2 files changed, 31 insertions(+)

diff --git a/drivers/mux/core.c b/drivers/mux/core.c
index 775816112932..5db5a7698ad1 100644
--- a/drivers/mux/core.c
+++ b/drivers/mux/core.c
@@ -215,6 +215,36 @@ void mux_chip_free(struct mux_chip *mux_chip)
 }
 EXPORT_SYMBOL_GPL(mux_chip_free);
 
+/**
+ * mux_chip_resume() - restores the mux-chip state
+ * @mux_chip: The mux-chip to resume.
+ *
+ * Restores the mux-chip state.
+ *
+ * Return: Zero on success or a negative errno on error.
+ */
+int mux_chip_resume(struct mux_chip *mux_chip)
+{
+	int global_ret = 0;
+	int ret, i;
+
+	for (i = 0; i < mux_chip->controllers; ++i) {
+		struct mux_control *mux = &mux_chip->mux[i];
+
+		if (mux->cached_state == MUX_CACHE_UNKNOWN)
+			continue;
+
+		ret = mux_control_set(mux, mux->cached_state);
+		if (ret < 0) {
+			dev_err(&mux_chip->dev, "unable to restore state\n");
+			if (!global_ret)
+				global_ret = ret;
+		}
+	}
+	return global_ret;
+}
+EXPORT_SYMBOL_GPL(mux_chip_resume);
+
 static void devm_mux_chip_release(struct device *dev, void *res)
 {
 	struct mux_chip *mux_chip = *(struct mux_chip **)res;
diff --git a/include/linux/mux/driver.h b/include/linux/mux/driver.h
index 18824064f8c0..2a7e5ec5d540 100644
--- a/include/linux/mux/driver.h
+++ b/include/linux/mux/driver.h
@@ -88,6 +88,7 @@ struct mux_chip *mux_chip_alloc(struct device *dev,
 int mux_chip_register(struct mux_chip *mux_chip);
 void mux_chip_unregister(struct mux_chip *mux_chip);
 void mux_chip_free(struct mux_chip *mux_chip);
+int mux_chip_resume(struct mux_chip *mux_chip);
 
 struct mux_chip *devm_mux_chip_alloc(struct device *dev,
 				     unsigned int controllers,

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
