Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203F5ECE57A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7ik0PeL7WjDMMiPXibY0/J1geWi2makwoscJOgdrAY=; b=PtcsK0Iv8fBGMI
	ga5Hw+t8HNmvTEblDFduXcWoE2dgR9f7olQPTSZ8BWk06b63AZM4CxQnzanNtzsk7bNhPnexrUu+X
	tGfEhLsHlGQCoQ5UVzYZ+1G0YYNf7xjl96BGVomS6ltgr0u2DBToG/2s3ATlmj7Dsx8ogY8JV8D/1
	wa9eKEd/bxEuCQNJiGLCPXdJ6u/f0GkNjwJ4ypZYj9w1qwRPB3oIik8M4n3pv8m54NFwMlbDqFag+
	9CStTyPdoAQQWNSJVpSSo+iXU46lTCgOrtBjLM5JvIN2eXx774hHqrm0UTvgVp7COmyTybgEGSJlF
	20ayBdzjLTogpE/ZOyfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng7k-00000002QT0-1XuU;
	Mon, 09 Sep 2024 15:16:16 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng6f-00000002Q82-42Al;
	Mon, 09 Sep 2024 15:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894909; x=1757430909;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=nDwWk14nrCIxkwniEAsLZrlHAIvuqthQka87j69o/CM=;
  b=N7o03/4P2H4ZbLHYbl8RpPbUlzyilBy+0rtKYKuFBPuTboPHal2fqGWk
   rjLZW2lPTkK61LpshURQm7QtOnSL7s508M3D/psaCIiZ/BXXQ5cMXxuPy
   HUiGBJlJ/TH/N+z7WTTURPacJQ0VV+GwTJmoV0YgyGsNkmFdQSmSdzqjy
   Q4qOZ7L1KlIb5ydmpqE9TKRDv4FB/Tg91CtdWxz/LtBiI3BCbP3gA/3RZ
   4Bdjjhu7TtFnVupKiv5X3x0nUenBrVybXCv3S7ah9jwBEbQYOrZboAsrb
   qUL/5nuG9bU0KuPS0gxrmf38XD1cfoW/jQhhdEsxA8pX1dPWlxvblE/36
   Q==;
X-CSE-ConnectionGUID: OODVxLZSSk2nq4Lyt+sbMw==
X-CSE-MsgGUID: unyaGTgMRuCFj2dD6oLDJg==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="31428908"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:15:03 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:15:01 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:44 +0200
Subject: [PATCH v2 4/9] phy: sparx5-serdes: add ops to match data
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-4-d695bcb57b84@microchip.com>
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
X-CRM114-CacheID: sfid-20240909_081510_124707_106981FA 
X-CRM114-Status: GOOD (  14.88  )
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

We need to handle code differently in a few places. Add a struct:
sparx5_serdes_ops for this purpose, and populate it a with function to
set the SERDES type.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 29 +++++++++++++++++++----------
 drivers/phy/microchip/sparx5_serdes.h | 27 ++++++++++++++++-----------
 2 files changed, 35 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 9c91545dd8e1..b1376a142b14 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2373,6 +2373,20 @@ static const struct phy_ops sparx5_serdes_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static void sparx5_serdes_type_set(struct sparx5_serdes_macro *macro, int sidx)
+{
+	if (sidx < SPX5_SERDES_10G_START) {
+		macro->serdestype = SPX5_SDT_6G;
+		macro->stpidx = macro->sidx;
+	} else if (sidx < SPX5_SERDES_25G_START) {
+		macro->serdestype = SPX5_SDT_10G;
+		macro->stpidx = macro->sidx - SPX5_SERDES_10G_START;
+	} else {
+		macro->serdestype = SPX5_SDT_25G;
+		macro->stpidx = macro->sidx - SPX5_SERDES_25G_START;
+	}
+}
+
 static int sparx5_phy_create(struct sparx5_serdes_private *priv,
 			   int idx, struct phy **phy)
 {
@@ -2389,16 +2403,8 @@ static int sparx5_phy_create(struct sparx5_serdes_private *priv,
 	macro->sidx = idx;
 	macro->priv = priv;
 	macro->speed = SPEED_UNKNOWN;
-	if (idx < SPX5_SERDES_10G_START) {
-		macro->serdestype = SPX5_SDT_6G;
-		macro->stpidx = macro->sidx;
-	} else if (idx < SPX5_SERDES_25G_START) {
-		macro->serdestype = SPX5_SDT_10G;
-		macro->stpidx = macro->sidx - SPX5_SERDES_10G_START;
-	} else {
-		macro->serdestype = SPX5_SDT_25G;
-		macro->stpidx = macro->sidx - SPX5_SERDES_25G_START;
-	}
+
+	priv->data->ops.serdes_type_set(macro, idx);
 
 	phy_set_drvdata(*phy, macro);
 
@@ -2512,6 +2518,9 @@ static const struct sparx5_serdes_match_data sparx5_desc = {
 		.sd_max       = 33,
 		.cmu_max      = 14,
 	},
+	.ops = {
+		.serdes_type_set      = &sparx5_serdes_type_set,
+	},
 };
 
 /* Client lookup function, uses serdes index */
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 87c44bbaf368..785c7fe0bbeb 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -26,13 +26,29 @@ enum sparx5_serdes_mode {
 	SPX5_SD_MODE_SFI,
 };
 
+struct sparx5_serdes_macro {
+	struct sparx5_serdes_private *priv;
+	u32 sidx;
+	u32 stpidx;
+	enum sparx5_serdes_type serdestype;
+	enum sparx5_serdes_mode serdesmode;
+	phy_interface_t portmode;
+	int speed;
+	enum phy_media media;
+};
+
 struct sparx5_serdes_consts {
 	int sd_max;
 	int cmu_max;
 };
 
+struct sparx5_serdes_ops {
+	void (*serdes_type_set)(struct sparx5_serdes_macro *macro, int sidx);
+};
+
 struct sparx5_serdes_match_data {
 	const struct sparx5_serdes_consts consts;
+	const struct sparx5_serdes_ops ops;
 	const struct sparx5_serdes_io_resource *iomap;
 	int iomap_size;
 };
@@ -45,17 +61,6 @@ struct sparx5_serdes_private {
 	const struct sparx5_serdes_match_data *data;
 };
 
-struct sparx5_serdes_macro {
-	struct sparx5_serdes_private *priv;
-	u32 sidx;
-	u32 stpidx;
-	enum sparx5_serdes_type serdestype;
-	enum sparx5_serdes_mode serdesmode;
-	phy_interface_t portmode;
-	int speed;
-	enum phy_media media;
-};
-
 /* Read, Write and modify registers content.
  * The register definition macros start at the id
  */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
