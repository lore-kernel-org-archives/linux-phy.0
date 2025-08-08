Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC293CA0EC0
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWUXCrzJSnoMoE8j8eJZAd+IKIceK8G/YqZcvJ44MNk=; b=D1V+WHulYzatxv
	5Y+sW56fs6xEfe2waUZ/TaIxNWK5osnxWQvsf8WlF8ADJwHTpGAvmrovAEcA+LfFvf/AzEpytouR0
	/nXnh4K7ovU7v31MVDpXx4wkcM7BY5iT3foNslb6++YiYzsSAbA5r1bN/eCZCYSATOSKlnXJ831FG
	z0rQBPaY3+Vh4LkgjN1CbiCCBFNJON3guBIQj477w0oWG6V44pib2u6ARZge8n7yqg9yms+oL0+f8
	WTXVQyNIWyhx766McgDscVqJNsi7rpGVROE7NZTU0GFXPBTHEC6PBD1ZDcqlvMoLGSaU/l0h3stY+
	PRQvn8ExFpYNT1llAT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0i-00000003kg7-1wk5;
	Fri, 08 Aug 2025 21:52:24 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0f-00000003ke9-1l49
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:22 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3b7920354f9so2107642f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689940; x=1755294740; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvS/66ZRcxV6VQy7PbjyUhwNCw/ZPjnx5EiNbfGEtK0=;
        b=T2uqQpqhh/TEsq3sPTzSVwct5VwsRlh+0FLUte7YNWQXjYO5TVvxITVnL1g2zryW5u
         IGbRtsxUP8GeffPzSA5AAPeKPmyniQ3/59OqKgCm9TwMiWclspYgUI4NwNbJWrgJtofG
         eGzvk1ySuOAi8oc5J1N1YPII2obnkNzVFNgBKPdzfvkXVxmUE09BqN/poOfXPKoIARqP
         ifZMK6YfCKnLHOvgUx/roi7HQ7Ic9hEM/TQsKfelYEUrmL5gMpURSt/sJB/kq0X4UnS0
         07DX4S/FDBLLdIwlnc67HhX0j4g48cHriDO1DUaivV87MY2Uow6+fqyX1N1ylhTxGmiu
         A1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689940; x=1755294740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvS/66ZRcxV6VQy7PbjyUhwNCw/ZPjnx5EiNbfGEtK0=;
        b=wSKsiSBoJR5L8IGQBeaMlpHrLh7PyCzSPYRWeQNeOyDq9B0goup9w5aHZFEDfGO6ta
         5SfYLrCQrUiJVbhXqCo/GCOL+1ZMNEcGCLgIcQeOUI2DdS2dmzkuNRIDzwJUsrt5nlOY
         ohOnbj3oZGcMAuDGWNF613MWglV/7FEdJpzoSIWenO31aA16ZHrnifOymr/XHFKuJg3+
         Jai1N8BDniYNHcDvBKONsKWDM5yni+wGoY/BPMo4Rv7ezGPKhiZtXrtSQ/aDLLFqlNl/
         +JprmogIWpudOUXboGdZ6L2saKVOQMfCW0v5muib8l8oWRPAg6xcItQnGqIocnAhRG6/
         EZlQ==
X-Gm-Message-State: AOJu0YxXfxlbybnnPAbnT8hiq7DctN2VpGZ6XaWduhD0OPZITR9lCGfq
	m6/i5Km8LP1knQdlj0zyk8DwEL8Yjs2A+IKKc9q3Fyw/EbDnt1YOx9Fc
X-Gm-Gg: ASbGncubhobhtrY0xVHq1uET2wNE11/G4/L1z8F3tzz37hzeLSjEkSNyNyoPdycdNcy
	9Jzb24UsW/oYtRBeUlidueLl1csJdgu9ZkUaGm+QTDJFJ7DKv7KId49VHVsM2h8HSLTnJNtuazr
	13B6RcSh1KGLgi2PXEN37AnYU6oXBVl7PIuByP7BHBmdo7dThg6yeIEbg20lzfQvE3QtijfJD59
	F5YxiLtsUXlZYIIHbrEc2N2G+IZTdpKtENSBk7SGfx2i1VNPdxxrjJup7o5FVEyDMw1ROxbzl0i
	yVnQRqq6l44fEUygA/bDj1DQlf6QCSQOWtrj2+jangEPgXh4LhnhbEBIIjRsflaKFSjGwLB/P0m
	nUx9QnwQhY8slQxRba8hVwGvJ5YWrCH5zGR5mCL/CZXJZiBJx81LZ1KXqB/tT1i2I3Jhx08CIrR
	XV60gQ8Lw=
