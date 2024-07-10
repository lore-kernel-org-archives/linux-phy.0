Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C92CC3DA45
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 11:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRSBXYDd5uwzwIKxCNZbLa7wSWtexp6zlaa841lVZ7Y=; b=fb3XVoT0A3nqvy
	hsYu3O+GLhrsTyBajmusd48+s3WkwJTr0zN42QLLUGwWi7wMkIxbd0iYPtsp75oway4iZJz9TIhS5
	ZaluapI2n2kMYcTwKIYP2zeYFN0rISCG8GqdQr+Vaq9InBEZC/eLx956LLx2w2ktkv3a3yQbO+6vj
	Pmd4gYGmOB4qL6gGhbmPOU6dhB7mfOb23JlJwUSHjlVxWazuSJjZP0QTHfUIMQZ5F69MNfNruDb86
	0k0lkCgs9vzyU1DiCuRda8NDCmIpqfxvco9uFDMzR+SH4a6CMW5Sg0kTTfuqm+OkTgp31j2auPVtW
	3TgGC+spPIk1Oc+A5iFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVwW-0000000AQQM-077G;
	Wed, 10 Jul 2024 11:57:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVwD-0000000AQOr-45WV;
	Wed, 10 Jul 2024 11:56:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46ABuUSS098258;
	Wed, 10 Jul 2024 06:56:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1720612590;
	bh=1IxapFT0FG4APMMHo9mZi3Qq4+oJ0bmI4Z6pyJJmsSA=;
	h=From:To:CC:Subject:Date;
	b=bqvfULnx002q7S1vLwO1lANhKMY/5KsnGJU2mHFN227LKwf2x2DErKxFXt/L208yx
	 wRbYa0/AjHOtOqqiqDLo0KAIHqsYfS9gUnF9qTnGUKubS33Mje5xyiwCme7VpMGbig
	 lprWnxCoRLjddzlHJnVM6VYmefKMlo5coCkUE89M=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46ABuUin067659
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 10 Jul 2024 06:56:30 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 10
 Jul 2024 06:56:29 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 10 Jul 2024 06:56:29 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46ABuPQx034083;
	Wed, 10 Jul 2024 06:56:25 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <thomas.richard@bootlin.com>, <theo.lebrun@bootlin.com>,
        <robh@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2] phy: cadence-torrent: add support for three or more links using 2 protocols
Date: Wed, 10 Jul 2024 17:26:24 +0530
Message-ID: <20240710115624.3232925-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_045646_279091_C7AD620D 
X-CRM114-Status: GOOD (  27.60  )
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

The Torrent SERDES can support at most two different protocols. This only
mandates that the device-tree sub-nodes expressing the configuration should
describe links with at-most two different protocols.

The existing implementation however imposes an artificial constraint that
allows only two links (device-tree sub-nodes). As long as at-most two
protocols are chosen, using more than two links to describe them in an
alternating configuration is still a valid configuration of the Torrent
SERDES.

A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
Lane 0 => Protocol 1 => Link 1
Lane 1 => Protocol 1 => Link 1
Lane 2 => Protocol 2 => Link 2
Lane 3 => Protocol 1 => Link 3

A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
Lane 0 => Protocol 1 => Link 1
Lane 1 => Protocol 2 => Link 2
Lane 2 => Protocol 1 => Link 3
Lane 3 => Protocol 2 => Link 4

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---

Hello,

This patch is based on linux-next tagged next-20240710.
Patch has been sanity tested and tested for functionality in the following
configurations with the Torrent SERDES0 on J7200-EVM:
1. PCIe (Lanes 0 and 1) + QSGMII (Lane 2)
   => 2 protocols, 2 links
2. PCIe (Lane0 as 1 Link) + PCIe (Lane 1 as 1 Link)
   => 1 protocol, 2 links
3. PCIe (Lanes 0 and 1) + QSGMII (Lane 2) + PCIe (Lane 3)
   => 2 protocols, 3 links

v1:
https://lore.kernel.org/r/20240709120703.2716397-1-s-vadapalli@ti.com/
Changes since v1:
- A multilink configuration doesn't necessarily imply two protocols
  since a single protocol may be split across links as follows:
  Lane 0 => Protocol 1
  Lane 1 => Unused
  Lane 2 => Protocol 1
  Lane 3 => Unused
  which corresponds to two links and therefore two sub-nodes. In such a
  case, treat it as two single-link configurations performed sequentially
  which happens to be the case prior to this patch. To address this,
  handle the case where cdns_torrent_phy_configure_multilink() can be
  invoked for a single protocol with multiple sub-nodes (links) by
  erroring out only when the number of protocols is strictly greater
  than two, followed by handling the configuration similar to how it was
  done prior to this patch.

