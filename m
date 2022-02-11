Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9152EC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvjPr914I7xA99VliAZOfRdyL8M3qdjRFEVewuJTP0c=; b=4kixCnvG723n6Z
	Iz+o+6OC+iyNx2rGQvr0TZj2xIcNEtCR0znAKEG8WGXbjG0SUZDw+33XZC6axbKNc8JMoOI6yT/85
	MZi4dArkzUoGETcKwMC50+CNqiriDI4zpxv7iDsJZoy0EeCcDPogQEZuFEEjQCIvb/kNSshBv28Ff
	8grIpDgU/00pIda+F+pcrJFWHPXXK6enO4BDx3UZW7CO5dPTFP7HroxxZo8rSHZNRyFeesgYlfjt0
	1wgIgOpRj1iQ3S0Q6d0eLPNLlAUDwTPROfIx/b3yryyewNqElvJaydxZnUjrmn9YagchowjAIzRQ7
	RshDC2B3T7B2cjj/km1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIV4d-0077zo-Uw; Fri, 11 Feb 2022 12:30:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIV16-0075rB-6C; Fri, 11 Feb 2022 12:27:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E46813D5;
 Fri, 11 Feb 2022 04:27:11 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.196.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA7F23F70D;
 Fri, 11 Feb 2022 04:27:09 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH v10 12/18] phy: sun4i-usb: Rework HCI PHY (aka. "pmu_unk1")
 handling
Date: Fri, 11 Feb 2022 12:26:37 +0000
Message-Id: <20220211122643.1343315-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211122643.1343315-1-andre.przywara@arm.com>
References: <20220211122643.1343315-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_042712_349485_4257F9A4 
X-CRM114-Status: GOOD (  13.98  )
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

As Icenowy pointed out, newer manuals (starting with H6) actually
document the register block at offset 0x800 as "HCI controller and PHY
interface", also describe the bits in our "PMU_UNK1" register.
Let's put proper names to those "unknown" variables and symbols.

While we are at it, generalise the existing code by allowing a bitmap
of bits to clear and set, to cover newer SoCs: The A100 and H616 use a
different bit for the SIDDQ control.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 30 ++++++++++++---------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 788dd5cdbb7d..142f4cafdc78 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -43,7 +43,7 @@
 #define REG_PHYCTL_A33			0x10
 #define REG_PHY_OTGCTL			0x20
 
-#define REG_PMU_UNK1			0x10
+#define REG_HCI_PHY_CTL			0x10
 
 #define PHYCTL_DATA			BIT(7)
 
@@ -82,6 +82,7 @@
 /* A83T specific control bits for PHY0 */
 #define PHY_CTL_VBUSVLDEXT		BIT(5)
 #define PHY_CTL_SIDDQ			BIT(3)
+#define PHY_CTL_H3_SIDDQ		BIT(1)
 
 /* A83T specific control bits for PHY2 HSIC */
 #define SUNXI_EHCI_HS_FORCE		BIT(20)
@@ -115,9 +116,9 @@ struct sun4i_usb_phy_cfg {
 	int hsic_index;
 	enum sun4i_usb_phy_type type;
 	u32 disc_thresh;
+	u32 hci_phy_ctl_clear;
 	u8 phyctl_offset;
 	bool dedicated_clocks;
-	bool enable_pmu_unk1;
 	bool phy0_dual_route;
 	int missing_phys;
 };
@@ -288,6 +289,12 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		return ret;
 	}
 
+	if (phy->pmu && data->cfg->hci_phy_ctl_clear) {
+		val = readl(phy->pmu + REG_HCI_PHY_CTL);
+		val &= ~data->cfg->hci_phy_ctl_clear;
+		writel(val, phy->pmu + REG_HCI_PHY_CTL);
+	}
+
 	if (data->cfg->type == sun8i_a83t_phy ||
 	    data->cfg->type == sun50i_h6_phy) {
 		if (phy->index == 0) {
@@ -297,11 +304,6 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 			writel(val, data->base + data->cfg->phyctl_offset);
 		}
 	} else {
-		if (phy->pmu && data->cfg->enable_pmu_unk1) {
-			val = readl(phy->pmu + REG_PMU_UNK1);
-			writel(val & ~2, phy->pmu + REG_PMU_UNK1);
-		}
-
 		/* Enable USB 45 Ohm resistor calibration */
 		if (phy->index == 0)
 			sun4i_usb_phy_write(phy, PHY_RES45_CAL_EN, 0x01, 1);
@@ -863,7 +865,6 @@ static const struct sun4i_usb_phy_cfg sun4i_a10_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A10,
 	.dedicated_clocks = false,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun5i_a13_cfg = {
@@ -872,7 +873,6 @@ static const struct sun4i_usb_phy_cfg sun5i_a13_cfg = {
 	.disc_thresh = 2,
 	.phyctl_offset = REG_PHYCTL_A10,
 	.dedicated_clocks = false,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun6i_a31_cfg = {
@@ -881,7 +881,6 @@ static const struct sun4i_usb_phy_cfg sun6i_a31_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A10,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun7i_a20_cfg = {
@@ -890,7 +889,6 @@ static const struct sun4i_usb_phy_cfg sun7i_a20_cfg = {
 	.disc_thresh = 2,
 	.phyctl_offset = REG_PHYCTL_A10,
 	.dedicated_clocks = false,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun8i_a23_cfg = {
@@ -899,7 +897,6 @@ static const struct sun4i_usb_phy_cfg sun8i_a23_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A10,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun8i_a33_cfg = {
@@ -908,7 +905,6 @@ static const struct sun4i_usb_phy_cfg sun8i_a33_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A33,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = false,
 };
 
 static const struct sun4i_usb_phy_cfg sun8i_a83t_cfg = {
@@ -925,7 +921,7 @@ static const struct sun4i_usb_phy_cfg sun8i_h3_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A33,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = true,
+	.hci_phy_ctl_clear = PHY_CTL_H3_SIDDQ,
 	.phy0_dual_route = true,
 };
 
@@ -935,7 +931,7 @@ static const struct sun4i_usb_phy_cfg sun8i_r40_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A33,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = true,
+	.hci_phy_ctl_clear = PHY_CTL_H3_SIDDQ,
 	.phy0_dual_route = true,
 };
 
@@ -945,7 +941,7 @@ static const struct sun4i_usb_phy_cfg sun8i_v3s_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A33,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = true,
+	.hci_phy_ctl_clear = PHY_CTL_H3_SIDDQ,
 	.phy0_dual_route = true,
 };
 
@@ -955,7 +951,7 @@ static const struct sun4i_usb_phy_cfg sun50i_a64_cfg = {
 	.disc_thresh = 3,
 	.phyctl_offset = REG_PHYCTL_A33,
 	.dedicated_clocks = true,
-	.enable_pmu_unk1 = true,
+	.hci_phy_ctl_clear = PHY_CTL_H3_SIDDQ,
 	.phy0_dual_route = true,
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
