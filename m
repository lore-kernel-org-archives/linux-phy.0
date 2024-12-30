Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA04E77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7zqRcRk3B1DkSzGui+FT7d/+keT+fP6cxZxYaX2xgYc=; b=S7QmCkPbzrzRFL
	+Bo/SOteWlcmPbVApRxqiDLIhgI4h0KWfmJjm2ZGjh1nCWY0Fa+sCPZCtAQCbgeSLrNjmrfuSGqgC
	DIJ2+W8U7TI1dxnjPaVzQ44/23m6FN0snHjWQ/UbFMn0USfp7FI0zx3N5hiG9g1j/wMpCXR3HHal8
	WIQLCtpHqednCkxexQcTXvQ+uIKMcMtc9ma3dS0yoUhVKPNYCffcyucxVUjtAYzsJxjVyL4xhfoUj
	39ZMZcbqZwOU+PswcEieOpOgp2CEwKpIAUDlZ+x2Zd1bOsRNiM1uPVs9XmrANX21qXuCleXrM8qpY
	6TkxMJJYrBo2KmdWPs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFHJ-00000005EO6-2Uwx;
	Mon, 30 Dec 2024 12:53:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFHG-00000005EMb-0pVG
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:53:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BUCrK3I056959;
	Mon, 30 Dec 2024 06:53:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735563200;
	bh=NXAYXu0gK8BiAI1HzbNL3YfptEPCvbPjuFO3eJ+xls4=;
	h=From:To:CC:Subject:Date;
	b=wjQ9ACdKey1P1L3CeTuy5tTb4wFL2KLy/Dx8PzK1YuJM9maG+mXgiI1AO4F81+FEI
	 JVcvPaD6hnPx0RyLf8OXDHjFNd5OnzgQeSJoMYLg2C3V+2T7SbuLM4GyNZQONkf2uw
	 mp7NCj+P1qc8zscXYdhhId5PO+epL/t07V2LsoRU=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BUCrKm1017442;
	Mon, 30 Dec 2024 06:53:20 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 30
 Dec 2024 06:53:20 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 30 Dec 2024 06:53:20 -0600
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BUCrJeP065861;
	Mon, 30 Dec 2024 06:53:20 -0600
From: Devarsh Thakkar <devarsht@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <vigneshr@ti.com>,
        <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <j-choudhary@ti.com>,
        <h-shenoy@ti.com>, <devarsht@ti.com>, <praneeth@ti.com>,
        <u-kumar1@ti.com>
Subject: [PATCH] phy: cadence: cdns-dphy: Fix PLL lock and common ready poll timeout
Date: Mon, 30 Dec 2024 18:23:19 +0530
Message-ID: <20241230125319.941372-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_045346_396571_0A9B87EF 
X-CRM114-Status: GOOD (  16.31  )
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

After adding the initial checks for register poll timeout and traces for
measuring total initialization time [1], it was observed that the driver
was timing out while polling for PLL lock up to happen and O_CMN_READY bit
to be set:

"[ 19.967949] phy phy-301c0000.phy.2: Timed out waiting for DPHY PLL lock
assertion [ 19.968976] phy phy-301c0000.phy.2: Timed out waiting for
o_cmn_ready assertion"

this also increased the overall DSIT Tx + DPHY Tx initialization time which
was observed as 271ms (20.238306 - 19.966884) on TI's AM62L SoC:

"kworker/u8:1-29      [001] .....    19.966884:
cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
kworker/u8:1-29      [001] .....    20.238306:
cdns_dsi_bridge_atomic_pre_enable: Initialization complete"

This was caused due to multiple issues as discussed below along with the
updates done to fix those issues :

1) PLL lockup and O_CMN_READY assertion can only happen after common state
   machine gets enabled, but driver was polling them before the common
   state machine was enabled. To fix this, add new function callbacks for
   polling on PLL lock and O_CMN_READY assertion and call them only after
   common state machine gets enabled.

2) The cadence DPHY IP registers (as described in J721E TRM [2]) has
   default reset values for register fields in some of the registers
   which were getting reset to 0 as driver was not preserving them and
   overwriting those bits to 0 while updating the registers thus impacting
   the overall PLL lockup time. For e.g. DPHY_TX_CMN0_CMN_DIG_TBIT2 has
   bits 1-8 used for PLL wait time calibrations with default value as 0x14h
   and DPHY_TX_CMN0_CMN_DIG_TBIT10 has bits 27-20 used for PWM Byteclock
   divider which is default set to 0x8. To avoid resetting these register
   bit-fields, perform read-modify-write while updating above registers.

With above updates, the PLL lockup and O_CMN_READ timeout assertion is not
observed anymore and DSI Tx + DPHY Tx initialization time is reduced to
394 us (19.435259 - 19.434861) as shared below:

"kworker/u8:6-74      [000] .....    19.434861:
cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
kworker/u8:6-74      [000] .....    19.435259:
cdns_dsi_bridge_atomic_pre_enable: Initialization complete"

NOTE: This is tested on top of existing series on cadence DSI under review
[4].

Full profiling logs before and after changes done also attached here [3].

[1]: Profiling patch:
Link: https://gist.github.com/devarsht/f3bcb6a2e7e97a0667c817cfa208ed4c

[2]: J721E TRM Section 12.8.4 DPHY_TX Registers:
Link: https://www.ti.com/lit/zip/spruil1

[3]: Profiling logs:
Link: https://gist.github.com/devarsht/bc84be106209c373a0be4e33b5f019bb

