Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D6F7C3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 17:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0xCLGpzZnBSDqink2SPkJzxgXWqjNIRIPig3T8dV6s=; b=XTvDJtnZiqDE5N
	tdIGPJkwPlhggdnj0Pt9gd80xN73NPKobSOAyOSJrDIBgTXRxP3uC42b3r/8A7gKlwuk25AXjMiZa
	CSD5fpjpn+wqrX9sDfqaBy6RB/vCw0E9dlCwhr466ZfSKZc+Zdfc2xxkgUhn8ljSlTAECyiBzn79e
	vJayvrXpn6+Xi/zhpjSl6V1Eel9qIl7LMinxAv5nKLSt8d4p9KZaDE9YEj7hIwDvPXS29V6ec/MhH
	UKVpfx7YxmU4UsVTs/KKg8IwLXfDU2qe2bgEZoRI0u6KAmATmty/1O6SKQEp3n6ZjfzJmCUf9yjeL
	MZ6lEAmkencFou8UmttA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdi-0000000EsMk-0pEU;
	Thu, 11 Jul 2024 17:31:30 +0000
Received: from smtp-16.smtpout.orange.fr ([80.12.242.16] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdd-0000000EsGW-2a4S
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 17:31:28 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id RxdPsAr1uHTrpRxddsVLjD; Thu, 11 Jul 2024 19:31:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720719085;
	bh=2HetOYmpzK1sGlzN2mO3qHKDtInquWxN0l2bx7SFEt8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=WFyzItvlGuxdJnGLk8vjtmYenDHl51saVFeWZnxBolEx6f4Imh+8AlWl4uTGjv+8g
	 g1CpWsrwVGVypYCkjjwoEXTjewsvcdffv6rnWtNshKUa9Gl+u57VHTfP66aymaLLVm
	 5ZP1DCe+c+MRpcIDcObYpuw6qg+FKDVf+vVEedoolxlJIL6Ycr+XjZG6ZJWZdzIjAd
	 C3CLAFknIIYFBswl7ItAWuXCIb/2SX1Qn20VIWrkEuIaDR5LeU0PUJsvLU4+zR8cIg
	 jV2s+YRTdebUubu+/3fJSEixyUK5cArLlVnKRv+HNd0SNaZrJ/lcOikzrzbUOE8fld
	 QWZBv3EKiNdDA==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 19:31:25 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 1/4] phy: cadence-torrent: Constify struct cdns_reg_pairs
Date: Thu, 11 Jul 2024 19:31:06 +0200
Message-ID: <803684a6f0c24d7e091dc8d285dd49c6fd31a010.1720718240.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_103125_979439_77BF553C 
X-CRM114-Status: GOOD (  11.82  )
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

'struct cdns_reg_pairs' is not modified in this driver.

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  78154	  20222	     16	  98392	  18058	drivers/phy/cadence/phy-cadence-torrent.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  85130	  13214	     16	  98360	  18038	drivers/phy/cadence/phy-cadence-torrent.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/phy/cadence/phy-cadence-torrent.c | 168 +++++++++++-----------
 1 file changed, 84 insertions(+), 84 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 56ce82a47f88..6551dcf99639 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -422,7 +422,7 @@ struct cdns_reg_pairs {
 };
 
 struct cdns_torrent_vals {
-	struct cdns_reg_pairs *reg_pairs;
+	const struct cdns_reg_pairs *reg_pairs;
 	u32 num_regs;
 };
 
@@ -2315,7 +2315,7 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	enum cdns_torrent_ssc_mode ssc = inst->ssc_mode;
 	struct cdns_torrent_vals *phy_pma_cmn_vals;
 	struct cdns_torrent_vals *pcs_cmn_vals;
-	struct cdns_reg_pairs *reg_pairs;
+	const struct cdns_reg_pairs *reg_pairs;
 	struct regmap *regmap;
 	u32 num_regs;
 	int i, j;
@@ -2471,8 +2471,8 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 	enum cdns_torrent_phy_type phy_t1, phy_t2;
 	struct cdns_torrent_vals *phy_pma_cmn_vals;
 	struct cdns_torrent_vals *pcs_cmn_vals;
+	const struct cdns_reg_pairs *reg_pairs;
 	int i, j, node, mlane, num_lanes, ret;
