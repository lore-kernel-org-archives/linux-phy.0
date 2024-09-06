Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9CD9CE7AA3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 12:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udaCC7bjXTe50bv9tIIMajMSsA10zTolQrlq1oA7Rjc=; b=qQyYiRXjDG1KG+
	+LJG4KgC7Nw35dtmUtaGVRRrNQKHaSNWN25ze5Zv7OIk08K6YnEdQphgVPuHXmo3ws+7ZZ4+e6PW8
	vfGAe/UG36dAHdB8Zzcrtc0quz/XQ2Mgxoyh6xUQx8+aBONEz4cicHf+vgkH0bzjcP6SLH5ivpTaG
	JNBrmiUZAF1cXYKaXCja8GHf7SAGnbAEgUwas48rel2Zjgds+HVsaysWLliLGy2DEAHb1l9yblgEO
	nFyg8oSHweTGsD5L9Tn66ZXw/aePSpJniRrejQwBYcWfrgJqME+ZC/uEu3BscGRqlFyhZ8qHm2kPs
	BwIP/6Pbq2ermkhsCZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYXT-0000000CGF9-2KyA;
	Fri, 06 Sep 2024 12:58:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYSs-0000000CEus-1zdr;
	Fri, 06 Sep 2024 12:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627206; x=1757163206;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=r4GYCCAPrezVJF9S4lAxcxW+jn6P9wg342VL0Po3ozE=;
  b=dwI54FzVTMpVXxPP+6nkctBFC0z9bqYEvQotXVh4XcBFRKO/CmW9WlLN
   HQCcHoU9FJ0ERnqNPtIXqpnaskzo+YBgyd1VkFOnCWW80hR7IPleKHaNR
   HDcPtm7m4irIEfqRSEXn05coGvQ72zs8q1tT4yjbYhaBToZIEvYKXR4iH
   hTAOGbaAuFyJR9DT73sOPNCgKb6ZiMJXr8IMQ5vaC4mlpNDi+1C+sOa/Q
   BspCqDyfw9bC6sU8bBg9n8Y0K0lRlsmne4hxCF5O8cUj4Ul5uz39JLhHl
   o3aUjmWTmNnqeCN8fVUqDIHnYxRqOT/d9Xe3eRrHSMmAx++YK+da3x/5u
   w==;
X-CSE-ConnectionGUID: aks78ZCLRxOyTJZTZgJsDQ==
X-CSE-MsgGUID: 73P213HoT5uPEg8Zku63CA==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="34534555"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:53:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:20 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:18 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:40 +0200
Subject: [PATCH 3/9] phy: sparx5-serdes: add constant for the number of
 CMU's
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-3-8d630614c58a@microchip.com>
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
X-CRM114-CacheID: sfid-20240906_055326_608699_74AB3222 
X-CRM114-Status: GOOD (  13.32  )
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

The number of CMU's differ for Sparx5 and lan969x, so add a new field:
cmu_max and use it throughout.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 5 ++---
 drivers/phy/microchip/sparx5_serdes.h | 1 +
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index c3ed028fc74e..9c91545dd8e1 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -21,8 +21,6 @@
 
 #include "sparx5_serdes.h"
 
-#define SPX5_CMU_MAX          14
-
 #define SPX5_SERDES_10G_START 13
 #define SPX5_SERDES_25G_START 25
 #define SPX5_SERDES_6G10G_CNT SPX5_SERDES_25G_START
@@ -1101,7 +1099,7 @@ static void sparx5_serdes_cmu_power_off(struct sparx5_serdes_private *priv)
 	int i;
 
 	/* Power down each CMU */
-	for (i = 0; i < SPX5_CMU_MAX; i++) {
+	for (i = 0; i < priv->data->consts.cmu_max; i++) {
 		cmu_inst = sdx5_inst_get(priv, TARGET_SD_CMU, i);
 		cmu_cfg_inst = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, i);
 
@@ -2512,6 +2510,7 @@ static const struct sparx5_serdes_match_data sparx5_desc = {
 	.iomap_size = ARRAY_SIZE(sparx5_serdes_iomap),
 	.consts = {
 		.sd_max       = 33,
+		.cmu_max      = 14,
 	},
 };
 
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 8c27cfde4938..87c44bbaf368 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -28,6 +28,7 @@ enum sparx5_serdes_mode {
 
 struct sparx5_serdes_consts {
 	int sd_max;
+	int cmu_max;
 };
 
 struct sparx5_serdes_match_data {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