[4]: Tested on top of existing cadence DSI series:
Link: https://lore.kernel.org/all/20241019195411.266860-1-aradhya.bhatia@linux.dev

Cc: stable@vger.kernel.org
Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
---
 drivers/phy/cadence/cdns-dphy.c | 49 ++++++++++++++++++++++++++-------
 1 file changed, 39 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index dddb66de6dba..c248a506ddc2 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -98,6 +98,8 @@ struct cdns_dphy_ops {
 				 enum cdns_dphy_clk_lane_cfg cfg);
 	void (*set_pll_cfg)(struct cdns_dphy *dphy,
 			    const struct cdns_dphy_cfg *cfg);
+	void (*wait_for_pll_lock)(struct cdns_dphy *dphy);
+	void (*wait_for_cmn_ready)(struct cdns_dphy *dphy);
 	unsigned long (*get_wakeup_time_ns)(struct cdns_dphy *dphy);
 };
 
@@ -191,6 +193,18 @@ static unsigned long cdns_dphy_get_wakeup_time_ns(struct cdns_dphy *dphy)
 	return dphy->ops->get_wakeup_time_ns(dphy);
 }
 
+static void cdns_dphy_wait_for_pll_lock(struct cdns_dphy *dphy)
+{
+	if (dphy->ops->wait_for_pll_lock)
+		dphy->ops->wait_for_pll_lock(dphy);
+}
+
+static void cdns_dphy_wait_for_cmn_ready(struct cdns_dphy *dphy)
+{
+	if (dphy->ops->wait_for_cmn_ready)
+		dphy->ops->wait_for_cmn_ready(dphy);
+}
+
 static unsigned long cdns_dphy_ref_get_wakeup_time_ns(struct cdns_dphy *dphy)
 {
 	/* Default wakeup time is 800 ns (in a simulated environment). */
@@ -212,7 +226,7 @@ static void cdns_dphy_ref_set_pll_cfg(struct cdns_dphy *dphy,
 	writel(DPHY_CMN_FBDIV_FROM_REG |
 	       DPHY_CMN_FBDIV_VAL(fbdiv_low, fbdiv_high),
 	       dphy->regs + DPHY_CMN_FBDIV);
-	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
+	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
 	       DPHY_CMN_PWM_DIV(0x8),
 	       dphy->regs + DPHY_CMN_PWM);
 }
@@ -232,13 +246,11 @@ static unsigned long cdns_dphy_j721e_get_wakeup_time_ns(struct cdns_dphy *dphy)
 static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
 					const struct cdns_dphy_cfg *cfg)
 {
-	u32 status;
-
 	/*
 	 * set the PWM and PLL Byteclk divider settings to recommended values
 	 * which is same as that of in ref ops
 	 */
-	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
+	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
 	       DPHY_CMN_PWM_DIV(0x8),
 	       dphy->regs + DPHY_CMN_PWM);
 
@@ -249,13 +261,25 @@ static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
 
 	writel(DPHY_TX_J721E_WIZ_LANE_RSTB,
 	       dphy->regs + DPHY_TX_J721E_WIZ_RST_CTRL);
+}
 
-	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
-			   (status & DPHY_TX_WIZ_PLL_LOCK), 0, POLL_TIMEOUT_US);
+static void cdns_dphy_j721e_wait_for_pll_lock(struct cdns_dphy *dphy)
+{
+	u32 status;
+
+	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
+			       status & DPHY_TX_WIZ_PLL_LOCK, 0, POLL_TIMEOUT_US))
+		dev_err(&dphy->phy->dev, "Timed out waiting for DPHY PLL lock assertion\n");
+}
 
-	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
-			   (status & DPHY_TX_WIZ_O_CMN_READY), 0,
-			   POLL_TIMEOUT_US);
+static void cdns_dphy_j721e_wait_for_cmn_ready(struct cdns_dphy *dphy)
+{
+	u32 status;
+
+	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
+			       status & DPHY_TX_WIZ_O_CMN_READY, 0,
+			       POLL_TIMEOUT_US))
+		dev_err(&dphy->phy->dev, "Timed out waiting for o_cmn_ready assertion\n");
 }
 
 static void cdns_dphy_j721e_set_psm_div(struct cdns_dphy *dphy, u8 div)
@@ -278,6 +302,8 @@ static const struct cdns_dphy_ops j721e_dphy_ops = {
 	.get_wakeup_time_ns = cdns_dphy_j721e_get_wakeup_time_ns,
 	.set_pll_cfg = cdns_dphy_j721e_set_pll_cfg,
 	.set_psm_div = cdns_dphy_j721e_set_psm_div,
+	.wait_for_pll_lock = cdns_dphy_j721e_wait_for_pll_lock,
+	.wait_for_cmn_ready = cdns_dphy_j721e_wait_for_cmn_ready,
 };
 
 static int cdns_dphy_config_from_opts(struct phy *phy,
@@ -384,9 +410,12 @@ static int cdns_dphy_power_on(struct phy *phy)
 	clk_prepare_enable(dphy->pll_ref_clk);
 
 	/* Start TX state machine. */
-	writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
+	writel(readl(dphy->regs + DPHY_CMN_SSM) | DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
 	       dphy->regs + DPHY_CMN_SSM);
 
+	cdns_dphy_wait_for_pll_lock(dphy);
+	cdns_dphy_wait_for_cmn_ready(dphy);
+
 	return 0;
 }
 
-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
