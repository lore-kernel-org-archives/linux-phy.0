Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 478A7CE7AA3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 12:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7ik0PeL7WjDMMiPXibY0/J1geWi2makwoscJOgdrAY=; b=Zat0/wd5JsZTFy
	rYn022+UiDD36PNk40UFPvM5l1b8YOipM5Jidagyf9938Sgl6HUGKJqO2ToOd3S1EgQpll6mPIS0R
	4jN3mb+6M6vRWuZ1zfse/9DIkf8R8CsDhYB5kUTc9eWpiOThWC+vM1wubEdLHJ5/zqrKs+oR67Qdt
	mfgrNNEpgHMkmR01WoiB+BS9fbBW5JVoJg9hwvdVX6xE8xrqt4mkPojwqX53hxEQvZQ12xpzQqww2
	2UyR5WM53O4sX+MAHLLzyYiHvl9IMdgtcu28XPDVRwB04tmZWuyblE2zacD0CVBHvdowinJ+eg0Qg
	UG4tBE9biyM6kZEyLUjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYWV-0000000CG2Q-48cc;
	Fri, 06 Sep 2024 12:57:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYSs-0000000CEuE-2Yoa;
	Fri, 06 Sep 2024 12:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627206; x=1757163206;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=nDwWk14nrCIxkwniEAsLZrlHAIvuqthQka87j69o/CM=;
  b=RsrDg3w8Ty8+p/hdX6ZkY9xs6u6LRhVZ/G0Le5ZJ378KbnNrdquMeEJL
   mRkz2c8wS5pjhJmQs6nKeZpHKuWG2Q/GFD8TpLN9zanTKwRxjZCuGDhgl
   lGtHxwWPfuCXfyg2E3QCUN4VjSQI1U/qbhDN03d0Hpdv7I5CDLDPw7Djh
   e5c57Js6a2XTmvf9u35/DRafsAXNyIQoeBaTGaS60f1+eoEkke6nLWjCT
   yRaGB+8zSYQbxAxbOkqRUso5Vxc5/7np4oRXvM8xkHzFHDeElVsGH67aC
   hRRvhjnjmQk9jiY9DuIXBcf8r4UdBqgHENy/ZJDRQ/W/2hVKCNlx+V6Ne
   w==;
X-CSE-ConnectionGUID: aks78ZCLRxOyTJZTZgJsDQ==
X-CSE-MsgGUID: RHWCcjJmTdeaHLs6RTts6A==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="34534556"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:53:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:22 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:20 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:41 +0200
Subject: [PATCH 4/9] phy: sparx5-serdes: add ops to match data
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-4-8d630614c58a@microchip.com>
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
X-CRM114-CacheID: sfid-20240906_055326_770718_8EFF3C97 
X-CRM114-Status: GOOD (  14.37  )
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
