Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1918FCF31B4
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 12:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ScLDoesJN7dNjlCklZNuQtNRaL7pHJRnSZBZ2u0/Mk=; b=ftuW8chWF+NYI0
	DTYlLu93mHRSVY8ceJMX4PlA30+33Jp2C5aWHIU6z1oshLFYTNWNfRV3n+cPV6eKweXyAoIYslkHu
	tMUSU7+oGnRFLxHPUzjy+AiyDP6nkNtwLn9UiG3bMP1IUu/KFAcOtusVV6/synnEAFCNmyh3ZqZ89
	S7ppHd9aUrJFxk4MYKrwmb34jvXHa2zDYVyN3vOClgC3Si3IFXkZ/4dEwinzymCx8WOw5Q9Dtccyb
	g6jbs78IjulU0sWRKOvbw3cheM2Ep/aNhS1wCWrKZhbvKfuKxaqVUaciJzKjGv6XfIiPJPhWPZPsq
	oA+pt5txoTrgKvQUM+Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgvF-000000035Qk-3XZv;
	Wed, 19 Nov 2025 12:04:29 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgvC-000000035OY-1Tb0
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 12:04:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so45268245e9.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 04:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763553864; x=1764158664; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kwbvw6xT/0cK8yOWBaAQdvYuRJNVtp1fhMHHc54Yto=;
        b=bXzkd7VshVh0KXaiikZPTbIRQhr9Ndo8M0kKHMn69CZrj7omhZU/INJqhRvXqmUW+g
         qrxLqfY3i7XzhcOKq5MWwWmec5b9yUAPYLCV+pBtyKDswgzG2pnP/R3c79xDqEnl0K49
         Qr+rZIDHU3XAERgGJBeHfUWtbn1eFW4ItSb2L2+Y3TNUuoXQk0Fm45PmDUGMu5Xc02Ff
         UJPrh1AvkHbEdI9CpdNbpI1DbswoqKMnK2xHB+lm4wAZSd3ljJTCaQijBh1apYGeG8So
         vZOdvgQp4tcuUs0CYlfL+0UwarCaQFVA61Qo6uStUqU3qmS4SkbsHhuaISV4pJuSu/+W
         V6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763553864; x=1764158664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7kwbvw6xT/0cK8yOWBaAQdvYuRJNVtp1fhMHHc54Yto=;
        b=EXsAcHdySr99PrErAxSn71/v+kHEPk4+And/xFthwF7XT6PGKyWsl0nXH77p0cRL0n
         T3GWaHjVyqTbUMuODtO9/0jrI3nttGS2ABenAgoxmCto/gnYcAd/srEHt4tSG3B2PsHf
         jJtm+1iF9fojlleBmL0SqEwjWaZLllwH3t+LjoMPY6yW13I3kSIHCllivazR6Gyzjar1
         zx9X3DxI/ygRc3sCcMPoOH5pGbYTqlg0YmJMYHm3Rg2nElZRhwQMThm0BSR3gFvNJG24
         +stCxu2SSi7eaS3Ai4ghYLhsO8sbD9MpjODBfu39AWqOrjiN95GsG6FHwVAQaBHPDuvu
         7QsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTIDqjQ18AKZp+7jdhYYBFZTADHjVt41ZY3+DlrMI0OqEzkCbwgkDCF8KR49ambppDpgDNXD1Oi0c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXbj5dyTeUgOKTB5nbQrBlp10b4VHmdB9DZOCwwDlszsZ7XiUZ
	QnuifutkKouAVyTYMYBqyM8Y9aAcLD4h6aG7x/aAPrnZD5OxBK+UZwgoxDix2jwIwEk=
X-Gm-Gg: ASbGncutcknvk+pjUU86aMbDZXbnaJqBqnyeGs2QWp748gb/74dweefnm9KAeHU5H2j
	IHqLmOt/iqL0/S2/6g51S7x0YKaG/VpUDnaaACDiFK5aCSR6y8lp0/zZmS5HTkBIsGO1wKbTf1V
	INYNVRTZjDpI2Oio05dr3iFUQGuhPl2GkX18fg+u2JQZ5OBKMTvBzuiyxXN4NFPSiYX0qubgOHy
	/FmucPzal3/qOymoYNc6vUwFQ6v0uB75UtkwH98Artu7keNfOMsUQ+RrQBuOzCcFgjv/sxAq2MM
	pKhWtsojUm7e0GuRTXUZjdexgK9uemCPaT0BkpXeaPuDyAx4CIJE5iVDYlqCMcl3B23O0AfPhUC
	KxTb5Q92yWZhIJ3x9ASicFhApE4WOwD8mLAagxKEs+izKRsAbNN+DcQzrrt8e+XNXfSo7QoHPJG
	Vaoo0Zo0QYvQ5DogbRVPZOPrCUn41NRxZMEYPBJuTbxKPry5u9ChyjMuEhuREAlA==
