Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2A8CE7B06
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 13:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8U0Qd13Dg2g/sXCDRkJXY+Kkf7QGlsgj2f0qWoXIVg=; b=1/lKUohbNLrSMw
	xDOezeRalNhCP5Z/b/e99XZE+p3VhbnksXbTsZR8W3mYNfcJNLeuKDlENMYbL5h3IGbr6rYH6TLV4
	v9R5Tk8YTWr++2STmyFOEfP2fifNGuUbnQOGGmT04nvJNxn2fWLU8NCE/MZBtp8u1yJQBM/E7I0B1
	oKh2pARTZVtdUt2O8IEpRN7aJpRFpKRIgiqB3z0i+DjXyUOic5mPjKjwFX1tt8nxGrz8ZgXMH2Qq/
	9TPIAdZQOvpzS+S86y921Xw5zBFVHuk/01cmZ7T7Sy9kXkhWmk0Oe92gp9rJo7l8sfGsKYC3x1iVd
	5oPiKEkq5bolPGmIw2kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYcL-0000000CHQB-0KYo;
	Fri, 06 Sep 2024 13:03:13 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYTe-0000000CFCs-40Tz;
	Fri, 06 Sep 2024 12:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627254; x=1757163254;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=tjcjEhjpTxjl2BLDskeVYj2Lk7MhcvUneySLl+PKUE8=;
  b=mWHF30WyqsRdk1fpgnAOd9GpIllP9xNlUzFvp/rpbYoF7xm+OvdaZd4M
   3jAERdBoAM+z4bP8riiCq3jd+n9BGxsRG7gnBmVnkGyr0GsbnKjSDOebi
   dEFLmoIWZlDD1QMZvmJhukBdUR09B0ksVNY82xlGZdrBsvpULXgV7eyMC
   YA8i8RjUW6cSKMq28RKdQUVes6Y9Yy5/p1pPmAGu9WXMVCdIX1j06KO7A
   996pU9wj/vEfNsmAaNC47iUeNFV8wlGdRPiLDGc7rsuJ/doMwdxhDBfVH
   crHhVyddn28mOZumnJbuiA0DBSS0LBFou6R64/rWkE+i9MN3Ex4TyuMjH
   Q==;
X-CSE-ConnectionGUID: aGkh2dtQQfCI8QG2frKi1g==
X-CSE-MsgGUID: b7FA8d3ASK2gCHjhEpqjfw==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="262386468"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:54:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:29 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:27 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:44 +0200
Subject: [PATCH 7/9] phy: sparx5-serdes: add support for branching on chip
 type
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-7-8d630614c58a@microchip.com>
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
X-CRM114-CacheID: sfid-20240906_055415_172781_82201709 
X-CRM114-Status: GOOD (  17.86  )
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

In preparation for lan969x, add a way to branch out on code that is to
be executed on either Sparx5 or lan969x.  Initially, this is required to
branch out when checking the SERDES types and SERDES speeds, since the
handling of these differ on the two platforms. This will also be used by
the lan969x driver introduced in a subsequent patch.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 29 ++++++++++++++++++-----------
 drivers/phy/microchip/sparx5_serdes.h |  5 +++++
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 8a716bfaa023..05fdf225ff43 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2298,10 +2298,12 @@ static int sparx5_serdes_set_speed(struct phy *phy, int speed)
 {
 	struct sparx5_serdes_macro *macro = phy_get_drvdata(phy);
 
-	if (macro->sidx < SPX5_SERDES_10G_START && speed > SPEED_5000)
-		return -EINVAL;
-	if (macro->sidx < SPX5_SERDES_25G_START && speed > SPEED_10000)
-		return -EINVAL;
+	if (macro->priv->data->type == SPX5_TARGET_SPARX5) {
+		if (macro->sidx < SPX5_SERDES_10G_START && speed > SPEED_5000)
+			return -EINVAL;
+		if (macro->sidx < SPX5_SERDES_25G_START && speed > SPEED_10000)
+			return -EINVAL;
+	}
 	if (speed != macro->speed) {
 		macro->speed = speed;
 		if (macro->serdesmode != SPX5_SD_MODE_NONE)
@@ -2338,11 +2340,14 @@ static int sparx5_serdes_validate(struct phy *phy, enum phy_mode mode,
 	if (macro->speed == 0)
 		return -EINVAL;
 
-	if (macro->sidx < SPX5_SERDES_10G_START && macro->speed > SPEED_5000)
-		return -EINVAL;
-	if (macro->sidx < SPX5_SERDES_25G_START && macro->speed > SPEED_10000)
-		return -EINVAL;
-
+	if (macro->priv->data->type == SPX5_TARGET_SPARX5) {
+		if (macro->sidx < SPX5_SERDES_10G_START &&
+		    macro->speed > SPEED_5000)
+			return -EINVAL;
+		if (macro->sidx < SPX5_SERDES_25G_START &&
+		    macro->speed > SPEED_10000)
+			return -EINVAL;
+	}
 	switch (submode) {
 	case PHY_INTERFACE_MODE_1000BASEX:
 		if (macro->speed != SPEED_100 && /* This is for 100BASE-FX */
@@ -2515,6 +2520,7 @@ static struct sparx5_serdes_io_resource sparx5_serdes_iomap[] =  {
 };
 
 static const struct sparx5_serdes_match_data sparx5_desc = {
+	.type = SPX5_TARGET_SPARX5,
 	.iomap = sparx5_serdes_iomap,
 	.iomap_size = ARRAY_SIZE(sparx5_serdes_iomap),
 	.tsize = sparx5_serdes_tsize,
@@ -2618,8 +2624,9 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 			return err;
 	}
 
-	/* Power down all CMUs by default */
-	sparx5_serdes_cmu_power_off(priv);
+	/* Power down all CMU's by default */
+	if (priv->data->type == SPX5_TARGET_SPARX5)
+		sparx5_serdes_cmu_power_off(priv);
 
 	provider = devm_of_phy_provider_register(priv->dev, sparx5_serdes_xlate);
 
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 50900bf06c4c..1beaa3d05a5d 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -34,6 +34,10 @@ enum sparx5_10g28cmu_mode {
 	SPX5_SD10G28_CMU_MAX,
 };
 
+enum sparx5_target {
+	SPX5_TARGET_SPARX5,
+};
+
 struct sparx5_serdes_macro {
 	struct sparx5_serdes_private *priv;
 	u32 sidx;
@@ -56,6 +60,7 @@ struct sparx5_serdes_ops {
 };
 
 struct sparx5_serdes_match_data {
+	enum sparx5_target type;
 	const struct sparx5_serdes_consts consts;
 	const struct sparx5_serdes_ops ops;
 	const struct sparx5_serdes_io_resource *iomap;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
