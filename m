Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 866A9C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:44:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0BE356124C
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:44:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0BE356124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G3THx9KGFpWEQzIMiJwIRR08e8jfNGy1nxpw/kVj8oE=; b=inMFKuDpTtsuUz8J99vKmtprMn
	/7j2Al45iMGuOndejlhgLqS91tM61ZipIjdEzRdvkDPCR6mRABWTedeFJ6qfZgKtkaOmDdzkoaMS8
	9GyCeCI7ws/rKQUs4wzgFhR9CQiibEQ/ho5v52gYpOeKHHT89C9yGCTKw0xxzC85EbZyCLDoZXz7C
	YEL1nmgcLlrLwQlrd4rwW988QTRLC/DeD7WNzVqdX+oFFIroN/MJQ0qwi4w19jJ+iu7rre5qgbw/D
	rzN6GDU94ucECSPz6ZsGWXfIpVkETslYdhjj5mMWEuq25EIZij21NzNh74NOzySyQTqJZwA9Dt/50
	OzlHT2zA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljJh2-003d4n-Ap; Wed, 19 May 2021 10:44:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJet-003cHX-Mm; Wed, 19 May 2021 10:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iTL0MeHjRQVNipCVn9jmA/CYSnCOQ8VIZPYAp3RpbKM=; b=uSzJT5dw9TeTSYGIeonCTXIb4Y
 h7MxiRlU3vPuxv2PhgvIjGuxXnvjvQIlgAb4+TsAh7S+AWSJ0nkUxHEDotlyRRWzXYcbJuRsZG1mC
 XyLaLrALlqoVg8Z0ojSVuchJ+Th8yzjP9TRXdr4aZl3wu14oomwGHxHXyNlXjW2t5QKGRqOc/R+08
 i2SRE2U3X4mNpRjXBLKP+juqbvs8HfrCW8xYBRmIGLZMPV8CXa+hRo7e1ioyXPanukgMJJ6u8J9nt
 gMtQ/PsKuAc80R9Dm+4vAJt6/itM4Qvj1cWPQPYiVdrbfemZYu+ja2cuiS8lMS5stM8R4x0vKN0to
 qQCB+Vtw==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJeq-00FMV0-SY; Wed, 19 May 2021 10:42:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AFF11424;
 Wed, 19 May 2021 03:42:32 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8C513F719;
 Wed, 19 May 2021 03:42:29 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, Ondrej Jirman <megous@megous.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v6 10/17] phy: sun4i-usb: Rework HCI PHY (aka. "pmu_unk1")
 handling
Date: Wed, 19 May 2021 11:41:45 +0100
Message-Id: <20210519104152.21119-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210519104152.21119-1-andre.przywara@arm.com>
References: <20210519104152.21119-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_034233_034482_1236B066 
X-CRM114-Status: GOOD (  15.02  )
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
MIME-Version: 1.0
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
2.17.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