X-Google-Smtp-Source: AGHT+IHJn67PJNHb16cZnDnyn2d6g3QZIB/QBXnk6D7396rvjPN7ueSMbBDzSShRVQWt+LdznmCoVw==
X-Received: by 2002:a05:6000:1785:b0:3b8:d16a:a4a5 with SMTP id ffacd0b85a97d-3b900905a8amr4343286f8f.0.1754689939795;
        Fri, 08 Aug 2025 14:52:19 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:18 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
Date: Fri,  8 Aug 2025 22:52:08 +0100
Message-ID: <20250808215209.3692744-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145221_464922_524B04B4 
X-CRM114-Status: GOOD (  20.53  )
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
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
v1->v2:
- Included the necessary header files.
- Simplified device/host detection in rcar_gen3_check_id() as suggested
  by Geert.
- Added Reviewed-by from Neil.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 82 ++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index a37af7d8f2f4..8caef9cb228c 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -9,6 +9,8 @@
  * Copyright (C) 2014 Cogent Embedded, Inc.
  */
 
+#include <linux/bitfield.h>
+#include <linux/bits.h>
 #include <linux/cleanup.h>
 #include <linux/extcon-provider.h>
 #include <linux/interrupt.h>
@@ -69,13 +71,20 @@
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
@@ -88,6 +97,7 @@
 /* ADPCTRL */
 #define USB2_ADPCTRL_OTGSESSVLD		BIT(20)
 #define USB2_ADPCTRL_IDDIG		BIT(19)
+#define USB2_ADPCTRL_VBUSVALID		BIT(18)
 #define USB2_ADPCTRL_IDPULLUP		BIT(5)	/* 1 = ID sampling is enabled */
 #define USB2_ADPCTRL_DRVVBUS		BIT(4)
 
@@ -138,6 +148,7 @@ struct rcar_gen3_phy_drv_data {
 	bool no_adp_ctrl;
 	bool init_bus;
 	bool utmi_ctrl;
+	bool vblvl_ctrl;
 	u32 obint_enable_bits;
 };
 
@@ -201,7 +212,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 val;
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	if (ch->phy_data->no_adp_ctrl) {
+	if (ch->phy_data->no_adp_ctrl || ch->phy_data->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
@@ -284,6 +295,16 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
 
 static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 {
+	if (ch->phy_data->vblvl_ctrl) {
+		bool vbus_valid;
+		bool device;
+
+		device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
+		vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
+
+		return !(device && !vbus_valid);
+	}
+
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
@@ -419,11 +440,20 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	writel(val, usb2_base + USB2_LINECTRL1);
 
 	if (!ch->phy_data->no_adp_ctrl) {
-		val = readl(usb2_base + USB2_VBCTRL);
-		val &= ~USB2_VBCTRL_OCCLREN;
-		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
-		val = readl(usb2_base + USB2_ADPCTRL);
-		writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
+		if (ch->phy_data->vblvl_ctrl) {
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
 
@@ -433,6 +463,23 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	rcar_gen3_device_recognition(ch);
 }
 
+static void rcar_gen3_configure_vblvl_ctrl(struct rcar_gen3_chan *ch)
+{
+	void __iomem *usb2_base = ch->base;
+	u32 val;
+
+	if (!ch->phy_data->vblvl_ctrl)
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
@@ -450,8 +497,12 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 		status = readl(usb2_base + USB2_OBINTSTA);
 		if (status & ch->phy_data->obint_enable_bits) {
 			dev_vdbg(dev, "%s: %08x\n", __func__, status);
-			writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTSTA);
+			if (ch->phy_data->vblvl_ctrl)
+				writel(USB2_OBINTSTA_CLEAR, usb2_base + USB2_OBINTSTA);
+			else
+				writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTSTA);
 			rcar_gen3_device_recognition(ch);
+			rcar_gen3_configure_vblvl_ctrl(ch);
 			ret = IRQ_HANDLED;
 		}
 	}
@@ -484,6 +535,13 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	if (rphy->int_enable_bits)
 		rcar_gen3_init_otg(channel);
 
+	if (channel->phy_data->vblvl_ctrl) {
+		/* SIDDQ mode release */
+		writel(readl(usb2_base + USB2_VBCTRL) | USB2_VBCTRL_SIDDQREL,
+		       usb2_base + USB2_VBCTRL);
+		udelay(250);
+	}
+
 	if (channel->phy_data->utmi_ctrl) {
 		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
 		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
@@ -613,6 +671,12 @@ static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
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
@@ -645,6 +709,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
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