Regards,
Siddharth.

 drivers/phy/cadence/phy-cadence-torrent.c | 252 ++++++++++++----------
 1 file changed, 136 insertions(+), 116 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 56ce82a47f88..a6d0082e448d 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -351,6 +351,7 @@ struct cdns_torrent_phy {
 	void __iomem *sd_base; /* SD0801 registers base */
 	u32 max_bit_rate; /* Maximum link bit rate to use (in Mbps) */
 	u32 dp_pll;
+	u32 protocol_bitmask;
 	struct reset_control *phy_rst;
 	struct reset_control *apb_rst;
 	struct device *dev;
@@ -2475,21 +2476,32 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 	struct cdns_reg_pairs *reg_pairs;
 	enum cdns_torrent_ssc_mode ssc;
 	struct regmap *regmap;
-	u32 num_regs;
+	u32 num_regs, num_protocols, protocol;
 
-	/* Maximum 2 links (subnodes) are supported */
-	if (cdns_phy->nsubnodes != 2)
+	num_protocols = hweight32(cdns_phy->protocol_bitmask);
+	/* Maximum 2 protocols are supported */
+	if (num_protocols > 2) {
 		return -EINVAL;
-
-	phy_t1 = cdns_phy->phys[0].phy_type;
-	phy_t2 = cdns_phy->phys[1].phy_type;
+	} else if (num_protocols == 2) {
+		phy_t1 = fns(cdns_phy->protocol_bitmask, 0);
+		phy_t2 = fns(cdns_phy->protocol_bitmask, 1);
+	} else {
+		phy_t1 = fns(cdns_phy->protocol_bitmask, 0);
+		/**
+		 * For a single protocol split across multiple links,
+		 * assign TYPE_NONE to phy_t2 for configuring each link
+		 * identical to a single-link configuration with a single
+		 * protocol.
+		 */
+		phy_t2 = TYPE_NONE;
+	}
 
 	/**
 	 * First configure the PHY for first link with phy_t1. Get the array
 	 * values as [phy_t1][phy_t2][ssc].
 	 */
-	for (node = 0; node < cdns_phy->nsubnodes; node++) {
-		if (node == 1) {
+	for (protocol = 0; protocol < num_protocols; protocol++) {
+		if (protocol == 1) {
 			/**
 			 * If first link with phy_t1 is configured, then
 			 * configure the PHY for second link with phy_t2.
@@ -2499,130 +2511,136 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 			swap(ref_clk, ref_clk1);
 		}
 
-		mlane = cdns_phy->phys[node].mlane;
-		ssc = cdns_phy->phys[node].ssc_mode;
-		num_lanes = cdns_phy->phys[node].num_lanes;
+		for (node = 0; node < cdns_phy->nsubnodes; node++) {
+			if (cdns_phy->phys[node].phy_type != phy_t1)
+				continue;
 
-		/**
-		 * PHY configuration specific registers:
-		 * link_cmn_vals depend on combination of PHY types being
-		 * configured and are common for both PHY types, so array
-		 * values should be same for [phy_t1][phy_t2][ssc] and
-		 * [phy_t2][phy_t1][ssc].
-		 * xcvr_diag_vals also depend on combination of PHY types
-		 * being configured, but these can be different for particular
-		 * PHY type and are per lane.
-		 */
-		link_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->link_cmn_vals_tbl,
-							  CLK_ANY, CLK_ANY,
-							  phy_t1, phy_t2, ANY_SSC);
-		if (link_cmn_vals) {
-			reg_pairs = link_cmn_vals->reg_pairs;
-			num_regs = link_cmn_vals->num_regs;
-			regmap = cdns_phy->regmap_common_cdb;
+			mlane = cdns_phy->phys[node].mlane;
+			ssc = cdns_phy->phys[node].ssc_mode;
+			num_lanes = cdns_phy->phys[node].num_lanes;
 
 			/**
-			 * First array value in link_cmn_vals must be of
-			 * PHY_PLL_CFG register
+			 * PHY configuration specific registers:
+			 * link_cmn_vals depend on combination of PHY types being
+			 * configured and are common for both PHY types, so array
+			 * values should be same for [phy_t1][phy_t2][ssc] and
+			 * [phy_t2][phy_t1][ssc].
+			 * xcvr_diag_vals also depend on combination of PHY types
+			 * being configured, but these can be different for particular
+			 * PHY type and are per lane.
 			 */
-			regmap_field_write(cdns_phy->phy_pll_cfg,
-					   reg_pairs[0].val);
+			link_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->link_cmn_vals_tbl,
+								  CLK_ANY, CLK_ANY,
+								  phy_t1, phy_t2, ANY_SSC);
+			if (link_cmn_vals) {
+				reg_pairs = link_cmn_vals->reg_pairs;
+				num_regs = link_cmn_vals->num_regs;
+				regmap = cdns_phy->regmap_common_cdb;
 
-			for (i = 1; i < num_regs; i++)
-				regmap_write(regmap, reg_pairs[i].off,
-					     reg_pairs[i].val);
-		}
+				/**
+				 * First array value in link_cmn_vals must be of
+				 * PHY_PLL_CFG register
+				 */
+				regmap_field_write(cdns_phy->phy_pll_cfg,
+						   reg_pairs[0].val);
 
-		xcvr_diag_vals = cdns_torrent_get_tbl_vals(&init_data->xcvr_diag_vals_tbl,
-							   CLK_ANY, CLK_ANY,
-							   phy_t1, phy_t2, ANY_SSC);
-		if (xcvr_diag_vals) {
-			reg_pairs = xcvr_diag_vals->reg_pairs;
-			num_regs = xcvr_diag_vals->num_regs;
-			for (i = 0; i < num_lanes; i++) {
-				regmap = cdns_phy->regmap_tx_lane_cdb[i + mlane];
-				for (j = 0; j < num_regs; j++)
-					regmap_write(regmap, reg_pairs[j].off,
-						     reg_pairs[j].val);
+				for (i = 1; i < num_regs; i++)
+					regmap_write(regmap, reg_pairs[i].off,
+						     reg_pairs[i].val);
 			}
-		}
 
-		/* PHY PCS common registers configurations */
-		pcs_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->pcs_cmn_vals_tbl,
-							 CLK_ANY, CLK_ANY,
-							 phy_t1, phy_t2, ANY_SSC);
-		if (pcs_cmn_vals) {
-			reg_pairs = pcs_cmn_vals->reg_pairs;
-			num_regs = pcs_cmn_vals->num_regs;
-			regmap = cdns_phy->regmap_phy_pcs_common_cdb;
-			for (i = 0; i < num_regs; i++)
-				regmap_write(regmap, reg_pairs[i].off,
-					     reg_pairs[i].val);
-		}
+			xcvr_diag_vals = cdns_torrent_get_tbl_vals(&init_data->xcvr_diag_vals_tbl,
+								   CLK_ANY, CLK_ANY,
+								   phy_t1, phy_t2, ANY_SSC);
+			if (xcvr_diag_vals) {
+				reg_pairs = xcvr_diag_vals->reg_pairs;
+				num_regs = xcvr_diag_vals->num_regs;
+				for (i = 0; i < num_lanes; i++) {
+					regmap = cdns_phy->regmap_tx_lane_cdb[i + mlane];
+					for (j = 0; j < num_regs; j++)
+						regmap_write(regmap, reg_pairs[j].off,
+							     reg_pairs[j].val);
+				}
+			}
 
-		/* PHY PMA common registers configurations */
-		phy_pma_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->phy_pma_cmn_vals_tbl,
-							     CLK_ANY, CLK_ANY,
-							     phy_t1, phy_t2, ANY_SSC);
-		if (phy_pma_cmn_vals) {
-			reg_pairs = phy_pma_cmn_vals->reg_pairs;
-			num_regs = phy_pma_cmn_vals->num_regs;
-			regmap = cdns_phy->regmap_phy_pma_common_cdb;
-			for (i = 0; i < num_regs; i++)
-				regmap_write(regmap, reg_pairs[i].off,
-					     reg_pairs[i].val);
-		}
+			/* PHY PCS common registers configurations */
+			pcs_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->pcs_cmn_vals_tbl,
+								 CLK_ANY, CLK_ANY,
+								 phy_t1, phy_t2, ANY_SSC);
+			if (pcs_cmn_vals) {
+				reg_pairs = pcs_cmn_vals->reg_pairs;
+				num_regs = pcs_cmn_vals->num_regs;
+				regmap = cdns_phy->regmap_phy_pcs_common_cdb;
+				for (i = 0; i < num_regs; i++)
+					regmap_write(regmap, reg_pairs[i].off,
+						     reg_pairs[i].val);
+			}
 
-		/* PMA common registers configurations */
-		cmn_vals = cdns_torrent_get_tbl_vals(&init_data->cmn_vals_tbl,
-						     ref_clk, ref_clk1,
-						     phy_t1, phy_t2, ssc);
-		if (cmn_vals) {
-			reg_pairs = cmn_vals->reg_pairs;
-			num_regs = cmn_vals->num_regs;
-			regmap = cdns_phy->regmap_common_cdb;
-			for (i = 0; i < num_regs; i++)
-				regmap_write(regmap, reg_pairs[i].off,
-					     reg_pairs[i].val);
-		}
+			/* PHY PMA common registers configurations */
+			phy_pma_cmn_vals =
+				cdns_torrent_get_tbl_vals(&init_data->phy_pma_cmn_vals_tbl,
+							  CLK_ANY, CLK_ANY, phy_t1, phy_t2,
+							  ANY_SSC);
+			if (phy_pma_cmn_vals) {
+				reg_pairs = phy_pma_cmn_vals->reg_pairs;
+				num_regs = phy_pma_cmn_vals->num_regs;
+				regmap = cdns_phy->regmap_phy_pma_common_cdb;
+				for (i = 0; i < num_regs; i++)
+					regmap_write(regmap, reg_pairs[i].off,
+						     reg_pairs[i].val);
+			}
 
-		/* PMA TX lane registers configurations */
-		tx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->tx_ln_vals_tbl,
-						       ref_clk, ref_clk1,
-						       phy_t1, phy_t2, ssc);
-		if (tx_ln_vals) {
-			reg_pairs = tx_ln_vals->reg_pairs;
-			num_regs = tx_ln_vals->num_regs;
-			for (i = 0; i < num_lanes; i++) {
-				regmap = cdns_phy->regmap_tx_lane_cdb[i + mlane];
-				for (j = 0; j < num_regs; j++)
-					regmap_write(regmap, reg_pairs[j].off,
-						     reg_pairs[j].val);
+			/* PMA common registers configurations */
+			cmn_vals = cdns_torrent_get_tbl_vals(&init_data->cmn_vals_tbl,
+							     ref_clk, ref_clk1,
+							     phy_t1, phy_t2, ssc);
+			if (cmn_vals) {
+				reg_pairs = cmn_vals->reg_pairs;
+				num_regs = cmn_vals->num_regs;
+				regmap = cdns_phy->regmap_common_cdb;
+				for (i = 0; i < num_regs; i++)
+					regmap_write(regmap, reg_pairs[i].off,
+						     reg_pairs[i].val);
 			}
-		}
 
-		/* PMA RX lane registers configurations */
-		rx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->rx_ln_vals_tbl,
-						       ref_clk, ref_clk1,
-						       phy_t1, phy_t2, ssc);
-		if (rx_ln_vals) {
-			reg_pairs = rx_ln_vals->reg_pairs;
-			num_regs = rx_ln_vals->num_regs;
-			for (i = 0; i < num_lanes; i++) {
-				regmap = cdns_phy->regmap_rx_lane_cdb[i + mlane];
-				for (j = 0; j < num_regs; j++)
-					regmap_write(regmap, reg_pairs[j].off,
-						     reg_pairs[j].val);
+			/* PMA TX lane registers configurations */
+			tx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->tx_ln_vals_tbl,
+							       ref_clk, ref_clk1,
+							       phy_t1, phy_t2, ssc);
+			if (tx_ln_vals) {
+				reg_pairs = tx_ln_vals->reg_pairs;
+				num_regs = tx_ln_vals->num_regs;
+				for (i = 0; i < num_lanes; i++) {
+					regmap = cdns_phy->regmap_tx_lane_cdb[i + mlane];
+					for (j = 0; j < num_regs; j++)
+						regmap_write(regmap, reg_pairs[j].off,
+							     reg_pairs[j].val);
+				}
 			}
-		}
 
