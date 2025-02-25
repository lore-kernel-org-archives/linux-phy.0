Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D8BC021BF
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNuDTkwxSFHmur8Q+vDJLtyjcwwtiyNI5ws0OJjE7KU=; b=3SlaagorwACKBe
	gpsWUIwEQGyaAKzXhJAx29i6r8kVgJVzvzlFu/L+q4UvhIHA/OZ6+wur8pL2aJdXz0wUP71RN5IxW
	sHWxhgGRSJqepTC/H7DSGTrGjwlcAcYhIpL5iIsF9RL81BeU0jlcdSGkZcjDNlTtgE4Piy5wRbemV
	gPGD2u2DNQrsNDvI4m6ywDgUG2hqMh6shiFSv/q7kkdStBtCtFYjnlKF02tJIB/7WxdnX7ZWKbqNX
	khj9ZGq89o/GHNwZYtbipcjUIThcedNozP42CXdNhCQy91dW2v9LxtergcjqYurBg/KtwfthfTFrI
	hHKQVZBqD3xJ+d2V9y3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtgy-0000000H998-0tp6;
	Tue, 25 Feb 2025 12:05:40 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmsel-0000000Gvmo-0ECQ
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:59:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-38f73e6ed7fso1922974f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 02:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740481157; x=1741085957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sfEy8KyELUmcQMIeUv/rU8Wl18U2U4X/a9mtDNA/tmQ=;
        b=pWEAF4ABWldNSvt/by756YgY8U/H3VHBokPiu3dfUT6RdILhN1lrAK0yrRbI1YPsXn
         Gt3VJ1wrpNbWYIxZZj1yjXqTcd7uGxenEgvhjvwKp39D990qutlBCtJUu0Pteka3HhlB
         62QU3a0QiQQlk61VRC1IYMkLZbz2sZamWK1kYpu3SOaxugUkddGAWJ0XpvfsKWXGJGlR
         l54yqU/H3s2MSFb3CTLMZdHhUOnVEU1xd28nB+8OxWOv0/sfT9U5dI6imJkXIF5cB0bc
         /aLN4Jdfb0wdSWrnxVpgGOAAWEiY5bcKNmWSegQ2XkK9MCKwEz/OyaTQbLuaZEB7nUjW
         DnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481157; x=1741085957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sfEy8KyELUmcQMIeUv/rU8Wl18U2U4X/a9mtDNA/tmQ=;
        b=Wqrc/ZXMvtozj0J1Igep+AlSqrLkGRMWW6cWBglwSKAhHle1sqBxirGzx06T7HNjtG
         IwraLvblVzTX1h3N+G9sOsxJnV7xZYFEJRerca8vQhdpm3MMe8UESDpr5eKysKA2TauH
         YSTxJZynLz5T8+H1+QukbghGIYgV3Mh3V79mfoYMsU61zKbUBob2/cloqHx5nmfljLka
         frlLcIzPi2DLsWr5SFkCTPWSvvSyJduPHnmXYtlPnBc+Vq2xi7XpLL2d2WHMg4i2D41r
         xvEl8ss6Kvqfk15g0DFzeouu5cQUlCMueI5CYEDaT2j4yAwzf4FRxnxs9oD3PSvSrqYm
         ntoA==
X-Forwarded-Encrypted: i=1; AJvYcCWNaQIUR1aNiYuaQPpJ7ST/Kd58U9ws5AQgXz1UeKXV2olGaHmf/XgOusbxVIRx/CDEplnE+kJs/SA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9pzhrfkvTWQi2VNLLtwdZtQa3Nq+qCSo9wKz4DM4FTxcpOMha
	5XoXU7oP4Jeex+irBzAa9+xpGNmr6ovbq6ROOT7zrGMGbGkbPtq9idcCfP75s6U=
X-Gm-Gg: ASbGncsTtZDwAaw9A2sE8lNywPNfQwg6RFJbxyemNbP88PmHMl8ZXgSvEuj0HIXYjC6
	c5AW15kfPwdAuKgSi4bYXlgnBxTfHceUw+9p1YXEb1GOYN7hr+E8oP+J5ZMp2+J1pAV7Zg9j/Q/
	O4vzliDXIZRCBYUfuTWc38uMn7AFlXRvQfeTYcZ4WAv1PAu4c6uuL3f7mW10+JRDd+aINOF4uCb
	SVmydjpW55kecHIC95iqQbrsHiRTDgOMKLAushoQPqglmtTi8jQgDYrUOx6aDSY0+HNrHpveTwx
	00Cz229IbnssSDQf1v/95v0EHeEglnMTJvLzLOsa1tbt2XHEqRFMZwc=
X-Google-Smtp-Source: AGHT+IGg2Tqjf61sKeAO2o+T9GqclFS/489mJaot1ECtYZrKmZ7QXTKiBSZMoZvXY0WSJE1lG6b2Rg==
X-Received: by 2002:a05:6000:4025:b0:38b:d7c3:3768 with SMTP id ffacd0b85a97d-38f6e946edbmr10740765f8f.12.1740481157261;
        Tue, 25 Feb 2025 02:59:17 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm12588815e9.0.2025.02.25.02.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:59:16 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro.jz@renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
Date: Tue, 25 Feb 2025 12:59:04 +0200
Message-ID: <20250225105907.845347-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025919_098527_B29DB705 
X-CRM114-Status: GOOD (  19.26  )
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

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

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
