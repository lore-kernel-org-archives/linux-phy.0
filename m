Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DF36C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 20:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDGuTRbqY+HX2jKtZSJy29wCZmFEbIbrrXTxRHeJ2EE=; b=Ngf5wu56EZtnQb
	JPaqdUA5NJ5Db/3OqiM7or6dKBg3zksqMl9+VsSLoTXtenBp5XErpwe2sUYpsdfstTwUfEyP9t2wF
	O7ux1/z+dNqqpfghH3LX5F+d3e4K9Cj85+f7Ra910BIXLLKRcb+8wkrKeCF/R2rOI+5vGlpN4fxV/
	7Z9rVByBc1RnzHHpNZm+mdc7wmoh8Vj96IkRlyAHSBhNyRdu74ruW1tqPtTgxuekzZc+PCG771KAM
	h9xj424cis25chTP9NtZU65b1zk4R7t2zugfDQxVsZdQV8HWs5PHHeKLGupHQH870scMrJtNPec1u
	egA4qWYnvO5FpdY9aNMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAfR-0000000C2B2-4A3x;
	Thu, 19 Feb 2026 20:30:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAey-0000000C1TL-05Uh
	for linux-phy@bombadil.infradead.org;
	Thu, 19 Feb 2026 20:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OD9CWP9AeSoV/HvYGMHIRJTseA0lLQef38L1GCQmoNQ=; b=a5nhs2AK3WxSbCq5yDWK18yo5j
	95Gju34ho3cpP+PpIExcAHFDLXeX/8UvE0TwfeCFBuGioxf7ALOK0tFYqdNGK5/CFmgNoPtfDwXh+
	BgBStnSY70FN9bKxA49f+SJuiD447Iea7IGb9y7O0wEbIAEVDl1V3Zfpy8y82oZJMf1H8D+NlTBiQ
	GlnxfTQJtNWwYTaV2MVWFcAbJfmSiIhtowYJ/jHzs3EE/KbP1ZZ+ys7PJ4Jc0n7Z5J4BqvYcY1G3S
	uzC8a35SQj/jgukY18l8SCywLqKpNM5sxWFiVNojOV+8NcUggaq10/yNIVdbesIeiAOhFHAsYCWvm
	zHOaxG7g==;
Received: from mgamail.intel.com ([198.175.65.19])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeZ-00000001qke-2CLt
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 20:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771532979; x=1803068979;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=O395g583JciclhAYkpkhPwswiSCKjgtzscqic/6jAKw=;
  b=SNoVbEbuH/B9WzQLLXYi9HUBIG/SWsqa4sXDJzcaI0cDVZVu6u9R9i0v
   3fsaOZ5cRt69sq4XZuwSxdijeRfcNNue5ysSBoq+BL/tl0NDDwfd7f17J
   fXerUEP0cGEOSjc4imBJmsrsAl/wQZb+Le4hm0FHe4FP1NooQ7qaT+SGo
   ehahBbngNQsGrKGou022LmzUOagOXk2hPFlTpFPW/KGp3M9V6ZVKVV+pd
   a82D5rnVqMx8sXmqmeGq6fZYwUi4jKOMrZQrs5MeIndTTnOoA/7MKhvGm
   NRA6+SrY7AdjC9UdrWs9jhDDMTCzdzq2kqY1hLIG6FV5wGdRuhToRkKmS
   A==;
X-CSE-ConnectionGUID: TQSH52xPRy+5q68+TXC98g==
X-CSE-MsgGUID: UWz6ZQHbT1SPJJE+1/elMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72532343"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="72532343"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 12:29:15 -0800
X-CSE-ConnectionGUID: HwgZ1UnqRwORsfJSozvKEQ==
X-CSE-MsgGUID: OKz+UufCT4O4dB1lvn7Oxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="219183209"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2026 12:29:13 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 035B999; Thu, 19 Feb 2026 21:29:12 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 2/4] phy: phy-can-transceiver: Move OF ID table closer to their user
Date: Thu, 19 Feb 2026 21:26:20 +0100
Message-ID: <20260219202910.2304440-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_202940_695520_0DBA7F26 
X-CRM114-Status: GOOD (  12.54  )
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

There is no code that uses ID table directly, except the
struct device_driver at the end of the file. Hence, move
table closer to its user. It's always possible to access
them via a pointer.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 59 +++++++++++++++----------------
 1 file changed, 29 insertions(+), 30 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index f2259af4af8a..dd08faf46837 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -97,35 +97,6 @@ static const struct can_transceiver_data tja1057_drvdata = {
 	.flags = CAN_TRANSCEIVER_SILENT_PRESENT,
 };
 
-static const struct of_device_id can_transceiver_phy_ids[] = {
-	{
-		.compatible = "ti,tcan1042",
-		.data = &tcan1042_drvdata
-	},
-	{
-		.compatible = "ti,tcan1043",
-		.data = &tcan1043_drvdata
-	},
-	{
-		.compatible = "nxp,tja1048",
-		.data = &tja1048_drvdata
-	},
-	{
-		.compatible = "nxp,tja1051",
-		.data = &tja1051_drvdata
-	},
-	{
-		.compatible = "nxp,tja1057",
-		.data = &tja1057_drvdata
-	},
-	{
-		.compatible = "nxp,tjr1443",
-		.data = &tcan1043_drvdata
-	},
-	{ }
-};
-MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
-
 /* Temporary wrapper until the multiplexer subsystem supports optional muxes */
 static inline struct mux_state *
 devm_mux_state_get_optional(struct device *dev, const char *mux_name)
@@ -239,6 +210,35 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct of_device_id can_transceiver_phy_ids[] = {
+	{
+		.compatible = "ti,tcan1042",
+		.data = &tcan1042_drvdata
+	},
+	{
+		.compatible = "ti,tcan1043",
+		.data = &tcan1043_drvdata
+	},
+	{
+		.compatible = "nxp,tja1048",
+		.data = &tja1048_drvdata
+	},
+	{
+		.compatible = "nxp,tja1051",
+		.data = &tja1051_drvdata
+	},
+	{
+		.compatible = "nxp,tja1057",
+		.data = &tja1057_drvdata
+	},
+	{
+		.compatible = "nxp,tjr1443",
+		.data = &tcan1043_drvdata
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
+
 static struct platform_driver can_transceiver_phy_driver = {
 	.probe = can_transceiver_phy_probe,
 	.driver = {
@@ -246,7 +246,6 @@ static struct platform_driver can_transceiver_phy_driver = {
 		.of_match_table = can_transceiver_phy_ids,
 	},
 };
-
 module_platform_driver(can_transceiver_phy_driver);
 
 MODULE_AUTHOR("Faiz Abbas <faiz_abbas@ti.com>");
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
