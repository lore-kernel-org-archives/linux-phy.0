Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49895ECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMFZfbvY77sTQFyGdgTM62fdK8qnXX44s2kV/xWl/SE=; b=qy3IzcQqKfbuaE
	thT9uCBI92b8xLP4ShC+SDjdGn7KGxEtiwzl8NT6hrFEcvUHdoYvEX7iSqtqBD0qqQR47x9D9h9jV
	o/6Len5gK070JtpMVno6zqw1yeeK8L+tUiyEfym53ZaQhXS+RuZE7i4JkjUOh3ug+CpwdLwkThwvG
	bqvkKjibjIeqHe+WEFSxiA9/H9UF8bzvbaGFLBObSUfLF6v1All5oSYg85R1QvpGkZCikSFBYPwot
	qyGVFnsZzRgYA88Ouov0wDXXR2K0h7g9IeVAEry6ed7uwhJ8wVhmxqFOYtlQMAn7TERqNi09qAvdv
	TKDBHe9H8185FXW8xKfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngGe-00000002SeF-04Wv;
	Mon, 09 Sep 2024 15:25:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng7I-00000002QKy-27Th;
	Mon, 09 Sep 2024 15:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KO3mx83rhiofXFEacDaEKfdoN8lDyz2y+IA8uA52SU4=; b=fy/9ToZSmBQh99sLTk4SGQ4Su7
	3OOt1A64JYXsqWLMbXFZeV9jZJ+0f3+QN/Lm+VVlND9WcnFhvwbYd3THV9W2V/jvIWpuSpLeiPd2p
	WVDgumZX7Obxl3VRxW8g8fQOj7qBU8B0SPfzno2+OW6y3bjl2WmRlT7MIYGhR/EFaaE2Ka4ZmjztF
	CirZK2uRKx/8lGnNcF2JwW+MHJqjxT4wrv6XXEnOLEMOMm7lodhN+onblW5rkYGhTeC7+hpYryloN
	76l/CmKZnCxsd+X1hveU5RTNDcsdhShJOpy0x80KDpoqiboBIYJXJTOBsjp+Vzpn+dQG15hCvCpRq
	Mj8exSBA==;
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sng7F-00000000SIG-1RaD;
	Mon, 09 Sep 2024 15:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894945; x=1757430945;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=On7oQSERags6XaDtW1E8fxE7K+my80Se0j1QxVQOoII=;
  b=xAhUnrEKWm5vA5ybY5BGkKjUVW/rITdiewTaFOT9p+qNFEgWKhAYitgO
   lBSM/RSPlcdA7zFr7fl4laO3BrjmTZT7+YtImRqVxH9PvwCsFPPabaZBI
   pWUrYGpfbBIcMBENag1s8ZKYUyahwugpVmBPjyCSQt5NZt6dUCI/o7MVU
   Am/peF0H3RVQeMb0Stmpa//4pXbeLyKNVNZF0ZXNIlkr9UI4pnd9iJVrI
   tpx34S9vkeQnmeOTAdUqdYc/tXrLAVZ4wFbyz7Ez4JjO9gAYcnM7/1myM
   u9bG3gziDfgimjEorR+36N78JGasmL8UxqDmfXQG9yKn0ozobV5MBFhna
   g==;
X-CSE-ConnectionGUID: 2asziJ13SmWKAWPwHD4niQ==
X-CSE-MsgGUID: 3w9YeV8PQ7GOBjHkvudBIw==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="198959149"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:32 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:15:15 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:15:13 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:49 +0200
Subject: [PATCH v2 9/9] phy: lan969x-serdes: add support for lan969x serdes
 driver
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-9-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_161545_769103_33275DC4 
X-CRM114-Status: GOOD (  19.08  )
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
index 05fdf225ff43..320cf5b50a8c 100644
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
+	{ .compatible = "microchip,lan9691-serdes", .data = &lan969x_desc },
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
