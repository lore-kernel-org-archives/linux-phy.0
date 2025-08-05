Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E47CA0EC0
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoOkS/IbvwzJR2kbx4Rhbhg/tSNbhpLTHu7c6hHfIpw=; b=OD1037I3IOCQxJ
	nJxCr1K+56lcmAK2YDq6v5Acae6ndF9R95gqSAYGlrokKoSBuvia4NWtwRnQkEHBMf/z0sVz1GILr
	Aj7vDKRcfQx7fFDHqqxBzoMQw1sYLJXLHt9advbzr+brEJ8Iv4iM7XinoVycncWTQQP3h4Za07qTv
	ppBuFm2dpal4FdV4xj3VAfwvX1OqwZr2WDD+SbEJe9u3VD5g/hNPRPDl/X3+SKywK1mKRADa0Yufq
	Emee98+N9zcuzQi6eITIcv+vD76axfMJ1PqfgRIXypoQJIwpTRAwysbQMwCboOTrLhzMeD1/PikNy
	iT3tplNXmlVifuZoSUVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH02-0000000Ck68-2IUb;
	Tue, 05 Aug 2025 12:42:38 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGjd-0000000ChYk-2r1y
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:42 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-458bc3ce3beso18799305e9.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396740; x=1755001540; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lThia6UNIC5cwjXIaCqLK6IgfhMNO2J2y+mXQI59//E=;
        b=AlwgB+eBqA/Vy9KovGyX35RUOkSShhMOtyEPmm0FFYd6jj7HjFBHM/NlyeE+ZhO1lB
         dFjgaQ2eHq29OFoJj/Gw/oZpvRLno9/PWbPB+qJDrRr/6aR4/0ucH02o1Cn8hv+tm9Yz
         3SHWDp2eVVdscW7yhIQ/0y6JdgBa7KIze8FcViYwKIWQQcVnSF9S9UQpZlfu5kfE4L3X
         poPMY5lOjoVjV8nWb5BVFTlKypXj2QLz0gxFCqNyGIa5+yjucpGule2k+RPU5xoQKiY7
         yf1hqUhmKMad9cMln3Zu4BUVQ4SDt6MGGRR/dLEl4TWlpVN5DbIhP5UpyAQfZ07fWVqc
         d2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396740; x=1755001540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lThia6UNIC5cwjXIaCqLK6IgfhMNO2J2y+mXQI59//E=;
        b=DAD9lXKo4BO2sUciNd5MIuXBo3enYz/c4TD+4+FmEIHIz2WoYqofLNwpN5EcRWpIzF
         xxw65qlU7YrNl3jqvvngpCd3bSyABsIJ3WZNwN6mFzgivG1Z+utYfiVrFx6nhIa1uHZ/
         bJ6UM/t3ecmKPCgSD6UR3G8aCXZQ5ePBgHVbxRf6cvIJLQ1rXBUmVRkwoAIvOEWD+Otq
         +PhYVXGFZFRhSl1abtCmYlBIP7yb3Mq0foh1Bchtl036l9lxNeRn5NaFmO0JrBLrMBWb
         w07mjdF8sbgxt9u+z0Sy88B4XS5SyrRpm/I9+Wf4DeWgnr/fUcOzMlGlg0yfXGRylHe4
         3abg==
X-Gm-Message-State: AOJu0YyiUNkI7s33XJgnhM3Hg/JPbKxd/wPncl7IPSlAbB+x4CNNWoF8
	MrVIf12tJ4uebRVSBLYyccT4v5Gg0HMv+jqxzxjpLdsX8PuOi6vufeL9
X-Gm-Gg: ASbGncs2FoR03p6Lm+DsnB1ABFWbI0udK4bq6YXcMFpau6K7Yr7LiaHxx47QDhMfp2h
	pcLP+ipRx1X6inxFz5NrPPuJZFg0C8LJZ4/kqMnvCrsEEHVKJqGPjpqeEnO2E3FelONW97T7x4/
	HLbYOYM7bCqcc8dJF8/9GGsZvCnxkuC9tz0yZ4goWzKAUfoIplNhkgqjavshV0HjUcxRFbLIyjY
	o9fE9G51uhKbRxCpVUkevYcKFzNFgJs5prtUPeVwA1Aymvd3IjT8SFn2oXM645z6z0ShNrU2OyP
	zMZ81xD4PtVgelm4ibkK7UsEsEwX2UKjhXcn4/iXmU/+J/Og8PXVeSy/s+GHHOPi/VsXHc9a70a
	91WibGzyBqK7sheRm9WGA9wsYsRvWp9y9FTmvqesDE5HmMcpzNSXI1iT/lw0N+cnV8/C2zOGOVg
	==
