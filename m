Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 332E7C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW6oAtBCdbsNAeNkeBhmoCOAUSMfjZqo0suGDhbWOZE=; b=gSq6Ej33WDjJp5
	AqbpYmm8Xs+IVFiBvmVvmT4phJLC8hSjO9gbMtyIyiFLRLbHvpBVmgRH28GHOvoe3r9H+6P/Jf2gR
	z//FdKtfsoJ+STpJpYudzLsgU4hhC5KuyUMmCEh1w1Wvksbe/pzLK3kMF+li58o6r8dT15CD60icB
	ofnuocS4MDZjfVgpCVpPybq+7cCFKsAMmCBJQEUO14C83at7sTca97jY4EWXtaDxa3xBYVyxj40+Q
	urioHIvj3lWZTnTEza//QqiSKHhaQDzCrhnIFD9xw2Lr0xYyhMQTo9LuJQ+ojYo7MwxosoKZ/9Lew
	glkYxNuAzu4JBP7TEJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtgx-0000000H98R-3xE4;
	Tue, 25 Feb 2025 12:05:39 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmsej-0000000Gvln-32nl
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:59:18 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-438a39e659cso35555525e9.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 02:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740481156; x=1741085956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kH7eCOhtqxJ18+f2Lrbq8HST1vCFK6UWg0TuF7cMRvY=;
        b=JNUSQP4/Ftj8EoUotzTbLHjhPXr+bYAIQIfI1xm6ZC6PEHvUHGLjcP1cJ5PKyY+kN1
         2EoLfc35G1qXXL+6n5V9xx59mN/o7G1Zb/PmnvILjpJPIGxsF55QdcvGcI97+Vramylx
         N/1YXzfuVrBVVaRpF5K7H6t3FbWyaJIWfP1MUgv1StzsUXud5LIWmB1bvwVCytDxC2M4
         5upi3tS1n60dXbU5ExWz06Lze6+jQ6sPDOsExANkhM6BNgFZ3RsOutJ0ddmzBs6VZ9sS
         G1sf3E9hdJB36R50O24JKxbNuPHk3Ii+GMLfS//s6tHTZMrPMcEHXAqpo7Lg5pqm2HJW
         YnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481156; x=1741085956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kH7eCOhtqxJ18+f2Lrbq8HST1vCFK6UWg0TuF7cMRvY=;
        b=qYzcDzDIPkcBv/jNf6e/Br1v5zErpLx+LEpQaPFXR8cSK5Idh1Gz9OI7wNCZkJdGc1
         3SFontzb84hHz2NFZ0jkRluNnOGi+SmiFpqPTuiUgA0ak8zy2GC04UiQuvsXb+ESpek5
         RVtI61b7xiFOH9RgE8nIyS18gDonfqabqBGwZ7sviyAFRJb4zzyrRF1wqJ39eSi3M1Nc
         pdL/yeiIH/CQGrAIgny3E4btF1KkkfngZ0WvkVG+xvSqrS+hvuI40j5iJ6PdL80Wm5sX
         XWiurH1w7DYJtgCmjNaBgefJnwqL5pl2gHYwTrwyXz9qtAmNsJTHnwqCiwLpeUEVwQ6d
         5pAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx2RMVmnAz3bflbQS4C3jx+xoU3PxoqV6f7Jr8CpJd34SQKMpBxT4Orjg3oU2/d8WNAsJymTrSw7U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIJlF4C3xRWAy3//D7g5eCxYys4O/eUzNEE7lbTEG76+VTsWP+
	rBL/V7/59U1raojqB8MfQeyqBfw1OMMaoIDt+hkTOYNHzy8kq4Rt20nzDE8/n5g=
X-Gm-Gg: ASbGncuHzYBjoy2bcQf6VnfiGKoE7y2kS0Ms3f96sMG1m3NmCAE57DPVfJSRgvYpBl6
	ztFA2ua4PT7Oa0baZ8bwuHCvJAJVFmdjYHrvVqjWf5Q2K9uCu9LQ8zrmq3S6ZRm+POUyKWF1By3
	/82jQEcIF63DoiE7fFcLrnTduFnJD2zdXUzz3tjSaxUhLg++NPl3tNeEOTCqCPwU6xOOp8TVP3W
	xjWhhx6WXWzD7IqCiuI6vbDZW7uljn/dGq84jEnt+fuJjRfo7hXMN1AGhHPOxO4XC0nTfmo84Uc
	Hs2Uoq1csN7FpOaoDwnXfobIfcMUIzYwcGHkDQsmcFMtj6x3BbVg0tQ=
X-Google-Smtp-Source: AGHT+IFdOUFXqI73ftpxREcI5cD1cyJ6UWKG6ZRltd1AfX3lyAlJrJ3iiVYWT+u+hgxLgX7yWWhCJw==
X-Received: by 2002:a05:600c:4507:b0:439:8e95:795b with SMTP id 5b1f17b1804b1-439aebf38b2mr148209225e9.31.1740481155909;
        Tue, 25 Feb 2025 02:59:15 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm12588815e9.0.2025.02.25.02.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:59:15 -0800 (PST)
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
	stable@vger.kernel.org
Subject: [PATCH v2 1/5] phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
Date: Tue, 25 Feb 2025 12:59:03 +0200
Message-ID: <20250225105907.845347-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025917_771726_D0D760DE 
X-CRM114-Status: GOOD (  16.56  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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
