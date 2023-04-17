Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A747C77B76
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETz6DSgZi6mbqzBwUvRJvIyMTAElD8Mx3hWlYEh7Ow8=; b=il+NkhOpodeIib
	upGN0OfHtZb2TyNLa+/UPXtiNr06rFhzrIUdX+BLGK4XaotrvpZlvwud8HAQT56lqycAuVG7WwKXA
	+HtdMU66AgKrxvmDgs4P+lqcFIY1ip4+hS2svaXI1UI292w7XyGf+1o0gBRO+FSFR4r3E1PgI/cDK
	5vAGgd08f7FkYqBKbMcgsa4h0weQIDn5PaFCVQJHUVIRApfgxO/oAUtHWbzTUenVSArcjQNCQBpf+
	HBNACJQ4HwXJYvqKqbnSCXF58r0FCMVvDhH3HeQhlUj2KHy0VlZCPobckbLmMrvoQU9KInS/NAKLN
	SrGQGIXGrYUqWQSWOEsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTDA-00HGCV-0e;
	Mon, 17 Apr 2023 18:04:20 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCr-00HFzr-2U;
	Mon, 17 Apr 2023 18:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754641; x=1713290641;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3uLKkGcs/8EltrBSlra1gjG4qIRlejr3L2TWbWqYgXw=;
  b=InC1BfxSzLL3iNPrIpaar3h1cvvJfddhR+EZWqnbmJ6yyFbSPDLaJzGJ
   T8KgA7Jp6poZGXoCXTdSttF+I9MiFlFyFKtWcAskdmXspn5kVhk01QzaC
   pvAU3nmbALqesHGHMZhVdZR43FegQVVlX9Fij8nvzWz6qqddQ1ZVR6XXA
   vBdvz69728YmbsbRfbNanhQQKDrFZj8VU2GaatIH+NyQp6aKnrAjV08cg
   aQ7dhksiZiUROrOU9SKhqQIEd+Zb4La8Opi4AdM8yfFiTDi2bx6VduHWg
   6+eBfOCXXKPCKNWoI7NJfxAfEIBCFz6nPV349XaYMi8QfIQZBtDZmTteb
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="147469770"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:57 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:48 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:46 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/7] phy: sparx5-serdes: reorder CMU functions
Date: Mon, 17 Apr 2023 20:03:31 +0200
Message-ID: <20230417180335.2787494-4-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110401_877284_D09CE9AE 
X-CRM114-Status: GOOD (  10.85  )
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

Reorder CMU functions, as some of them are now required by the serdes
functions. No functional changes.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 306 +++++++++++++-------------
 1 file changed, 153 insertions(+), 153 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 6ba058b2482f..d8620e0fae7b 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -925,6 +925,159 @@ static void sparx5_sd10g28_get_params(struct sparx5_serdes_macro *macro,
 	*params = init;
 }
 
