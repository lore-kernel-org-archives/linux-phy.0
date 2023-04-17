Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3871C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRP6n26GbiQK5+LggsBM8PgFzf2IyuvF/OELjvYfGKY=; b=jvfvsdDLsYoyk8
	cKbQZ7u9WEyQZGKIbdVgw0/QJ+4/70KJW2GloCq6ZVY6eNK5Aav2JmkzrdSfMdxLFENobe+xDwPUa
	FIs9Wb1m2nJUNnS4QyCIIsor2Dw9Tq6cwzGvbqBxZLU+1i0u4SzF7zaYjf35djWWnHQmZUhcAHCJP
	SWl71WwGheGenjZuU6XTktl+F+U8XX/6bybJ+RDegDR4cZ8h/pQp2ZV5g5wSi5w2Njnsl7Am45vZv
	N3D6ACrYzgGWqvNOfTsAtLnkSG+X1Q7R4d58VKuGLjc6IrfiQdzohw9dAMuYtcHgrkGr42ab0NtvV
	F7BdNYB1O8beLltbOPMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCy-00HG5d-1d;
	Mon, 17 Apr 2023 18:04:08 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCt-00HFzw-2W;
	Mon, 17 Apr 2023 18:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754643; x=1713290643;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qWBx4BKoFDrQnCpgyAMwdPuAQ4nlRpG6oep6/zjdvDg=;
  b=u4Yp0yxyAttCTD5RHzOJ7cFEmjHZ0JAkMX6HUC/rWAS3kguEegFQTm5r
   yCrCLFKFDbg086gcSsVrXK0uEpJBT1+lv7hveIR1h0/EI8ygZOn3rZFVZ
   kjdkm72d6m8YSF0tZxVtpD+FTEmMoeTbh+COrsKuXQtrhaqAC+qwFiJuG
   2tyOj6fWfs/HG/q4LN28qD6j46yQ3wLX0WDCT/xdw/L3ioOtAC4aOnllG
   iz6Kd42l+GZhOcvfKVO+PyP3Y/EgxIVQ3/wGYMKWNou/i9e+5CcrI4CSe
   tXL9zmaU4oJTkVAjgUTfwSEi2KO86MgcCA8F5d6iQabQjvM3mEh1XFXwy
   g==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="147469779"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:52 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:50 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 5/7] phy: sparx5-serdes: power on CMUs individually
Date: Mon, 17 Apr 2023 20:03:33 +0200
Message-ID: <20230417180335.2787494-6-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110403_894852_589E86EE 
X-CRM114-Status: GOOD (  11.67  )
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

Power on the CMU instance, that provides the clock for the serdes, given the
specified serdes mode and index. The CMU instance is looked up, using a
preset map of serdes mode and index to CMU index.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 43 ++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 0e9db7b36b60..a6638d783a01 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -25,6 +25,7 @@
 
 #define SPX5_SERDES_10G_START 13
 #define SPX5_SERDES_25G_START 25
+#define SPX5_SERDES_6G10G_CNT SPX5_SERDES_25G_START
 
 /* Optimal power settings from GUC */
 #define SPX5_SERDES_QUIET_MODE_VAL 0x01ef4e0c
@@ -34,6 +35,7 @@ enum sparx5_10g28cmu_mode {
 	SPX5_SD10G28_CMU_AUX1 = 1,
 	SPX5_SD10G28_CMU_AUX2 = 3,
 	SPX5_SD10G28_CMU_NONE = 4,
+	SPX5_SD10G28_CMU_MAX,
 };
 
 enum sparx5_sd25g28_mode_preset_type {
@@ -1078,6 +1080,39 @@ static int sparx5_serdes_cmu_enable(struct sparx5_serdes_private *priv)
 	return err;
 }
 
+/* Map of 6G/10G serdes mode and index to CMU index. */
+static const int
+sparx5_serdes_cmu_map[SPX5_SD10G28_CMU_MAX][SPX5_SERDES_6G10G_CNT] = {
+	[SPX5_SD10G28_CMU_MAIN] = {  2,  2,  2,  2,  2,
+				     2,  2,  2,  5,  5,
+				     5,  5,  5,  5,  5,
+				     5,  8, 11, 11, 11,
+				    11, 11, 11, 11, 11 },
+	[SPX5_SD10G28_CMU_AUX1] = {  0,  0,  3,  3,  3,
+				     3,  3,  3,  3,  3,
+				     6,  6,  6,  6,  6,
+				     6,  6,  9,  9, 12,
+				    12, 12, 12, 12, 12 },
+	[SPX5_SD10G28_CMU_AUX2] = {  1,  1,  1,  1,  4,
+				     4,  4,  4,  4,  4,
+				     4,  4,  7,  7,  7,
+				     7,  7, 10, 10, 10,
+				    10, 13, 13, 13, 13 },
+	[SPX5_SD10G28_CMU_NONE] = {  1,  1,  1,  1,  4,
+				     4,  4,  4,  4,  4,
+				     4,  4,  7,  7,  7,
+				     7,  7, 10, 10, 10,
+				    10, 13, 13, 13, 13 },
+};
+
+/* Get the index of the CMU which provides the clock for the specified serdes
+ * mode and index.
+ */
+static int sparx5_serdes_cmu_get(enum sparx5_10g28cmu_mode mode, int sd_index)
+{
+	return sparx5_serdes_cmu_map[mode][sd_index];
+}
+
 static void sparx5_serdes_cmu_power_off(struct sparx5_serdes_private *priv)
 {
 	void __iomem *cmu_inst, *cmu_cfg_inst;
@@ -1626,7 +1661,13 @@ static int sparx5_sd10g28_apply_params(struct sparx5_serdes_macro *macro,
 	u32 lane_index = macro->sidx;
 	u32 sd_index = macro->stpidx;
 	void __iomem *sd_inst;
-	u32 value;
+	u32 value, cmu_idx;
+	int err;
+
+	cmu_idx = sparx5_serdes_cmu_get(params->cmu_sel, lane_index);
+	err = sparx5_cmu_cfg(priv, cmu_idx);
+	if (err)
+		return err;
 
 	if (params->is_6g)
 		sd_inst = sdx5_inst_get(priv, TARGET_SD6G_LANE, sd_index);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
