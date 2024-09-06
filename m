Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7709BCE7AA3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 13:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rl2ciToGjJ+ffCCCYhEx3yBvgYjogNKkrda/bGVe2ek=; b=js9VrP6jqF9Lox
	buBvnh9i70RDX1PD8WCADHpyeRgxInDmwhR5FPEH4P3oz6MwS1wvWJ4N9eXfC2yzACf5xHqJBSZzj
	0Sff/+lUqEKH2+EBWZVVW5T0YVX6H/9Tw4oLwF2e5PMLm5+yARptpX3ZebX7OQhgLDyQrMNkrfmcT
	OzNtccxB5tUkT86PsvAA2IN5ekE3xIfHfAz11tzgIA4UavFyV6wK2R/Br1OHHuNujACED+oz8EZgj
	xwo/5YQgRcBo11+KRio+aMT+6LHajTKsduixZiicgtDwaRxAmhzApNxGTSFu9KzyS0CSaFy8IYHaS
	ZzhlUF06j5aKUlkyrR0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYaL-0000000CGnF-41fz;
	Fri, 06 Sep 2024 13:01:09 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYTZ-0000000CFAO-3cJo;
	Fri, 06 Sep 2024 12:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627249; x=1757163249;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=7l9NrJzDRwjdZHAMyRsabzZVk1Sx9YAMGgdYTdk2pig=;
  b=RupywhfZLVF0s62X31MNJ7H3ryYh2pv/+H+OL+TgZiBtP6Ss7ILxnEV0
   Q31pE9cJ7MG8YRt1ulWplvtGBcaTPWeOpFnKEfXNW0snIuoXMIQJop7ws
   +/4IyoZEIUcDahOfgdIlYW4d6jgsL6BH8anuRyaKs6cxyR0JSuhpO9KcG
   y4Y3ceqIlA3WmppiFP3pYPHDNQCNONYsYk5bIGLmHtS/57cKJb7CyLrV0
   tQ6sQmXgZBDejejp8XjExCxY6yZ6nsypLsgN9u63EtClvyC5Cf8BrAaW1
   7o38RVFNZuP9Yg8EuMxFzGmAZ0i6+gjubIJtvhuZq+i9LS11tRruy5V6n
   w==;
X-CSE-ConnectionGUID: sLMTJciFQoOe3QYYo7sv+w==
X-CSE-MsgGUID: sd/0LsJtRLK/d2HFUXfY3w==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="31334948"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:54:06 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:34 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:32 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:46 +0200
Subject: [PATCH 9/9] phy: lan969x-serdes: add support for lan969x serdes
 driver
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-9-8d630614c58a@microchip.com>
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
In-Reply-To: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_055410_214861_C7C6F08C 
X-CRM114-Status: GOOD (  18.62  )
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

Add support for lan969x SERDES driver. Lan969x has ten 10G SERDES'es
which share the same features and data rates as the Sparx5 SERDES'es.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 88 +++++++++++++++++++++++++++++++++++
 drivers/phy/microchip/sparx5_serdes.h |  2 +
 2 files changed, 90 insertions(+)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 05fdf225ff43..39ebc5b21258 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -25,6 +25,8 @@
 #define SPX5_SERDES_25G_START 25
 #define SPX5_SERDES_6G10G_CNT SPX5_SERDES_25G_START
 
+#define LAN969X_SERDES_10G_CNT 10
+
 /* Optimal power settings from GUC */
 #define SPX5_SERDES_QUIET_MODE_VAL 0x01ef4e0c
 
@@ -36,6 +38,13 @@ const unsigned int sparx5_serdes_tsize[TSIZE_LAST] = {
 	[TC_SD_LANE] = 25,
 };
 
+const unsigned int lan969x_serdes_tsize[TSIZE_LAST] = {
+	[TC_SD10G_LANE] = 10,
+	[TC_SD_CMU] = 6,
+	[TC_SD_CMU_CFG] = 6,
+	[TC_SD_LANE] = 10,
+};
+
 /* Pointer to the register target size table */
 const unsigned int *tsize;
 
