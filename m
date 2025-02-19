Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B551EC021B0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyuHqB4Us3jmaiIDJXZsrw2j7MPbxkaysZDFGKjO6+8=; b=TDFlOE5qTU2Xtl
	bZkEsTIURZ8n6aTJyL6c1EidBemgc75GxwkFmiSiafJHJVvWRAu3+xfSYqh99tY0AEU/T6DQv/Dx6
	sWDJcjFmCQGn+pScwFR2dILqDGwKee1ZQxE2VfnnfqJYM8YspyLdDhUO4fDnwN/plUYjP5rkDKhx4
	RYPmOVqr3ypaKOp9QHY2kFqd9q0eudL8aAlDoT5h5XbZ88NVEgwYdVx/I+0TJ2H9x1pH/jbpA3Ryk
	sJQBoDNtgLwIofaeaFfaYJA7mzgDt1EjgtqmVO43bJnFNr4J0LBHCmSG2iYhb7rr3YukBK6au3nFr
	6bbyzCI0cfZE7uGsgX2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmfK-0000000Djk9-1yWF;
	Wed, 19 Feb 2025 16:11:14 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmcE-0000000Dii5-29rL
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:08:05 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5e033c2f106so6447168a12.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981281; x=1740586081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fp963bQaS09mT/Id9cROqyvlwpVlaGR8uym4PMeifJQ=;
        b=o4QTYGm2OR4exF4Tq6PWiSVOEYAxmJnSZf+A/7eDXt+G+4yAelSWUd8qUMROPDpJiw
         +pjdKS5rvdLvM8RtBsS1kmstAqT5lqM4pb3pj1+GZBHg3C8fEpUJHqSuAT2++BLM18Yt
         wkbgeX7vQoYI45+eir+on/iohmq4T99qqn/zQ/a/WMPKRScHBzPxlHOUQjPQgc6LDKCI
         +JB756UUWeeDX5kOURBqEaZYK2UxFo7Exh3gjXpE+/MZ74FQa6jHXFxrbTLClxrehcjf
         qAp3ssNxqwWmOIUgLNzfFQ65bkkmSjcSzsuJxpkmjdL0ZtTBoZilPSWPELKUoNahGn6k
         FT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981281; x=1740586081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fp963bQaS09mT/Id9cROqyvlwpVlaGR8uym4PMeifJQ=;
        b=hY9snb+0OPiRScuo7SjnROElOagWUBq7FyZBH5B+hmQ2z2GEG9Vy4YRhW5sPRhu8aR
         31+VclJpFTK0TyBQmJwB6uA/x4+AfpknxUy+/8dCqTEorNZ63tvNrlYX9rRlKExjPAY/
         3bRaf/iOYIpdTfMe70UE1s+cM0+V3qo96VTcXrasPbgVrZUhHQdKNOV97WaXhcaIIKoP
         mNI8VYXnBbyWfI7PXGY/pi9oVvHQEyMcxnVRGwxf2X92W4YbQ3YoA2V0ATRn55WOLYYp
         DnEGkmgELCFpjBJJ+ltO8EzY8ZaLXNcsLXvzVRB9B1yUC0bYs+Iq3D4boNuYkgZBrjDq
         BhmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoA6MKZQtXhHo2wunv04KfokmSC3JFpe3VgUUED36Sp1ejFW18Sj0Au5f6dXV3Wkw4rIcerrMAoWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgAD79dXIiQSuoeDJ6vk1SkFjSSE38ptGKTHkFkC/Z9lCEL0eW
	Xer+OoUASfJe5ZqQDwEvgG/NWUwB4NWArHLnpTf3n9nv1gqDSNlimAUZe9pCMiY=
X-Gm-Gg: ASbGncv9eNJQ6bNzeIk3SHljmymnhnuzo+2nrJYvJll2cJmEawniv46SHnFRoYoF7Z6
	1DleRYU/f5oG7Axsfe+oEFcvNEzyc3PE5oy+iHwUo75odg41qz8hA+79wI0Kr+RtivqOi4O7Gno
	YeYp7emqfRHT4F2YvX9hHJqu7mAzFZw1Lv4vmKFMzmwv+MLl3qHwBLhBK+pBEfRftLmoleroIFp
	jwUOWjSql6ALMbNaY5oP9kd1IgyyveyjaCk0abR+2MpncDWtN0dPyjel+POJzlNCFHhRy+py0TD
	iE0jHU7ydLjSrsgas0c62tvWmeyHkbGjcfAhZ3vR8Btv
