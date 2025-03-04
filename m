Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B3CC021B8
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tERyjAzHxurvS3J48U6DMnTaA/HPKRuGiTbC6shyiUI=; b=cPG17iVm+NZ573
	w/UQo65iJCtFXGvCy8XiDpimABseWIuZMISZhd77KGek9j8i5YOUeh3hdbhbc6yQX57a0TGm+Wft8
	WJn2gzboi1vgzXo8xWSQ3zXP0Ew8kTDLj9VSjzjVTD8Ll7m57XENb09WJQAp+0aVCOowEQ5Xngq/D
	I+qWRif36QR39mqDGp9NjvbfZvU28vMFOhM036m9pxMm4QQn+ADdJRBWr7NodX3sZRtAOPEs9oqN8
	37e/4LmZ79cHL7+1ePArkeF9yaQtPYbApPGwvqZBm6jPVW0JVSR+AToiD8LBDlNjn3CmFt5z/FQwG
	ngS0mXk6af0e17x+nO9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpR4o-00000004Wcl-13Ce;
	Tue, 04 Mar 2025 12:08:46 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPpC-00000004GLE-0npd
	for linux-phy@lists.infradead.org;
	Tue, 04 Mar 2025 10:48:35 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-39104c1cbbdso1108946f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 02:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741085312; x=1741690112; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjhb9oVUG8lj7hYYtmkJhzYs0Q2lzrIfIpH+FDRUtb4=;
        b=S2y4Sq8GNabUsqQOoT6/VGKIf/LDwJvkayK8uLTIi+Lnuew5Ntdo0KMb8cqkT/RtFX
         GFjUSQxExI20+6DNLLQn4lPbpaS/IQ0YK5KKNlk7fTzsfSClOg7ORuQhGkJBVyxCT1Di
         h1aA4vKnLDd4tt32Oqg1seZ8tsfaIf4t6uGlXI96W7y5vxjMBwNHrbYs3P58EHpNUeSh
         g+B6aszUvrw/7lRw8E2MggrGxb0sBLNufWbM7nOF/Vp/obDHL80JgeVZ33dMuufjTFK6
         MfIGCk5xPoyMczWn5qM95YCblLO8FMGiXIuFNHWybsf2K61fiGovHfJfkEvySH1DFPBT
         INvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085312; x=1741690112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gjhb9oVUG8lj7hYYtmkJhzYs0Q2lzrIfIpH+FDRUtb4=;
        b=SLPtKn5om0HZTPjv+KK0CFNuzkik0fTJ+YjY7hzVk/b2NdO2HWpqRw+7W6vHT4+xc4
         LZbheGSavMWGXpBHARSyGfMQn5+cRe3YDNMB/+T3csgrpsY7ln2C4mQFQTobKs64/lrX
         i/WPp8ibKdA+TIOk3syZegURf6DbVSf1peZ6UIG4FiuzBlHH/EACt5YGUQo8ifpTLb/9
         wC+Z6/2ie+VmYrZxsaB+k0e4hB9OAVjjFcIoPODKMkMerQQlrEOQ2Ox5I+A5wPo97rm0
         p9a5N9L3W7LR+QanASRP5n5xhOXXlSA1E+ATUjodDlIT76GcmZxaOsoVrdxYAV2SQtU1
         xfmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJWwFWcTcjbN6CBeklfGiYcSivDSxQW2o3KdMBCLOdDbLcZJxQL62lMvstFfBXqt0b3YaEwDqZf3E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuGcfssqcHMP5jxUTSFswY+A+09svEpnc14zkyIC91P8P58tp4
	rW1K+3qwcjTSlyVN6xVK/NkRJZI1eoaS+QvVOL9qdDZJQhIOtvcS96YUVJEcrKU=
X-Gm-Gg: ASbGncvQsyeLtkBnKhSFfXxOTAdS3szhqJaxpYAdJ7JoYvhjLO9DknYvV1ieaVybcto
	FivBft9dK1X3rhly13W/cOKg6yYVIwQHwrLEMw85iQodIbefMzd+JrMPA9Y80XVVf+04Bm4oJ5e
	8JBVFpFsnlXZJkJByVPdKHehSa+6RxfittJtGNRBcHqgYF65xf9tsJgeeIOjJSUB692pdrpSneI
	VnQaX8JJKRpvDnRRbS7QjH0GJWNVo2iuyycfuP2+B1oK47Mx3QU+pjDG5Rfc/CEcnUhHM8aC2gf
	MfsdHjR6+KVi719NgcrY2JmcVn2OBS/LuoEINUApWkMnR0/v2SLTMBYcoxgeil1hb+5YsAmvpPM
	=
X-Google-Smtp-Source: AGHT+IHcts+Ef7abJwxoLgkZw98QU7H40GbI3oB8YyXxlG8MEQq/0M2R29xPjCZcGAJReffYT0xshg==
X-Received: by 2002:a5d:64a6:0:b0:390:e889:d1d7 with SMTP id ffacd0b85a97d-390ec7cc71amr13636577f8f.13.1741085312528;
        Tue, 04 Mar 2025 02:48:32 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a38sm17445161f8f.75.2025.03.04.02.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:48:32 -0800 (PST)
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
	stable@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 1/5] phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
Date: Tue,  4 Mar 2025 12:48:22 +0200
Message-ID: <20250304104826.4173394-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024834_231451_892B9023 
X-CRM114-Status: GOOD (  16.86  )
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
