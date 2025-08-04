Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEEE5C87FCF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Aug 2025 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tB7uJYMBuD/pRjrJALd/0Av/suzsYQiBZE8Kj4HJpzE=; b=zhpSlAmPpK1nGW
	Gk64UvtVncwUIMAq9eIqC6N7GZhXtwE3KCFz6Kk9gFzjLqcMXzFWRW9pThvnZloDFDBRpILA8P7yI
	GROOAYd2OYQmF7vTBRMwaqAusbZwfKdjmjsa8bgG3vwRpY41B85HLoQtIvZuzENNkDhJdTQ7c7ndO
	Juc5sK1w2bbMIDGR3BBAgMt4FrP5VfgHjBcPGavtd17TpM8MAs/vgpyyd0L3szkPRjDWxlNb9+p//
	1WAwrOOwxTFB75EGJfhiByX1YCWL6tjVOld72MBIqYLAVsaPA++l2dD1Dj3byFNdcDnzv6W/nF9WS
	5yOU5jES+lnRWsym2eTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwcb-0000000AiyV-21Pt;
	Mon, 04 Aug 2025 14:57:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uivqC-0000000AcFd-2oot
	for linux-phy@lists.infradead.org;
	Mon, 04 Aug 2025 14:07:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 55C425C6241;
	Mon,  4 Aug 2025 14:07:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D70C4CEE7;
	Mon,  4 Aug 2025 14:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754316423;
	bh=g4R8Y73hb4BzJAzzDJSVFxqOj3sFPPyhtqJp7GLNKqA=;
	h=From:To:Cc:Subject:Date:From;
	b=HVsKZFNL8augUOA5FqoPeyp2uE6lxeZwLHClECoWoBhbq9F+yveLuSe4YauCVUVPZ
	 kiMkC1vWPVzu2USw8EfOBAl+Xr+L6PLxq5JQpXsLgtbW83Z2Y6Cny4uOPdmJhQ5GH5
	 PVSBL9Ol4R6NJR9AFbdc/pQr1HlEsU9azz26yJWqldNWPGdOq8ba2VFg5VUehzrnlm
	 +BH922GbqJBAWjymt7ypwqVf4yyWiS88ENQOX7iD62k9KQPKJ66Zz5CX3irxPl6yTP
	 fBrbAmkV6obtx7OyP2Ep/Zzt9ZhKjE4gTMxcagUcIoxN5HNEaWcaOPkknGEhM4cmNC
	 wTp79soAE95fA==
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
Subject: [PATCH] phy: ti: gmii-sel: Force RGMII TX delay
Date: Mon,  4 Aug 2025 16:06:52 +0200
Message-Id: <20250804140652.539589-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_070704_786034_9E4D0038 
X-CRM114-Status: GOOD (  15.43  )
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

Fixes: ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/phy/ti/phy-gmii-sel.c | 52 +++++++++++++++++++++++++++++------
 1 file changed, 44 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index ff5d5e29629f..a0c19d00ff3a 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -34,6 +34,7 @@ enum {
 	PHY_GMII_SEL_PORT_MODE = 0,
 	PHY_GMII_SEL_RGMII_ID_MODE,
 	PHY_GMII_SEL_RMII_IO_CLK_EN,
+	PHY_GMII_SEL_FIXED_TX_DELAY,
 	PHY_GMII_SEL_LAST,
 };
 
@@ -127,6 +128,16 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 		goto unsupported;
 	}
 
+	/*
+	 * Some SoCs only support fixed MAC side TX delays. According to the
+	 * datasheet, they are always enabled, but that turns out not to be the
+	 * case and the delay is configurable. But according to the vendor that
+	 * mode is not validated and might not work. Some bootloaders disable
+	 * that bit. To work around that enable it again.
+	 */
+	if (soc_data->features & BIT(PHY_GMII_SEL_FIXED_TX_DELAY))
+		rgmii_id = 0;
+
 	if_phy->phy_if_mode = submode;
 
 	dev_dbg(dev, "%s id:%u mode:%u rgmii_id:%d rmii_clk_ext:%d\n",
@@ -210,25 +221,46 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_dm814 = {
 
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
@@ -239,6 +271,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 	.use_of_data = true,
+	.features = BIT(PHY_GMII_SEL_RGMII_ID_MODE) |
+		    BIT(PHY_GMII_SEL_FIXED_TX_DELAY),
 	.regfields = phy_gmii_sel_fields_am654,
 	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
 	.num_ports = 8,
@@ -248,6 +282,8 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
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
