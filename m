Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57990C3ABBF
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tERyjAzHxurvS3J48U6DMnTaA/HPKRuGiTbC6shyiUI=; b=TtpntAWLmeyYg7
	+3Z+u5yUqKUYtE0UfmO7la5CNq7TTXaC3PR9P3qnLllgLTMGES1K1qrE6v+3Vsi2Ys8AJ+D7qLVBh
	lqebmN2SGXFVUNtreOnpYEHmSS8g6eSTKO9u93x0h8UxzZz+e5I1mwdox3WeFcTRUBUZIEhu4xeVr
	xyOg5t0qzDTFLX00mOSFpaEQWKBZBdjE/06UOYJ8kDwUZnIRVnoKtK+z6NdduRRxh9xpRbQS5dy3I
	Nkdr4TiIjySTeZvQBJbHaDdooAugax+nEISsymAibqG3fXG5uvy7tLGjzYbh1OBxVTiN5ks/6NmCn
	wypDrgCXZj9yj1IznWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeFp-0000000FTcy-4AcE;
	Wed, 07 May 2025 12:52:05 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeER-0000000FTKa-0vYD
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 12:50:40 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-ace98258d4dso1014950866b.2
        for <linux-phy@lists.infradead.org>; Wed, 07 May 2025 05:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746622238; x=1747227038; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjhb9oVUG8lj7hYYtmkJhzYs0Q2lzrIfIpH+FDRUtb4=;
        b=OxIhBGEaqzf9la5P30tyPLOy4II1kDeD8YFaqEhdXNTPeaeBNi3SfDovtbToXLpgu7
         BNUjL8KidWTtrw/eCUt6DrT06wIZ2l7OuFfhy6BrGtWLUkR9Cq2vQmiQywfK1Ud+Jcju
         kwDEM/JskrLbniel0V9dvqTtwml8AZZRgn22nIp8HG0zS1mpT8EwvuAaQcxlnXQxdAyn
         4SJSpASR62jqydeY3OqL02GvTbpNcVgrlfqYtbIB14LmIg0vCC+XvaFi3NH+9fHTfCyH
         YfVNZi0iFyIegG/cPY6w56n6A8HOhoCTCzlRNVR9WsV/nal0oaLLUsLNsnhPj1UHwUk+
         jGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746622238; x=1747227038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gjhb9oVUG8lj7hYYtmkJhzYs0Q2lzrIfIpH+FDRUtb4=;
        b=boqtjIMikY6eDkgM5IRV1jdMYjWIZkUWvXb3yw3QpiO8l6fPsixb3uIEZ4HX8G3vtf
         IN/GQzyACREI4lvLcFmgkVJYguTjrFHpTSJF/qagP0RwmVBdhm3Quz4ETydPkGtk5Fg0
         DIB9hn66a4XiG4pXpdQAGnMk185OHsqMq/yIQYIsrdeAkdx/iF7Muc+E3qGubpmbEOE6
         Ugo6SGYD0uK6ZkXBLZIljst7XlkcTWW66UGwOUJJ1bI6K/QV8jeUl6wopUZ0XPqGGnZ2
         2IoHNAMgWcryJwDtktzPIC7joslyhoFlPSJOirAewVfByuSInBlXk3QOisai8o+p8ySr
         xaSA==
X-Forwarded-Encrypted: i=1; AJvYcCWqDbfcDiNzpxF+UWuQss95ZxLIrXjl+P51d1St/NHNKpGXy0kkYmmbyJH8vUBqrDXtbqV0v8XppXI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1KXozfqhBQOoRyhJ0K06ce4gBtZk7adn2yzHxlxiBxX3vllb1
	IH0humXPFqqIfTxkG1ZZCgc8q8nU2InTW7Zgs8RKhw+Kl8T/SGWHkmcGRI8AIls=
X-Gm-Gg: ASbGncvtsbLm59tHDE3Hlk78tJakRCdamDG6DyAxej2zopSzPbq2cZ6yXhz90b5EmGY
	Z5VRTSmOs7q7+kGdu0d1wzuTcNr6RhP35+DNeMURwEnLxPDHSSwvk7Vn1aD/6fm66UvicLFBaGv
	GA1Q62UQi3gWIsJeH05nUgR0M0bW/iFxMQjEvU9qzKS4IHLrwlD86IBwbe0EJsp+Hui5t0G9pOX
	vYxgYr/G/emaKKlVAfUDgrqeDB7g+2c5YNbubm6wwWJMRmYzyf/fXfUSFbeYjGpPtUj2BQfWbdU
	x2GoWr39QLi3jDJsI14vm8b97NtA5/OV0Js51g5oKcN3dVOImrYZTQ89diyM7fnQje7PyZA=
X-Google-Smtp-Source: AGHT+IGeR56fcf3ibbnLTGP7y2GNB5PTnIKgbVR+VbLAq/tWAyDh+kKlVjb4q2s7LL9nLtMZbmFZAA==
X-Received: by 2002:a17:907:6ea6:b0:ac7:e5c4:1187 with SMTP id a640c23a62f3a-ad1e8bc319emr239738466b.11.1746622237574;
        Wed, 07 May 2025 05:50:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146fb4sm913182766b.10.2025.05.07.05.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 05:50:37 -0700 (PDT)
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
	stable@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RESEND v3 1/5] phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