X-Google-Smtp-Source: AGHT+IFAgpZWz/pkyw9SWyVoJ7pk3k0HNU/QFxMAd6EP1GrHppjjqFAwOVcnx9/qFdJFy5HnODJk1w==
X-Received: by 2002:a05:6402:2386:b0:5dc:6e27:e6e8 with SMTP id 4fb4d7f45d1cf-5e036139cb5mr31203335a12.24.1739981280715;
        Wed, 19 Feb 2025 08:08:00 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbc0d0b882sm327791066b.109.2025.02.19.08.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:08:00 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com,
	robh@kernel.org
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH RFT 2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
Date: Wed, 19 Feb 2025 18:07:45 +0200
Message-ID: <20250219160749.1750797-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_080802_555574_8C338978 
X-CRM114-Status: GOOD (  19.01  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Commit 08b0ad375ca6 ("phy: renesas: rcar-gen3-usb2: move IRQ registration
to init") moved the IRQ request operation from probe to
struct phy_ops::phy_init API to avoid triggering interrupts (which lead to
register accesses) while the PHY clocks (enabled through runtime PM APIs)
are not active. If this happens, it results in a synchronous abort.

One way to reproduce this issue is by enabling CONFIG_DEBUG_SHIRQ, which
calls free_irq() on driver removal.

Move the IRQ request and free operations back to probe, and take the
runtime PM state into account in IRQ handler. This commit is preparatory
for the subsequent fixes in this series.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 46 +++++++++++++-----------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 46afba2fe0dc..826c9c4dd4c0 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -120,7 +120,6 @@ struct rcar_gen3_chan {
 	struct work_struct work;
 	struct mutex lock;	/* protects rphys[...].powered */
 	enum usb_dr_mode dr_mode;
-	int irq;
 	u32 obint_enable_bits;
 	bool extcon_host;
 	bool is_otg_channel;
@@ -428,16 +427,25 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 {
 	struct rcar_gen3_chan *ch = _ch;
 	void __iomem *usb2_base = ch->base;
-	u32 status = readl(usb2_base + USB2_OBINTSTA);
+	struct device *dev = ch->dev;
 	irqreturn_t ret = IRQ_NONE;
+	u32 status;
 
+	pm_runtime_get_noresume(dev);
+
+	if (pm_runtime_suspended(dev))
+		goto rpm_put;
+
+	status = readl(usb2_base + USB2_OBINTSTA);
 	if (status & ch->obint_enable_bits) {
-		dev_vdbg(ch->dev, "%s: %08x\n", __func__, status);
+		dev_vdbg(dev, "%s: %08x\n", __func__, status);
 		writel(ch->obint_enable_bits, usb2_base + USB2_OBINTSTA);
 		rcar_gen3_device_recognition(ch);
 		ret = IRQ_HANDLED;
 	}
 
+rpm_put:
+	pm_runtime_put_noidle(dev);
 	return ret;
 }
 
@@ -447,17 +455,6 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	struct rcar_gen3_chan *channel = rphy->ch;
 	void __iomem *usb2_base = channel->base;
 	u32 val;
-	int ret;
-
-	if (!rcar_gen3_is_any_rphy_initialized(channel) && channel->irq >= 0) {
-		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
-		ret = request_irq(channel->irq, rcar_gen3_phy_usb2_irq,
-				  IRQF_SHARED, dev_name(channel->dev), channel);
-		if (ret < 0) {
-			dev_err(channel->dev, "No irq handler (%d)\n", channel->irq);
-			return ret;
-		}
-	}
 
 	/* Initialize USB2 part */
 	val = readl(usb2_base + USB2_INT_ENABLE);
@@ -490,9 +487,6 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
 		val &= ~USB2_INT_ENABLE_UCOM_INTEN;
 	writel(val, usb2_base + USB2_INT_ENABLE);
 
-	if (channel->irq >= 0 && !rcar_gen3_is_any_rphy_initialized(channel))
-		free_irq(channel->irq, channel);
-
 	return 0;
 }
 
@@ -698,7 +692,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rcar_gen3_chan *channel;
 	struct phy_provider *provider;
-	int ret = 0, i;
+	int ret = 0, i, irq;
 
 	if (!dev->of_node) {
 		dev_err(dev, "This driver needs device tree\n");
@@ -714,8 +708,6 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		return PTR_ERR(channel->base);
 
 	channel->obint_enable_bits = USB2_OBINT_BITS;
-	/* get irq number here and request_irq for OTG in phy_init */
-	channel->irq = platform_get_irq_optional(pdev, 0);
 	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
 	if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
 		channel->is_otg_channel = true;
@@ -784,6 +776,20 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		channel->vbus = NULL;
 	}
 
+	irq = platform_get_irq_optional(pdev, 0);
+	if (irq == -EPROBE_DEFER) {
+		ret = -EPROBE_DEFER;
+		goto error;
+	} else if (irq >= 0) {
+		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
+		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
+				       IRQF_SHARED, dev_name(dev), channel);
+		if (ret < 0) {
+			dev_err(dev, "Failed to request irq (%d)\n", irq);
+			goto error;
+		}
+	}
+
 	provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
 	if (IS_ERR(provider)) {
 		dev_err(dev, "Failed to register PHY provider\n");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