X-Google-Smtp-Source: AGHT+IEmXDrq9U/gnjMPnQaZ2zqrfwsQlLLhP0qnBZZKkxXXUtOmxvmAkh4F6KqAQGo+GJlfdl6iXA==
X-Received: by 2002:a05:600c:8b4b:b0:477:63a4:88fe with SMTP id 5b1f17b1804b1-4778fe50df1mr184268975e9.2.1763553864413;
        Wed, 19 Nov 2025 04:04:24 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f2084dsm38431132f8f.42.2025.11.19.04.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 04:04:23 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 2/2] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
Date: Wed, 19 Nov 2025 14:04:18 +0200
Message-ID: <20251119120418.686224-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_040426_422466_8EB19075 
X-CRM114-Status: GOOD (  18.89  )
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

The Renesas RZ/G3S supports a power saving mode where power to most of the
SoC components is turned off. The USB PHY is among these components.
Because of this the settings applied in driver probe need to be executed
also on resume path. On suspend path only reset signal need to be asserted.
Add suspend/resume support.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- dropped the changes that were integrated in patch 1/2

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 57 +++++++++++++++++-------
 1 file changed, 42 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b9d5bb52e02c..3c063e4dea41 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -132,6 +132,7 @@ struct rcar_gen3_chan {
 	struct device *dev;	/* platform_device's device */
 	const struct rcar_gen3_phy_drv_data *phy_data;
 	struct extcon_dev *extcon;
+	struct reset_control *rstc;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
 	struct work_struct work;
@@ -778,38 +779,24 @@ static void rcar_gen3_reset_assert(void *data)
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
-	struct reset_control *rstc;
 	int ret;
 	u32 val;
 
 	if (!channel->phy_data->init_bus)
 		return 0;
 
-	rstc = devm_reset_control_array_get_shared(dev);
-	if (IS_ERR(rstc))
-		return PTR_ERR(rstc);
-
 	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(rstc);
-	if (ret)
-		goto rpm_put;
-
-	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, rstc);
-	if (ret)
-		goto rpm_put;
-
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
 	writel(val, channel->base + USB2_AHB_BUS_CTR);
 
-rpm_put:
 	pm_runtime_put(dev);
 
-	return ret;
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
@@ -849,6 +836,18 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		}
 	}
 
+	channel->rstc = devm_reset_control_array_get_optional_shared(dev);
+	if (IS_ERR(channel->rstc))
+		return PTR_ERR(channel->rstc);
+
+	ret = reset_control_deassert(channel->rstc);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, channel->rstc);
+	if (ret)
+		return ret;
+
 	/*
 	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
 	 * And then, phy-core will manage runtime pm for this device.
@@ -937,10 +936,38 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 };
 
+static int rcar_gen3_phy_usb2_suspend(struct device *dev)
+{
+	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
+
+	return reset_control_assert(channel->rstc);
+}
+
+static int rcar_gen3_phy_usb2_resume(struct device *dev)
+{
+	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_deassert(channel->rstc);
+	if (ret)
+		return ret;
+
+	ret = rcar_gen3_phy_usb2_init_bus(channel);
+	if (ret)
+		reset_control_assert(channel->rstc);
+
+	return ret;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(rcar_gen3_phy_usb2_pm_ops,
+				rcar_gen3_phy_usb2_suspend,
+				rcar_gen3_phy_usb2_resume);
+
 static struct platform_driver rcar_gen3_phy_usb2_driver = {
 	.driver = {
 		.name		= "phy_rcar_gen3_usb2",
 		.of_match_table	= rcar_gen3_phy_usb2_match_table,
+		.pm		= pm_ptr(&rcar_gen3_phy_usb2_pm_ops),
 	},
 	.probe	= rcar_gen3_phy_usb2_probe,
 	.remove = rcar_gen3_phy_usb2_remove,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
