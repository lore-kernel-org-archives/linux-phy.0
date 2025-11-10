Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5006CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNizTx+cYswAAR10+Ly3jvu84xGf4PtrCfnhJNW/D5o=; b=02Y1YgNGeXZveW
	iGEbsAFeaxAD/Rf0qdMYRbBF1lFo4SgL3uDx1scCBUtBuW4vrbbmDAuqmu/cyFUNjL+F5ZXHqfF94
	YX7SIboIyGhcwW3BLkzpLtEmhAdgv25PxlZh2UpiKSyENI5umnQslXbjL5dA2pS7DWFAHy72CU9bC
	3xWF6GP7Jh2ZB7ZpJtQC35hfbAuXZEaIEgZpdvbJuxwKUecjafoRfa/ZkKCzdgGVUZAZQp91qyQGF
	bRUoXYztR2s4tAUg68OZfjq5MuqMlB1t0ZFQ0I7qZA1ekSp+sWbImuEVQW2qfeRtvQvPZXc5XR2/Y
	y1ys8mCznWANbAFDPNOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPkq-00000005GeK-1zqX;
	Mon, 10 Nov 2025 11:08:12 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPkk-00000005GcG-2d3d
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:08:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762772886; x=1794308886;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AUHDCMu0KXPuI5V/+/etna1r+bnfhQHZs/+ltDeH1VI=;
  b=N/Dp9DWUn6lh56fEtK6eNspNM6dmmsRqBfYIR4M2s4L1uWa4ROmAei3h
   EA9wyGINgmznpkxh4nkinnMIrbPWMS3BqoOoHwsJFaHhAyDRJ94T3yoon
   x79r3C9z3xWPTZDebPRABNzW6GYqTjL14q/HspjbLLgbDuWCcVZ2REEdH
   VR2S4NXOnggdyTeXoz0srwpunSVPh6G5/hV3Bq382X6paYZzWK7828izO
   aJyS0zTYlUiFb3HDGOgPxWDgM6OuHf2rco5pwyvZkJpmb0M3tzhn0HlcL
   xMuoPeLanGv5dkPjQKl4/yofwbnHhHxS8vVtBHh8w3qSF08cTD1Yk200h
   w==;
X-CSE-ConnectionGUID: Q9dKRpgHTC2cSW5Q+Klg/w==
X-CSE-MsgGUID: odQaj7KdR0Stvi3Q8OkdvQ==
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; 
   d="scan'208";a="280271401"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 04:08:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 10 Nov 2025 04:07:26 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 10 Nov 2025 04:07:24 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 1/2] phy: microchip: lan966x: Add support for inverting the rx/tx lanes
Date: Mon, 10 Nov 2025 12:05:35 +0100
Message-ID: <20251110110536.2596490-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_030807_553190_90A99C96 
X-CRM114-Status: GOOD (  12.50  )
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

The lan966x has 3 SerDes and they have the capability to invert the P
and N signal for the TX and RX. Add this configuration option, which is
done through device tree ans the board designer will decide if the
serdes signals to be inverted.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/phy/microchip/lan966x_serdes.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index 835e369cdfc5f..5faf2001a100b 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -17,6 +17,11 @@
 #define PLL_CONF_SERDES_125MHZ	2
 #define PLL_CONF_BYPASS		3
 
+#define LAN966X_SERDES_MAX	3
+#define LAN966X_SERDES_DIR	2
+#define LAN966X_SERDES_TX	0
+#define LAN966X_SERDES_RX	1
+
 #define lan_offset_(id, tinst, tcnt,			\
 		   gbase, ginst, gcnt, gwidth,		\
 		   raddr, rinst, rcnt, rwidth)		\
@@ -129,6 +134,7 @@ struct serdes_ctrl {
 	struct device		*dev;
 	struct phy		*phys[SERDES_MAX];
 	int			ref125;
+	bool			inverted[LAN966X_SERDES_MAX][LAN966X_SERDES_DIR];
 };
 
 struct serdes_macro {
@@ -387,6 +393,11 @@ static int lan966x_sd6g40_setup(struct serdes_macro *macro, u32 idx, int mode)
 
 	conf.refclk125M = macro->ctrl->ref125;
 
+	if (macro->ctrl->inverted[idx][LAN966X_SERDES_TX])
+		conf.txinvert = 1;
+	if (macro->ctrl->inverted[idx][LAN966X_SERDES_RX])
+		conf.rxinvert = 1;
+
 	if (mode == PHY_INTERFACE_MODE_QSGMII)
 		conf.mode = LAN966X_SD6G40_MODE_QSGMII;
 	else
@@ -596,6 +607,18 @@ static int serdes_probe(struct platform_device *pdev)
 	ctrl->ref125 = (val == PLL_CONF_125MHZ ||
 			val == PLL_CONF_SERDES_125MHZ);
 
+	for (i = 0; i < LAN966X_SERDES_MAX; ++i) {
+		u8 prop[25];
+
+		sprintf(prop, "microchip,s%d-tx-inverted", i);
+		if (device_property_read_bool(ctrl->dev, prop))
+			ctrl->inverted[i][LAN966X_SERDES_TX] = true;
+
+		sprintf(prop, "microchip,s%d-rx-inverted", i);
+		if (device_property_read_bool(ctrl->dev, prop))
+			ctrl->inverted[i][LAN966X_SERDES_RX] = true;
+	}
+
 	dev_set_drvdata(&pdev->dev, ctrl);
 
 	provider = devm_of_phy_provider_register(ctrl->dev,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
