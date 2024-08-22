Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E0CFC531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnbaQkwhDV85pXBZkvpxJ1zpbcoNjOhK0g5sCoxgd+w=; b=UKikKd9aJlr5Qo
	GIb4C+rUFkNQo3X91O+hgU8AbtOT76ksWZ/QGMpwDsJHuBQJRdjhTK/1r2Zr7jvZiv/T2C1FwWcvy
	2z9XpR+1A0ciMwHvpd95ifGtHt4mpJM7X3Wuf8NiByEtpM+UY1GYrPfuhLvEs82bTaI8u04pS+FkD
	4p7yQVjsXxeCtmYuvhXudHnUcSFjpsoSAtPsDToIytQrXdTiP+fEGT59slZpSB6vvjLUDSWedlNQF
	q2whP1VPazH9mCoG8CN5c6dsqiFrH6EZELJCTeGx8NNGGxwlWyVzSdEZhcpIn1W77gNMHZlUqUSYO
	+2Tl3qQg3WhY/kQekTTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9B-0000000DRiY-3MaG;
	Thu, 22 Aug 2024 15:54:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jg-0000000DKoS-1nZw
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:30 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a866cea40c4so118539966b.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340506; x=1724945306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZgJzIoJ7odKtUR1tmJxpafPTYpDoiiIktLX51hzayU4=;
        b=CesydzBRhCsY/v5gMT5YNHo6vzba3JaknV0xV6loFNgeDcWTzKHrP5/BU+9+j6kUms
         7MGLiiicDKKzQRn0h5NnhjJemank69sMajg8P+myPqaYYInn3pk/wr4ebS6rv8UTfcja
         I+lEK3WMg1exT+pJhHWRXwioYtFNhXjKkAJKNsZY/ZlHHONdwInXHQKuvpB11XprRlCW
         Z6nzM0mLAVrC5NKBKF38YpUgvoEkH9eXpXm2Oa+4yYZK7dgzaLZvWuJV6W4BYHPsiOs7
         W7YsFpHtYIVFxkxdchhCgDDWccK6Km8q70mFU6FlDTW3i/Rb8BVQQW9CqE3tSQxf1hp8
         RnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340506; x=1724945306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZgJzIoJ7odKtUR1tmJxpafPTYpDoiiIktLX51hzayU4=;
        b=Bsf0f+md9xlsvF46snjyWuRo7wvj8WXSX1lEDWsQ0/qUFFzF70X09ZB4o2mhQo3eOX
         5Rsv/0JopPJnAMAWfBdWeA+iJ5IUtNV2tam4ncOhGrKXHzA7AZCPClXSmemTjcPWfozf
         iTNcHAQgtc9OT4kpnNlj1Rw0ybAVFmoeYj1PpcGl+TlBFTlezCLLteEAXEHli3V7DGcJ
         Yme0GMHiF8jMEBW3MKlRBbns8T3aioTzGVeqOct4VXwrL3EHupeLdtYJRgYUsIOOBC9W
         7T0l952RYKXpW02V6YComQNIe34To2SH5ShxPzt7yKCEty2QstLubpBBPTm3tBzBOCa1
         HTjQ==
X-Gm-Message-State: AOJu0Yx1SpLgBcmURK7WBYqlYL0Rs70IDhLnJGeaJnjxSAe/n4hbrTWK
	oNDtWz+djITfQQAd/wdAobWzs6jHDQEU7WoOoPu7iCioOf5hq9ENBKfbVvFq3vw=
X-Google-Smtp-Source: AGHT+IFeGPZpt21jhTv4W0bfHajPG9OGuBMYaiwjLe2EM/CfoluWSL4gm6uew0mp9CeRcXzWktBU8w==
X-Received: by 2002:a17:907:9688:b0:a86:7a23:1292 with SMTP id a640c23a62f3a-a867a23275amr475672566b.66.1724340506359;
        Thu, 22 Aug 2024 08:28:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:25 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 05/16] soc: renesas: sysc: Move RZ/G3S SoC detection on SYSC driver
Date: Thu, 22 Aug 2024 18:27:50 +0300
Message-Id: <20240822152801.602318-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082828_501796_5C7B6268 
X-CRM114-Status: GOOD (  14.22  )
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

Now that we have a driver for SYSC driver for RZ/G3S move the SoC detection
for RZ/G3S in SYSC driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/soc/renesas/renesas-soc.c | 12 ---------
 drivers/soc/renesas/rzg3s-sysc.c  | 45 +++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 172d59e6fbcf..425d9037dcd0 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -71,10 +71,6 @@ static const struct renesas_family fam_rzg2ul __initconst __maybe_unused = {
 	.name	= "RZ/G2UL",
 };
 
