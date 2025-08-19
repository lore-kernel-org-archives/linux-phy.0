Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E660CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lS34CgzHhceJE2797kEQV45s+nMSZuHJ3dJJmfkeoh0=; b=FYQx2ShclVEGN1
	Vum3C7N13LozrWoIxWij2g4vXQptWRf45DhDUgDtaH/jwG36o3J4TyHeRVgXLB6AzpvFTyUKDD+dN
	LG2kTKjAB/luCZPZxPiU5SdwYk4IV6scuHPV8UgBCRPNJ7yH20YmId1w8rImMWBKx91AQ2J2HXHqw
	m68e20etAfuWK68lJPPyzh3DPl2MPfNF7M9QbjW9EkmjyHUcqyRwnJhQXZjabsYRENpf5OzdTwKWx
	gcOgH8ndm/OSK5/aUtL5jmBWKr+Svr4YcmulOQ+2GvPCBayEZWwL7a3SzoD5Bk55qsfvpemNUlFk5
	QT338KGahLewkB0FiMMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGsq-00000009h2g-1AYH;
	Tue, 19 Aug 2025 07:35:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGGq-00000009ay5-1Xcc
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 06:56:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66DF645D1E;
	Tue, 19 Aug 2025 06:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16E4FC116B1;
	Tue, 19 Aug 2025 06:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755586595;
	bh=Zp8/D0QqwNUeSXX/OtnER595OeyW1wBAI56ORCb4OX4=;
	h=From:To:Cc:Subject:Date:From;
	b=OM7sBsBDXlRp4StY81EhppkdOvvnuTp6LZHK9iXyBRsuAhUeuNWJfoew835h+3K3D
	 D1nTVyFQ5Nzw5OcGxCY1Ws38OJIBbiF0OULZAkqogww4M38N0XqJH8uVjvjO6193fk
	 sch6ocKvEpEo5770sYnqrGJ1AiK9K1+hRwTm0Nucmz4k+J4jQbgInHFHhE1+o5S0Am
	 nuKbzX6pxlIPgrRLK4zw9FiCcongp/y08vAb8nmiNewrhJmD2ZQJmiZK8OsZI+1Pj7
	 GsCxFG/Q7y9KkCs9w3YPxmZM9lfe3Ko7HzHzPvtTQOt8Nbx2iPBQzW7xD/SCTiNE+U
	 vwBk9BT+5nlmA==
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
Subject: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID setting
Date: Tue, 19 Aug 2025 08:56:22 +0200
Message-Id: <20250819065622.1019537-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_235636_445980_F467B2AE 
X-CRM114-Status: GOOD (  16.93  )
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
fly assuming that the TX delay setting is fixed. In reality, the TX
delay is configurable and just skipped in the documentation. There are
bootloaders, which will disable the TX delay and this will lead to a
transmit path which doesn't add any delays at all.
Fix that by always writing the RGMII_ID setting and report an error for
unsupported RGMII delay modes.

This is safe to do and shouldn't break any boards in mainline because
the fixed delay is only introduced for gmii-sel compatibles which are
used together with the am65-cpsw-nuss driver and also contains the
commit above.

Fixes: ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
v3:
 - simplify the logic. Thanks Matthias.
 - reworded the commit message

v2:
 - reject invalid PHY modes. Thanks Matthias.
 - add a paragraph to the commit message that this patch shouldn't
   break any existing boards. Thanks Andrew.

 drivers/phy/ti/phy-gmii-sel.c | 47 +++++++++++++++++++++++++++++------
 1 file changed, 39 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index ff5d5e29629f..50adabb867cb 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -34,6 +34,7 @@ enum {
 	PHY_GMII_SEL_PORT_MODE = 0,
 	PHY_GMII_SEL_RGMII_ID_MODE,
 	PHY_GMII_SEL_RMII_IO_CLK_EN,
+	PHY_GMII_SEL_FIXED_TX_DELAY,
 	PHY_GMII_SEL_LAST,
 };
 
@@ -127,6 +128,11 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 		goto unsupported;
 	}
 
+	/* With a fixed delay, some modes are not supported at all. */
+	if (soc_data->features & BIT(PHY_GMII_SEL_FIXED_TX_DELAY) &&
+	    rgmii_id != 0)
+		return -EINVAL;
+
 	if_phy->phy_if_mode = submode;
 
 	dev_dbg(dev, "%s id:%u mode:%u rgmii_id:%d rmii_clk_ext:%d\n",
@@ -210,25 +216,46 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_dm814 = {
 
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
@@ -239,6 +266,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
 	.num_ports = 8,
@@ -248,6 +277,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
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