-	struct cdns_reg_pairs *reg_pairs;
 	enum cdns_torrent_ssc_mode ssc;
 	struct regmap *regmap;
 	u32 num_regs;
@@ -3079,11 +3079,11 @@ static void cdns_torrent_phy_remove(struct platform_device *pdev)
 }
 
 /* SGMII and QSGMII link configuration */
-static struct cdns_reg_pairs sgmii_qsgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs sgmii_qsgmii_link_cmn_regs[] = {
 	{0x0002, PHY_PLL_CFG}
 };
 
-static struct cdns_reg_pairs sgmii_qsgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_qsgmii_xcvr_diag_ln_regs[] = {
 	{0x0003, XCVR_DIAG_HSCLK_DIV},
 	{0x0113, XCVR_DIAG_PLLDRC_CTRL}
 };
@@ -3155,18 +3155,18 @@ static DEFINE_NOIRQ_DEV_PM_OPS(cdns_torrent_phy_pm_ops,
 			       cdns_torrent_phy_resume_noirq);
 
 /* USB and DP link configuration */
-static struct cdns_reg_pairs usb_dp_link_cmn_regs[] = {
+static const struct cdns_reg_pairs usb_dp_link_cmn_regs[] = {
 	{0x0002, PHY_PLL_CFG},
 	{0x8600, CMN_PDIAG_PLL0_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs usb_dp_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs usb_dp_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0041, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs dp_usb_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs dp_usb_xcvr_diag_ln_regs[] = {
 	{0x0001, XCVR_DIAG_HSCLK_SEL},
 	{0x0009, XCVR_DIAG_PLLDRC_CTRL}
 };
@@ -3187,19 +3187,19 @@ static struct cdns_torrent_vals dp_usb_xcvr_diag_ln_vals = {
 };
 
 /* USXGMII and SGMII/QSGMII link configuration */
-static struct cdns_reg_pairs usxgmii_sgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs usxgmii_sgmii_link_cmn_regs[] = {
 	{0x0002, PHY_PLL_CFG},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0601, CMN_PDIAG_PLL1_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs usxgmii_sgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs usxgmii_sgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0001, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs sgmii_usxgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_usxgmii_xcvr_diag_ln_regs[] = {
 	{0x0111, XCVR_DIAG_HSCLK_SEL},
 	{0x0103, XCVR_DIAG_HSCLK_DIV},
 	{0x0A9B, XCVR_DIAG_PLLDRC_CTRL}
@@ -3221,7 +3221,7 @@ static struct cdns_torrent_vals sgmii_usxgmii_xcvr_diag_ln_vals = {
 };
 
 /* Multilink USXGMII, using PLL0, 156.25 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs ml_usxgmii_pll0_156_25_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs ml_usxgmii_pll0_156_25_no_ssc_cmn_regs[] = {
 	{0x0014, CMN_PLL0_DSM_FBH_OVRD_M0},
 	{0x0005, CMN_PLL0_DSM_FBL_OVRD_M0},
 	{0x061B, CMN_PLL0_VCOCAL_INIT_TMR},
@@ -3239,7 +3239,7 @@ static struct cdns_torrent_vals ml_usxgmii_pll0_156_25_no_ssc_cmn_vals = {
 };
 
 /* Multilink SGMII/QSGMII, using PLL1, 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs ml_sgmii_pll1_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs ml_sgmii_pll1_100_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x001E, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x000C, CMN_PLL1_DSM_FBL_OVRD_M0},
@@ -3254,7 +3254,7 @@ static struct cdns_torrent_vals ml_sgmii_pll1_100_no_ssc_cmn_vals = {
 };
 
 /* TI J7200, Multilink USXGMII, using PLL0, 156.25 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs j7200_ml_usxgmii_pll0_156_25_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs j7200_ml_usxgmii_pll0_156_25_no_ssc_cmn_regs[] = {
 	{0x0014, CMN_SSM_BIAS_TMR},
 	{0x0028, CMN_PLLSM0_PLLPRE_TMR},
 	{0x00A4, CMN_PLLSM0_PLLLOCK_TMR},
@@ -3286,7 +3286,7 @@ static struct cdns_torrent_vals j7200_ml_usxgmii_pll0_156_25_no_ssc_cmn_vals = {
 };
 
 /* TI J7200, Multilink SGMII/QSGMII, using PLL1, 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs j7200_ml_sgmii_pll1_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs j7200_ml_sgmii_pll1_100_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PLLSM1_PLLPRE_TMR},
 	{0x00A4, CMN_PLLSM1_PLLLOCK_TMR},
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
@@ -3303,20 +3303,20 @@ static struct cdns_torrent_vals j7200_ml_sgmii_pll1_100_no_ssc_cmn_vals = {
 };
 
 /* PCIe and USXGMII link configuration */
-static struct cdns_reg_pairs pcie_usxgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_usxgmii_link_cmn_regs[] = {
 	{0x0003, PHY_PLL_CFG},
 	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M1},
 	{0x0400, CMN_PDIAG_PLL1_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs pcie_usxgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs pcie_usxgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0012, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs usxgmii_pcie_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs usxgmii_pcie_xcvr_diag_ln_regs[] = {
 	{0x0011, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0089, XCVR_DIAG_PLLDRC_CTRL}
@@ -3340,7 +3340,7 @@ static struct cdns_torrent_vals usxgmii_pcie_xcvr_diag_ln_vals = {
 /*
  * Multilink USXGMII, using PLL1, 156.25 MHz Ref clk, no SSC
  */
-static struct cdns_reg_pairs ml_usxgmii_pll1_156_25_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs ml_usxgmii_pll1_156_25_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x0014, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x0005, CMN_PLL1_DSM_FBL_OVRD_M0},
@@ -3355,7 +3355,7 @@ static struct cdns_reg_pairs ml_usxgmii_pll1_156_25_no_ssc_cmn_regs[] = {
 	{0x007F, CMN_TXPDCAL_TUNE}
 };
 
-static struct cdns_reg_pairs ml_usxgmii_156_25_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs ml_usxgmii_156_25_no_ssc_tx_ln_regs[] = {
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3 },
@@ -3363,7 +3363,7 @@ static struct cdns_reg_pairs ml_usxgmii_156_25_no_ssc_tx_ln_regs[] = {
 	{0x0000, XCVR_DIAG_PSC_OVRD}
 };
 
-static struct cdns_reg_pairs ml_usxgmii_156_25_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs ml_usxgmii_156_25_no_ssc_rx_ln_regs[] = {
 	{0x091D, RX_PSC_A0},
 	{0x0900, RX_PSC_A2},
 	{0x0100, RX_PSC_A3},
@@ -3397,7 +3397,7 @@ static struct cdns_torrent_vals ml_usxgmii_156_25_no_ssc_rx_ln_vals = {
 };
 
 /* TI USXGMII configuration: Enable cmn_refclk_rcv_out_en */
-static struct cdns_reg_pairs ti_usxgmii_phy_pma_cmn_regs[] = {
+static const struct cdns_reg_pairs ti_usxgmii_phy_pma_cmn_regs[] = {
 	{0x0040, PHY_PMA_CMN_CTRL1},
 };
 
@@ -3407,12 +3407,12 @@ static struct cdns_torrent_vals ti_usxgmii_phy_pma_cmn_vals = {
 };
 
 /* Single USXGMII link configuration */
-static struct cdns_reg_pairs sl_usxgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_usxgmii_link_cmn_regs[] = {
 	{0x0000, PHY_PLL_CFG},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs sl_usxgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sl_usxgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0001, XCVR_DIAG_PLLDRC_CTRL}
@@ -3429,7 +3429,7 @@ static struct cdns_torrent_vals sl_usxgmii_xcvr_diag_ln_vals = {
 };
 
 /* Single link USXGMII, 156.25 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_usxgmii_156_25_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_usxgmii_156_25_no_ssc_cmn_regs[] = {
 	{0x0014, CMN_SSM_BIAS_TMR},
 	{0x0028, CMN_PLLSM0_PLLPRE_TMR},
 	{0x00A4, CMN_PLLSM0_PLLLOCK_TMR},
@@ -3467,7 +3467,7 @@ static struct cdns_reg_pairs sl_usxgmii_156_25_no_ssc_cmn_regs[] = {
 	{0x0138, CMN_PLL1_LOCK_PLLCNT_START}
 };
 
-static struct cdns_reg_pairs usxgmii_156_25_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs usxgmii_156_25_no_ssc_tx_ln_regs[] = {
 	{0x07A2, TX_RCVDET_ST_TMR},
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
@@ -3476,7 +3476,7 @@ static struct cdns_reg_pairs usxgmii_156_25_no_ssc_tx_ln_regs[] = {
 	{0x0000, XCVR_DIAG_PSC_OVRD}
 };
 
-static struct cdns_reg_pairs usxgmii_156_25_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs usxgmii_156_25_no_ssc_rx_ln_regs[] = {
 	{0x0014, RX_SDCAL0_INIT_TMR},
 	{0x0062, RX_SDCAL0_ITER_TMR},
 	{0x0014, RX_SDCAL1_INIT_TMR},
@@ -3514,19 +3514,19 @@ static struct cdns_torrent_vals usxgmii_156_25_no_ssc_rx_ln_vals = {
 };
 
 /* PCIe and DP link configuration */
-static struct cdns_reg_pairs pcie_dp_link_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_dp_link_cmn_regs[] = {
 	{0x0003, PHY_PLL_CFG},
 	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M1}
 };
 
-static struct cdns_reg_pairs pcie_dp_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs pcie_dp_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0012, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs dp_pcie_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs dp_pcie_xcvr_diag_ln_regs[] = {
 	{0x0001, XCVR_DIAG_HSCLK_SEL},
 	{0x0009, XCVR_DIAG_PLLDRC_CTRL}
 };
@@ -3547,19 +3547,19 @@ static struct cdns_torrent_vals dp_pcie_xcvr_diag_ln_vals = {
 };
 
 /* DP Multilink, 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs dp_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs dp_100_no_ssc_cmn_regs[] = {
 	{0x007F, CMN_TXPUCAL_TUNE},
 	{0x007F, CMN_TXPDCAL_TUNE}
 };
 
-static struct cdns_reg_pairs dp_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs dp_100_no_ssc_tx_ln_regs[] = {
 	{0x00FB, TX_PSC_A0},
 	{0x04AA, TX_PSC_A2},
 	{0x04AA, TX_PSC_A3},
 	{0x000F, XCVR_DIAG_BIDI_CTRL}
 };
 
-static struct cdns_reg_pairs dp_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs dp_100_no_ssc_rx_ln_regs[] = {
 	{0x0000, RX_PSC_A0},
 	{0x0000, RX_PSC_A2},
 	{0x0000, RX_PSC_A3},
@@ -3585,11 +3585,11 @@ static struct cdns_torrent_vals dp_100_no_ssc_rx_ln_vals = {
 };
 
 /* Single DisplayPort(DP) link configuration */
-static struct cdns_reg_pairs sl_dp_link_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_dp_link_cmn_regs[] = {
 	{0x0000, PHY_PLL_CFG},
 };
 
-static struct cdns_reg_pairs sl_dp_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_PLLDRC_CTRL}
 };
@@ -3605,7 +3605,7 @@ static struct cdns_torrent_vals sl_dp_xcvr_diag_ln_vals = {
 };
 
 /* Single DP, 19.2 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_dp_19_2_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_dp_19_2_no_ssc_cmn_regs[] = {
 	{0x0014, CMN_SSM_BIAS_TMR},
 	{0x0027, CMN_PLLSM0_PLLPRE_TMR},
 	{0x00A1, CMN_PLLSM0_PLLLOCK_TMR},
@@ -3642,7 +3642,7 @@ static struct cdns_reg_pairs sl_dp_19_2_no_ssc_cmn_regs[] = {
 	{0x0003, CMN_PLL1_VCOCAL_TCTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_19_2_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_19_2_no_ssc_tx_ln_regs[] = {
 	{0x0780, TX_RCVDET_ST_TMR},
 	{0x00FB, TX_PSC_A0},
 	{0x04AA, TX_PSC_A2},
@@ -3650,7 +3650,7 @@ static struct cdns_reg_pairs sl_dp_19_2_no_ssc_tx_ln_regs[] = {
 	{0x000F, XCVR_DIAG_BIDI_CTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_19_2_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_19_2_no_ssc_rx_ln_regs[] = {
 	{0x0000, RX_PSC_A0},
 	{0x0000, RX_PSC_A2},
 	{0x0000, RX_PSC_A3},
@@ -3676,7 +3676,7 @@ static struct cdns_torrent_vals sl_dp_19_2_no_ssc_rx_ln_vals = {
 };
 
 /* Single DP, 25 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_dp_25_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_dp_25_no_ssc_cmn_regs[] = {
 	{0x0019, CMN_SSM_BIAS_TMR},
 	{0x0032, CMN_PLLSM0_PLLPRE_TMR},
 	{0x00D1, CMN_PLLSM0_PLLLOCK_TMR},
@@ -3713,7 +3713,7 @@ static struct cdns_reg_pairs sl_dp_25_no_ssc_cmn_regs[] = {
 	{0x0003, CMN_PLL1_VCOCAL_TCTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_25_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_25_no_ssc_tx_ln_regs[] = {
 	{0x09C4, TX_RCVDET_ST_TMR},
 	{0x00FB, TX_PSC_A0},
 	{0x04AA, TX_PSC_A2},
@@ -3721,7 +3721,7 @@ static struct cdns_reg_pairs sl_dp_25_no_ssc_tx_ln_regs[] = {
 	{0x000F, XCVR_DIAG_BIDI_CTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_25_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_25_no_ssc_rx_ln_regs[] = {
 	{0x0000, RX_PSC_A0},
 	{0x0000, RX_PSC_A2},
 	{0x0000, RX_PSC_A3},
@@ -3747,19 +3747,19 @@ static struct cdns_torrent_vals sl_dp_25_no_ssc_rx_ln_vals = {
 };
 
 /* Single DP, 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_dp_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_dp_100_no_ssc_cmn_regs[] = {
 	{0x0003, CMN_PLL0_VCOCAL_TCTRL},
 	{0x0003, CMN_PLL1_VCOCAL_TCTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_100_no_ssc_tx_ln_regs[] = {
 	{0x00FB, TX_PSC_A0},
 	{0x04AA, TX_PSC_A2},
 	{0x04AA, TX_PSC_A3},
 	{0x000F, XCVR_DIAG_BIDI_CTRL}
 };
 
-static struct cdns_reg_pairs sl_dp_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs sl_dp_100_no_ssc_rx_ln_regs[] = {
 	{0x0000, RX_PSC_A0},
 	{0x0000, RX_PSC_A2},
 	{0x0000, RX_PSC_A3},
@@ -3785,19 +3785,19 @@ static struct cdns_torrent_vals sl_dp_100_no_ssc_rx_ln_vals = {
 };
 
 /* USB and SGMII/QSGMII link configuration */
-static struct cdns_reg_pairs usb_sgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs usb_sgmii_link_cmn_regs[] = {
 	{0x0002, PHY_PLL_CFG},
 	{0x8600, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0601, CMN_PDIAG_PLL1_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs usb_sgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs usb_sgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0041, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs sgmii_usb_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_usb_xcvr_diag_ln_regs[] = {
 	{0x0011, XCVR_DIAG_HSCLK_SEL},
 	{0x0003, XCVR_DIAG_HSCLK_DIV},
 	{0x009B, XCVR_DIAG_PLLDRC_CTRL}
@@ -3819,20 +3819,20 @@ static struct cdns_torrent_vals sgmii_usb_xcvr_diag_ln_vals = {
 };
 
 /* PCIe and USB Unique SSC link configuration */
-static struct cdns_reg_pairs pcie_usb_link_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_usb_link_cmn_regs[] = {
 	{0x0003, PHY_PLL_CFG},
 	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M1},
 	{0x8600, CMN_PDIAG_PLL1_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs pcie_usb_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs pcie_usb_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0012, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs usb_pcie_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs usb_pcie_xcvr_diag_ln_regs[] = {
 	{0x0011, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x00C9, XCVR_DIAG_PLLDRC_CTRL}
@@ -3854,7 +3854,7 @@ static struct cdns_torrent_vals usb_pcie_xcvr_diag_ln_vals = {
 };
 
 /* USB 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs usb_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs usb_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL0_DSM_DIAG_M1},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
@@ -3913,12 +3913,12 @@ static struct cdns_torrent_vals usb_100_int_ssc_cmn_vals = {
 };
 
 /* Single USB link configuration */
-static struct cdns_reg_pairs sl_usb_link_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_usb_link_cmn_regs[] = {
 	{0x0000, PHY_PLL_CFG},
 	{0x8600, CMN_PDIAG_PLL0_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs sl_usb_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sl_usb_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0041, XCVR_DIAG_PLLDRC_CTRL}
@@ -3935,7 +3935,7 @@ static struct cdns_torrent_vals sl_usb_xcvr_diag_ln_vals = {
 };
 
 /* USB PHY PCS common configuration */
-static struct cdns_reg_pairs usb_phy_pcs_cmn_regs[] = {
+static const struct cdns_reg_pairs usb_phy_pcs_cmn_regs[] = {
 	{0x0A0A, PHY_PIPE_USB3_GEN2_PRE_CFG0},
 	{0x1000, PHY_PIPE_USB3_GEN2_POST_CFG0},
 	{0x0010, PHY_PIPE_USB3_GEN2_POST_CFG1}
@@ -3947,7 +3947,7 @@ static struct cdns_torrent_vals usb_phy_pcs_cmn_vals = {
 };
 
 /* USB 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_usb_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_usb_100_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x001E, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x000C, CMN_PLL1_DSM_FBL_OVRD_M0},
@@ -3962,14 +3962,14 @@ static struct cdns_torrent_vals sl_usb_100_no_ssc_cmn_vals = {
 	.num_regs = ARRAY_SIZE(sl_usb_100_no_ssc_cmn_regs),
 };
 
-static struct cdns_reg_pairs usb_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs usb_100_no_ssc_cmn_regs[] = {
 	{0x8200, CMN_CDIAG_CDB_PWRI_OVRD},
 	{0x8200, CMN_CDIAG_XCVRC_PWRI_OVRD},
 	{0x007F, CMN_TXPUCAL_TUNE},
 	{0x007F, CMN_TXPDCAL_TUNE}
 };
 
-static struct cdns_reg_pairs usb_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs usb_100_no_ssc_tx_ln_regs[] = {
 	{0x02FF, TX_PSC_A0},
 	{0x06AF, TX_PSC_A1},
 	{0x06AE, TX_PSC_A2},
@@ -3979,7 +3979,7 @@ static struct cdns_reg_pairs usb_100_no_ssc_tx_ln_regs[] = {
 	{0x0003, XCVR_DIAG_PSC_OVRD}
 };
 
-static struct cdns_reg_pairs usb_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs usb_100_no_ssc_rx_ln_regs[] = {
 	{0x0D1D, RX_PSC_A0},
 	{0x0D1D, RX_PSC_A1},
 	{0x0D00, RX_PSC_A2},
@@ -4018,7 +4018,7 @@ static struct cdns_torrent_vals usb_100_no_ssc_rx_ln_vals = {
 };
 
 /* Single link USB, 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs sl_usb_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_usb_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
 	{0x0509, CMN_PDIAG_PLL0_CP_PADJ_M0},
@@ -4065,20 +4065,20 @@ static struct cdns_torrent_vals sl_usb_100_int_ssc_cmn_vals = {
 };
 
 /* PCIe and SGMII/QSGMII Unique SSC link configuration */
-static struct cdns_reg_pairs pcie_sgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_sgmii_link_cmn_regs[] = {
 	{0x0003, PHY_PLL_CFG},
 	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0},
 	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M1},
 	{0x0601, CMN_PDIAG_PLL1_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs pcie_sgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs pcie_sgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0001, XCVR_DIAG_HSCLK_DIV},
 	{0x0012, XCVR_DIAG_PLLDRC_CTRL}
 };
 
-static struct cdns_reg_pairs sgmii_pcie_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_pcie_xcvr_diag_ln_regs[] = {
 	{0x0011, XCVR_DIAG_HSCLK_SEL},
 	{0x0003, XCVR_DIAG_HSCLK_DIV},
 	{0x009B, XCVR_DIAG_PLLDRC_CTRL}
@@ -4100,7 +4100,7 @@ static struct cdns_torrent_vals sgmii_pcie_xcvr_diag_ln_vals = {
 };
 
 /* SGMII 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_sgmii_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_sgmii_100_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x001E, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x000C, CMN_PLL1_DSM_FBL_OVRD_M0},
@@ -4113,12 +4113,12 @@ static struct cdns_torrent_vals sl_sgmii_100_no_ssc_cmn_vals = {
 	.num_regs = ARRAY_SIZE(sl_sgmii_100_no_ssc_cmn_regs),
 };
 
-static struct cdns_reg_pairs sgmii_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sgmii_100_no_ssc_cmn_regs[] = {
 	{0x007F, CMN_TXPUCAL_TUNE},
 	{0x007F, CMN_TXPDCAL_TUNE}
 };
 
-static struct cdns_reg_pairs sgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3},
@@ -4127,7 +4127,7 @@ static struct cdns_reg_pairs sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x0002, XCVR_DIAG_PSC_OVRD}
 };
 
-static struct cdns_reg_pairs ti_sgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs ti_sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3},
@@ -4137,7 +4137,7 @@ static struct cdns_reg_pairs ti_sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x4000, XCVR_DIAG_RXCLK_CTRL}
 };
 
-static struct cdns_reg_pairs sgmii_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_100_no_ssc_rx_ln_regs[] = {
 	{0x091D, RX_PSC_A0},
 	{0x0900, RX_PSC_A2},
 	{0x0100, RX_PSC_A3},
@@ -4176,7 +4176,7 @@ static struct cdns_torrent_vals sgmii_100_no_ssc_rx_ln_vals = {
 };
 
 /* TI J7200, multilink SGMII */
-static struct cdns_reg_pairs j7200_sgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs j7200_sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x07A2, TX_RCVDET_ST_TMR},
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
@@ -4192,7 +4192,7 @@ static struct cdns_torrent_vals j7200_sgmii_100_no_ssc_tx_ln_vals = {
 	.num_regs = ARRAY_SIZE(j7200_sgmii_100_no_ssc_tx_ln_regs),
 };
 
-static struct cdns_reg_pairs j7200_sgmii_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs j7200_sgmii_100_no_ssc_rx_ln_regs[] = {
 	{0x0014, RX_SDCAL0_INIT_TMR},
 	{0x0062, RX_SDCAL0_ITER_TMR},
 	{0x0014, RX_SDCAL1_INIT_TMR},
@@ -4220,7 +4220,7 @@ static struct cdns_torrent_vals j7200_sgmii_100_no_ssc_rx_ln_vals = {
 };
 
 /* SGMII 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs sgmii_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sgmii_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL0_DSM_DIAG_M1},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
@@ -4277,7 +4277,7 @@ static struct cdns_torrent_vals sgmii_100_int_ssc_cmn_vals = {
 };
 
 /* QSGMII 100 MHz Ref clk, no SSC */
-static struct cdns_reg_pairs sl_qsgmii_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_qsgmii_100_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x001E, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x000C, CMN_PLL1_DSM_FBL_OVRD_M0},
@@ -4290,12 +4290,12 @@ static struct cdns_torrent_vals sl_qsgmii_100_no_ssc_cmn_vals = {
 	.num_regs = ARRAY_SIZE(sl_qsgmii_100_no_ssc_cmn_regs),
 };
 
-static struct cdns_reg_pairs qsgmii_100_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs qsgmii_100_no_ssc_cmn_regs[] = {
 	{0x007F, CMN_TXPUCAL_TUNE},
 	{0x007F, CMN_TXPDCAL_TUNE}
 };
 
-static struct cdns_reg_pairs qsgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3},
@@ -4305,7 +4305,7 @@ static struct cdns_reg_pairs qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x0002, XCVR_DIAG_PSC_OVRD}
 };
 
-static struct cdns_reg_pairs ti_qsgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs ti_qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3},
@@ -4316,7 +4316,7 @@ static struct cdns_reg_pairs ti_qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x4000, XCVR_DIAG_RXCLK_CTRL}
 };
 
-static struct cdns_reg_pairs qsgmii_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs qsgmii_100_no_ssc_rx_ln_regs[] = {
 	{0x091D, RX_PSC_A0},
 	{0x0900, RX_PSC_A2},
 	{0x0100, RX_PSC_A3},
@@ -4355,7 +4355,7 @@ static struct cdns_torrent_vals qsgmii_100_no_ssc_rx_ln_vals = {
 };
 
 /* TI J7200, multilink QSGMII */
-static struct cdns_reg_pairs j7200_qsgmii_100_no_ssc_tx_ln_regs[] = {
+static const struct cdns_reg_pairs j7200_qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x07A2, TX_RCVDET_ST_TMR},
 	{0x00F3, TX_PSC_A0},
 	{0x04A2, TX_PSC_A2},
@@ -4372,7 +4372,7 @@ static struct cdns_torrent_vals j7200_qsgmii_100_no_ssc_tx_ln_vals = {
 	.num_regs = ARRAY_SIZE(j7200_qsgmii_100_no_ssc_tx_ln_regs),
 };
 
-static struct cdns_reg_pairs j7200_qsgmii_100_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs j7200_qsgmii_100_no_ssc_rx_ln_regs[] = {
 	{0x0014, RX_SDCAL0_INIT_TMR},
 	{0x0062, RX_SDCAL0_ITER_TMR},
 	{0x0014, RX_SDCAL1_INIT_TMR},
@@ -4400,7 +4400,7 @@ static struct cdns_torrent_vals j7200_qsgmii_100_no_ssc_rx_ln_vals = {
 };
 
 /* QSGMII 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs qsgmii_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs qsgmii_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL0_DSM_DIAG_M1},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
@@ -4457,12 +4457,12 @@ static struct cdns_torrent_vals qsgmii_100_int_ssc_cmn_vals = {
 };
 
 /* Single SGMII/QSGMII link configuration */
-static struct cdns_reg_pairs sl_sgmii_link_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_sgmii_link_cmn_regs[] = {
 	{0x0000, PHY_PLL_CFG},
 	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0}
 };
 
-static struct cdns_reg_pairs sl_sgmii_xcvr_diag_ln_regs[] = {
+static const struct cdns_reg_pairs sl_sgmii_xcvr_diag_ln_regs[] = {
 	{0x0000, XCVR_DIAG_HSCLK_SEL},
 	{0x0003, XCVR_DIAG_HSCLK_DIV},
 	{0x0013, XCVR_DIAG_PLLDRC_CTRL}
@@ -4479,7 +4479,7 @@ static struct cdns_torrent_vals sl_sgmii_xcvr_diag_ln_vals = {
 };
 
 /* Multi link PCIe, 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs pcie_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL0_DSM_DIAG_M1},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
@@ -4534,7 +4534,7 @@ static struct cdns_torrent_vals pcie_100_int_ssc_cmn_vals = {
 };
 
 /* Single link PCIe, 100 MHz Ref clk, internal SSC */
-static struct cdns_reg_pairs sl_pcie_100_int_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs sl_pcie_100_int_ssc_cmn_regs[] = {
 	{0x0004, CMN_PLL0_DSM_DIAG_M0},
 	{0x0004, CMN_PLL0_DSM_DIAG_M1},
 	{0x0004, CMN_PLL1_DSM_DIAG_M0},
@@ -4589,13 +4589,13 @@ static struct cdns_torrent_vals sl_pcie_100_int_ssc_cmn_vals = {
 };
 
 /* PCIe, 100 MHz Ref clk, no SSC & external SSC */
-static struct cdns_reg_pairs pcie_100_ext_no_ssc_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_100_ext_no_ssc_cmn_regs[] = {
 	{0x0028, CMN_PDIAG_PLL1_CP_PADJ_M0},
 	{0x001E, CMN_PLL1_DSM_FBH_OVRD_M0},
 	{0x000C, CMN_PLL1_DSM_FBL_OVRD_M0}
 };
 
-static struct cdns_reg_pairs pcie_100_ext_no_ssc_rx_ln_regs[] = {
+static const struct cdns_reg_pairs pcie_100_ext_no_ssc_rx_ln_regs[] = {
 	{0x0019, RX_REE_TAP1_CLIP},
 	{0x0019, RX_REE_TAP2TON_CLIP},
 	{0x0001, RX_DIAG_ACYA}
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