-static const struct renesas_family fam_rzg3s __initconst __maybe_unused = {
-	.name	= "RZ/G3S",
-};
-
 static const struct renesas_family fam_rzv2h __initconst __maybe_unused = {
 	.name	= "RZ/V2H",
 };
@@ -176,11 +172,6 @@ static const struct renesas_soc soc_rz_g2ul __initconst __maybe_unused = {
 	.id     = 0x8450447,
 };
 
-static const struct renesas_soc soc_rz_g3s __initconst __maybe_unused = {
-	.family = &fam_rzg3s,
-	.id	= 0x85e0447,
-};
-
 static const struct renesas_soc soc_rz_v2h __initconst __maybe_unused = {
 	.family = &fam_rzv2h,
 	.id     = 0x847a447,
@@ -410,9 +401,6 @@ static const struct of_device_id renesas_socs[] __initconst __maybe_unused = {
 #ifdef CONFIG_ARCH_R9A07G054
 	{ .compatible = "renesas,r9a07g054",	.data = &soc_rz_v2l },
 #endif
-#ifdef CONFIG_ARCH_R9A08G045
-	{ .compatible = "renesas,r9a08g045",	.data = &soc_rz_g3s },
-#endif
 #ifdef CONFIG_ARCH_R9A09G011
 	{ .compatible = "renesas,r9a09g011",	.data = &soc_rz_v2m },
 #endif
diff --git a/drivers/soc/renesas/rzg3s-sysc.c b/drivers/soc/renesas/rzg3s-sysc.c
index e664d29ce5c3..1dd48c7255d1 100644
--- a/drivers/soc/renesas/rzg3s-sysc.c
+++ b/drivers/soc/renesas/rzg3s-sysc.c
@@ -6,10 +6,16 @@
  */
 
 #include <linux/auxiliary_bus.h>
+#include <linux/io.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/sys_soc.h>
 
 #include <linux/soc/renesas/rzg3s-sysc-reset.h>
 
+#define RZG3S_SYS_LSI_DEVID		0xa04
+#define RZG3S_SYS_LSI_DEVID_REV		GENMASK(31, 28)
+
 /**
  * struct rzg3s_sysc - SYSC private data structure
  * @base: base address
@@ -71,8 +77,14 @@ static int rzg3s_sysc_reset_probe(struct rzg3s_sysc *sysc, const char *adev_name
 
 static int rzg3s_sysc_probe(struct platform_device *pdev)
 {
+	const char *soc_id_start, *soc_id_end, *compatible;
+	struct soc_device_attribute *soc_dev_attr;
 	struct device *dev = &pdev->dev;
+	struct soc_device *soc_dev;
 	struct rzg3s_sysc *sysc;
+	char soc_id[32] = {0};
+	u32 devid, revision;
+	u8 size;
 
 	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
 	if (!sysc)
@@ -85,6 +97,39 @@ static int rzg3s_sysc_probe(struct platform_device *pdev)
 	sysc->dev = dev;
 	spin_lock_init(&sysc->lock);
 
+	compatible = of_get_property(dev->of_node, "compatible", NULL);
+	if (!compatible)
+		return -ENODEV;
+
+	soc_id_start = strchr(compatible, ',') + 1;
+	soc_id_end = strchr(compatible, '-');
+	size = soc_id_end - soc_id_start;
+	if (size > 32)
+		size = 32;
+	strscpy(soc_id, soc_id_start, size);
+
+	soc_dev_attr = devm_kzalloc(dev, sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = "RZ/G3S";
+	soc_dev_attr->soc_id = devm_kstrdup(dev, soc_id, GFP_KERNEL);
+	if (!soc_dev_attr->soc_id)
+		return -ENOMEM;
+
+	devid = readl(sysc->base + RZG3S_SYS_LSI_DEVID);
+	revision = FIELD_GET(RZG3S_SYS_LSI_DEVID_REV, devid);
+	soc_dev_attr->revision = devm_kasprintf(dev, GFP_KERNEL, "%u", revision);
+	if (!soc_dev_attr->revision)
+		return -ENOMEM;
+
+	dev_info(dev, "Detected Renesas %s %s Rev %s\n", soc_dev_attr->family,
+		 soc_dev_attr->soc_id, soc_dev_attr->revision);
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev))
+		return PTR_ERR(soc_dev);
+
 	return rzg3s_sysc_reset_probe(sysc, "reset", 0);
 }
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