-		if (phy_t1 == TYPE_DP) {
-			ret = cdns_torrent_dp_get_pll(cdns_phy, phy_t2);
-			if (ret)
-				return ret;
-		}
+			/* PMA RX lane registers configurations */
+			rx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->rx_ln_vals_tbl,
+							       ref_clk, ref_clk1,
+							       phy_t1, phy_t2, ssc);
+			if (rx_ln_vals) {
+				reg_pairs = rx_ln_vals->reg_pairs;
+				num_regs = rx_ln_vals->num_regs;
+				for (i = 0; i < num_lanes; i++) {
+					regmap = cdns_phy->regmap_rx_lane_cdb[i + mlane];
+					for (j = 0; j < num_regs; j++)
+						regmap_write(regmap, reg_pairs[j].off,
+							     reg_pairs[j].val);
+				}
+			}
 
-		reset_control_deassert(cdns_phy->phys[node].lnk_rst);
+			if (phy_t1 == TYPE_DP) {
+				ret = cdns_torrent_dp_get_pll(cdns_phy, phy_t2);
+				if (ret)
+					return ret;
+			}
+
+			reset_control_deassert(cdns_phy->phys[node].lnk_rst);
+		}
 	}
 
 	/* Take the PHY out of reset */
@@ -2826,6 +2844,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	dev_set_drvdata(dev, cdns_phy);
 	cdns_phy->dev = dev;
 	cdns_phy->init_data = data;
+	cdns_phy->protocol_bitmask = 0;
 
 	cdns_phy->sd_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cdns_phy->sd_base))
@@ -3010,6 +3029,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		}
 
 		cdns_phy->phys[node].phy = gphy;
+		cdns_phy->protocol_bitmask |= BIT(cdns_phy->phys[node].phy_type);
 		phy_set_drvdata(gphy, &cdns_phy->phys[node]);
 
 		node++;
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