Date: Wed,  7 May 2025 15:50:28 +0300
Message-ID: <20250507125032.565017-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_055039_258776_931312AD 
X-CRM114-Status: GOOD (  16.19  )
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

It has been observed on the Renesas RZ/G3S SoC that unbinding and binding
the PHY driver leads to role autodetection failures. This issue occurs when
PHY 3 is the first initialized PHY. PHY 3 does not have an interrupt
associated with the USB2_INT_ENABLE register (as
rcar_gen3_int_enable[3] = 0). As a result, rcar_gen3_init_otg() is called
to initialize OTG without enabling PHY interrupts.

To resolve this, add rcar_gen3_is_any_otg_rphy_initialized() and call it in
role_store(), role_show(), and rcar_gen3_init_otg(). At the same time,
rcar_gen3_init_otg() is only called when initialization for a PHY with
interrupt bits is in progress. As a result, the
struct rcar_gen3_phy::otg_initialized is no longer needed.

Fixes: 549b6b55b005 ("phy: renesas: rcar-gen3-usb2: enable/disable independent irqs")
Cc: stable@vger.kernel.org
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- collected tags

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 33 ++++++++++--------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 775f4f973a6c..46afba2fe0dc 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -107,7 +107,6 @@ struct rcar_gen3_phy {
 	struct rcar_gen3_chan *ch;
 	u32 int_enable_bits;
 	bool initialized;
-	bool otg_initialized;
 	bool powered;
 };
 
@@ -320,16 +319,15 @@ static bool rcar_gen3_is_any_rphy_initialized(struct rcar_gen3_chan *ch)
 	return false;
 }
 
-static bool rcar_gen3_needs_init_otg(struct rcar_gen3_chan *ch)
+static bool rcar_gen3_is_any_otg_rphy_initialized(struct rcar_gen3_chan *ch)
 {
-	int i;
-
-	for (i = 0; i < NUM_OF_PHYS; i++) {
-		if (ch->rphys[i].otg_initialized)
-			return false;
+	for (enum rcar_gen3_phy_index i = PHY_INDEX_BOTH_HC; i <= PHY_INDEX_EHCI;
+	     i++) {
+		if (ch->rphys[i].initialized)
+			return true;
 	}
 
-	return true;
+	return false;
 }
 
 static bool rcar_gen3_are_all_rphys_power_off(struct rcar_gen3_chan *ch)
@@ -351,7 +349,7 @@ static ssize_t role_store(struct device *dev, struct device_attribute *attr,
 	bool is_b_device;
 	enum phy_mode cur_mode, new_mode;
 
-	if (!ch->is_otg_channel || !rcar_gen3_is_any_rphy_initialized(ch))
+	if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
 		return -EIO;
 
 	if (sysfs_streq(buf, "host"))
@@ -389,7 +387,7 @@ static ssize_t role_show(struct device *dev, struct device_attribute *attr,
 {
 	struct rcar_gen3_chan *ch = dev_get_drvdata(dev);
 
-	if (!ch->is_otg_channel || !rcar_gen3_is_any_rphy_initialized(ch))
+	if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
 		return -EIO;
 
 	return sprintf(buf, "%s\n", rcar_gen3_is_host(ch) ? "host" :
@@ -402,6 +400,9 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	void __iomem *usb2_base = ch->base;
 	u32 val;
 
+	if (!ch->is_otg_channel || rcar_gen3_is_any_otg_rphy_initialized(ch))
+		return;
+
 	/* Should not use functions of read-modify-write a register */
 	val = readl(usb2_base + USB2_LINECTRL1);
 	val = (val & ~USB2_LINECTRL1_DP_RPD) | USB2_LINECTRL1_DPRPD_EN |
@@ -465,12 +466,9 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	writel(USB2_SPD_RSM_TIMSET_INIT, usb2_base + USB2_SPD_RSM_TIMSET);
 	writel(USB2_OC_TIMSET_INIT, usb2_base + USB2_OC_TIMSET);
 
-	/* Initialize otg part */
-	if (channel->is_otg_channel) {
-		if (rcar_gen3_needs_init_otg(channel))
-			rcar_gen3_init_otg(channel);
-		rphy->otg_initialized = true;
-	}
+	/* Initialize otg part (only if we initialize a PHY with IRQs). */
+	if (rphy->int_enable_bits)
+		rcar_gen3_init_otg(channel);
 
 	rphy->initialized = true;
 
@@ -486,9 +484,6 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
 
 	rphy->initialized = false;
 
-	if (channel->is_otg_channel)
-		rphy->otg_initialized = false;
-
 	val = readl(usb2_base + USB2_INT_ENABLE);
 	val &= ~rphy->int_enable_bits;
 	if (!rcar_gen3_is_any_rphy_initialized(channel))
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