+static int sparx5_cmu_apply_cfg(struct sparx5_serdes_private *priv,
+				u32 cmu_idx,
+				void __iomem *cmu_tgt,
+				void __iomem *cmu_cfg_tgt,
+				u32 spd10g)
+{
+	void __iomem **regs = priv->regs;
+	struct device *dev = priv->dev;
+	int value;
+
+	cmu_tgt = sdx5_inst_get(priv, TARGET_SD_CMU, cmu_idx);
+	cmu_cfg_tgt = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, cmu_idx);
+
+	if (cmu_idx == 1 || cmu_idx == 4 || cmu_idx == 7 ||
+	    cmu_idx == 10 || cmu_idx == 13) {
+		spd10g = 0;
+	}
+
+	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_SET(1),
+		      SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST,
+		      cmu_cfg_tgt,
+		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_SET(0),
+		      SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST,
+		      cmu_cfg_tgt,
+		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_CMU_RST_SET(1),
+		      SD_CMU_CFG_SD_CMU_CFG_CMU_RST,
+		      cmu_cfg_tgt,
+		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_45_R_DWIDTHCTRL_FROM_HWT_SET(0x1) |
+		      SD_CMU_CMU_45_R_REFCK_SSC_EN_FROM_HWT_SET(0x1) |
+		      SD_CMU_CMU_45_R_LINK_BUF_EN_FROM_HWT_SET(0x1) |
+		      SD_CMU_CMU_45_R_BIAS_EN_FROM_HWT_SET(0x1) |
+		      SD_CMU_CMU_45_R_EN_RATECHG_CTRL_SET(0x0),
+		      SD_CMU_CMU_45_R_DWIDTHCTRL_FROM_HWT |
+		      SD_CMU_CMU_45_R_REFCK_SSC_EN_FROM_HWT |
+		      SD_CMU_CMU_45_R_LINK_BUF_EN_FROM_HWT |
+		      SD_CMU_CMU_45_R_BIAS_EN_FROM_HWT |
+		      SD_CMU_CMU_45_R_EN_RATECHG_CTRL,
+		      cmu_tgt,
+		      SD_CMU_CMU_45(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0_SET(0),
+		      SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0,
+		      cmu_tgt,
+		      SD_CMU_CMU_47(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_1B_CFG_RESERVE_7_0_SET(0),
+		      SD_CMU_CMU_1B_CFG_RESERVE_7_0,
+		      cmu_tgt,
+		      SD_CMU_CMU_1B(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_0D_CFG_JC_BYP_SET(0x1),
+		      SD_CMU_CMU_0D_CFG_JC_BYP,
+		      cmu_tgt,
+		      SD_CMU_CMU_0D(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_1F_CFG_VTUNE_SEL_SET(1),
+		      SD_CMU_CMU_1F_CFG_VTUNE_SEL,
+		      cmu_tgt,
+		      SD_CMU_CMU_1F(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0_SET(3),
+		      SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0,
+		      cmu_tgt,
+		      SD_CMU_CMU_00(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0_SET(3),
+		      SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0,
+		      cmu_tgt,
+		      SD_CMU_CMU_05(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_30_R_PLL_DLOL_EN_SET(1),
+		      SD_CMU_CMU_30_R_PLL_DLOL_EN,
+		      cmu_tgt,
+		      SD_CMU_CMU_30(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_09_CFG_SW_10G_SET(spd10g),
+		      SD_CMU_CMU_09_CFG_SW_10G,
+		      cmu_tgt,
+		      SD_CMU_CMU_09(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_CMU_RST_SET(0),
+		      SD_CMU_CFG_SD_CMU_CFG_CMU_RST,
+		      cmu_cfg_tgt,
+		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
+
+	msleep(20);
+
+	sdx5_inst_rmw(SD_CMU_CMU_44_R_PLL_RSTN_SET(0),
+		      SD_CMU_CMU_44_R_PLL_RSTN,
+		      cmu_tgt,
+		      SD_CMU_CMU_44(cmu_idx));
+
+	sdx5_inst_rmw(SD_CMU_CMU_44_R_PLL_RSTN_SET(1),
+		      SD_CMU_CMU_44_R_PLL_RSTN,
+		      cmu_tgt,
+		      SD_CMU_CMU_44(cmu_idx));
+
+	msleep(20);
+
+	value = readl(sdx5_addr(regs, SD_CMU_CMU_E0(cmu_idx)));
+	value = SD_CMU_CMU_E0_PLL_LOL_UDL_GET(value);
+
+	if (value) {
+		dev_err(dev, "CMU PLL Loss of Lock: 0x%x\n", value);
+		return -EINVAL;
+	}
+	sdx5_inst_rmw(SD_CMU_CMU_0D_CFG_PMA_TX_CK_PD_SET(0),
+		      SD_CMU_CMU_0D_CFG_PMA_TX_CK_PD,
+		      cmu_tgt,
+		      SD_CMU_CMU_0D(cmu_idx));
+	return 0;
+}
+
+static int sparx5_cmu_cfg(struct sparx5_serdes_private *priv, u32 cmu_idx)
+{
+	void __iomem *cmu_tgt, *cmu_cfg_tgt;
+	u32 spd10g = 1;
+
+	if (cmu_idx == 1 || cmu_idx == 4 || cmu_idx == 7 ||
+	    cmu_idx == 10 || cmu_idx == 13) {
+		spd10g = 0;
+	}
+
+	cmu_tgt = sdx5_inst_get(priv, TARGET_SD_CMU, cmu_idx);
+	cmu_cfg_tgt = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, cmu_idx);
+
+	return sparx5_cmu_apply_cfg(priv, cmu_idx, cmu_tgt, cmu_cfg_tgt, spd10g);
+}
+
+static int sparx5_serdes_cmu_enable(struct sparx5_serdes_private *priv)
+{
+	int idx, err = 0;
+
+	if (!priv->cmu_enabled) {
+		for (idx = 0; idx < SPX5_CMU_MAX; idx++) {
+			err  = sparx5_cmu_cfg(priv, idx);
+			if (err) {
+				dev_err(priv->dev, "CMU %u, error: %d\n", idx, err);
+				goto leave;
+			}
+		}
+		priv->cmu_enabled = true;
+	}
+leave:
+	return err;
+}
+
 static void sparx5_sd25g28_reset(void __iomem *regs[],
 				 struct sparx5_sd25g28_params *params,
 				 u32 sd_index)
@@ -1966,159 +2119,6 @@ static int sparx5_serdes_clock_config(struct sparx5_serdes_macro *macro)
 	return 0;
 }
 
-static int sparx5_cmu_apply_cfg(struct sparx5_serdes_private *priv,
-				u32 cmu_idx,
-				void __iomem *cmu_tgt,
-				void __iomem *cmu_cfg_tgt,
-				u32 spd10g)
-{
-	void __iomem **regs = priv->regs;
-	struct device *dev = priv->dev;
-	int value;
-
-	cmu_tgt = sdx5_inst_get(priv, TARGET_SD_CMU, cmu_idx);
-	cmu_cfg_tgt = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, cmu_idx);
-
-	if (cmu_idx == 1 || cmu_idx == 4 || cmu_idx == 7 ||
-	    cmu_idx == 10 || cmu_idx == 13) {
-		spd10g = 0;
-	}
-
-	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_SET(1),
-		      SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST,
-		      cmu_cfg_tgt,
-		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_SET(0),
-		      SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST,
-		      cmu_cfg_tgt,
-		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_CMU_RST_SET(1),
-		      SD_CMU_CFG_SD_CMU_CFG_CMU_RST,
-		      cmu_cfg_tgt,
-		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_45_R_DWIDTHCTRL_FROM_HWT_SET(0x1) |
-		      SD_CMU_CMU_45_R_REFCK_SSC_EN_FROM_HWT_SET(0x1) |
-		      SD_CMU_CMU_45_R_LINK_BUF_EN_FROM_HWT_SET(0x1) |
-		      SD_CMU_CMU_45_R_BIAS_EN_FROM_HWT_SET(0x1) |
-		      SD_CMU_CMU_45_R_EN_RATECHG_CTRL_SET(0x0),
-		      SD_CMU_CMU_45_R_DWIDTHCTRL_FROM_HWT |
-		      SD_CMU_CMU_45_R_REFCK_SSC_EN_FROM_HWT |
-		      SD_CMU_CMU_45_R_LINK_BUF_EN_FROM_HWT |
-		      SD_CMU_CMU_45_R_BIAS_EN_FROM_HWT |
-		      SD_CMU_CMU_45_R_EN_RATECHG_CTRL,
-		      cmu_tgt,
-		      SD_CMU_CMU_45(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0_SET(0),
-		      SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0,
-		      cmu_tgt,
-		      SD_CMU_CMU_47(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_1B_CFG_RESERVE_7_0_SET(0),
-		      SD_CMU_CMU_1B_CFG_RESERVE_7_0,
-		      cmu_tgt,
-		      SD_CMU_CMU_1B(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_0D_CFG_JC_BYP_SET(0x1),
-		      SD_CMU_CMU_0D_CFG_JC_BYP,
-		      cmu_tgt,
-		      SD_CMU_CMU_0D(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_1F_CFG_VTUNE_SEL_SET(1),
-		      SD_CMU_CMU_1F_CFG_VTUNE_SEL,
-		      cmu_tgt,
-		      SD_CMU_CMU_1F(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0_SET(3),
-		      SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0,
-		      cmu_tgt,
-		      SD_CMU_CMU_00(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0_SET(3),
-		      SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0,
-		      cmu_tgt,
-		      SD_CMU_CMU_05(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_30_R_PLL_DLOL_EN_SET(1),
-		      SD_CMU_CMU_30_R_PLL_DLOL_EN,
-		      cmu_tgt,
-		      SD_CMU_CMU_30(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_09_CFG_SW_10G_SET(spd10g),
-		      SD_CMU_CMU_09_CFG_SW_10G,
-		      cmu_tgt,
-		      SD_CMU_CMU_09(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_CMU_RST_SET(0),
-		      SD_CMU_CFG_SD_CMU_CFG_CMU_RST,
-		      cmu_cfg_tgt,
-		      SD_CMU_CFG_SD_CMU_CFG(cmu_idx));
-
-	msleep(20);
-
-	sdx5_inst_rmw(SD_CMU_CMU_44_R_PLL_RSTN_SET(0),
-		      SD_CMU_CMU_44_R_PLL_RSTN,
-		      cmu_tgt,
-		      SD_CMU_CMU_44(cmu_idx));
-
-	sdx5_inst_rmw(SD_CMU_CMU_44_R_PLL_RSTN_SET(1),
-		      SD_CMU_CMU_44_R_PLL_RSTN,
-		      cmu_tgt,
-		      SD_CMU_CMU_44(cmu_idx));
-
-	msleep(20);
-
-	value = readl(sdx5_addr(regs, SD_CMU_CMU_E0(cmu_idx)));
-	value = SD_CMU_CMU_E0_PLL_LOL_UDL_GET(value);
-
-	if (value) {
-		dev_err(dev, "CMU PLL Loss of Lock: 0x%x\n", value);
-		return -EINVAL;
-	}
-	sdx5_inst_rmw(SD_CMU_CMU_0D_CFG_PMA_TX_CK_PD_SET(0),
-		      SD_CMU_CMU_0D_CFG_PMA_TX_CK_PD,
-		      cmu_tgt,
-		      SD_CMU_CMU_0D(cmu_idx));
-	return 0;
-}
-
-static int sparx5_cmu_cfg(struct sparx5_serdes_private *priv, u32 cmu_idx)
-{
-	void __iomem *cmu_tgt, *cmu_cfg_tgt;
-	u32 spd10g = 1;
-
-	if (cmu_idx == 1 || cmu_idx == 4 || cmu_idx == 7 ||
-	    cmu_idx == 10 || cmu_idx == 13) {
-		spd10g = 0;
-	}
-
-	cmu_tgt = sdx5_inst_get(priv, TARGET_SD_CMU, cmu_idx);
-	cmu_cfg_tgt = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, cmu_idx);
-
-	return sparx5_cmu_apply_cfg(priv, cmu_idx, cmu_tgt, cmu_cfg_tgt, spd10g);
-}
-
-static int sparx5_serdes_cmu_enable(struct sparx5_serdes_private *priv)
-{
-	int idx, err = 0;
-
-	if (!priv->cmu_enabled) {
-		for (idx = 0; idx < SPX5_CMU_MAX; idx++) {
-			err  = sparx5_cmu_cfg(priv, idx);
-			if (err) {
-				dev_err(priv->dev, "CMU %u, error: %d\n", idx, err);
-				goto leave;
-			}
-		}
-		priv->cmu_enabled = true;
-	}
-leave:
-	return err;
-}
-
 static int sparx5_serdes_get_serdesmode(phy_interface_t portmode, int speed)
 {
 	switch (portmode) {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