@@ -1096,6 +1105,24 @@ static int sparx5_serdes_cmu_get(enum sparx5_10g28cmu_mode mode, int sd_index)
 	return sparx5_serdes_cmu_map[mode][sd_index];
 }
 
+/* Map of 6G/10G serdes mode and index to CMU index. */
+static const int
+lan969x_serdes_cmu_map[SPX5_SD10G28_CMU_MAX][LAN969X_SERDES_10G_CNT] = {
+	[SPX5_SD10G28_CMU_MAIN] = { 2, 2, 2, 2, 2,
+				    2, 2, 2, 5, 5 },
+	[SPX5_SD10G28_CMU_AUX1] = { 0, 0, 3, 3, 3,
+				    3, 3, 3, 3, 3 },
+	[SPX5_SD10G28_CMU_AUX2] = { 1, 1, 1, 1, 4,
+				    4, 4, 4, 4, 4 },
+	[SPX5_SD10G28_CMU_NONE] = { 1, 1, 1, 1, 4,
+				    4, 4, 4, 4, 4 },
+};
+
+static int lan969x_serdes_cmu_get(enum sparx5_10g28cmu_mode mode, int sd_index)
+{
+	return lan969x_serdes_cmu_map[mode][sd_index];
+}
+
 static void sparx5_serdes_cmu_power_off(struct sparx5_serdes_private *priv)
 {
 	void __iomem *cmu_inst, *cmu_cfg_inst;
@@ -2184,6 +2211,10 @@ static int sparx5_serdes_clock_config(struct sparx5_serdes_macro *macro)
 {
 	struct sparx5_serdes_private *priv = macro->priv;
 
+	/* Clock is auto-detected in 100Base-FX mode on lan969x */
+	if (priv->data->type == SPX5_TARGET_LAN969X)
+		return 0;
+
 	if (macro->serdesmode == SPX5_SD_MODE_100FX) {
 		u32 freq = priv->coreclock == 250000000 ? 2 :
 			priv->coreclock == 500000000 ? 1 : 0;
@@ -2395,6 +2426,12 @@ static void sparx5_serdes_type_set(struct sparx5_serdes_macro *macro, int sidx)
 	}
 }
 
+static void lan969x_serdes_type_set(struct sparx5_serdes_macro *macro, int sidx)
+{
+	macro->serdestype = SPX5_SDT_10G;
+	macro->stpidx = macro->sidx;
+}
+
 static int sparx5_phy_create(struct sparx5_serdes_private *priv,
 			   int idx, struct phy **phy)
 {
@@ -2519,6 +2556,41 @@ static struct sparx5_serdes_io_resource sparx5_serdes_iomap[] =  {
 	{ TARGET_SD_LANE_25G + 7, 0x5c8000 }, /* 0x610dd0000: sd_lane_25g_32 */
 };
 
+static const struct sparx5_serdes_io_resource lan969x_serdes_iomap[] =  {
+	{ TARGET_SD_CMU,               0x0     }, /* 0xe3410000 */
+	{ TARGET_SD_CMU +  1,          0x8000  }, /* 0xe3418000 */
+	{ TARGET_SD_CMU +  2,          0x10000 }, /* 0xe3420000 */
+	{ TARGET_SD_CMU +  3,          0x18000 }, /* 0xe3428000 */
+	{ TARGET_SD_CMU +  4,          0x20000 }, /* 0xe3430000 */
+	{ TARGET_SD_CMU +  5,          0x28000 }, /* 0xe3438000 */
+	{ TARGET_SD_CMU_CFG,           0x30000 }, /* 0xe3440000 */
+	{ TARGET_SD_CMU_CFG +  1,      0x38000 }, /* 0xe3448000 */
+	{ TARGET_SD_CMU_CFG +  2,      0x40000 }, /* 0xe3450000 */
+	{ TARGET_SD_CMU_CFG +  3,      0x48000 }, /* 0xe3458000 */
+	{ TARGET_SD_CMU_CFG +  4,      0x50000 }, /* 0xe3460000 */
+	{ TARGET_SD_CMU_CFG +  5,      0x58000 }, /* 0xe3468000 */
+	{ TARGET_SD10G_LANE,           0x60000 }, /* 0xe3470000 */
+	{ TARGET_SD10G_LANE +  1,      0x68000 }, /* 0xe3478000 */
+	{ TARGET_SD10G_LANE +  2,      0x70000 }, /* 0xe3480000 */
+	{ TARGET_SD10G_LANE +  3,      0x78000 }, /* 0xe3488000 */
+	{ TARGET_SD10G_LANE +  4,      0x80000 }, /* 0xe3490000 */
+	{ TARGET_SD10G_LANE +  5,      0x88000 }, /* 0xe3498000 */
+	{ TARGET_SD10G_LANE +  6,      0x90000 }, /* 0xe34a0000 */
+	{ TARGET_SD10G_LANE +  7,      0x98000 }, /* 0xe34a8000 */
+	{ TARGET_SD10G_LANE +  8,      0xa0000 }, /* 0xe34b0000 */
+	{ TARGET_SD10G_LANE +  9,      0xa8000 }, /* 0xe34b8000 */
+	{ TARGET_SD_LANE,             0x100000 }, /* 0xe3510000 */
+	{ TARGET_SD_LANE +  1,        0x108000 }, /* 0xe3518000 */
+	{ TARGET_SD_LANE +  2,        0x110000 }, /* 0xe3520000 */
+	{ TARGET_SD_LANE +  3,        0x118000 }, /* 0xe3528000 */
+	{ TARGET_SD_LANE +  4,        0x120000 }, /* 0xe3530000 */
+	{ TARGET_SD_LANE +  5,        0x128000 }, /* 0xe3538000 */
+	{ TARGET_SD_LANE +  6,        0x130000 }, /* 0xe3540000 */
+	{ TARGET_SD_LANE +  7,        0x138000 }, /* 0xe3548000 */
+	{ TARGET_SD_LANE +  8,        0x140000 }, /* 0xe3550000 */
+	{ TARGET_SD_LANE +  9,        0x148000 }, /* 0xe3558000 */
+};
+
 static const struct sparx5_serdes_match_data sparx5_desc = {
 	.type = SPX5_TARGET_SPARX5,
 	.iomap = sparx5_serdes_iomap,
@@ -2534,6 +2606,21 @@ static const struct sparx5_serdes_match_data sparx5_desc = {
 	},
 };
 
+static const struct sparx5_serdes_match_data lan969x_desc = {
+	.type = SPX5_TARGET_LAN969X,
+	.iomap = lan969x_serdes_iomap,
+	.iomap_size = ARRAY_SIZE(lan969x_serdes_iomap),
+	.tsize = lan969x_serdes_tsize,
+	.consts = {
+		.sd_max       = 10,
+		.cmu_max      = 6,
+	},
+	.ops = {
+		.serdes_type_set      = &lan969x_serdes_type_set,
+		.serdes_cmu_get       = &lan969x_serdes_cmu_get,
+	}
+};
+
 /* Client lookup function, uses serdes index */
 static struct phy *sparx5_serdes_xlate(struct device *dev,
 				     const struct of_phandle_args *args)
@@ -2635,6 +2722,7 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 
 static const struct of_device_id sparx5_serdes_match[] = {
 	{ .compatible = "microchip,sparx5-serdes", .data = &sparx5_desc },
+	{ .compatible = "microchip,lan969x-serdes", .data = &lan969x_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sparx5_serdes_match);
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 1beaa3d05a5d..d7093d0b09c0 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -36,6 +36,8 @@ enum sparx5_10g28cmu_mode {
 
 enum sparx5_target {
 	SPX5_TARGET_SPARX5,
+	SPX5_TARGET_LAN969X,
+
 };
 
 struct sparx5_serdes_macro {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
