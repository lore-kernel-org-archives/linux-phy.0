Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470B1C87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C4Xo4VOM5y1+e2j794QlhmVCmmGMU4t8DinV0Cdimpo=; b=Oxupji2ASQrSq7
	VcNVMZslncKIxWPRWomnEZefj/6sCwoj0J+5xPfZpPAFhYA2z6+342SamALGFXL+JvegWJR9i7aEI
	ZNvT/+dDbjMmOPDDykjiUiskfY49zsIzn74FmfhzmsznMepR98FnQTZwzfUUZZbBGNS2rsuMh0GoS
	ggMwXVMoKZjxOSiNggxE+vGlzagcn1Zi5M+PxuleSSZCMvRS4nYHc7AMPwTVqMg2fd7Bwc+ZNYVwx
	sNlVfXmh33ajn5iB1fUx39xFd0WXCfImmU9OTror2M7nRm4u/U/RRRCqI0EOWoPM91WDr2xtCGsu1
	ppy8R6KSI8QM1jx94Meg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujekm-0000000FNf1-3VHo;
	Wed, 06 Aug 2025 14:04:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujefq-0000000FMgO-0iDB
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 13:59:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 52E59416C1;
	Wed,  6 Aug 2025 13:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 089E1C4CEE7;
	Wed,  6 Aug 2025 13:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754488760;
	bh=8MHhwlzeXksk6M5aMykLGDerlQQmZYeCH/6hBTMseoc=;
	h=From:To:Cc:Subject:Date:From;
	b=ldDYlA7tBkf9WkERpPS2ILQf8RvFePCOqfSnqvwMorL8BKppkoZ1Ll/PE/fQcB0pP
	 +A9jBnLyJ9Px+x1M1opnP+WIjsWJyhilKx1959NqI8zbRjUnbrK7ZnygrmQWYYUnCs
	 GlQETzabBIAD382lsIre0hETEHsfpcjnIAS2x4Kb2dO6tdFk/R/tipDjC6gguDChIC
	 ni86w7dvPSLvbyKEOSwUiFxVd+60HSwH/aW3XxYQyA1f0x5xtfWNXmh6HS2QfN/i0O
	 ZD3kySumb69xJSZakxkBWW5rikB6FpXm8EEKJ4ycMj+dfwIMJfXVyAZR4ULK27zoYR
	 OlNOxXTq60N+A==
From: Michael Walle <mwalle@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	nm@ti.com,
	vigneshr@ti.com,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH v2] phy: ti: gmii-sel: Force RGMII TX delay
Date: Wed,  6 Aug 2025 15:59:13 +0200
Message-Id: <20250806135913.662340-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_065922_254462_05C36F1F 
X-CRM114-Status: GOOD (  17.80  )
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

Some SoCs are just validated with the TX delay enabled. With commit
ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed
RGMII TX delay"), the network driver will patch the delay setting on the
fly assuming that the TX delay is fixed. In reality, the TX delay is
configurable and just skipped in the documentation. There are
bootloaders, which will disable the TX delay and this will lead to a
transmit path which doesn't add any delays at all. Fix that by always
forcing the TX delay to be enabled.

This is safe to do and shouldn't break any boards in mainline because
the fixed delay is only introduced for gmii-sel compatibles which are
used together with the am65-cpsw-nuss driver and are affected by the
commit above.

Fixes: ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
v2:
 - reject invalid PHY modes. Thanks Matthias.
 - add a paragraph to the commit message that this patch shouldn't
   break any existing boards. Thanks Andrew.

 drivers/phy/ti/phy-gmii-sel.c | 58 ++++++++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index ff5d5e29629f..ed078475c4cb 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -34,6 +34,7 @@ enum {
 	PHY_GMII_SEL_PORT_MODE = 0,
 	PHY_GMII_SEL_RGMII_ID_MODE,
 	PHY_GMII_SEL_RMII_IO_CLK_EN,
+	PHY_GMII_SEL_FIXED_TX_DELAY,
 	PHY_GMII_SEL_LAST,
 };
 
@@ -127,6 +128,22 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 		goto unsupported;
 	}
 
+	/*
+	 * Some SoCs only support fixed MAC side TX delays. According to the
+	 * datasheet, they are always enabled, but that turns out not to be the
+	 * case and the delay is configurable. But according to the vendor that
+	 * mode is not validated and might not work. Some bootloaders disable
+	 * this bit. To work around that, enable it again.
+	 */
+	if (soc_data->features & BIT(PHY_GMII_SEL_FIXED_TX_DELAY)) {
+		/* With a fixed delay, some modes are not supported at all. */
+		if (submode == PHY_INTERFACE_MODE_RGMII_ID ||
+		    submode == PHY_INTERFACE_MODE_RGMII_TXID)
+			return -EINVAL;
+
+		rgmii_id = 0;
+	}
+
 	if_phy->phy_if_mode = submode;
 
 	dev_dbg(dev, "%s id:%u mode:%u rgmii_id:%d rmii_clk_ext:%d\n",
@@ -210,25 +227,46 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_dm814 = {
 
 static const
 struct reg_field phy_gmii_sel_fields_am654[][PHY_GMII_SEL_LAST] = {
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x0, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x4, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x8, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0xC, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x10, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x14, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x18, 0, 2), },
-	{ [PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x1C, 0, 2), },
+	{
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x0, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x0, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x4, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x4, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x8, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x8, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0xC, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0xC, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x10, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x10, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x14, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x14, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x18, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x18, 4, 4),
+	}, {
+		[PHY_GMII_SEL_PORT_MODE] = REG_FIELD(0x1C, 0, 2),
+		[PHY_GMII_SEL_RGMII_ID_MODE] = REG_FIELD(0x1C, 4, 4),
+	},
 };
 
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_soc_am654 = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 };
 
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII) |
 		       BIT(PHY_INTERFACE_MODE_USXGMII),
@@ -239,6 +277,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
 	.num_ports = 8,
@@ -248,6 +288,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII) |
 		       BIT(PHY_INTERFACE_MODE_USXGMII),
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
