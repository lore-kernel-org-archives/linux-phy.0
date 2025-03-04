Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25AA2C282D6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu9qzJpVOTB9Ny8gcZvDjpkXQsyczpPYiO/SPySB21E=; b=HkJ6fNxga8gCSk
	2jQ/NuCA6S1VuSxNkk3WDznTKmXDCvXlYgWnefIxdpyHPru+qKSCjDDVu7Ufcm5+WBUfPKF1yPakz
	P0aRNMpbq47uB6DOg+svDIbgdFT5O0wJDksUZgDMBH8oiVJ7pr1GP7LW67gPj3GZz/iQfbzYpfPAw
	ff9FscdJcLvmYDWxTIstcj47kDUFd4Q6ZYQOtrkadIvof5ycm5iXCADIDEI/km88eDgcsjKxIKU37
	3Pb9r3Z1+jBPvmjFyvo9JoOt4UeFqwzfL+qq0qg1A3unzmM8Hw3/N7uod2HTiCAXtQsPF8IBWn8JB
	8AreVx+6cKIItzOHv6rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpR4o-00000004Wd2-2CjX;
	Tue, 04 Mar 2025 12:08:46 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPpD-00000004GML-2hW5
	for linux-phy@lists.infradead.org;
	Tue, 04 Mar 2025 10:48:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3910f525165so1430386f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 02:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741085314; x=1741690114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/PMmHSSgrlCrvi+Z+rq9GWww30g00UqAegwGTUTxi4=;
        b=K/C/uby811xTpwz9EN/Mmtm3wKUotzDqTT5WCBRfcsf5hgzy1L0BEUbBRGvd2aHwwM
         UfkubDuS64lr8jT/k/5g5TDO4LLbqE3B9khQUB51oY2uVLhHbHFyRD6ZqkTJXuw5wqrc
         3jqDQDBDEB420fMUnKzLYw3sqFOav8WF5sOgK8kRGHqrsKbeF9tzqsjt4kIgXInpQDNq
         1cAiTZe+gyzs+U6QHS0JqikY6c1FNvrX8J05ggj/o8yKUBgysJyHV/edQBgBDfncitTj
         9qcPXwl73+oVA6RwlcYGfW/0kbRr+voSHxrFv+QZPZhku4gns3ofNIJbXNZgoIji31iG
         QOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085314; x=1741690114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/PMmHSSgrlCrvi+Z+rq9GWww30g00UqAegwGTUTxi4=;
        b=w2/MeU7a5zq5uJqQVCDdbMXpRQriJHkOWL7zSo3ewi57VcNP786nN7k0gjpzVQmO+u
         5MYLXxAgmfCLcMNmdb7FzNUV54+mp4ZhZ8WrCq8jz8Uyhv1Vbcbbrtj7V6mNdsm1J3gx
         /JtcNWqdnA7fGDJp11IjHTfgak26Dp7N5Xa+SISCFKCh8LK01lUVJJ6HtG/+43Ue0Til
         QLTEx4Czqnr1fZmuEmd1NKBuW/8Wr8U3j/CQQPQ5GPx1JPdfInjo5bioGOLPob46DhqT
         duYyf+23pxplUHZcEQG/UTuzDbHEpmPIkpXRA/5B5/o4YSxZv9m4+0HN89+LCVeTOJbb
         FEwg==
X-Forwarded-Encrypted: i=1; AJvYcCWyAyTZjPExFUH/Qsz8F6V42j+wJpT2VKUMGB7AqLjc4cPAUk4HYnc5GdfDKAz4aQ/QzbpCe/1q5Oo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1llFdU1mbpEgik5U1cMeX+Ku48xA8W+XYdrbLMybcfHe6VNJm
	zc21DaSScKQdhgBdzGJIhKPUT5RLbwBzL6GkV7uYLWNUQXIYmqAI4pAEVZmqrwk=
X-Gm-Gg: ASbGnctGagrFvIENXkGg+iCnKqiW6mbmpLTyn1cZG8CMzu8kP3I0UzKSMIpkebcAuPx
	loFet61nKKvmcSMZHF3zeENAOxvNVgfF8o9yd6suI469GStOI/VaaZNu4H4kd3J7S8/qTaoaaHJ
	Hwc/wZEncLVCYvQpCCdr1AK9kg0rNZAJ/os9fGitHmueSFFAInJpIoasxaxGNHk3zdsATGHT7fP
	hTAoS9ZMvWBn+UVyKwrQRx8m9tqqLxrEprBt6irr3RPh4HkRUtu22ughQgUvO9GvGEXCo433CRQ
	m5+o+cAv2ObKs11W722eLKlXqU6DlYm9OMmecp1gSMnNJotqsyXUAD97v3JQtzsyxPKmAJp36e8
	=
X-Google-Smtp-Source: AGHT+IE9ccipZ/vJcPu505efAkF7yf7WoH8ct+Sjo72HUD2EpUvUGGCqBeJyxUkzLqpZgdAQEy483w==
X-Received: by 2002:a05:6000:2101:b0:390:f745:bbfb with SMTP id ffacd0b85a97d-390f745bc4dmr7682113f8f.26.1741085314058;
        Tue, 04 Mar 2025 02:48:34 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a38sm17445161f8f.75.2025.03.04.02.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:48:33 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
Date: Tue,  4 Mar 2025 12:48:23 +0200
Message-ID: <20250304104826.4173394-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024835_687469_4CA8BC11 
X-CRM114-Status: GOOD (  20.13  )
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
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags
- improve the validation on the value returned by
  platform_get_irq_optional()

Changes in v2:
- collected tags

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 46 +++++++++++++-----------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 46afba2fe0dc..aa9f301b5acb 100644
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
+	if (irq < 0 && irq != -ENXIO) {
+		ret = irq;
+		goto error;
+	} else if (irq > 0) {
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
