Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646E5C021B1
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MRNGJfuNiO3/du22sFM/QQ8uvgpcsFyG8KqYpmEgiw=; b=Ll9zcdT7dkBXPH
	SZIhO4Z17GLWJFGE5hhFbsj/HpCxZhIBmUjWierZZk+K2PFySlhEUpGdF5ERdqpZhhnxHlOgQQ2xN
	2Mh2WZY6UFk/ItM2LNtmLW1SJqQ8X/N4w8cu/qfFG7/fi2G0UL1svqs6GHc9W8dYhds2lKuz3p6iv
	r2KP3wX5ctG+Z3sJSMuTS5zsimqKxRJJppucwiYgRiGCOaRV1NaOdNI1gvRE9RG4aImBKnom8E0D9
	w8c2VGVqq0IlEMFlwwA71Ij393UnNsoCpLL8PFV99qkR6uV5udKEcwHPSQOY/GXycWlmCNeZp/ZUa
	3zvv9tvrQci2/f39VwVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmfK-0000000DjjZ-0Upn;
	Wed, 19 Feb 2025 16:11:14 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmcD-0000000Dihc-0hkt
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:08:02 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-ab7430e27b2so1173998566b.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981279; x=1740586079; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xlGt4wExiEL/CIXJbDF0itACKrrgHmIFMrYFUtPey+c=;
        b=KqZNywJ1H/o1T1cglztmGh/8idD/yvfRyZInVtmW93SAEtC3FGUf7zBNVIGFsx6s7H
         zBSyjU6k+RQfkdSSafNfHfYSdQ6P5EbZRUVSRBMlCmDRs02uBCkaSh00dobAEItTF3fo
         7cj6ouTiU4QWsU4eWG+LaglEjTt1pSencOy4wcZ9B3oe50MBljtUxvBgyXFzj5SP9npT
         ZXuroca662rS072WgCALFTRIV6uAv1oudds1Bo+Xg/MjCMkhjAhxSHHHynkL5Gdj0fKQ
         3Q1U96xO7NriI89DsHEfHnWZNyP4/GuItZkzcodnuJ+uacBU8Uua1HHaVtHfNtGG/Gwp
         6wvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981279; x=1740586079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xlGt4wExiEL/CIXJbDF0itACKrrgHmIFMrYFUtPey+c=;
        b=uRsdQApibDm1Xk5EatPhtkOYYO5aggt5nS3FymA13zjtWcRZOTy/VCjGuJ48k4QA7g
         +H4BB4dMx5XPIuELOfHLZ+k2489A+mGipMPPD1pE833U/qTMJ4QPaij6j4me174wzhCK
         WnWNBj6s8uWt1gnlhXnOyB89OOIYptfErbZLT8XFp5dspcgwU19joj2reMRjIAUY8aCT
         1mxF57Mr9UJNvcCPKkZ+LDUN/McwKexsH+q4iiSo963josNdtkXkZVfMWikcb1L6yNPV
         034Jfd6F0r8Z4t6m2YUxFT/XI4pT3KCvoRMRM3redC9IA7bqC0iBzrQN/L92pMrk3T8b
         5DGw==
X-Forwarded-Encrypted: i=1; AJvYcCU0bElhgnojBMvEHA7CP2x6ofRgHGZUO9mrnQqOmgTiHagvUpjpBM5VbrdlwZM521nc1l8ZDC5aGIE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzkc5ZzLewPjiFMlkZGtiS2c+zGc9k7I+vm/SY9AnmZnc4c99Eb
	zTXYuO3AlTd9XvLt8fIz6QeioWVBcCn3AWY+1jZyLjcrt83Z1QeopR4Cf7151r4=
X-Gm-Gg: ASbGncszeJawtKDQZ2aqBgppg9M1KvgtXGer2Zaj/CgXAokOQs8q/Nj+xQbMm5e1p/V
	ArqYGS0aHDx4DZKj6JGemhJLIlHBrLHYjp2nay37zYPhAN+AJQ81etuYRRDsuUvw71RJxYG8MvG
	ZBKM41NF4oIbAl8vAvg9126xbOLLLyB0QvXpNP0+OKXlULrb5nW3iOFEOv6saKCh5RV+XUdY/7k
	GrzGgxY391s2jeUCnucPBAL5rc/9x4KwIMJgw52R+JlCQ4rCnAeWeDJatz7Hk+Z0FaXvYXcgP2n
	p6n563kCq8U44+LnF2e1DbOn8Yk9VNYD2dUa6ufX5Oor
X-Google-Smtp-Source: AGHT+IF44ZngvmvLQTa6/DYd9mBS4nelIO/FTgR44hs+O/p7Fl0s8INvjP10jVJEICLAlDgjE/nKmg==
X-Received: by 2002:a17:907:6d09:b0:ab7:cb84:ecd6 with SMTP id a640c23a62f3a-abb70e0d0ecmr1908734066b.56.1739981279398;
        Wed, 19 Feb 2025 08:07:59 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbc0d0b882sm327791066b.109.2025.02.19.08.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:07:59 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org
Subject: [PATCH RFT 1/5] phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
Date: Wed, 19 Feb 2025 18:07:44 +0200
Message-ID: <20250219160749.1750797-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_080801_208322_E35A6AF2 
X-CRM114-Status: GOOD (  16.21  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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