X-Google-Smtp-Source: AGHT+IGXxBUU9vuUvHTKoYKPkNOeZohJuXOS7PEmwNsW0gcCJ8QGrpLu3vrLX/3S0AcGf/z2nw5m1g==
X-Received: by 2002:a05:6000:1445:b0:3b7:8ddc:87a1 with SMTP id ffacd0b85a97d-3b8d946502cmr8692011f8f.4.1754396740034;
        Tue, 05 Aug 2025 05:25:40 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:39 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
Date: Tue,  5 Aug 2025 13:25:28 +0100
Message-ID: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052541_741223_DC51D67A 
X-CRM114-Status: GOOD (  20.21  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add initial support for the Renesas RZ/T2H SoC to the R-Car Gen3 USB2 PHY
driver. The RZ/T2H SoC requires configuration of additional
hardware-specific bits for proper VBUS level control and OTG operation.

Introduce the `vblvl_ctrl` flag in the SoC-specific driver data to enable
handling of VBUS level selection logic using `VBCTRL.VBLVL` bits. This is
required for managing the VBUS status detection and drive logic based on
SoC-specific needs.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 85 ++++++++++++++++++++++--
 1 file changed, 78 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index ea387941c6f7..bc841982a19a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -69,13 +69,20 @@
 #define USB2_COMMCTRL_OTG_PERI		BIT(31)	/* 1 = Peripheral mode */
 
 /* OBINTSTA and OBINTEN */
+#define USB2_OBINTSTA_CLEAR		GENMASK(31, 0)
 #define USB2_OBINT_SESSVLDCHG		BIT(12)
 #define USB2_OBINT_IDDIGCHG		BIT(11)
+#define USB2_OBINT_VBSTAINT		BIT(3)
 #define USB2_OBINT_IDCHG_EN		BIT(0) /*  RZ/G2L specific */
 
 /* VBCTRL */
+#define USB2_VBCTRL_VBSTA_MASK		GENMASK(31, 28)
+#define USB2_VBCTRL_VBSTA_DEFAULT	2
+#define USB2_VBCTRL_VBLVL_MASK		GENMASK(23, 20)
+#define USB2_VBCTRL_VBLVL(m)		FIELD_PREP_CONST(USB2_VBCTRL_VBLVL_MASK, (m))
 #define USB2_VBCTRL_OCCLREN		BIT(16)
 #define USB2_VBCTRL_DRVVBUSSEL		BIT(8)
+#define USB2_VBCTRL_SIDDQREL		BIT(2)
 #define USB2_VBCTRL_VBOUT		BIT(0)
 
 /* LINECTRL1 */
@@ -88,6 +95,7 @@
 /* ADPCTRL */
 #define USB2_ADPCTRL_OTGSESSVLD		BIT(20)
 #define USB2_ADPCTRL_IDDIG		BIT(19)
+#define USB2_ADPCTRL_VBUSVALID		BIT(18)
 #define USB2_ADPCTRL_IDPULLUP		BIT(5)	/* 1 = ID sampling is enabled */
 #define USB2_ADPCTRL_DRVVBUS		BIT(4)
 
@@ -138,6 +146,7 @@ struct rcar_gen3_phy_drv_data {
 	bool no_adp_ctrl;
 	bool init_bus;
 	bool utmi_ctrl;
+	bool vblvl_ctrl;
 	u32 obint_enable_bits;
 };
 
@@ -201,7 +210,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 val;
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	if (ch->drvdata->no_adp_ctrl) {
+	if (ch->drvdata->no_adp_ctrl || ch->drvdata->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
@@ -284,6 +293,21 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
 
 static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 {
+	if (ch->drvdata->vblvl_ctrl) {
+		bool vbus_valid = false;
+		bool device = false;
+
+		device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
+		vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
+
+		if (device && vbus_valid)
+			return true;
+		else if (!device && vbus_valid)
+			return false;
+
+		return !(device && !vbus_valid);
+	}
+
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
@@ -419,11 +443,20 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	writel(val, usb2_base + USB2_LINECTRL1);
 
 	if (!ch->drvdata->no_adp_ctrl) {
-		val = readl(usb2_base + USB2_VBCTRL);
-		val &= ~USB2_VBCTRL_OCCLREN;
-		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
-		val = readl(usb2_base + USB2_ADPCTRL);
-		writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
+		if (ch->drvdata->vblvl_ctrl) {
+			val = readl(usb2_base + USB2_VBCTRL);
+			val = (val & ~USB2_VBCTRL_VBLVL_MASK) | USB2_VBCTRL_VBLVL(2);
+			writel(val, usb2_base + USB2_VBCTRL);
+			val = readl(usb2_base + USB2_ADPCTRL);
+			writel(val | USB2_ADPCTRL_IDPULLUP | USB2_ADPCTRL_DRVVBUS,
+			       usb2_base + USB2_ADPCTRL);
+		} else {
+			val = readl(usb2_base + USB2_VBCTRL);
+			val &= ~USB2_VBCTRL_OCCLREN;
+			writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
+			val = readl(usb2_base + USB2_ADPCTRL);
+			writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
+		}
 	}
 	mdelay(20);
 
@@ -433,6 +466,23 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	rcar_gen3_device_recognition(ch);
 }
 
+static void rcar_gen3_configure_vblvl_ctrl(struct rcar_gen3_chan *ch)
+{
+	void __iomem *usb2_base = ch->base;
+	u32 val;
+
+	if (!ch->drvdata->vblvl_ctrl)
+		return;
+
+	val = readl(usb2_base + USB2_VBCTRL);
+	if ((val & USB2_VBCTRL_VBSTA_MASK) ==
+	    FIELD_PREP_CONST(USB2_VBCTRL_VBSTA_MASK, USB2_VBCTRL_VBSTA_DEFAULT))
+		val &= ~USB2_VBCTRL_VBLVL_MASK;
+	else
+		val |= USB2_VBCTRL_VBLVL(USB2_VBCTRL_VBSTA_DEFAULT);
+	writel(val, usb2_base + USB2_VBCTRL);
+}
+
 static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 {
 	struct rcar_gen3_chan *ch = _ch;
@@ -450,8 +500,12 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 		status = readl(usb2_base + USB2_OBINTSTA);
 		if (status & ch->drvdata->obint_enable_bits) {
 			dev_vdbg(dev, "%s: %08x\n", __func__, status);
-			writel(ch->drvdata->obint_enable_bits, usb2_base + USB2_OBINTSTA);
+			if (ch->drvdata->vblvl_ctrl)
+				writel(USB2_OBINTSTA_CLEAR, usb2_base + USB2_OBINTSTA);
+			else
+				writel(ch->drvdata->obint_enable_bits, usb2_base + USB2_OBINTSTA);
 			rcar_gen3_device_recognition(ch);
+			rcar_gen3_configure_vblvl_ctrl(ch);
 			ret = IRQ_HANDLED;
 		}
 	}
@@ -484,6 +538,13 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	if (rphy->int_enable_bits)
 		rcar_gen3_init_otg(channel);
 
+	if (channel->drvdata->vblvl_ctrl) {
+		/* SIDDQ mode release */
+		writel(readl(usb2_base + USB2_VBCTRL) | USB2_VBCTRL_SIDDQREL,
+		       usb2_base + USB2_VBCTRL);
+		udelay(250);
+	}
+
 	if (channel->drvdata->utmi_ctrl) {
 		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
 		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
@@ -613,6 +674,12 @@ static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
 	.obint_enable_bits = USB2_OBINT_IDCHG_EN,
 };
 
+static const struct rcar_gen3_phy_drv_data rz_t2h_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.vblvl_ctrl = true,
+	.obint_enable_bits = USB2_OBINT_IDCHG_EN | USB2_OBINT_VBSTAINT,
+};
+
 static const struct rcar_gen3_phy_drv_data rz_v2h_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = true,
@@ -645,6 +712,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,usb2-phy-r9a09g057",
 		.data = &rz_v2h_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a09g077",
+		.data = &rz_t2h_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,rzg2l-usb2-phy",
 		.data = &rz_g2l_phy_usb2_data,
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
