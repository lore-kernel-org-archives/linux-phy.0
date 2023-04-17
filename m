Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77374C77B76
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYgttBdMEToO6GB9Mn2l1amHSdN45tgnKBw1178w+S0=; b=NohEOextkbilyu
	GiD4VQgBYFqBr0XiVq9sbA1BB1M3oiee5++nLKvTDidsM9gmXGj1+dGquVLG1D09sde25K0+bsnoJ
	r95AVrLC3w5cgrLKa2Tw3dSpuNR+8sXor70XgXAdPK/ZnhiIjD+PaC+/mX08jAiqKyxv/1X8S6BRi
	9SXgLF28jKx5Ndn7oPaZQAhWvdSWNdsP8nRbQCzxnkrj7E2Xwo7LIfUxDZM0DLs5os4S8SPd6iaD4
	L7W9Agb4JLEnb0k2m4UEjvzoB8jLa5bHNoroAmr18jr8uyin9jfPTr0bQH02m4Ty4jny5lgdIF3lV
	Evat0wIWvDGW4F5dafdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCg-00HFwA-0N;
	Mon, 17 Apr 2023 18:03:50 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCd-00HFvR-0p;
	Mon, 17 Apr 2023 18:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754627; x=1713290627;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ZWQh9zj/V577BO9z6BgacIjliHqRr9/mCbIBPB/bemc=;
  b=klGg0WCYcHmheX79s2XoetzjLYNUZkNEJpGeH9vWso1kpGg5rJreJy03
   YdKWyaH1kHi9OB6UBIZ5+/DZBb4DQT/35UKjcZ80VqwqcdV1RQ27bzaqm
   JK/KAnaK3t7IwzSVGR58ltRL1x7Fcv6tKLjN9+lY+whIME8sYyoM/Q5ur
   1s0N7dXUDpOudibf6xIeQjTho1gwgKqnebwjfw/cfV/2Hh4A8awnoeYn+
   yViCRaFlH3ntGifop7GR5NHNxc8U0xv/ZoC0BoU5rvm0/iBqOn3uGVVZ5
   4xoIi0ciPS80TLdg1bDQ9Y0UFu5cVUUpiRB9SEXLiZyMNpml3YO0tXf2f
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="221268900"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:46 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:44 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/7] phy: sparx5-serdes: configure optimal quiet mode for serdes lanes
Date: Mon, 17 Apr 2023 20:03:30 +0200
Message-ID: <20230417180335.2787494-3-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110347_296332_744ECA21 
X-CRM114-Status: GOOD (  12.45  )
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

All the serdes lanes of the sparx5 will transition between normal mode
and quiet mode, depending on activity. Make sure that the quiet mode is
configured optimally for all lanes initially. Although not much, this
will save a small amount of power.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 32 ++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index ab1b0986aa67..6ba058b2482f 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -26,6 +26,9 @@
 #define SPX5_SERDES_10G_START 13
 #define SPX5_SERDES_25G_START 25
 
+/* Optimal power settings from GUC */
+#define SPX5_SERDES_QUIET_MODE_VAL 0x01ef4e0c
+
 enum sparx5_10g28cmu_mode {
 	SPX5_SD10G28_CMU_MAIN = 0,
 	SPX5_SD10G28_CMU_AUX1 = 1,
@@ -1899,7 +1902,7 @@ static int sparx5_sd10g28_config(struct sparx5_serdes_macro *macro, bool reset)
 static int sparx5_serdes_power_save(struct sparx5_serdes_macro *macro, u32 pwdn)
 {
 	struct sparx5_serdes_private *priv = macro->priv;
-	void __iomem *sd_inst;
+	void __iomem *sd_inst, *sd_lane_inst;
 
 	if (macro->serdestype == SPX5_SDT_6G)
 		sd_inst = sdx5_inst_get(priv, TARGET_SD6G_LANE, macro->stpidx);
@@ -1909,12 +1912,36 @@ static int sparx5_serdes_power_save(struct sparx5_serdes_macro *macro, u32 pwdn)
 		sd_inst = sdx5_inst_get(priv, TARGET_SD25G_LANE, macro->stpidx);
 
 	if (macro->serdestype == SPX5_SDT_25G) {
+		sd_lane_inst = sdx5_inst_get(priv, TARGET_SD_LANE_25G,
+					     macro->stpidx);
+		/* Take serdes out of reset */
+		sdx5_inst_rmw(SD_LANE_25G_SD_LANE_CFG_EXT_CFG_RST_SET(0),
+			      SD_LANE_25G_SD_LANE_CFG_EXT_CFG_RST, sd_lane_inst,
+			      SD_LANE_25G_SD_LANE_CFG(0));
+
+		/* Configure optimal settings for quiet mode */
+		sdx5_inst_rmw(SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE_SET(SPX5_SERDES_QUIET_MODE_VAL),
+			      SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE,
+			      sd_lane_inst, SD_LANE_25G_QUIET_MODE_6G(0));
+
 		sdx5_inst_rmw(SD25G_LANE_LANE_04_LN_CFG_PD_DRIVER_SET(pwdn),
 			      SD25G_LANE_LANE_04_LN_CFG_PD_DRIVER,
 			      sd_inst,
 			      SD25G_LANE_LANE_04(0));
 	} else {
 		/* 6G and 10G */
+		sd_lane_inst = sdx5_inst_get(priv, TARGET_SD_LANE, macro->sidx);
+
+		/* Take serdes out of reset */
+		sdx5_inst_rmw(SD_LANE_SD_LANE_CFG_EXT_CFG_RST_SET(0),
+			      SD_LANE_SD_LANE_CFG_EXT_CFG_RST, sd_lane_inst,
+			      SD_LANE_SD_LANE_CFG(0));
+
+		/* Configure optimal settings for quiet mode */
+		sdx5_inst_rmw(SD_LANE_QUIET_MODE_6G_QUIET_MODE_SET(SPX5_SERDES_QUIET_MODE_VAL),
+			      SD_LANE_QUIET_MODE_6G_QUIET_MODE, sd_lane_inst,
+			      SD_LANE_QUIET_MODE_6G(0));
+
 		sdx5_inst_rmw(SD10G_LANE_LANE_06_CFG_PD_DRIVER_SET(pwdn),
 			      SD10G_LANE_LANE_06_CFG_PD_DRIVER,
 			      sd_inst,
@@ -2308,6 +2335,9 @@ static int sparx5_phy_create(struct sparx5_serdes_private *priv,
 
 	phy_set_drvdata(*phy, macro);
 
+	/* Power off serdes by default */
+	sparx5_serdes_power_off(*phy);
+
 	return 0;
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
