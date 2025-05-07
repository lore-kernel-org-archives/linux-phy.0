Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A3AC3ABC3
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtHe5Zkp+bgKb2tGHPBzcfyN447wYGx1Sa47JKW6Nh0=; b=H8vVgMUOoFjcN4
	/+krRgVdikdfwzK2qSUeThf3KRwp5rf9SiyUZW7sMwvfGaayKR2XlN/jmByUS+UACrBcUyTdmMkyO
	33WYMGO5yLpbQHJBFbi8z43f7KFrZ1P3/yUi3DVT5E/640bsnARKfKKPw4lCPdClJqWGjyA4m6uf8
	7fefIxRRnhF5gx/l3k5Mi3CyF2io6iX3ROGDth4iNmgm3ToJO/5oiv55SMpvoC3XI0AqKLDFm0GB4
	hbWkpcRH8+5h5GPjN6ssBFmwr9jICWC2cj1g4vvA5t9BD0mSiWwxL0NlNAYts+E7KQewyDNsLYzo+
	XkM6R7jj2KPRV/9GXPpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeFq-0000000FTdP-1AUQ;
	Wed, 07 May 2025 12:52:06 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeES-0000000FTKv-2v0o
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 12:50:41 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5f4d0da2d2cso13264829a12.3
        for <linux-phy@lists.infradead.org>; Wed, 07 May 2025 05:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746622239; x=1747227039; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zxQTUgTe7v6lzhxqGuewV0dNwPB+Lcd+avBxe9zfMDc=;
        b=U0fj6iaUmJ4X78UBbQ1srXMaP6erchrZrkavJqLueaox6GVXj7J92x7F47dTtpPzD3
         SMfzea5tCvpz4TjglyX5D5q6z4gXIF53vR5BOzLaw2lm58vsHMgUIUcNCVlXeW/KhgHX
         5UgbTvcXtHYHQoxba5k7NKiGARZHEDYzaqoE8wpcj7DeNIGOHWIQFhE2WjrQWCLreJTX
         VxAtUAAEVYNi+iw7mhUrA319gSym6E+zOhJ2IvymWMnPZ9tgmF9CI9S52O2OMYwcTolo
         IPV/D/tpyyWqTZMB2vP/SBNQ8hHitVl5V1+mzhhXgolsDQUEdYWyuN9t10HGUiE+W7fQ
         N2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746622239; x=1747227039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zxQTUgTe7v6lzhxqGuewV0dNwPB+Lcd+avBxe9zfMDc=;
        b=Ud2Cwm0GN7L+fWcrJKf0zmcA33G0KUlS+dxpmuNxbEGbisQnxL1TmENLQoLRkaqTxU
         Irbv43KPXEWg5QvqVG5myoRsTam94AVsHTef/FBSsIcYKbUYSoedrCzAOjYxpOHZQIUi
         Vj/b/V7UlMIunGi8SAqKXvSz1Nir9UtTEnGqNbmI4Cbmts4gNxiyKlAXC6AIcMkhwLcD
         o/NMMliq5sYxb6BuM2Aa1ApSyouq33pzri4RGds+/uPvfo9VQOwO82v3cwEPbOiN2zTY
         WGPjIhCWIwNkmDHEnETEILDjNUkhm7/yjzrw9u0d5RZYP4Dwk//FMILniP2spfyPL4Rg
         zzJw==
X-Forwarded-Encrypted: i=1; AJvYcCXqXPjRupxbX2KOie7BdTdwkj1EOWt33UzOo+WWMd7JFiOzTcX+GcRZoWni/vH9OozlOoXAzaATqew=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1OsY0gYw9Z7bFWbGv4l8swSJVg4P08ZdVGHB3lzSgsV7vH+2Z
	SizPxTRvRA0o8oXT7bMNSUSDzCfxqwTO/W7CjOHhJtg7hTqeVQZlDuKrKy5/n5U=
X-Gm-Gg: ASbGncvjkGk8t6CHu1YlE4sIbDxBplGS4zKdGT7/T1A3p3AF9JcQWkuwwBjg9vudIAw
	D/0DksLOs13lTawIozpMTRBk+vYZjqrklBzA3IJgtM+qeaUv8hE5VDU4q33ENG75DLGCL7bKI4L
	StcDckLBEzYelOCLkMbWlZnVRMHEHFMhJAeCtvb3U00xNO92dbzF0nepM9E9ejfhJLlZVTBc+jn
	OEafgh2P4bvAlBbm9IU5lafep1GQi3uMOyoFlU1x6HBIEAIAcbNKa9jmpTBKIokmd7esHHcmWfV
	Dw3bks143s6mRgOxyvXTXbrA7go1OzqV069lNSF9JWnC88Fo4scSdIVE/ZNpBXqlpRk4Afc=
X-Google-Smtp-Source: AGHT+IFfsvW3/hnEPeIc/j2uIPUA7et6tDXubR245UWFhKei3VhQaP8pS15fFAz6cgAd8k7V193d5A==
X-Received: by 2002:a17:907:998e:b0:aca:d83b:611b with SMTP id a640c23a62f3a-ad1e8dbc866mr330662166b.43.1746622238928;
        Wed, 07 May 2025 05:50:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146fb4sm913182766b.10.2025.05.07.05.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 05:50:38 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RESEND v3 2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
Date: Wed,  7 May 2025 15:50:29 +0300
Message-ID: <20250507125032.565017-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_055040_735358_C1D2B832 
X-CRM114-Status: GOOD (  19.39  )
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
index 46afba2fe0dc..bb05fd26eb7f 100644
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
